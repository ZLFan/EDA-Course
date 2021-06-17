module ChangePw(clk,reset,change,pw0,pw1,pw2,pw3,key0,key1,key2,key3);
input clk;
input reset;
input change;
input [3:0]pw0;
input [3:0]pw1;
input [3:0]pw2;
input [3:0]pw3;
output reg [3:0]key0;
output reg [3:0]key1;
output reg [3:0]key2;
output reg [3:0]key3;

always@(posedge clk,negedge reset)
begin
	if(reset || !change)
	begin
		key0=6;
		key1=6;
		key2=6;
		key3=6;
	end
	else
	begin
		key0=pw0;
		key1=pw1;
		key2=pw2;
		key3=pw3;
	end
end
endmodule
