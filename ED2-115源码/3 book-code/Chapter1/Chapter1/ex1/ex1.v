module ex1 (sw,led_red);

	// Input Port(s)
	input [1:0] sw;

	// Output Port(s)
	output [3:0] led_red;

// Variable
reg led;

// Continous Assignment
assign led_red[0] = sw[0] ? 1'b1 : 1'b0;
assign led_red[1] = sw[1] ? 1'b1 : 1'b0;
assign led_red[2] = (sw[0]==sw[1]) ? 1'b1 : 1'b0;
assign led_red[3] = led;

// Always Construct(Combinational)
always@(sw)
begin
	if (sw[0])
	   if (sw[1])
	      led = 1'b1;
	   else
		   led = 1'b0;
	else
	   led = 1'b0;
end
endmodule
