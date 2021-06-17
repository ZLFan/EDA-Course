module BASIC(
	CLOCK_50,
	KEY,
	LEDG
);

input		          		CLOCK_50;
input		     [3:0]		KEY;
output	reg  [8:0]		LEDG;

reg          [2:0]    key0_dly;

always @(posedge CLOCK_50)
begin
	  if (!key0_dly[2] && key0_dly[1])
       LEDG[0] <= ~LEDG[0];       
    key0_dly <= {key0_dly[1:0],KEY[0]};
end

endmodule
