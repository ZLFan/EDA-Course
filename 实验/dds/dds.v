module dds(
    input           clk,            //reference clock
    input           rstn ,          //resetn, low effective
    input           wave_en ,       //start to generating waves

    input [1:0]     wave_sel ,      //waves selection
    input [1:0]     wave_amp ,      //waves amplitude control
    input [7:0]     phase_init,     //initial phase
    input [7:0]     f_word ,        //frequency control word

    output [9:0]    dout,           //data out, 10bit width
    output          dout_en);

    //phase acculator
    reg [7:0]            phase_acc_r ;
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            phase_acc_r    <= 'b0 ;
        end
        else if (wave_en) begin
            phase_acc_r    <= phase_acc_r + f_word ;
        end
        else begin
            phase_acc_r    <= 'b0 ;
        end
    end

    //ROM addr
    reg [7:0]            mem_addr_r ;
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            mem_addr_r     <= 'b0 ;
        end
        else if (wave_en) begin
            mem_addr_r     <= phase_acc_r + phase_init ;
        end
        else begin
            mem_addr_r     <= 'b0 ;
        end
    end

    //ROM instiation
    wire [9:0]   dout_temp ;
    mem  u_mem_wave(
        .clk     (clk),                 //reference clock
        .rstn    (rstn),                //resetn, low effective
        .en      (wave_en),             //start to generating waves
        .sel     (wave_sel[1:0]),       //waves selection
        .addr    (mem_addr_r[7:0]),
        .dout_en (dout_en),
        .dout    (dout_temp[9:0]));     //data out, 10bit width

    //amplitude
    //0 -> dout/1   //1 -> dout/2   //2 -> dout/4   //3 -> dout/8
    assign       dout = dout_temp >> wave_amp ;
endmodule