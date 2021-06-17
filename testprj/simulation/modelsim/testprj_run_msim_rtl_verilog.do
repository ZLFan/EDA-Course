transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/EDA/bigwork {E:/EDA/bigwork/divclk.v}

vlog -vlog01compat -work work +incdir+E:/EDA/testprj/simulation/modelsim {E:/EDA/testprj/simulation/modelsim/divclk.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  divclk_vlg_tst

add wave *
view structure
view signals
run -all
