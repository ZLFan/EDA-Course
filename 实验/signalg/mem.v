module mem(clk,rstn,en,addr,dout_en,dout);
input clk;//clock
input rstn;//reset,low
input en;//start to generatring waves
input [7:0]addr;//mem address

output dout_en;//start to output wave
output[9:0]dout;//dataout,10bit width

//data out from Roms
wire[9:0]wave;
//rom addr
reg[1:0] en_r;
always@(posedge clk or negedge rstn)
begin
 if(!rstn) 
 begin
  en_r<=2'b0;//00b
 end 
 else 
 begin
  en_r<={en_r[0],en};
 end
end
assign dout=en_r[1]?wave:10'b0;
assign dout_en=en_r[1];

//rom instiation
wave_rom uut(
.clk(clk),
.en(en),
.addr(addr),
.wave(wave)
);

endmodule
//

//rom module
module wave_rom(clk,en,addr,wave);
input clk,en;
input [7:0]addr;
output reg[9:0]wave;

//sqare
/*
always@(posedge clk)
begin
 if(en)
 begin
  wave<={10{(addr<128)}};
 end
 else
 begin 
  wave<=10'b0;
 end
end
*/
//tri
/*
always @(posedge clk) begin
      if (en) begin
            if (addr < 128) begin
                wave <= {addr[6:0], 3'b0};   //rising edge  
            end
            else begin //falling edge
                wave <= 10'h3ff - {addr[6:0], 3'b0} ;
            end
        end
        else begin
            wave <= 10'b0 ;
        end
    end
*/

//cos//挨个赋值
wire [8:0]ROM_t[0:64];
   //as the symmetry of cos function, just store 1/4 data of one cycle
   assign 
	ROM_t[0:64]={
               511, 510, 510, 509, 508, 507, 505, 503,
               501, 498, 495, 492, 488, 485, 481, 476,
               472, 467, 461, 456, 450, 444, 438, 431,
               424, 417, 410, 402, 395, 386, 378, 370,
               361, 352, 343, 333, 324, 314, 304, 294,
               283, 273, 262, 251, 240, 229, 218, 207,
               195, 183, 172, 160, 148, 136, 124, 111,
               99 , 87 , 74 , 62 , 50 , 37 , 25 , 12 ,
               0 };
    always @(posedge clk) 
	 begin
        if (en) begin
            if (addr[7:6] == 2'b00 ) 
				begin  //quadrant 1, addr[0, 63]
                wave <= ROM_t[addr[5:0]] + 10'd512 ; //上移
            end
            else if (addr[7:6] == 2'b01 ) 
				begin //2nd, addr[64, 127]
                 wave <= 10'd512 - ROM_t[64-addr[5:0]] ; //两次翻转
            end
            else if (addr[7:6] == 2'b10 ) 
				begin //3rd, addr[128, 192]
                 wave <= 10'd512 - ROM_t[addr[5:0]]; //翻转右移
            end
            else 
				begin     //4th quadrant, addr [193, 256]
                 wave<= 10'd512 + ROM_t[64-addr[5:0]]; //翻转上移
            end
        end
        else begin
             wave <= 'b0 ;
        end
    end
endmodule
