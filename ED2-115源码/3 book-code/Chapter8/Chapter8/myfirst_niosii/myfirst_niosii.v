module myfirst_niosii (
CLOCK_50,
LED
);
input CLOCK_50;
output [7:0] LED;
DE2_115_SOPC DE2_115_SOPC_inst
(
.clk_0_clk (CLOCK_50),
.reset_0_reset_n (1'b1),
.led_export (LED)
);
endmodule