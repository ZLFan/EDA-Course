transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {I2C_write.vo}

vlog -vlog01compat -work work +incdir+D:/DE2_115/lyp/I2C_write {D:/DE2_115/lyp/I2C_write/I2C_write_test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L stratixii_ver -L gate_work -L work -voptargs="+acc" I2C_write_test

add wave *
view structure
view signals
run 3 us
