module BASIC(
	CLOCK_50,
	KEY,
	LEDG
);

input		          		CLOCK_50;
input		     [3:0]		KEY;
output	reg  [8:0]		LEDG;

always @(posedge KEY[0])
    LEDG[0] <= ~LEDG[0];

endmodule
