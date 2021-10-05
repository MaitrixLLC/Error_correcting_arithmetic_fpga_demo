/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_gen2_0' in SOPC Builder design 'q_sys'
 * SOPC Builder design path: ../../q_sys.sopcinfo
 *
 * Generated: Tue Nov 05 20:13:28 PST 2019
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00080820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x14
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00040020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x14
#define ALT_CPU_NAME "nios2_gen2_0"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00040000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00080820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x14
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00040020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x14
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00040000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_AVALON_UART
#define __ALTERA_NIOS2_GEN2
#define __PRODUCT_INFO


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Arria V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x810e8
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/uart_0"
#define ALT_STDIN_BASE 0x81000
#define ALT_STDIN_DEV uart_0
#define ALT_STDIN_IS_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_uart"
#define ALT_STDOUT "/dev/uart_0"
#define ALT_STDOUT_BASE 0x81000
#define ALT_STDOUT_DEV uart_0
#define ALT_STDOUT_IS_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_uart"
#define ALT_SYSTEM_NAME "q_sys"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER_0
#define ALT_TIMESTAMP_CLK none


/*
 * in_fifo_used configuration
 *
 */

#define ALT_MODULE_CLASS_in_fifo_used altera_avalon_pio
#define IN_FIFO_USED_BASE 0x810b0
#define IN_FIFO_USED_BIT_CLEARING_EDGE_REGISTER 0
#define IN_FIFO_USED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IN_FIFO_USED_CAPTURE 0
#define IN_FIFO_USED_DATA_WIDTH 10
#define IN_FIFO_USED_DO_TEST_BENCH_WIRING 0
#define IN_FIFO_USED_DRIVEN_SIM_VALUE 0
#define IN_FIFO_USED_EDGE_TYPE "NONE"
#define IN_FIFO_USED_FREQ 50000000
#define IN_FIFO_USED_HAS_IN 1
#define IN_FIFO_USED_HAS_OUT 0
#define IN_FIFO_USED_HAS_TRI 0
#define IN_FIFO_USED_IRQ -1
#define IN_FIFO_USED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IN_FIFO_USED_IRQ_TYPE "NONE"
#define IN_FIFO_USED_NAME "/dev/in_fifo_used"
#define IN_FIFO_USED_RESET_VALUE 0
#define IN_FIFO_USED_SPAN 16
#define IN_FIFO_USED_TYPE "altera_avalon_pio"


/*
 * in_port_data configuration
 *
 */

#define ALT_MODULE_CLASS_in_port_data altera_avalon_pio
#define IN_PORT_DATA_BASE 0x810a0
#define IN_PORT_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define IN_PORT_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IN_PORT_DATA_CAPTURE 0
#define IN_PORT_DATA_DATA_WIDTH 32
#define IN_PORT_DATA_DO_TEST_BENCH_WIRING 0
#define IN_PORT_DATA_DRIVEN_SIM_VALUE 0
#define IN_PORT_DATA_EDGE_TYPE "NONE"
#define IN_PORT_DATA_FREQ 50000000
#define IN_PORT_DATA_HAS_IN 1
#define IN_PORT_DATA_HAS_OUT 0
#define IN_PORT_DATA_HAS_TRI 0
#define IN_PORT_DATA_IRQ -1
#define IN_PORT_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IN_PORT_DATA_IRQ_TYPE "NONE"
#define IN_PORT_DATA_NAME "/dev/in_port_data"
#define IN_PORT_DATA_RESET_VALUE 0
#define IN_PORT_DATA_SPAN 16
#define IN_PORT_DATA_TYPE "altera_avalon_pio"


/*
 * in_port_dig_error configuration
 *
 */

#define ALT_MODULE_CLASS_in_port_dig_error altera_avalon_pio
#define IN_PORT_DIG_ERROR_BASE 0x81070
#define IN_PORT_DIG_ERROR_BIT_CLEARING_EDGE_REGISTER 0
#define IN_PORT_DIG_ERROR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IN_PORT_DIG_ERROR_CAPTURE 0
#define IN_PORT_DIG_ERROR_DATA_WIDTH 20
#define IN_PORT_DIG_ERROR_DO_TEST_BENCH_WIRING 0
#define IN_PORT_DIG_ERROR_DRIVEN_SIM_VALUE 0
#define IN_PORT_DIG_ERROR_EDGE_TYPE "NONE"
#define IN_PORT_DIG_ERROR_FREQ 50000000
#define IN_PORT_DIG_ERROR_HAS_IN 1
#define IN_PORT_DIG_ERROR_HAS_OUT 0
#define IN_PORT_DIG_ERROR_HAS_TRI 0
#define IN_PORT_DIG_ERROR_IRQ -1
#define IN_PORT_DIG_ERROR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IN_PORT_DIG_ERROR_IRQ_TYPE "NONE"
#define IN_PORT_DIG_ERROR_NAME "/dev/in_port_dig_error"
#define IN_PORT_DIG_ERROR_RESET_VALUE 0
#define IN_PORT_DIG_ERROR_SPAN 16
#define IN_PORT_DIG_ERROR_TYPE "altera_avalon_pio"


/*
 * in_port_ec_flags configuration
 *
 */

#define ALT_MODULE_CLASS_in_port_ec_flags altera_avalon_pio
#define IN_PORT_EC_FLAGS_BASE 0x81090
#define IN_PORT_EC_FLAGS_BIT_CLEARING_EDGE_REGISTER 0
#define IN_PORT_EC_FLAGS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IN_PORT_EC_FLAGS_CAPTURE 0
#define IN_PORT_EC_FLAGS_DATA_WIDTH 3
#define IN_PORT_EC_FLAGS_DO_TEST_BENCH_WIRING 0
#define IN_PORT_EC_FLAGS_DRIVEN_SIM_VALUE 0
#define IN_PORT_EC_FLAGS_EDGE_TYPE "NONE"
#define IN_PORT_EC_FLAGS_FREQ 50000000
#define IN_PORT_EC_FLAGS_HAS_IN 1
#define IN_PORT_EC_FLAGS_HAS_OUT 0
#define IN_PORT_EC_FLAGS_HAS_TRI 0
#define IN_PORT_EC_FLAGS_IRQ -1
#define IN_PORT_EC_FLAGS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IN_PORT_EC_FLAGS_IRQ_TYPE "NONE"
#define IN_PORT_EC_FLAGS_NAME "/dev/in_port_ec_flags"
#define IN_PORT_EC_FLAGS_RESET_VALUE 0
#define IN_PORT_EC_FLAGS_SPAN 16
#define IN_PORT_EC_FLAGS_TYPE "altera_avalon_pio"


/*
 * in_port_freq_cnt configuration
 *
 */

#define ALT_MODULE_CLASS_in_port_freq_cnt altera_avalon_pio
#define IN_PORT_FREQ_CNT_BASE 0x82020
#define IN_PORT_FREQ_CNT_BIT_CLEARING_EDGE_REGISTER 0
#define IN_PORT_FREQ_CNT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IN_PORT_FREQ_CNT_CAPTURE 0
#define IN_PORT_FREQ_CNT_DATA_WIDTH 16
#define IN_PORT_FREQ_CNT_DO_TEST_BENCH_WIRING 0
#define IN_PORT_FREQ_CNT_DRIVEN_SIM_VALUE 0
#define IN_PORT_FREQ_CNT_EDGE_TYPE "NONE"
#define IN_PORT_FREQ_CNT_FREQ 50000000
#define IN_PORT_FREQ_CNT_HAS_IN 1
#define IN_PORT_FREQ_CNT_HAS_OUT 0
#define IN_PORT_FREQ_CNT_HAS_TRI 0
#define IN_PORT_FREQ_CNT_IRQ -1
#define IN_PORT_FREQ_CNT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IN_PORT_FREQ_CNT_IRQ_TYPE "NONE"
#define IN_PORT_FREQ_CNT_NAME "/dev/in_port_freq_cnt"
#define IN_PORT_FREQ_CNT_RESET_VALUE 0
#define IN_PORT_FREQ_CNT_SPAN 16
#define IN_PORT_FREQ_CNT_TYPE "altera_avalon_pio"


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x810e8
#define JTAG_UART_0_IRQ 0
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * onchip_memory2_0 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2_0 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_0_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 1
#define ONCHIP_MEMORY2_0_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_0_BASE 0x40000
#define ONCHIP_MEMORY2_0_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_0_DUAL_PORT 0
#define ONCHIP_MEMORY2_0_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_INIT_CONTENTS_FILE "q_sys_onchip_memory2_0"
#define ONCHIP_MEMORY2_0_INIT_MEM_CONTENT 0
#define ONCHIP_MEMORY2_0_INSTANCE_ID "CPU1"
#define ONCHIP_MEMORY2_0_IRQ -1
#define ONCHIP_MEMORY2_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_0_NAME "/dev/onchip_memory2_0"
#define ONCHIP_MEMORY2_0_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_0_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_0_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_0_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_0_SIZE_VALUE 196608
#define ONCHIP_MEMORY2_0_SPAN 196608
#define ONCHIP_MEMORY2_0_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_0_WRITABLE 1


/*
 * out_port_batnum configuration
 *
 */

#define ALT_MODULE_CLASS_out_port_batnum altera_avalon_pio
#define OUT_PORT_BATNUM_BASE 0x81050
#define OUT_PORT_BATNUM_BIT_CLEARING_EDGE_REGISTER 0
#define OUT_PORT_BATNUM_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT_PORT_BATNUM_CAPTURE 0
#define OUT_PORT_BATNUM_DATA_WIDTH 10
#define OUT_PORT_BATNUM_DO_TEST_BENCH_WIRING 0
#define OUT_PORT_BATNUM_DRIVEN_SIM_VALUE 0
#define OUT_PORT_BATNUM_EDGE_TYPE "NONE"
#define OUT_PORT_BATNUM_FREQ 50000000
#define OUT_PORT_BATNUM_HAS_IN 0
#define OUT_PORT_BATNUM_HAS_OUT 1
#define OUT_PORT_BATNUM_HAS_TRI 0
#define OUT_PORT_BATNUM_IRQ -1
#define OUT_PORT_BATNUM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT_PORT_BATNUM_IRQ_TYPE "NONE"
#define OUT_PORT_BATNUM_NAME "/dev/out_port_batnum"
#define OUT_PORT_BATNUM_RESET_VALUE 0
#define OUT_PORT_BATNUM_SPAN 16
#define OUT_PORT_BATNUM_TYPE "altera_avalon_pio"


/*
 * out_port_ctrl configuration
 *
 */

#define ALT_MODULE_CLASS_out_port_ctrl altera_avalon_pio
#define OUT_PORT_CTRL_BASE 0x81080
#define OUT_PORT_CTRL_BIT_CLEARING_EDGE_REGISTER 0
#define OUT_PORT_CTRL_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT_PORT_CTRL_CAPTURE 0
#define OUT_PORT_CTRL_DATA_WIDTH 8
#define OUT_PORT_CTRL_DO_TEST_BENCH_WIRING 0
#define OUT_PORT_CTRL_DRIVEN_SIM_VALUE 0
#define OUT_PORT_CTRL_EDGE_TYPE "NONE"
#define OUT_PORT_CTRL_FREQ 50000000
#define OUT_PORT_CTRL_HAS_IN 0
#define OUT_PORT_CTRL_HAS_OUT 1
#define OUT_PORT_CTRL_HAS_TRI 0
#define OUT_PORT_CTRL_IRQ -1
#define OUT_PORT_CTRL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT_PORT_CTRL_IRQ_TYPE "NONE"
#define OUT_PORT_CTRL_NAME "/dev/out_port_ctrl"
#define OUT_PORT_CTRL_RESET_VALUE 0
#define OUT_PORT_CTRL_SPAN 16
#define OUT_PORT_CTRL_TYPE "altera_avalon_pio"


/*
 * out_port_lut_adr configuration
 *
 */

#define ALT_MODULE_CLASS_out_port_lut_adr altera_avalon_pio
#define OUT_PORT_LUT_ADR_BASE 0x82010
#define OUT_PORT_LUT_ADR_BIT_CLEARING_EDGE_REGISTER 0
#define OUT_PORT_LUT_ADR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT_PORT_LUT_ADR_CAPTURE 0
#define OUT_PORT_LUT_ADR_DATA_WIDTH 11
#define OUT_PORT_LUT_ADR_DO_TEST_BENCH_WIRING 0
#define OUT_PORT_LUT_ADR_DRIVEN_SIM_VALUE 0
#define OUT_PORT_LUT_ADR_EDGE_TYPE "NONE"
#define OUT_PORT_LUT_ADR_FREQ 50000000
#define OUT_PORT_LUT_ADR_HAS_IN 0
#define OUT_PORT_LUT_ADR_HAS_OUT 1
#define OUT_PORT_LUT_ADR_HAS_TRI 0
#define OUT_PORT_LUT_ADR_IRQ -1
#define OUT_PORT_LUT_ADR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT_PORT_LUT_ADR_IRQ_TYPE "NONE"
#define OUT_PORT_LUT_ADR_NAME "/dev/out_port_lut_adr"
#define OUT_PORT_LUT_ADR_RESET_VALUE 0
#define OUT_PORT_LUT_ADR_SPAN 16
#define OUT_PORT_LUT_ADR_TYPE "altera_avalon_pio"


/*
 * out_port_lut_data configuration
 *
 */

#define ALT_MODULE_CLASS_out_port_lut_data altera_avalon_pio
#define OUT_PORT_LUT_DATA_BASE 0x82000
#define OUT_PORT_LUT_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define OUT_PORT_LUT_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT_PORT_LUT_DATA_CAPTURE 0
#define OUT_PORT_LUT_DATA_DATA_WIDTH 32
#define OUT_PORT_LUT_DATA_DO_TEST_BENCH_WIRING 0
#define OUT_PORT_LUT_DATA_DRIVEN_SIM_VALUE 0
#define OUT_PORT_LUT_DATA_EDGE_TYPE "NONE"
#define OUT_PORT_LUT_DATA_FREQ 50000000
#define OUT_PORT_LUT_DATA_HAS_IN 0
#define OUT_PORT_LUT_DATA_HAS_OUT 1
#define OUT_PORT_LUT_DATA_HAS_TRI 0
#define OUT_PORT_LUT_DATA_IRQ -1
#define OUT_PORT_LUT_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT_PORT_LUT_DATA_IRQ_TYPE "NONE"
#define OUT_PORT_LUT_DATA_NAME "/dev/out_port_lut_data"
#define OUT_PORT_LUT_DATA_RESET_VALUE 0
#define OUT_PORT_LUT_DATA_SPAN 16
#define OUT_PORT_LUT_DATA_TYPE "altera_avalon_pio"


/*
 * out_port_prodnum configuration
 *
 */

#define ALT_MODULE_CLASS_out_port_prodnum altera_avalon_pio
#define OUT_PORT_PRODNUM_BASE 0x81060
#define OUT_PORT_PRODNUM_BIT_CLEARING_EDGE_REGISTER 0
#define OUT_PORT_PRODNUM_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT_PORT_PRODNUM_CAPTURE 0
#define OUT_PORT_PRODNUM_DATA_WIDTH 10
#define OUT_PORT_PRODNUM_DO_TEST_BENCH_WIRING 0
#define OUT_PORT_PRODNUM_DRIVEN_SIM_VALUE 0
#define OUT_PORT_PRODNUM_EDGE_TYPE "NONE"
#define OUT_PORT_PRODNUM_FREQ 50000000
#define OUT_PORT_PRODNUM_HAS_IN 0
#define OUT_PORT_PRODNUM_HAS_OUT 1
#define OUT_PORT_PRODNUM_HAS_TRI 0
#define OUT_PORT_PRODNUM_IRQ -1
#define OUT_PORT_PRODNUM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT_PORT_PRODNUM_IRQ_TYPE "NONE"
#define OUT_PORT_PRODNUM_NAME "/dev/out_port_prodnum"
#define OUT_PORT_PRODNUM_RESET_VALUE 0
#define OUT_PORT_PRODNUM_SPAN 16
#define OUT_PORT_PRODNUM_TYPE "altera_avalon_pio"


/*
 * product_info_0 configuration
 *
 */

#define ALT_MODULE_CLASS_product_info_0 product_info
#define PRODUCT_INFO_0_BASE 0x810c0
#define PRODUCT_INFO_0_IRQ -1
#define PRODUCT_INFO_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PRODUCT_INFO_0_NAME "/dev/product_info_0"
#define PRODUCT_INFO_0_SPAN 16
#define PRODUCT_INFO_0_TYPE "product_info"


/*
 * sysid_qsys_0 configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys_0 altera_avalon_sysid_qsys
#define SYSID_QSYS_0_BASE 0x810e0
#define SYSID_QSYS_0_ID 1
#define SYSID_QSYS_0_IRQ -1
#define SYSID_QSYS_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_0_NAME "/dev/sysid_qsys_0"
#define SYSID_QSYS_0_SPAN 8
#define SYSID_QSYS_0_TIMESTAMP 1573013051
#define SYSID_QSYS_0_TYPE "altera_avalon_sysid_qsys"


/*
 * timer_0 configuration
 *
 */

#define ALT_MODULE_CLASS_timer_0 altera_avalon_timer
#define TIMER_0_ALWAYS_RUN 0
#define TIMER_0_BASE 0x81020
#define TIMER_0_COUNTER_SIZE 32
#define TIMER_0_FIXED_PERIOD 0
#define TIMER_0_FREQ 50000000
#define TIMER_0_IRQ 1
#define TIMER_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_0_LOAD_VALUE 49999
#define TIMER_0_MULT 0.001
#define TIMER_0_NAME "/dev/timer_0"
#define TIMER_0_PERIOD 1
#define TIMER_0_PERIOD_UNITS "ms"
#define TIMER_0_RESET_OUTPUT 0
#define TIMER_0_SNAPSHOT 1
#define TIMER_0_SPAN 32
#define TIMER_0_TICKS_PER_SEC 1000
#define TIMER_0_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_0_TYPE "altera_avalon_timer"


/*
 * uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_uart_0 altera_avalon_uart
#define UART_0_BASE 0x81000
#define UART_0_BAUD 115200
#define UART_0_DATA_BITS 8
#define UART_0_FIXED_BAUD 1
#define UART_0_FREQ 50000000
#define UART_0_IRQ 2
#define UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define UART_0_NAME "/dev/uart_0"
#define UART_0_PARITY 'N'
#define UART_0_SIM_CHAR_STREAM ""
#define UART_0_SIM_TRUE_BAUD 0
#define UART_0_SPAN 32
#define UART_0_STOP_BITS 1
#define UART_0_SYNC_REG_DEPTH 2
#define UART_0_TYPE "altera_avalon_uart"
#define UART_0_USE_CTS_RTS 0
#define UART_0_USE_EOP_REGISTER 0

#endif /* __SYSTEM_H_ */
