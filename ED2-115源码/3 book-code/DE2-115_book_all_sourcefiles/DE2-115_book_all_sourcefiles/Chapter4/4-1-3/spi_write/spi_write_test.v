`timescale 1ns/1ns
module spi_write_test ;
    reg  CLK;
    reg  GO;
    reg  reset;
    reg [15:0] regdata;

    //input  READ;
    wire  SDAT;
    wire SPC;
    wire SCEN;
    wire ORDY;

`

    spi_write    spi0 (	CLK,	SPC, 	SDAT, 	regdata, GO, 	ORDY,	reset,	SCEN   );

    initial
    begin
        regdata = 16'b1010100z10101010;

    end

    initial
    begin
        CLK = 0;
    end
    always #50 CLK = ~CLK;

    initial
    begin
        reset = 1;
        while(1)
            #100 reset = 0;

    end
    initial
    begin
        GO = 0;
        #100 GO = 1;
        #100 GO = 0;
    end
    initial
    begin
        $display ($time,"CLK=%d reset=%d regdata=%d   SCEN=%d  ORDY=%d SPC=%d ",CLK,reset,regdata, SCEN, ORDY, SPC);
    end

endmodule

