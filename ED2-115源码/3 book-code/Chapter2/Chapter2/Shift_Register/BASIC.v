module BASIC(
	CLOCK_50,
	KEY,
	LEDG
);

input		          		CLOCK_50;
input		     [3:0]		KEY;
output	reg  [8:0]		LEDG;

reg          [2:0]    key0_dly;
reg          [2:0]    key1_dly;

always @(posedge CLOCK_50)
begin
	  if (!key0_dly[2] && key0_dly[1])
       LEDG[0] <= ~LEDG[0];       
	  if (!key1_dly[2] && key1_dly[1])
       LEDG[7:1] <= LEDG[6:0];       
    key0_dly <= {key0_dly[1:0],KEY[0]};
    key1_dly <= {key1_dly[1:0],KEY[1]};
end

endmodule
