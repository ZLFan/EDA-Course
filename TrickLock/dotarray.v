module dotarray(reset,clear,change,lockkey,unlock,clk,b_clk,row2,col2);
input reset,clear,change,lockkey,unlock,clk,b_clk;
output reg [15:0] row2; //行
output reg [3:0] col2;//列
initial col2=4'b0;
parameter [1:0]s0=2'b00;
parameter [1:0]s1=2'b01;
parameter [1:0]s2=2'b10;
parameter [1:0]s3=2'b11;
reg [6:0]data;
reg [3:0]current_state;
reg [3:0]next_state;
  //col count
always @(posedge clk)
  begin
   if (!reset) col2<=4'b0;
   else 
    begin //利用计数器产生列的 16 种编码：0000-1111
     if(col2<15) col2<=col2+1;
     else col2<=4'b0000;
    end
  end
  //state count 
always@(posedge b_clk)
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
 always @(posedge b_clk) 
 begin
   if(reset==1)
   begin
	case(current_state)
		s0:begin case (col2)
                 4'b0000: row2<=16'h0401; //第 1 列
                 4'b0001: row2<=16'h0809; //2
                 4'b0010: row2<=16'h1009; //3
                 4'b0011: row2<=16'hEF92; //4
                 4'b0100: row2<=16'h2AB2; //5
                 4'b0101: row2<=16'h2AEA; //6
                 4'b0110: row2<=16'h2AA4;
                 4'b0111: row2<=16'h2AA4; 
                 4'b1000: row2<=16'h2AA4; 
                 4'b1001: row2<=16'h2AAA; 
                 4'b1010: row2<=16'h2ABA; 
                 4'b1011: row2<=16'h2FA2; 
                 4'b1100: row2<=16'h2001; 
                 4'b1101: row2<=16'h2001; 
                 4'b1110: row2<=16'h0001; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         s1:begin case (col2)
                 4'b0000: row2<=16'h0080; //第 1 列
                 4'b0001: row2<=16'h0100; //2
                 4'b0010: row2<=16'h0600; //3
                 4'b0011: row2<=16'h1FFF; //4
                 4'b0100: row2<=16'hE002; //5
                 4'b0101: row2<=16'h0802; //6
                 4'b0110: row2<=16'h0982;
                 4'b0111: row2<=16'h087A; 
                 4'b1000: row2<=16'h8802; 
                 4'b1001: row2<=16'h6802; 
                 4'b1010: row2<=16'h080E; 
                 4'b1011: row2<=16'h0872; 
                 4'b1100: row2<=16'h0B82; 
                 4'b1101: row2<=16'h0802; 
                 4'b1110: row2<=16'h0002; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         default:begin case (col2)
                 4'b0000: row2<=16'h0080; //第 1 列
                 4'b0001: row2<=16'h0100; //2
                 4'b0010: row2<=16'h0600; //3
                 4'b0011: row2<=16'h1FFF; //4
                 4'b0100: row2<=16'hE002; //5
                 4'b0101: row2<=16'h0802; //6
                 4'b0110: row2<=16'h0982;
                 4'b0111: row2<=16'h087A; 
                 4'b1000: row2<=16'h8802; 
                 4'b1001: row2<=16'h6802; 
                 4'b1010: row2<=16'h080E; 
                 4'b1011: row2<=16'h0872; 
                 4'b1100: row2<=16'h0B82; 
                 4'b1101: row2<=16'h0802; 
                 4'b1110: row2<=16'h0002; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
     endcase
     end
     else if(clear==1)
        begin
	case(current_state)
		s0:begin case (col2)
                 4'b0000: row2<=16'h0820; //第 1 列
                 4'b0001: row2<=16'h0620; //2
                 4'b0010: row2<=16'h407E; //3
                 4'b0011: row2<=16'h3180; //4
                 4'b0100: row2<=16'h0000; //5
                 4'b0101: row2<=16'h2200; //6
                 4'b0110: row2<=16'h2AFF;
                 4'b0111: row2<=16'h2AA8; 
                 4'b1000: row2<=16'h2AA8; 
                 4'b1001: row2<=16'hFEA8; 
                 4'b1010: row2<=16'h2AAA; 
                 4'b1011: row2<=16'h2AA9; 
                 4'b1100: row2<=16'h2AFE; 
                 4'b1101: row2<=16'h2200; 
                 4'b1110: row2<=16'h0200; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         s1:begin case (col2)
                 4'b0000: row2<=16'h0820; //第 1 列
                 4'b0001: row2<=16'h3020; //2
                 4'b0010: row2<=16'hA040; //3
                 4'b0011: row2<=16'hAA50; //4
                 4'b0100: row2<=16'hAA90; //5
                 4'b0101: row2<=16'hAA94; //6
                 4'b0110: row2<=16'hA154;
                 4'b0111: row2<=16'hFE32; 
                 4'b1000: row2<=16'hA112; 
                 4'b1001: row2<=16'hAA95; 
                 4'b1010: row2<=16'hAA98; 
                 4'b1011: row2<=16'hAA40; 
                 4'b1100: row2<=16'hA040; 
                 4'b1101: row2<=16'h2820; 
                 4'b1110: row2<=16'h3020; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         default:begin case (col2)
                 4'b0000: row2<=16'h0820; //第 1 列
                 4'b0001: row2<=16'h3020; //2
                 4'b0010: row2<=16'hA040; //3
                 4'b0011: row2<=16'hAA50; //4
                 4'b0100: row2<=16'hAA90; //5
                 4'b0101: row2<=16'hAA94; //6
                 4'b0110: row2<=16'hA154;
                 4'b0111: row2<=16'hFE32; 
                 4'b1000: row2<=16'hA112; 
                 4'b1001: row2<=16'hAA95; 
                 4'b1010: row2<=16'hAA98; 
                 4'b1011: row2<=16'hAA40; 
                 4'b1100: row2<=16'hA040; 
                 4'b1101: row2<=16'h2820; 
                 4'b1110: row2<=16'h3020; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
     endcase
     end
     else if(unlock==1)
        begin
	case(current_state)
		s0:begin case (col2)
                 4'b0000: row2<=16'h0002; //第 1 列
                 4'b0001: row2<=16'h0002; //2
                 4'b0010: row2<=16'h0002; //3
                 4'b0011: row2<=16'h0002; //4
                 4'b0100: row2<=16'h0002; //5
                 4'b0101: row2<=16'h0002; //6
                 4'b0110: row2<=16'hFEFE;
                 4'b0111: row2<=16'h0202; 
                 4'b1000: row2<=16'h0202; 
                 4'b1001: row2<=16'h0202; 
                 4'b1010: row2<=16'h0202; 
                 4'b1011: row2<=16'h0202; 
                 4'b1100: row2<=16'h0202; 
                 4'b1101: row2<=16'h0002; 
                 4'b1110: row2<=16'h0002; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         s1:begin case (col2)
                 4'b0000: row2<=16'h0480; //第 1 列
                 4'b0001: row2<=16'h0880; //2
                 4'b0010: row2<=16'h3480; //3
                 4'b0011: row2<=16'hE7FE; //4
                 4'b0100: row2<=16'h2484; //5
                 4'b0101: row2<=16'h2488; //6
                 4'b0110: row2<=16'h0001;
                 4'b0111: row2<=16'h47F2; 
                 4'b1000: row2<=16'h3404; 
                 4'b1001: row2<=16'h0408; 
                 4'b1010: row2<=16'hFDF0; 
                 4'b1011: row2<=16'h0408; 
                 4'b1100: row2<=16'h1404; 
                 4'b1101: row2<=16'h67F2; 
                 4'b1110: row2<=16'h0001; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         default:begin case (col2)
                 4'b0000: row2<=16'h0480; //第 1 列
                 4'b0001: row2<=16'h0880; //2
                 4'b0010: row2<=16'h3480; //3
                 4'b0011: row2<=16'hE7FE; //4
                 4'b0100: row2<=16'h2484; //5
                 4'b0101: row2<=16'h2488; //6
                 4'b0110: row2<=16'h0001;
                 4'b0111: row2<=16'h47F2; 
                 4'b1000: row2<=16'h3404; 
                 4'b1001: row2<=16'h0408; 
                 4'b1010: row2<=16'hFDF0; 
                 4'b1011: row2<=16'h0408; 
                 4'b1100: row2<=16'h1404; 
                 4'b1101: row2<=16'h67F2; 
                 4'b1110: row2<=16'h0001; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
     endcase
     end
     else if(lockkey==1)
        begin
	case(current_state)
		s0:begin case (col2)
                 4'b0000: row2<=16'h0000; //第 1 列
                 4'b0001: row2<=16'h0000; //2
                 4'b0010: row2<=16'h47FC; //3
                 4'b0011: row2<=16'h4102; //4
                 4'b0100: row2<=16'h4102; //5
                 4'b0101: row2<=16'h4102; //6
                 4'b0110: row2<=16'h4102;
                 4'b0111: row2<=16'h4102; 
                 4'b1000: row2<=16'h4102; 
                 4'b1001: row2<=16'h4102; 
                 4'b1010: row2<=16'h4102; 
                 4'b1011: row2<=16'h7F02; 
                 4'b1100: row2<=16'h0002; 
                 4'b1101: row2<=16'h001E; 
                 4'b1110: row2<=16'h0000; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         s1:begin case (col2)
                 4'b0000: row2<=16'h0480; //第 1 列
                 4'b0001: row2<=16'h0880; //2
                 4'b0010: row2<=16'h3480; //3
                 4'b0011: row2<=16'hE7FE; //4
                 4'b0100: row2<=16'h2484; //5
                 4'b0101: row2<=16'h2488; //6
                 4'b0110: row2<=16'h0001;
                 4'b0111: row2<=16'h47F2; 
                 4'b1000: row2<=16'h3404; 
                 4'b1001: row2<=16'h0408; 
                 4'b1010: row2<=16'hFDF0; 
                 4'b1011: row2<=16'h0408; 
                 4'b1100: row2<=16'h1404; 
                 4'b1101: row2<=16'h67F2; 
                 4'b1110: row2<=16'h0001; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         default:begin case (col2)
                 4'b0000: row2<=16'h0480; //第 1 列
                 4'b0001: row2<=16'h0880; //2
                 4'b0010: row2<=16'h3480; //3
                 4'b0011: row2<=16'hE7FE; //4
                 4'b0100: row2<=16'h2484; //5
                 4'b0101: row2<=16'h2488; //6
                 4'b0110: row2<=16'h0001;
                 4'b0111: row2<=16'h47F2; 
                 4'b1000: row2<=16'h3404; 
                 4'b1001: row2<=16'h0408; 
                 4'b1010: row2<=16'hFDF0; 
                 4'b1011: row2<=16'h0408; 
                 4'b1100: row2<=16'h1404; 
                 4'b1101: row2<=16'h67F2; 
                 4'b1110: row2<=16'h0001; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
     endcase
     end
     else if(change==1)
        begin
	case(current_state)
		s0:begin case (col2)
                 4'b0000: row2<=16'h0001; //第 1 列
                 4'b0001: row2<=16'h0006; //2
                 4'b0010: row2<=16'h1FF8; //3
                 4'b0011: row2<=16'h1100; //4
                 4'b0100: row2<=16'h1108; //5
                 4'b0101: row2<=16'h1104; //6
                 4'b0110: row2<=16'h11F8;
                 4'b0111: row2<=16'h1001; 
                 4'b1000: row2<=16'h1002; 
                 4'b1001: row2<=16'hFF84; 
                 4'b1010: row2<=16'h1068; 
                 4'b1011: row2<=16'h9018; 
                 4'b1100: row2<=16'h5064; 
                 4'b1101: row2<=16'h1382; 
                 4'b1110: row2<=16'h101F; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         s1:begin case (col2)
                 4'b0000: row2<=16'h0000; //第 1 列
                 4'b0001: row2<=16'h1008; //2
                 4'b0010: row2<=16'h100C; //3
                 4'b0011: row2<=16'h1008; //4
                 4'b0100: row2<=16'h1FF8; //5
                 4'b0101: row2<=16'h1011; //6
                 4'b0110: row2<=16'h1010;
                 4'b0111: row2<=16'h1012; 
                 4'b1000: row2<=16'h080C; 
                 4'b1001: row2<=16'h0870; 
                 4'b1010: row2<=16'hFF80; 
                 4'b1011: row2<=16'h0803; 
                 4'b1100: row2<=16'h0800; 
                 4'b1101: row2<=16'h0802; 
                 4'b1110: row2<=16'h0FFC; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         default:begin case (col2)
                4'b0000: row2<=16'h0000; //第 1 列
                 4'b0001: row2<=16'h1008; //2
                 4'b0010: row2<=16'h100C; //3
                 4'b0011: row2<=16'h1008; //4
                 4'b0100: row2<=16'h1FF8; //5
                 4'b0101: row2<=16'h1011; //6
                 4'b0110: row2<=16'h1010;
                 4'b0111: row2<=16'h1012; 
                 4'b1000: row2<=16'h080C; 
                 4'b1001: row2<=16'h0870; 
                 4'b1010: row2<=16'hFF80; 
                 4'b1011: row2<=16'h0803; 
                 4'b1100: row2<=16'h0800; 
                 4'b1101: row2<=16'h0802; 
                 4'b1110: row2<=16'h0FFC; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
     endcase
     end
	 else
	    begin
	case(current_state)
		s0:begin case (col2)
                 4'b0000: row2<=16'h0000; //第 1 列
                 4'b0001: row2<=16'h0000; //2
                 4'b0010: row2<=16'h0000; //3
                 4'b0011: row2<=16'h0000; //4
                 4'b0100: row2<=16'h0000; //5
                 4'b0101: row2<=16'h0070; //6
                 4'b0110: row2<=16'h0088;
                 4'b0111: row2<=16'h1F08; 
                 4'b1000: row2<=16'h0108; 
                 4'b1001: row2<=16'h0108; 
                 4'b1010: row2<=16'h0208; 
                 4'b1011: row2<=16'h0010; 
                 4'b1100: row2<=16'h0000; 
                 4'b1101: row2<=16'h0000; 
                 4'b1110: row2<=16'h0000; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         s1:begin case (col2)
                 4'b0000: row2<=16'h0000; //第 1 列
                 4'b0001: row2<=16'h0000; //2
                 4'b0010: row2<=16'h0000; //3
                 4'b0011: row2<=16'h0000; //4
                 4'b0100: row2<=16'h0000; //5
                 4'b0101: row2<=16'h0070; //6
                 4'b0110: row2<=16'h0088;
                 4'b0111: row2<=16'h1F08; 
                 4'b1000: row2<=16'h0108; 
                 4'b1001: row2<=16'h0108; 
                 4'b1010: row2<=16'h0208; 
                 4'b1011: row2<=16'h0010; 
                 4'b1100: row2<=16'h0000; 
                 4'b1101: row2<=16'h0000; 
                 4'b1110: row2<=16'h0000; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
         default:begin case (col2)
                 4'b0000: row2<=16'h0000; //第 1 列
                 4'b0001: row2<=16'h0000; //2
                 4'b0010: row2<=16'h0000; //3
                 4'b0011: row2<=16'h0000; //4
                 4'b0100: row2<=16'h0000; //5
                 4'b0101: row2<=16'h0070; //6
                 4'b0110: row2<=16'h0088;
                 4'b0111: row2<=16'h1F08; 
                 4'b1000: row2<=16'h0108; 
                 4'b1001: row2<=16'h0108; 
                 4'b1010: row2<=16'h0208; 
                 4'b1011: row2<=16'h0010; 
                 4'b1100: row2<=16'h0000; 
                 4'b1101: row2<=16'h0000; 
                 4'b1110: row2<=16'h0000; 
                 4'b1111: row2<=16'h0000; //16
                 default: row2<=16'h0000;
                 endcase  
             end
     endcase
     end
	end
endmodule