module TestPw(clk,reset,clear,pw0,pw1,pw2,pw3,key0,key1,key2,key3,unlock,lockkey);
input clk;
input reset;
input clear;
input [3:0]pw0;
input [3:0]pw1;
input [3:0]pw2;
input [3:0]pw3;
input [3:0]key0;
input [3:0]key1;
input [3:0]key2;
input [3:0]key3;

output reg unlock;
output reg lockkey;

reg [3:0]count=0;

always@(posedge clk,negedge reset)
begin
	if(count<=5)
	begin
		if((pw0==key0)&&(pw1==key1)&&(pw2==key2)&&(pw3==key3))
			begin
				unlock=1;//lock unlocked
				count=0;
			end
		else 
			begin
				count=count+1;
			end
	end
	else
	begin
		lockkey=1;//lock the key,cannot input password
	end	
end
endmodule
