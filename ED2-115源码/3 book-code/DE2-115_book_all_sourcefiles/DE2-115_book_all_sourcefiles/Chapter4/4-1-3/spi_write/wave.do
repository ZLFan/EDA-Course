onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /spi_write_test/CLK
add wave -noupdate -format Logic /spi_write_test/GO
add wave -noupdate -format Logic /spi_write_test/reset
add wave -noupdate -format Literal /spi_write_test/regdata
add wave -noupdate -format Logic /spi_write_test/SDAT
add wave -noupdate -format Logic /spi_write_test/SPC
add wave -noupdate -format Logic /spi_write_test/SCEN
add wave -noupdate -format Logic /spi_write_test/ORDY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
