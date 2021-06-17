

`timescale 1ns/1ns

module I2C_control_test ;

    reg reset;
    reg CLK;
    reg GO;
    reg [4:0] bitcount;

    wire SCLK_Temp;
    wire bitcountEN;
    wire rstbitcount;
    wire LDEN;
    wire SHEN;
    wire SCLK;
    wire ldnACK1;
    wire ldnACK2;
    wire ldnACK3;
    wire rstACK;
    wire SDO;


    I2C_control    i2c0(
                       reset,CLK,GO,bitcount,
                       SCLK_Temp,bitcountEN,rstbitcount,LDEN,ldnACK1,ldnACK2,ldnACK3,rstACK,SHEN,SDO,SCLK);

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
        bitcount = 0;
        #550 bitcount = 1;
        #100 bitcount = 2;
        #100 bitcount = 3;
        #100 bitcount = 4;
        #100 bitcount = 5;
        #100 bitcount = 6;
        #100 bitcount = 7;
        #100 bitcount = 8;
        #100 bitcount = 9;
        #100 bitcount = 10;
        #100 bitcount = 11;
        #100 bitcount = 12;
        #100 bitcount = 13;
        #100 bitcount = 14;
        #100 bitcount = 15;
        #100 bitcount = 16;
        #100 bitcount = 17;
        #100 bitcount = 18;
        #100 bitcount = 19;
        #100 bitcount = 20;
        #100 bitcount = 21;
        #100 bitcount = 22;
        #100 bitcount = 23;
        #100 bitcount = 24;
        #100 bitcount = 25;
        #100 bitcount = 26;

    end


endmodule
