module Readkey( clk, reset, row, col,key_value);
input clk,reset;
 input [3:0] row;
 output [3:0] col;
 output [3:0] key_value;
 reg [3:0] col;
 reg [3:0] key_value;
 reg [5:0] count;//delay_20ms
 reg [2:0] state;  //״̬��־
 reg key_flag;   //������־λ
 reg clk_500khz;  //500KHZʱ���ź�
 reg [3:0] col_reg;  //�Ĵ�ɨ����ֵ
 reg [3:0] row_reg;  //�Ĵ�ɨ����ֵ 
always @(posedge clk or negedge reset)
   if(!reset) begin clk_500khz<=0; count<=0; end
   else
    begin
      if(count>=50) begin clk_500khz<=~clk_500khz;count<=0;end
      else count<=count+1;
    end
 always @(posedge clk_500khz or negedge reset)
   if(!reset) begin col<=4'b0000;state<=0;end
   else
    begin
     case (state)
      0:
         begin
         col[3:0]<=4'b0000;
         key_flag<=1'b0;
         if(row[3:0]!=4'b1111) begin state<=1;col[3:0]<=4'b1110;end //�м����£�ɨ���һ��
         else state<=0;
         end
      1: 
         begin
          if(row[3:0]!=4'b1111) begin state<=5;end   //�ж��Ƿ��ǵ�һ��
          else  begin state<=2;col[3:0]<=4'b1101;end  //ɨ��ڶ���
         end
      2:
         begin   
         if(row[3:0]!=4'b1111) begin state<=5;end    //�ж��Ƿ��ǵڶ���
         else  begin state<=3;col[3:0]<=4'b1011;end  //ɨ�������
         end
      3:
         begin   
         if(row[3:0]!=4'b1111) begin state<=5;end   //�ж��Ƿ��ǵ���һ��
         else  begin state<=4;col[3:0]<=4'b0111;end  //ɨ�������
         end
      4:
         begin   
         if(row[3:0]!=4'b1111) begin state<=5;end  //�ж��Ƿ��ǵ�һ��
         else  state<=0;
         end
      5:
         begin 
          if(row[3:0]!=4'b1111)
		  begin
			col_reg<=col;  //����ɨ����ֵ
			row_reg<=row;  //����ɨ����ֵ
			state<=5;
			key_flag<=1'b1;  //�м�����
		  end            
          else
            begin state<=0;end
         end   
     endcase
    end          
 always @(clk_500khz or col_reg or row_reg)
     begin
        if(key_flag==1'b1)
                begin
                     case ({col_reg,row_reg})
                      8'b1110_1110:key_value<=4'h0;
                      8'b1110_1101:key_value<=4'h1;
                      8'b1110_1011:key_value<=4'h2;
                      8'b1110_0111:key_value<=4'h3;
                      8'b1101_1110:key_value<=4'h4;
                      8'b1101_1101:key_value<=4'h5;
                      8'b1101_1011:key_value<=4'h6;
                      8'b1101_0111:key_value<=4'h7;
                      8'b1011_1110:key_value<=4'h8;
                      8'b1011_1101:key_value<=4'h9;
                      8'b1011_1011:key_value<=4'ha;
                      8'b1011_0111:key_value<=4'hb;
                      8'b0111_1110:key_value<=4'hc;
                      8'b0111_1101:key_value<=4'hd;
                      8'b0111_1011:key_value<=4'he;
                      8'b0111_0111:key_value<=4'hf;    
                     endcase
              end  
   end      
 endmodule
 