module fsm7(clk,rst,cq);
 input clk;
 input rst;
 output reg[3:0]cq;
 //status machine
 //machine state decode
 parameter s1=3'b000;
 parameter s2=3'b010;
 parameter s3=3'b101;
 parameter s4=3'b011;
 parameter s5=3'b100;
 parameter s6=3'b110;
 parameter s7=3'b001;
 //machine variable
 reg [2:0] next_state;
 reg [2:0] current_state;
 //(1)state transfer(shi xv luo ji)
 always@(posedge clk or negedge rst)
 begin
  if(!rst)
  begin 
   current_state<=s1;
  end
  else 
  begin
   current_state<=next_state;
  end
 end
 //(2)state switch
 always @(*)
 begin
  case(current_state)
  s1:next_state=s2;
  s2:next_state=s3;
  s3:next_state=s4;
  s4:next_state=s5;
  s5:next_state=s6;
  s6:next_state=s7;
  s7:next_state=s2;
  default:next_state=s1;
  endcase
 end
 //(3)output
 always@(*)
 case(current_state)
 s1:cq=4'b0000;
 s2:cq=4'b0010;
 s3:cq=4'b0101;
 s4:cq=4'b0011;
 s5:cq=4'b0100;
 s6:cq=4'b0110;
 s7:cq=4'b0001;
 default:cq=3'b000;
 endcase

endmodule
