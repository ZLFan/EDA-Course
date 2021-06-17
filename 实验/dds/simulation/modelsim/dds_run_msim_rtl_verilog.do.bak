transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/EDA/dds {E:/EDA/dds/mem.v}
vlog -vlog01compat -work work +incdir+E:/EDA/dds {E:/EDA/dds/dds.v}

vlog -vlog01compat -work work +incdir+E:/EDA/dds/simulation/modelsim {E:/EDA/dds/simulation/modelsim/dds.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run -all
