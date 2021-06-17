module seven(clk,en,a,b,c,d,e,f,g,dp,sel);
input clk;
input [7:0]en;
output a,b,c,d,e,f,g;
output reg [7:0]sel;
output dp;
parameter [2:0]s1=000;
parameter [2:0]s2=001;
parameter [2:0]s3=010;
parameter [2:0]s4=011;
parameter [2:0]s5=100;
parameter [2:0]s6=101;
parameter [2:0]s7=110;
parameter [2:0]s8=111;

reg[7:0]data;
reg [2:0]current_state;
reg [2:0]next_state;

//reg [2:0]count;
always@(posedge clk)
begin
 current_state<=next_state;
end

always@(posedge clk)
begin
 case(current_state)
  s1:next_state<=s2;
  s2:next_state<=s3;
  s3:next_state<=s4;
  s4:next_state<=s5;
  s5:next_state<=s6;
  s6:next_state<=s7;
  s7:next_state<=s8;
  s8:next_state<=s1;
  default:next_state=s1;
 endcase
end

always@(posedge clk or negedge en)
begin
 case(current_state)
  s1:
   begin 
    if(en[0]) 
     begin 
      sel<=8'b01111111;
      data<=8'b00001100;
     end 
    else
	 begin
      sel<=8'b11111111;
      data<=8'b00001100;
     end
   end
  s2:
   begin 
    if(en[1]) 
     begin 
      sel<=8'b10111111;
      data<=8'b10110110;
     end 
    else
     begin 
      sel<=8'b11111111;
      data<=8'b10110110;
     end
   end
  s3:
   begin 
    if(en[2]) 
     begin 
      sel<=8'b11011111;
      data<=8'b10011110;
     end 
    else
     begin 
      sel<=8'b11111111;
      data<=8'b10011110;
     end
   end
  s4:
   begin 
    if(en[3]) 
     begin 
      sel<=8'b11101111;
      data<=8'b11001100;
     end 
    else
     begin 
      sel<=8'b11111111;
      data<=8'b11001100;
     end
   end
  s5:
   begin 
    if(en[4]) 
     begin 
      sel<=8'b11110111;
      data<=8'b11011010;
     end 
    else
     begin 
      sel<=8'b11111111;
      data<=8'b11011010;
     end
   end
  s6:
   begin 
    if(en[5]) 
     begin 
      sel<=8'b11111011;
      data<=8'b11111010;
     end 
    else
     begin 
      sel<=8'b11111111;
      data<=8'b11111010;
     end
   end
  s7:
   begin 
    if(en[6]) 
     begin 
      sel<=8'b11111101;
      data<=8'b00001110;
     end 
    else
     begin 
      sel<=8'b11111111;
      data<=8'b00001110;
     end
   end
  s8:
   begin 
    if(en[7]) 
     begin 
      sel<=8'b11111110;
      data<=8'b11111110;
     end 
    else
     begin 
      sel<=8'b11111110;
      data<=8'b11111110;
     end
   end
  default:
   begin 
     sel<=8'b11111111;
     data<=8'b00000000;
     end
 endcase
end

assign a=data[1];
assign b=data[2];
assign c=data[3];
assign d=data[4];
assign e=data[5];
assign f=data[6];
assign g=data[7];
assign dp=0;
endmodule
