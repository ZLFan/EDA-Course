module block_generator(
		iclk,
		iRST_N,
		oRed,
		oGreen,
		oBlue,
		iX,
		iY
	 );

	 //=======================================================
    //  PARAMETER declarations
    //=======================================================
	 parameter 		x_total=	800;
    parameter 		y_total=	480;
    parameter 		ball_size= 80;
    parameter 		ball_xinitial= 0;
    parameter 		ball_yinitial= 0;
	 
	 //=======================================================
    //  PORT declarations
    //=======================================================
    input 				iclk;
	 input				iRST_N;
    input	[10:0] 	iX;
	 input	[10:0]	iY;
    output	[8:0] 	oRed;
	 output  [8:0]		oGreen;
	 output  [8:0]		oBlue;
    reg		[8:0] 	oRed;
	 reg     [8:0]		oGreen;
	 reg     [8:0]		oBlue;

	 //=======================================================
    //  Structural coding
	 //=======================================================
    always@(posedge iclk or negedge iRST_N)
    begin
        if(!iRST_N)
        begin
            oRed<=8'b0000_0000;
            oGreen<=8'b0000_0000;
            oBlue<=8'b0000_0000;
        end
        else if ((iX>ball_xinitial)&&(iX<ball_xinitial+ball_size)&&(iY>ball_yinitial)&&(iY<ball_yinitial+ball_size))
        begin
            oRed<=8'b1111_1111;
            oGreen<=8'b1111_1111;//-iCoord_Y;
            oBlue<=8'b1111_1111;//-iCoord_X;
        end
        else
        begin
            oRed<=8'b0000_1111;
            oGreen<=8'b1111_1111-(iX % 400)*255/399;
            oBlue<=8'b1111_1111-(iY % 240)*255/239;
        end
    end
endmodule
