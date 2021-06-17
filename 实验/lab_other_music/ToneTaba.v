module ToneTaba(iclk,code,speaker);
input iclk;
input [4:0] code;
output speaker;

reg [18:0]Tone;
reg [18:0]cnt;
reg clk_temp;
assign speaker=clk_temp;
always@(posedge iclk)
begin
	case(code)
	5'd0:Tone<=134;
	5'd01:Tone<=494 ;
	5'd02:Tone<=554 ;
	5'd03:Tone<=622 ;
	5'd04:Tone<=659 ;
	5'd05:Tone<=740 ;
	5'd06:Tone<=831 ;
	5'd07:Tone<=932 ;
	5'd11:Tone<=988 ;
	5'd12:Tone<=1109 ;
	5'd13:Tone<=1245 ;
	5'd14:Tone<=1318 ;
	5'd15:Tone<=1480 ;
	5'd16:Tone<=1661 ;
	5'd17:Tone<=1865 ;
	5'd21:Tone<=1976 ;
	5'd22:Tone<=2218 ;
	5'd23:Tone<=2490 ;
	5'd24:Tone<=2636 ;
	5'd25:Tone<=2960 ;
	5'd26:Tone<=2322 ;
	5'd27:Tone<=3730 ;
	default: Tone<=134;
	endcase
	if(cnt==(50000000/Tone)/2-1)
		begin
		clk_temp=~clk_temp;
		cnt<=0;
		end
	else cnt<=cnt+1;
end


endmodule
