module seg7(clk,en,a,b,c,d,e,f,g,dp,ds);
  input clk;
  input[7:0] en;
  output a,b,c,d,e,f,g,dp;
  reg [7:0] seg; //g,f,e,d,c,b,a,dp
  reg [2:0] choice;
  output reg [7:0] ds;
  //choice++
  always @(posedge clk)
  choice = choice+1;
  //show
  always@(choice)
  begin
    case(choice)
       3'b000: begin//0
		       seg = 8'b00001110; //g,f,e,d,c,b,a,dp
		       if(en[0])  ds = 8'b01111111;
		       else ds = 8'b11111111;  end
       3'b001: begin//1
		       seg = 8'b11111010;
		       if(en[1])  ds = 8'b10111111;
		       else ds = 8'b11111111;  end
       3'b010: begin//2
		       seg = 8'b11011010;
		       if(en[2])  ds = 8'b11011111;
		       else ds = 8'b11111111;  end
       3'b011: begin//3
		       seg = 8'b11001100;
		       if(en[3])  ds = 8'b11101111;
		       else ds = 8'b11111111;  end
       3'b100: begin//4
		       seg = 8'b10011110;
		       if(en[4])  ds = 8'b11110111;
		       else ds = 8'b11111111;  end
       3'b101: begin//5
		       seg = 8'b10110110;
		       if(en[5])  ds = 8'b11111011;
		       else ds = 8'b11111111;  end
       3'b110: begin//6
		       seg = 8'b00001100;
		       if(en[6])  ds = 8'b11111101;
		       else ds = 8'b11111111;  end
       3'b111: begin//7
		       seg = 8'b01111110;
		       if(en[7])  ds = 8'b11111110;
		       else ds = 8'b11111111;  end
      default: seg = 8'b00000000;
    endcase
  end
  //assgin seg
  assign dp = seg[0];
  assign a = seg[1];
  assign b = seg[2];
  assign c = seg[3];
  assign d = seg[4];
  assign e = seg[5];
  assign f = seg[6];
  assign g = seg[7];
endmodule

