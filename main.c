/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <math.h>
#include <system.h>
#include "alt_types.h"
#include "sys\alt_irq.h"
#include "io.h"

unsigned long read_fifo(void);
unsigned int read_ec_flags(void);		// only call after read_fifo
void trigger_mac(void);
unsigned read_error_digits(void);
char print_digit(unsigned int digit_error, unsigned int digit_num);
void set_bright(char bcode);
void erase_screen(void);
void wr_lut_A(unsigned int data_val, unsigned int adr);
void wr_lut_B(unsigned int data_val, unsigned int adr);

unsigned int freq_cfg = 0;

#define NUM_BATCHES  16

// i/o listed here only for define name, don't use these addresses, use system.h
//#define IN_FIFO_USED_BASE 0x410b0
//#define IN_PORT_DATA_BASE 0x410a0
//#define IN_PORT_EC_FLAGS_BASE 0x41090
//#define OUT_PORT_CTRL_BASE 0x41080
//#define IN_PORT_DIG_ERROR_BASE 0x41070
//#define OUT_PORT_PRODNUM_BASE 0x41060
//#define OUT_PORT_BATNUM_BASE 0x41050
//#define OUT_PORT_LUT_DATA_BASE 0x82000
//#define OUT_PORT_LUT_ADR_BASE 0x82010
//#define IN_PORT_FREQ_CNT_BASE 0x82020

// VT102 color codes, foreground
#define BLACK_FG 	30
#define RED_FG   	31
#define GREEN_FG 	32
#define YELLOW_FG 	33
#define BLUE_FG		34
#define MAGENTA_FG 	35
#define CYAN_FG		36
#define WHITE_FG	37

//VT102 background color codes
#define BLACK_BG 	40
#define RED_BG   	41
#define GREEN_BG 	42
#define YELLOW_BG 	43
#define BLUE_BG		44
#define MAGENTA_BG 	45
#define CYAN_BG		46
#define WHITE_BG	47


// control codes
#define ESC 0x1B


void erase_screen(void)
{

	putchar(ESC);
	putchar('[');
	putchar('2');
	putchar('J');

}

void set_bright(char bcode)
{
	putchar(ESC);
	putchar('[');
	if(bcode) {
		putchar('1');
	}
	else {
		putchar('2');
	}
	putchar('m');
}

void set_color(char foregrnd, char backgrnd)
{

	putchar(ESC);
	putchar('[');
//	putchar('{');
//	putchar (foregrnd);
	printf("%d", foregrnd);
//	putchar('}');
	putchar(';');
//	putchar('{');
//	putchar(backgrnd);
	printf("%d", backgrnd);
//	putchar('}');
	putchar('m');

}

void reset_attributes(void)
{

	putchar(ESC);
	putchar('[');
	putchar(0);
	putchar('m');

}


#define HOME_LEN  3
char home[3] = {ESC, '[', 'H'};

void go_home(void)
{
int i;

	for(i=0; i<HOME_LEN; i++) {
		putchar(home[i]);
	}

}

#define RX_RDY  0x0080			// bit 7, right?
// does not block, returns if character ready or not
unsigned int kb_hit(void)
{
unsigned int status;

	status = IORD(UART_0_BASE, 2);		// read the character ready bit

	if(status & RX_RDY) return(1);

	return(0);

}

static unsigned int rng_state = 0x12345678;		// must seed from zero I would guess
// try taps for 2^32, which is 32, 30, 26, 25
#define XOR_TAPS 0x23000000
#define OR_TAPS 0x80000000
unsigned int lfsr_rng(void)
{
int i;

	for(i=0; i<32; i++) {
		if(rng_state & 0x1) {
			rng_state ^= (XOR_TAPS << 1);
			rng_state = rng_state >> 1;
			rng_state |= OR_TAPS;
		}
		else {
			rng_state = rng_state >> 1;
		}
	}

	return(rng_state);

}

// basic +0.0 to 1.0 type of rand function
double rand(void)
{

	return((double)(lfsr_rng())/0x100000000);

}

// min and max are inclusive on this routine
// this routine could be made faster, get away from double
int irand(int min, int max)
{

	int u = (double)(rand() * (max-min+2)) + (min-1);
	return(u);

}

// writes a random numbers to the LUTs
void wr_rand_2_lut_1(void)
{
int i;
int rng;

	for(i=0; i<512; i+=2) {

		wr_lut_A(lfsr_rng(), i);			// write fraction first
		rng = irand(-1000, 1000);
		if(rng < 0) {
			wr_lut_A(0x80000000|(unsigned int)-rng, i+1);
		}
		else {
			wr_lut_A(rng, i+1);
		}

		wr_lut_B(lfsr_rng(), i);
		rng = irand(-1000, 1000);
		if(rng < 0) {
			wr_lut_B(0x80000000|(unsigned int)-rng, i+1);
		}
		else {
			wr_lut_B(rng, i+1);
		}

	}

}

// write a constant to both LUT's for fast clock test
void wr_rand_2_lut_2(void)
{
	int i;
	unsigned int rng;
	unsigned int irng;

	rng = lfsr_rng();

	irng = irand(-100, 100);
	if(irng < 0) {
		irng = -irng;
		irng |= 0x80000000;
	}

	for(i=0; i<512; i+=2) {
		wr_lut_A(rng, i);
		wr_lut_A(irng, i+1);

		wr_lut_B(rng, i);
		wr_lut_B(irng, i+1);

	}

}


int main()
{
unsigned int fifo_used;
unsigned long fifo_data[NUM_BATCHES*2];
unsigned ec_flags[NUM_BATCHES];
unsigned ec_digits[NUM_BATCHES];
int i, delay, uncor_error, prodnum;
int read_cnt, run_cnt, cnt;
double int_portion, frac_portion;
char c, cbuf[100];
int format_flag = 0;
int sum_cnt, ok_cnt, cor_cnt, nc_cnt;
int prodnum_flag, watchdog;
int freq_cnt;

//	printf("Hello from Nios II from an Arria-V!!\n");


	uncor_error = 0;
	run_cnt = 0;
	erase_screen();

	IOWR(OUT_PORT_PRODNUM_BASE, 0, 16);
	IOWR(OUT_PORT_BATNUM_BASE, 0, 16);

	prodnum = 16;

	sum_cnt = 0;
	ok_cnt = 0;
	cor_cnt = 0;
	nc_cnt = 0;

	freq_cfg = 2;

	prodnum_flag = 1;

	wr_rand_2_lut_1();

//	while(1) {

//		printf("i_rng: %d\n", irand(-10, 10));

//		c = getchar();
//	}
	go_home();
	set_color(WHITE_FG, BLUE_BG);
	printf("          MaiTRIX ERROR CORRECTING PRODUCT SUMMATION DEMO          \n");

	while(1) {

		set_bright(1);

		run_cnt += 1;

//		freq_cfg = 2;

		go_home();
		printf("\n");

//		set_color(WHITE_FG, BLACK_BG);


		if(kb_hit()) {
//			printf("character detected\n");
			c = getchar();

			if(c == 'c') {		// clear screen
				erase_screen();
				go_home();
				set_color(WHITE_FG, BLUE_BG);
				printf("          MaiTRIX ERROR CORRECTING PRODUCT SUMMATION DEMO          \n");
				set_color(WHITE_FG, BLACK_BG);
			}
			else if(c == 'd') {

				if(format_flag) {
					format_flag = 0;
				}
				else {
					format_flag = 1;
				}
			}
			else if(c == 'r') {
				sum_cnt = 0;
				ok_cnt = 0;
				cor_cnt = 0;
				nc_cnt = 0;
				sum_cnt = 0;
			}
			else if(c == 's') {

				getchar();		// to stop the stop, hit a key
			}
			else if(c == 'm') {
				if(!prodnum_flag) {			// walk the LUT pattern
					prodnum_flag = 1;
				}
				else if(prodnum_flag == 1) {	// static display of the pattern
					prodnum_flag = 2;
				}
				else if(prodnum_flag == 2) {	// random each run
					prodnum_flag = 3;		// going to prodnum_flag = 3, so set that mode up here
					wr_rand_2_lut_2();
					prodnum = 16;
				}
				else  {		// prodnum_flag ==3, constant value
					prodnum_flag = 0;
					wr_rand_2_lut_1();
				}

			}
			else if(c == 'f') {

				if(freq_cfg == 1) {
					freq_cfg = 2;
				}
				else if(freq_cfg == 2) {
					freq_cfg = 3;
				}
				else {
					freq_cfg = 1;
				}
			}
			else if(c == 'v') {
				wr_rand_2_lut_1();		// change up the values
			}

		}


		IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x0);

		set_color(WHITE_FG, RED_BG);
		if(freq_cfg == 1) {
			printf("RUN: %6d, Freq: 50 MHz (fixed)  \n", run_cnt);
		}
		else if(freq_cfg == 2) {
			printf("RUN: %6d, Freq: 375 MHz (fixed) \n", run_cnt);
		}
		else if(freq_cfg == 3) {
			freq_cnt = IORD(IN_PORT_FREQ_CNT_BASE, 0);
			printf("RUN: %6d, Freq: %3.1f MHz (adj.)\n", run_cnt, (float)(freq_cnt)*0.3);
		}

		set_color(WHITE_FG, BLACK_BG);
		printf("freq_cfg: %d, mode: %d  ", freq_cfg, prodnum_flag);

		IOWR(OUT_PORT_PRODNUM_BASE, 0, prodnum);

		if(prodnum_flag == 0) {
			prodnum++;
			if(prodnum > 16) prodnum = 8;
		}
		else if(prodnum_flag == 1) {	// write the RNG to the LUTs
			wr_rand_2_lut_1();
			prodnum = 16;
		}
		else if(prodnum_flag == 2) {	// run static in lut
			prodnum = 16;
		}


//		for(i=0; i<1000; i++) {
//			delay++;
//		}




		trigger_mac();

		watchdog = 0;
		while(fifo_used != NUM_BATCHES*2) {
			fifo_used = IORD(IN_FIFO_USED_BASE, 0);
//			printf("fifo used is: %d\n", fifo_used);
			watchdog++;
			if(watchdog > 1000) break;

		}

		read_cnt = 0;
		while(fifo_used) {
			fifo_data[read_cnt] = read_fifo();
			if(read_cnt < NUM_BATCHES) {
				ec_flags[read_cnt] = read_ec_flags();
				ec_digits[read_cnt] = read_error_digits();
			}
//			if(ec_flags == 2) uncor_error = 1;
//			printf("fifo data is %8lx, ", fifo_data);
//			printf("ec_flags: %x\n", ec_flags);
			fifo_used -= 1;
			read_cnt += 1;
		}


		for(i=0; i<NUM_BATCHES; i++) {
			sum_cnt += 1;
			if(ec_flags[i] == 0) {
				ok_cnt += 1;
			}
			else if(ec_flags[i] == 1) {
				cor_cnt += 1;
			}
			else if(ec_flags[i] == 2) {
				nc_cnt += 1;
			}
		}


//		printf("                      corrected digit position: ");
		printf("     Corrected RNS Digit: ");
		for(int k=0; k<10; k++) {
			printf("%d ", k);
		}
		printf("\n");
		printf("                                                ");
		for(int k=0; k<10; k++) {
			printf("_ ");
		}
		printf("\n");

		for(i=0; i<NUM_BATCHES; i++) {
			printf("fifo data #%2d ", i);

			if(ec_flags[i] == 0) {
				set_color(GREEN_FG, BLACK_BG);
			}
			else if(ec_flags[i] == 1) {
				set_color(YELLOW_FG, BLACK_BG);
			}
			else {
				set_color(RED_FG, BLACK_BG);
			}

			if(format_flag == 0) {
				printf("%11ld", (fifo_data[i*2+1]&0x80000000LL) ? fifo_data[i*2+1]+1 : fifo_data[i*2+1]);
				sprintf(cbuf, "%.8lf, ", (fifo_data[i*2+1]&0x80000000LL ? ((double)(~fifo_data[i*2]))/0x100000000LL : (double) (fifo_data[i*2])/0x100000000LL));
				printf("%s", &cbuf[1]);
			}
			else {

				printf("%11lx.%08lx, ", fifo_data[i*2+1], fifo_data[i*2]);

			}

			printf("ec code: %x, ", ec_flags[i]);

			for(int j=0; j<10; j++) {
				printf("%c ", print_digit(ec_digits[i], j));
			}

			set_color(WHITE_FG, BLACK_BG);

			printf("\n");
		}

		printf("\n");
		set_color(GREEN_FG, BLACK_BG);
		printf("OK: %5d(%2.1f%%)", ok_cnt, (float)(ok_cnt*100.0)/sum_cnt);
		set_color(YELLOW_FG, BLACK_BG);
		printf("   COR: %5d(%2.1f%%)", cor_cnt, (float)(cor_cnt*100.0)/sum_cnt);
		set_color(RED_FG, BLACK_BG);
		printf("   NC: %5d(%2.1f%%)",  nc_cnt, (float)(nc_cnt*100.0)/sum_cnt);
//		printf("\n\n");
//		set_color(WHITE_FG, BLACK_BG);

	}

  return 0;
}

// digit_num must be between 0 and 9
char print_digit(unsigned int digit_error, unsigned int digit_num)
{
char dig_code = 0;
unsigned int temp_error = digit_error;
unsigned int one_cntr = 0;
unsigned int zero_cntr = 0;


	for(int i=0; i<10; i++) {

		if(temp_error & 0x3) one_cntr++;
		if((temp_error & 0x3) == 0) zero_cntr++;

		if(i == digit_num) {
			dig_code = temp_error & 0x3;
		}

		temp_error = temp_error >> 2;
	}

	if(one_cntr == 10) return (' ');
	if(zero_cntr == 10) return (' ');

	if(!dig_code) return('c');

	return(' ');

}

void trigger_mac(void)
{

	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x4);		// set the reset input by setting ctrl[2]=1

	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x0);		// release the reset input by setting ctrl[2]=1

}

unsigned long read_fifo(void)
{
unsigned long val;

	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x2);

	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x2 | 0x1);

	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0);

	val = IORD(IN_PORT_DATA_BASE, 0);

	return(val);
}

// only call after read_fifo routine above
unsigned int read_ec_flags(void)
{
unsigned int ec_flags;

	  ec_flags = IORD(IN_PORT_EC_FLAGS_BASE, 0);

	  return(ec_flags);
}


unsigned read_error_digits(void)
{
	unsigned int ec_digits;

	  ec_digits = IORD(IN_PORT_DIG_ERROR_BASE, 0);

	  return(ec_digits);
}

// write a 32 bit data word to the LUT_A device.
void wr_lut_A(unsigned int data_val, unsigned int adr)
{
	IOWR(OUT_PORT_LUT_ADR_BASE, 0, adr & 0x7ff);
	IOWR(OUT_PORT_LUT_DATA_BASE, 0, data_val);

	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x10);		// assert lut_wr_ena_A
	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x18);		// assert clk
	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6));				// clear the control sigs

}

// write a 32 bit data word to the LUT_B device.
void wr_lut_B(unsigned int data_val, unsigned int adr)
{
	IOWR(OUT_PORT_LUT_ADR_BASE, 0, adr & 0x7ff);
	IOWR(OUT_PORT_LUT_DATA_BASE, 0, data_val);

	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x20);		// assert lut_wr_ena_B
	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6) | 0x28);		// assert clk
	IOWR(OUT_PORT_CTRL_BASE, 0, (freq_cfg << 6));				// clear the control sigs

}

