module Melody(clk,code,speaker);
  input clk;
  input [4:0]code;
  output speaker;
  reg[18:0]tone;
  reg[18:0]cnt;
  reg clk_temp;
  assign speaker=clk_temp;
  always@(posedge clk)
  begin
	case(code)
	5'd0:Tone<=134;
	5'd1:Tone<=95547 ;
    5'd2:Tone<=85135 ;
    5'd3:Tone<=75838 ;
    5'd4:Tone<=71582 ;
    5'd5:Tone<=63776 ;
    5'd6:Tone<=56818 ;
    5'd7:Tone<=50618 ;
    5'd11:Tone<=47778 ;
    5'd12:Tone<=42564 ;
    5'd13:Tone<=37922 ;
    5'd14:Tone<=35794 ;
    5'd15:Tone<=31888 ;
    5'd16:Tone<=28409 ;
    5'd17:Tone<=25310 ;
    5'd21:Tone<=23889 ;
    5'd22:Tone<=21286 ;
    5'd23:Tone<=18961 ;
    5'd24:Tone<=16892 ;
    5'd25:Tone<=15944 ;
    5'd26:Tone<=14205 ;
    5'd27:Tone<=12655 ;
	default: Tone<=524000;
	endcase
  if(cnt==Tone/2-1)//divi clk number
	begin
		clk_temp=~clk_temp;
		cnt<=0;
	end
  else cnt<=cnt+1;//adder
endmodule
