`timescale 1ns/1ns
module  I2C_write (
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
        ACK3,
        ldnACK1,
		  ldnACK2,
		  ldnACK3
    );
	 //=======================================================
	 //  PARAMETER declarations
    //=======================================================

    //=======================================================
    //  PORT declarations
    //=======================================================
    input  CLK;
    input  GO;
    input  reset;
    input [26:0] regdata;

    //input  READ;
    inout  SDIN;
    output SCLK;
    output ACK,ACK1,ACK2,ACK3,ldnACK1,ldnACK2,ldnACK3;
    output rstACK;
	 
	 //=======================================================
    //  REG/WIRE declarations
    //=======================================================
    wire SEL;
    wire	LDEN,SHEN,rstbitcount;
    wire  bitcountEN, SCLK_Temp;
    reg	[4:0]	bitcount;
    wire ldnACK1,ldnACK2,ldnACK3;
    wire SDO;
	 
	 //=======================================================
    //  Sub-modules
    //=======================================================
    I2C_control    i2c0(
                       .reset(reset),
							  .CLK(CLK),
							  .GO(GO),
							  .bitcount(bitcount[4:0]),
                       .SCLK_Temp(SCLK_Temp),
							  .bitcountEN(bitcountEN),
							  .rstbitcount(rstbitcount),
                       .LDEN(LDEN),
							  .ldnACK1(ldnACK1),
							  .ldnACK2(ldnACK2),
							  .ldnACK3(ldnACK3),
                       .rstACK(rstACK),
							  .SHEN(SHEN),
							  .SDO(SDO),
							  .SCLK(SCLK));

    //=======================================================
    //  Structural coding
    //=======================================================
    always @(posedge CLK or posedge reset)
    begin
        if (reset)
            bitcount <= 0;
        else
        begin
            if (rstbitcount)
                bitcount <= 0;
            else if (bitcountEN)
                bitcount <= bitcount+1;

        end
    end


    reg  [26:0] Q;
    always @(posedge CLK or posedge reset)
    begin
        if (reset)
            Q <= 0;
        else
        begin
            if (LDEN)
                Q <= regdata;
            else
                if (SHEN)
                begin
                    Q[26:1] <= Q[25:0];  //shift left
                    Q[0]   <= 0;
                end
        end
    end



    always @(posedge CLK or posedge reset)
    begin
        if (reset)
        begin
            ACK1 <= 1'b0;
            ACK2 <= 1'b0;
            ACK3 <= 1'b0;
        end
        else if (rstACK )
        begin
            ACK1 <= 1'b0;
            ACK2 <= 1'b0;
            ACK3 <= 1'b0;
        end
        else	
        begin	
        	if (ldnACK1 )
            ACK1 <= SDIN;
        	if (ldnACK2 )
            ACK2 <= SDIN;
          if (ldnACK3 )
            ACK3 <= SDIN;
        end

    end
    reg ACK1,ACK2,ACK3;

    assign ACK=ACK1 | ACK2 |ACK3;

    assign SEL = SHEN ? Q[26] : SDO;
    assign   SDIN = SEL?1'bz:0 ;

endmodule
