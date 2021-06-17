module dds(clk,rstn,wave_en,wave_amp,phase_init,f_word,dout,dout_en);
input clk,rstn,wave_en;
input[1:0]wave_amp;//waves amplitude control
input[7:0]phase_init;//initial phase初相位
input[7:0]f_word;//frequency control word

output[9:0]dout,dout_en;

//phase acculator
reg[7:0]phase_acc_r;
always@(posedge clk or negedge rstn)
begin
 if(!rstn)
 begin
  phase_acc_r<=8'b0;
 end 
 else if(wave_en)
 begin
  phase_acc_r<=phase_acc_r+f_word;
 end
 else 
 begin 
 phase_acc_r<=8'b0;
 end
end

//rom addr
reg[7:0]mem_addr_r;
always@(posedge clk or negedge rstn)
begin
 if(!rstn)
 begin
  mem_addr_r<=8'b0;
 end
 else if(wave_en)
 begin
  mem_addr_r<=phase_acc_r+phase_init;
 end
 else
 begin 
  mem_addr_r<=8'b0;
 end
end

//rom instiation
wire[9:0] dout_temp;
mem uut(
.clk(clk),.rstn(rstn),.en(wave_en),
.addr(mem_addr_r),.dout_en(dout_en),
.dout(dout_temp)
);
assign dout=dout_temp>>wave_amp;
endmodule
