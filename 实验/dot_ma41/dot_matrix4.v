module dot_matrix4(clk,b_clk,reset,row,col);
  input clk,b_clk,reset;
  output reg [15:0] row; //行
  output reg [3:0] col;//列
  initial col=4'b0;
  parameter [1:0]s0=2'b00;
  parameter [1:0]s1=2'b01;
  parameter [1:0]s2=2'b10;
  parameter [1:0]s3=2'b11;
  reg [6:0]data;
  reg [2:0]current_state;
  reg [2:0]next_state;
  //col count
  always @(posedge clk)
  begin
    if (!reset) col<=4'b0;
    else 
    begin //利用计数器产生列的 16 种编码：0000-1111
       if(col<15) col<=col+1;
	   else col<=4'b0000;
    end
  end
  //state count 
  always@(posedge b_clk or negedge reset)
  begin
    if(!reset) current_state<=s0;
    else current_state<=next_state;
  end
  //state machine
  always@(posedge b_clk)
  begin
    case(current_state)
      s0:next_state<=s1;
      s1:next_state<=s2;
      s2:next_state<=s3;
      s3:next_state<=s0;
      default:next_state<=s0;
     endcase
  end
  //display 
  always @(posedge b_clk or negedge reset) 
  begin
   case(current_state)
     s0:begin if(!reset) row<=16'b0;//NI
              else begin case (col)
                           4'b0000: row<=16'h0080; //第 1 列
                           4'b0001: row<=16'h0100; 
                           4'b0010: row<=16'h0600; 
                           4'b0011: row<=16'h1FFF; 
                           4'b0100: row<=16'hE000; 
                           4'b0101: row<=16'h0208; 
                           4'b0110: row<=16'h0430; 
                           4'b0111: row<=16'h18C0; 
                           4'b1000: row<=16'hF002; 
                           4'b1001: row<=16'h1001; 
                           4'b1010: row<=16'h13FE; 
                           4'b1011: row<=16'h1000; 
                           4'b1100: row<=16'h1080; 
                           4'b1101: row<=16'h1460; 
                           4'b1110: row<=16'h1818; 
                           4'b1111: row<=16'h0000; //16
                           default: row<=16'h0000;
                         endcase  
                    end
            end
     s1:begin if(!reset) row<=16'b0;//HAO
              else begin case (col)
                           4'b0000: row<=16'h0802; //第 1 列
                           4'b0001: row<=16'h0844; 
                           4'b0010: row<=16'h0FA8; 
                           4'b0011: row<=16'hF810; 
                           4'b0100: row<=16'h0868; 
                           4'b0101: row<=16'h0F86; 
                           4'b0110: row<=16'h0000; 
                           4'b0111: row<=16'h0100; 
                           4'b1000: row<=16'h4102; 
                           4'b1001: row<=16'h4101; 
                           4'b1010: row<=16'h47FE; 
                           4'b1011: row<=16'h4900; 
                           4'b1100: row<=16'h5100; 
                           4'b1101: row<=16'h6100; 
                           4'b1110: row<=16'h0100; 
                           4'b1111: row<=16'h0000; //16
                           default: row<=16'h0000;
                         endcase  
                    end
            end
     s2:begin if(!reset) row<=16'b0;//SHENG
              else begin case (col)
                           4'b0000: row<=16'h0102; //第 1 列
                           4'b0001: row<=16'h0202; 
                           4'b0010: row<=16'h0C42; 
                           4'b0011: row<=16'h7842; 
                           4'b0100: row<=16'h0842; 
                           4'b0101: row<=16'h0842; 
                           4'b0110: row<=16'h0842; 
                           4'b0111: row<=16'hFFFE; 
                           4'b1000: row<=16'h0842; 
                           4'b1001: row<=16'h0842; 
                           4'b1010: row<=16'h0842; 
                           4'b1011: row<=16'h0842; 
                           4'b1100: row<=16'h0842; 
                           4'b1101: row<=16'h0802; 
                           4'b1110: row<=16'h0002; 
                           4'b1111: row<=16'h0000; //16
                           default: row<=16'h0000;
                         endcase  
                    end
           end
     s3:begin if(!reset) row<=16'b0;//HUO
              else begin case (col)
                           4'b0000: row<=16'h0820; //第 1 列
                           4'b0001: row<=16'h0620; 
                           4'b0010: row<=16'h047E; 
                           4'b0011: row<=16'h3180; 
                           4'b0100: row<=16'h0000; 
                           4'b0101: row<=16'h0400; 
                           4'b0110: row<=16'h247F; 
                           4'b0111: row<=16'h2442; 
                           4'b1000: row<=16'h2442; 
                           4'b1001: row<=16'h7FC2; 
                           4'b1010: row<=16'h4442; 
                           4'b1011: row<=16'hC442; 
                           4'b1100: row<=16'h447F; 
                           4'b1101: row<=16'h0400; 
                           4'b1110: row<=16'h0400; 
                           4'b1111: row<=16'h0000; //16
                           default: row<=16'h0000;
                         endcase  
                    end
            end
     default:begin if(!reset) row<=16'b0;//NI
                   else begin case (col)
                           4'b0000: row<=16'h0080; //第 1 列
                           4'b0001: row<=16'h0100; 
                           4'b0010: row<=16'h0600; 
                           4'b0011: row<=16'h1FFF; 
                           4'b0100: row<=16'hE000; 
                           4'b0101: row<=16'h0208; 
                           4'b0110: row<=16'h0430; 
                           4'b0111: row<=16'h18C0; 
                           4'b1000: row<=16'hF002; 
                           4'b1001: row<=16'h1001; 
                           4'b1010: row<=16'h13FE; 
                           4'b1011: row<=16'h1000; 
                           4'b1100: row<=16'h1080; 
                           4'b1101: row<=16'h1460; 
                           4'b1110: row<=16'h1818; 
                           4'b1111: row<=16'h0000; //16
                           default: row<=16'h0000;
                              endcase  
                        end 
             end             
    endcase
   end
endmodule
