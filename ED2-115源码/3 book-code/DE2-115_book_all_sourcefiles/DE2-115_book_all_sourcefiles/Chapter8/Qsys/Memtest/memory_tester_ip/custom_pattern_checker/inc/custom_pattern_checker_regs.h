#ifndef __CUSTOM_PATTERN_CHECKER_REGS_H__
#define __CUSTOM_PATTERN_CHECKER_REGS_H__


// individual 32-bit registers with byte addressing
#define CHECKER_PAYLOAD_LENGTH_REG   					                0x0    /*    r/w    */
#define CHECKER_PATTERN_SETTINGS_REG                          0x4    /*    r/w    */
#define CHECKER_CONTROL_REG                                   0x8    /*    r/w    */
#define CHECKER_STATUS_REG                                    0xC    /*   r/clr   */


// payload register
#define CHECKER_PAYLOAD_LENGTH_MASK                           0xFFFFFFFF
#define CHECKER_PAYLOAD_LENGTH_BYTE_OFFSET                    0
#define CHECKER_PAYLOAD_LENGTH_BIT_OFFSET                     0


// pattern settings registers
#define CHECKER_PATTERN_LENGTH_MASK                           0x0000FFFF
#define CHECKER_PATTERN_LENGTH_BYTE_OFFSET                    0
#define CHECKER_PATTERN_LENGTH_BIT_OFFSET                     0

#define CHECKER_PATTERN_POSITION_MASK                         0xFFFF0000
#define CHECKER_PATTERN_POSITION_BYTE_OFFSET                  2
#define CHECKER_PATTERN_POSITION_BIT_OFFSET                   16


// control register
#define CHECKER_INFINITE_PAYLOAD_LENGTH_ENABLE_MASK           0x00000001
#define CHECKER_INFINITE_PAYLOAD_LENGTH_ENABLE_BYTE_OFFSET    0
#define CHECKER_INFINITE_PAYLOAD_LENGTH_ENABLE_BIT_OFFSET     0

#define CHECKER_STOP_ON_FAIL_MASK                             0x00000100
#define CHECKER_STOP_ON_FAIL_BYTE_OFFSET                      1
#define CHECKER_STOP_ON_FAIL_BIT_OFFSET                       8

#define CHECKER_RUN_MASK                                      0x01000000
#define CHECKER_RUN_BYTE_OFFSET                               3
#define CHECKER_RUN_BIT_OFFSET                                24


// status register
#define CHECKER_FAILURE_DETECTED_MASK                         0x00000001
#define CHECKER_FAILURE_DETECTED_BYTE_OFFSET                  0
#define CHECKER_FAILURE_DETECTED_BIT_OFFSET                   0


#endif /* __CUSTOM_PATTERN_CHECKER_REGS_H__ */


/******************************************************************************
*                                                                             *
* License Agreement                                                           *
*                                                                             *
* Copyright (c) 2010 Altera Corporation, San Jose, California, USA.           *
* All rights reserved.                                                        *
*                                                                             *
* Permission is hereby granted, free of charge, to any person obtaining a     *
* copy of this software and associated documentation files (the "Software"),  *
* to deal in the Software without restriction, including without limitation   *
* the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
* and/or sell copies of the Software, and to permit persons to whom the       *
* Software is furnished to do so, subject to the following conditions:        *
*                                                                             *
* The above copyright notice and this permission notice shall be included in  *
* all copies or substantial portions of the Software.                         *
*                                                                             *
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
* DEALINGS IN THE SOFTWARE.                                                   *
*                                                                             *
* This agreement shall be governed in all respects by the laws of the State   *
* of California and by the laws of the United States of America.              *
* Altera does not recommend, suggest or require that this reference design    *
* file be used in conjunction or combination with any other product.          *
******************************************************************************/
