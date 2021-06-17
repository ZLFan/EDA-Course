module mem(
    input           clk,            //reference clock
    input           rstn ,          //resetn, low effective
    input           en ,            //start to generating waves
    input [1:0]     sel ,           //waves selection

    input [7:0]     addr ,
    output          dout_en ,
    output [9:0]    dout);          //data out, 10bit width

    //data out fROM ROMs
    wire [9:0]           q_tri ;
    wire [9:0]           q_square ;
    wire [9:0]           q_cos ;

    //ROM addr
    reg [1:0]            en_r ;
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            en_r   <= 2'b0 ;
        end
        else begin
            en_r   <= {en_r[0], en} ;         //delay one cycle for en
        end
    end
    assign dout      = en_r[1] ? (q_tri | q_square | q_cos) : 10'b0 ;
    assign dout_en   = en_r[1] ;


    square_ROM   u_square_ROM (
       .clk     (clk),
       .en      (en_r[0] & sel == 2'b01),  //sel = 1, square wave
       .addr    (addr[7:0]),
       .q       (q_square[9:0]));

    tri_ROM      u_tri_ROM (
       .clk     (clk),
       .en      (en_r[0] & sel == 2'b10), //sel = 2, triangle wave
       .addr    (addr[7:0]),
       .q       (q_tri[9:0]));

endmodule

//square waves ROM
module square_ROM (
    input               clk,
    input               en,
    input [7:0]         addr,
    output reg [9:0]     q);
   
    //1 in first half cycle, and 0 in second half cycle
    always @(posedge clk) begin
        if (en) begin
            q <= { 10{(addr < 128)} };    
        end
        else begin
            q <= 'b0 ;
        end
    end
endmodule

 //triangle waves ROM
module tri_ROM (
    input               clk,
    input               en,
    input [7:0]         addr,
    output reg [9:0]     q);
    //rising edge, addr -> 0x0, 0x3f
    always @(posedge clk) begin
        if (en) begin
            if (addr < 128) begin
                q <= {addr[6:0], 3'b0};   //rising edge  
            end
            else begin //falling edge
                q <= 10'h3ff - {addr[6:0], 3'b0} ;
            end
        end
        else begin
            q <= 'b0 ;
        end
    end
endmodule


