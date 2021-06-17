add wave -noupdate -divider {altera_nios2_qsys_be44pvus: top-level ports}
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_irq
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_waitrequest
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_address
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_byteenable
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_read
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_readdata
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_write
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/d_writedata
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/i_waitrequest
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/i_address
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/i_read
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/i_readdata
add wave -noupdate -divider {altera_nios2_qsys_be44pvus: common}
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/clk
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/reset_n
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/F_pcb_nxt
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/F_pcb
add wave -noupdate -format Logic -radix ascii /test_bench/DUT/the_altera_nios2_qsys_be44pvus/F_vinst
add wave -noupdate -format Logic -radix ascii /test_bench/DUT/the_altera_nios2_qsys_be44pvus/D_vinst
add wave -noupdate -format Logic -radix ascii /test_bench/DUT/the_altera_nios2_qsys_be44pvus/R_vinst
add wave -noupdate -format Logic -radix ascii /test_bench/DUT/the_altera_nios2_qsys_be44pvus/E_vinst
add wave -noupdate -format Logic -radix ascii /test_bench/DUT/the_altera_nios2_qsys_be44pvus/W_vinst
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/F_valid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/D_valid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/R_valid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/E_valid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/W_valid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/D_wr_dst_reg
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/D_dst_regnum
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/W_wr_data
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/F_iw
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/D_iw
add wave -noupdate -divider {altera_nios2_qsys_be44pvus: breaks}
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/hbreak_req
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/oci_hbreak_req
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/hbreak_enabled
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_altera_nios2_qsys_be44pvus/wait_for_one_post_bret_inst

configure wave -justifyvalue right
configure wave -signalnamewidth 1
TreeUpdate [SetDefaultTree]
