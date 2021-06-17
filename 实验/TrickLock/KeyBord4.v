module KeyBord4(clk,reset,clear,lockkey,keyvalue,pw0,pw1,pw2,pw3);
input clk;
input reset;
input clear;
input lockkey;
input [3:0]keyvalue;

output reg[3:0]pw0;
output reg[3:0]pw1;
output reg[3:0]pw2;
output reg[3:0]pw3;

parameter state0=2'b00;
parameter state1=2'b01;
parameter state2=2'b10;
parameter state3=2'b11;

reg [1:0]cur_st;
reg [1:0]next_st;

//1 state transfer
always @(posedge clk or negedge rstn) 
begin
	if (!reset) 
     begin
		cur_st<= 'b0 ;
     end
    else 
     begin
        cur_st<= next_st;
     end
end
//2 state switch
always@(*)
begin
	if(lockkey)
		next_st=state0;
	else
		case(cur_st)
			2'b00:next_st=state0;
			2'b01:next_st=state1;
			2'b10:next_st=state2;
			2'b11:next_st=state3;
		endcase
end
//3 state output
always@(*)
begin
if(!reset)
	if(clear)
	case(cur_st)
		2'b00:pw0=4'h0;
		2'b01:pw1=4'h0;
		2'b10:pw2=4'h0;
		2'b11:pw3=4'h0;
	endcase
	else if(!lockkey)
	case(cur_st)
		2'b00:pw0=keyvalue;
		2'b01:pw1=keyvalue;
		2'b10:pw2=keyvalue;
		2'b11:pw3=keyvalue;
	endcase
end
endmodule

