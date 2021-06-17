module deceder (scan,seg7,dp,clk20mhz,money_in,distance_in);  
	output[7:0] scan;   
	output[6:0] seg7;      
	output dp;         
	input clk20mhz;         
	input [12:0] money_in;          
	input [12:0] distance_in;      
	reg[7:0]scan;
	reg[6:0]seg7;
	reg dp;	
	reg clk1khz;        
	reg[3:0] data;
	reg[3:0] m_one,m_ten,m_hun,m_tho;    
	reg[3:0] d_one,d_ten,d_hun,d_tho;      
	reg[15:0] count ;
	reg[15:0]comb1;
	reg[3:0]comb1_a,comb1_b,comb1_c,comb1_d;
	reg[15:0] comb2;
	reg[3:0]comb2_a,comb2_b,comb2_c,comb2_d;
	reg[2:0] cnt;
    always@(posedge clk20mhz)
    begin
		if(count==1'd10000)
			begin clk1khz<=~clk1khz;count<='d0;end
		else
		 begin count<=count+1;end
    if(comb1<money_in)
     begin
	 if (comb1_a=='d9&&comb1_b=='d9&&comb1_c=='d9)
		begin
	      comb1_a<='b0000;
	      comb1_b<='b0000;
          comb1_c<='b0000;
          comb1_d<=comb1_d+1;
          comb1<=comb1+1;
        end 
     else if(comb1_a=='d9&&comb1_b=='d9)
        begin
          comb1_a<='b0000;
          comb1_b<='b0000;
          comb1_c<=comb1_c+1;
          comb1<=comb1+1;
        end 
     else if(comb1_a=='d9) 
        begin
	      comb1_a<='b0000;
	      comb1_b<=comb1_b+1;
	      comb1<=comb1+1;
	    end 
	 else
	  begin
		comb1_a<=comb1_a+1;
		comb1<=comb1+1;
      end
	 end	
	else if (comb1==money_in)
		begin
	      m_one<=comb1_a;
	      m_ten<=comb1_b;
	      m_hun<=comb1_c;
	      m_tho<=comb1_d;
	    end
	else if (comb1>money_in)
	    begin
			comb1_a<='b0000;
			comb1_b<='b0000;
            comb1_c<='b0000;
            comb1_d<='b0000;
            comb1<='d0;
        end


    if(comb2<distance_in)
     begin
	  if (comb2_a=='d9&&comb2_b=='d9&&comb2_c=='d9)
		begin
	      comb2_a<='b0000;
	      comb2_b<='b0000;
          comb2_c<='b0000;
          comb2_d<=comb2_d+1;
          comb2<=comb2+1;
        end 
     else if(comb2_a=='d9&&comb2_b=='d9)
        begin
          comb2_a<='b0000;
          comb2_b<='b0000;
          comb2_c<=comb2_c+1;
          comb2<=comb2+1;
        end 
     else if(comb2_a=='d9) 
        begin
	      comb2_a<='b0000;
	      comb2_b<=comb2_b+1;
	      comb2<=comb2+1;
	    end 
	 else
	  begin
		comb2_a<=comb2_a+1;
		comb2<=comb2+1;
      end
	 end	
	else if (comb2==distance_in)
		begin
	      d_one<=comb2_a;
	      d_ten<=comb2_b;
	      d_hun<=comb2_c;
	      d_tho<=comb2_d;
	    end
	else if (comb2>distance_in)
	    begin
			comb2_a<='b0000;
			comb2_b<='b0000;
            comb2_c<='b0000;
            comb2_d<='b0000;
            comb2<='d0;
        end
 end
     
always@(posedge clk1khz)
begin
	cnt=cnt+1;
end

always@(cnt)
begin	
	case(cnt)
	'b000:begin data<=m_one;dp<='d0;scan<='b00000001;end
	'b001:begin data<=m_ten;dp<='d0;scan<='b00000010;end
	'b010:begin data<=m_hun;dp<='d1;scan<='b00000100;end
	'b011:begin data<=m_tho;dp<='d0;scan<='b00001000;end
	'b100:begin data<=d_one;dp<='d0;scan<='b00010000;end
	'b101:begin data<=d_ten;dp<='d0;scan<='b00100000;end
	'b110:begin data<=d_hun;dp<='d1;scan<='b01000000;end
	'b111:begin data<=d_tho;dp<='d0;scan<='b10000000;end
	default:begin data<='bx;dp<='bx;scan<='bx;end
	endcase
end 

always@(data)
begin
	case(data[3:0])
	4'b0000:seg7[6:0]=7'b1111110;
	4'b0001:seg7[6:0]=7'b0110000;
	4'b0010:seg7[6:0]=7'b1101101;
	4'b0011:seg7[6:0]=7'b1111001;      
	4'b0100:seg7[6:0]=7'b0110011;      
	4'b0101:seg7[6:0]=7'b1011011;      
	4'b0110:seg7[6:0]=7'b1011111; 
	4'b0111:seg7[6:0]=7'b1110000;    
	4'b1000:seg7[6:0]=7'b1111111; 
	4'b1001:seg7[6:0]=7'b1111011;
	default:seg7[6:0]=7'b0000000;
	endcase
end
endmodule