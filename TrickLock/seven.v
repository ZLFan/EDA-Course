module seven(clear,pw0,pw1,pw2,pw3,reset,A,B,C,D,E,F,G,DS,DP);
input [3:0]pw0;
input [3:0]pw1;
input [3:0]pw2;
input [3:0]pw3;
input clear,reset;
output [3:0]DS;
output A,B,C,D,E,F,G,DP;
reg[7:0]seg;
assign DS=0000;
always @(pw0 or  clear or  reset)
begin
	if(clear==1||reset==1) 
		begin	seg=8'b00000000;end
	else begin
   case(pw0)
          4'b0000:seg=8'b01111110;
          4'b0001:seg=8'b00001100;
          4'b0010:seg=8'b10110110;
          4'b0011:seg=8'b10011110;
          4'b0100:seg=8'b11001100;
          4'b0101:seg=8'b11011010;
          4'b0110:seg=8'b11111010;
          4'b0111:seg=8'b00001110;
          4'b1000:seg=8'b11111110;
          4'b1001:seg=8'b11011110;
          4'b1010:seg=8'b11101110;
          4'b1011:seg=8'b11111000;
          4'b1100:seg=8'b01110010;
          4'b1101:seg=8'b10111100;
          4'b1110:seg=8'b11110010;
          4'b1111:seg=8'b11100010;
          default:seg=8'b00000000;
   endcase
   end
end
always @(pw1 or  clear or  reset)
begin
	if(clear==1||reset==1) 
		begin	seg=8'b00000000;end
	else begin
   case(pw1)
          4'b0000:seg=8'b01111110;
          4'b0001:seg=8'b00001100;
          4'b0010:seg=8'b10110110;
          4'b0011:seg=8'b10011110;
          4'b0100:seg=8'b11001100;
          4'b0101:seg=8'b11011010;
          4'b0110:seg=8'b11111010;
          4'b0111:seg=8'b00001110;
          4'b1000:seg=8'b11111110;
          4'b1001:seg=8'b11011110;
          4'b1010:seg=8'b11101110;
          4'b1011:seg=8'b11111000;
          4'b1100:seg=8'b01110010;
          4'b1101:seg=8'b10111100;
          4'b1110:seg=8'b11110010;
          4'b1111:seg=8'b11100010;
          default:seg=8'b00000000;
   endcase
   end
end
always @(pw2 or clear or reset)
begin
	if(clear==1||reset==1) 
		begin	seg=8'b00000000;end
	else begin
   case(pw2)
          4'b0000:seg=8'b01111110;
          4'b0001:seg=8'b00001100;
          4'b0010:seg=8'b10110110;
          4'b0011:seg=8'b10011110;
          4'b0100:seg=8'b11001100;
          4'b0101:seg=8'b11011010;
          4'b0110:seg=8'b11111010;
          4'b0111:seg=8'b00001110;
          4'b1000:seg=8'b11111110;
          4'b1001:seg=8'b11011110;
          4'b1010:seg=8'b11101110;
          4'b1011:seg=8'b11111000;
          4'b1100:seg=8'b01110010;
          4'b1101:seg=8'b10111100;
          4'b1110:seg=8'b11110010;
          4'b1111:seg=8'b11100010;
          default:seg=8'b00000000;
   endcase
   end
end
always @(pw3 or clear or  reset)
begin
	if(clear==1||reset==1) 
		begin	seg=8'b00000000;end
	else begin
   case(pw3)
          4'b0000:seg=8'b01111110;
          4'b0001:seg=8'b00001100;
          4'b0010:seg=8'b10110110;
          4'b0011:seg=8'b10011110;
          4'b0100:seg=8'b11001100;
          4'b0101:seg=8'b11011010;
          4'b0110:seg=8'b11111010;
          4'b0111:seg=8'b00001110;
          4'b1000:seg=8'b11111110;
          4'b1001:seg=8'b11011110;
          4'b1010:seg=8'b11101110;
          4'b1011:seg=8'b11111000;
          4'b1100:seg=8'b01110010;
          4'b1101:seg=8'b10111100;
          4'b1110:seg=8'b11110010;
          4'b1111:seg=8'b11100010;
          default:seg=8'b00000000;
   endcase
   end
end
 assign A=seg[1];
 assign B=seg[2];
 assign C=seg[3];
 assign D=seg[4];
 assign E=seg[5];
 assign F=seg[6];
 assign G=seg[7];
 assign DP=seg[0];
endmodule