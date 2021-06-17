`timescale 1ns/1ns
module I2C_write_test ;
    reg  CLK;
    reg  GO;
    reg  reset;
    reg [26:0] regdata;
    wire SCLK;
    wire SDIN;
    wire ACK,ACK1,ACK2,ACK3,ldnACK1,ldnACK2,ldnACK3;
    wire rstACK;

    I2C_write i2c1  (
                  CLK,
                  SCLK,
                  SDIN,
                  regdata,
                  GO,      //GO transfor
                  ACK,
                  reset,
                  rstACK,
                  ACK1,
                  ACK2,
                  ACK3,ldnACK1,ldnACK2,ldnACK3
              );
    initial
    begin
        regdata = 27'b101010101101010101101010101;

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
endmodule

