module Sdram_Control(
		//	HOST Side
    REF_CLK,
    RESET_N,
		//	FIFO Write Side 1
    WR1_DATA,
		WR1,
		WR1_ADDR,
		WR1_MAX_ADDR,
		WR1_LENGTH,
		WR1_LOAD,
		WR1_CLK,
		//	FIFO Read Side 1
        RD1_DATA,
		RD1,
		RD1_ADDR,
		RD1_MAX_ADDR,
		RD1_LENGTH,
		RD1_LOAD,	
		RD1_CLK,
		//	SDRAM Side
    SA,
    BA,
    CS_N,
    CKE,
    RAS_N,
    CAS_N,
    WE_N,
    DQ,
    DQM,
		SDR_CLK
);

`include        "Sdram_Params.h"

//	HOST Side
input                           REF_CLK;                //System Clock
input                           RESET_N;                //System Reset
//	FIFO Write Side 1
input [`DSIZE-1:0]              WR1_DATA;               //Data input
input							              WR1;					//Write Request
input	[`ASIZE-1:0]			        WR1_ADDR;				//Write start address
input	[`ASIZE-1:0]			        WR1_MAX_ADDR;			//Write max address
input	[8:0]					            WR1_LENGTH;				//Write length
input							              WR1_LOAD;				//Write register load & fifo clear
input							              WR1_CLK;				//Write fifo clock
//	FIFO Read Side 1
output [`DSIZE-1:0]             RD1_DATA;               //Data output
input						                RD1;					//Read Request
input	[`ASIZE-1:0]			        RD1_ADDR;				//Read start address
input	[`ASIZE-1:0]			        RD1_MAX_ADDR;			//Read max address
input	[8:0]					            RD1_LENGTH;				//Read length
input							              RD1_LOAD;				//Read register load & fifo clear
input							              RD1_CLK;				//Read fifo clock
//	SDRAM Side
output  [11:0]                  SA;                     //SDRAM address output
output  [1:0]                   BA;                     //SDRAM bank address
output  [1:0]                   CS_N;                   //SDRAM Chip Selects
output                          CKE;                    //SDRAM clock enable
output                          RAS_N;                  //SDRAM Row address Strobe
output                          CAS_N;                  //SDRAM Column address Strobe
output                          WE_N;                   //SDRAM write enable
inout   [`DSIZE-1:0]            DQ;                     //SDRAM data bus
output  [`DSIZE/8-1:0]          DQM;                    //SDRAM data mask lines
output							            SDR_CLK;				        //SDRAM clock
//	Internal Registers/Wires
//	Controller
reg		[`ASIZE-1:0]			mADDR;					//Internal address
reg		[8:0]				    	mLENGTH;				//Internal length
reg		[`ASIZE-1:0]			rWR1_ADDR;				//Register write address				
reg		[`ASIZE-1:0]			rRD1_ADDR;				//Register read address
reg		     			    		WR_MASK;				//Write port active mask
reg		     			    		RD_MASK;				//Read port active mask
reg							       	mWR_DONE;				//Flag write done, 1 pulse SDR_CLK
reg							       	mRD_DONE;				//Flag read done, 1 pulse SDR_CLK
reg							       	mWR,Pre_WR;				//Internal WR edge capture
reg							       	mRD,Pre_RD;				//Internal RD edge capture
reg 	[9:0] 					  ST;						//Controller status
reg		[1:0] 					  CMD;					//Controller command
reg								      PM_STOP;				//Flag page mode stop
reg								      Read;					//Flag read active
reg								      Write;					//Flag write active
reg	    [`DSIZE-1:0]    mDATAOUT;               //Controller Data output
wire    [`DSIZE-1:0]    mDATAIN;                //Controller Data input
wire    [`DSIZE-1:0]    mDATAIN1;                //Controller Data input 1
wire                    CMDACK;                 //Controller command acknowledgement
//	DRAM Control
reg  	[`DSIZE/8-1:0]    DQM;                    //SDRAM data mask lines
reg     [11:0]          SA;                     //SDRAM address output
reg     [1:0]           BA;                     //SDRAM bank address
reg     [1:0]           CS_N;                   //SDRAM Chip Selects
reg                     CKE;                    //SDRAM clock enable
reg                     RAS_N;                  //SDRAM Row address Strobe
reg                     CAS_N;                  //SDRAM Column address Strobe
reg                     WE_N;                   //SDRAM write enable
wire    [11:0]          ISA;                    //SDRAM address output
wire    [1:0]           IBA;                    //SDRAM bank address
wire    [1:0]           ICS_N;                  //SDRAM Chip Selects
wire                    ICKE;                   //SDRAM clock enable
wire                    IRAS_N;                 //SDRAM Row address Strobe
wire                    ICAS_N;                 //SDRAM Column address Strobe
wire                    IWE_N;                  //SDRAM write enable
//	FIFO Control
reg								      OUT_VALID;				//Output data request to read side fifo
reg								      IN_REQ;					//Input	data request to write side fifo
wire	[15:0]					  write_side_fifo_rusedw1;
wire	[15:0]					  read_side_fifo_wusedw1;
//	DRAM Internal Control
wire    [`ASIZE-1:0]    saddr;
wire                    load_mode;
wire                    nop;
wire                    reada;
wire                    writea;
wire                    refresh;
wire                    precharge;
wire                    oe;
wire							      ref_ack;
wire							      ref_req;
wire							      init_req;
wire							      cm_ack;
wire                    last_pm;


Sdram_PLL u_sdram_pll(
				.inclk0(REF_CLK),
				.c0(CLK),
				.c1(SDR_CLK)
				);

control_interface u_control(
                .CLK(CLK),
                .RESET_N(RESET_N),
                .CMD(CMD),
                .ADDR(mADDR),
                .REF_ACK(ref_ack),
                .CM_ACK(cm_ack),
                .NOP(nop),
                .READA(reada),
                .WRITEA(writea),
                .REFRESH(refresh),
                .PRECHARGE(precharge),
                .LOAD_MODE(load_mode),
                .SADDR(saddr),
                .REF_REQ(ref_req),
				        .INIT_REQ(init_req),
                .CMD_ACK(CMDACK)
                );

command u_command(
                .CLK(CLK),
                .RESET_N(RESET_N),
                .SADDR(saddr),
                .NOP(nop),
                .READA(reada),
                .WRITEA(writea),
                .REFRESH(refresh),
				        .LOAD_MODE(load_mode),
                .PRECHARGE(precharge),
                .REF_REQ(ref_req),
				        .INIT_REQ(init_req),
                .REF_ACK(ref_ack),
                .CM_ACK(cm_ack),
                .OE(oe),
				        .PM_STOP(PM_STOP),
                .SA(ISA),
                .BA(IBA),
                .CS_N(ICS_N),
                .CKE(ICKE),
                .RAS_N(IRAS_N),
                .CAS_N(ICAS_N),
                .WE_N(IWE_N)
                );
                
Sdram_WR_FIFO 	u_write_fifo(
				.data(WR1_DATA),
				.wrreq(WR1),
				.wrclk(WR1_CLK),
				.aclr(WR1_LOAD),
				.rdreq(IN_REQ&WR_MASK),
				.rdclk(CLK),
				.q(mDATAIN1),
				.rdusedw(write_side_fifo_rusedw1)
				);
				
Sdram_RD_FIFO 	u_read_fifo(
				.data(mDATAOUT),
				.wrreq(OUT_VALID&RD_MASK),
				.wrclk(CLK),
				.aclr(RD1_LOAD),
				.rdreq(RD1),
				.rdclk(RD1_CLK),
				.q(RD1_DATA),
				.wrusedw(read_side_fifo_wusedw1)
				);

assign	mDATAIN	=	(WR_MASK)	?	mDATAIN1	:	`DSIZE'hzzzz;
assign  DQ = oe ? mDATAIN : `DSIZE'hzzzz;
assign last_pm = (ST==SC_CL+mLENGTH);

always @(posedge CLK)
begin
    SA <= ISA;
    BA <= IBA;
    CS_N <= ICS_N;
    CKE <= ICKE;
    RAS_N <= last_pm ? 1'b0 : IRAS_N;
    CAS_N <= last_pm ? 1'b1 : ICAS_N;
    WE_N <= last_pm ? 1'b0	: IWE_N; 
    PM_STOP <= last_pm ? 1'b1 : 1'b0;
    DQM <= (Read || Write) ? 2'b00 : 2'b11;
    mDATAOUT<= DQ;
end

always@(posedge CLK or negedge RESET_N)
begin
	if(RESET_N==0)
	begin
		CMD			<=  0;
		ST			<=  0;
		Pre_RD		<=  0;
		Pre_WR		<=  0;
		Read		<=	0;
		Write		<=	0;
		OUT_VALID	<=	0;
		IN_REQ		<=	0;
		mWR_DONE	<=	0;
		mRD_DONE	<=	0;
	end
	else
	begin
		Pre_RD	<=	mRD;
		Pre_WR	<=	mWR;
		case(ST)
		0:	begin
				if({Pre_RD,mRD}==2'b01)
				begin
					Read	<=	1;
					Write	<=	0;
					CMD		<=	2'b01;
					ST		<=	1;
				end
				else if({Pre_WR,mWR}==2'b01)
				begin
					Read	<=	0;
					Write	<=	1;
					CMD		<=	2'b10;
					ST		<=	1;
				end
			end
		1:	begin
				if(CMDACK==1)
				begin
					CMD<=2'b00;
					ST<=2;
				end
			end
		default:	
			begin	
				if(ST!=SC_CL+SC_RCD+mLENGTH+1)
				ST<=ST+1;
				else
				ST<=0;
			end
		endcase
	
		if(Read)
		begin
			if(ST==SC_CL+SC_RCD+1)
			OUT_VALID	<=	1;
			else if(ST==SC_CL+SC_RCD+mLENGTH+1)
			begin
				OUT_VALID	<=	0;
				Read		<=	0;
				mRD_DONE	<=	1;
			end
		end
		else
		mRD_DONE	<=	0;
		
		if(Write)
		begin
			if(ST==SC_CL-1)
			IN_REQ	<=	1;
			else if(ST==SC_CL+mLENGTH-1)
			IN_REQ	<=	0;
			else if(ST==SC_CL+mLENGTH)
			begin
				Write	<=	0;
				mWR_DONE<=	1;
			end
		end
		else
		mWR_DONE<=	0;

	end
end
//	Internal Address & Length Control
always@(posedge CLK or negedge RESET_N)
begin
	if(!RESET_N)
	begin
		rWR1_ADDR		<=	WR1_ADDR;
		rRD1_ADDR		<=	RD1_ADDR;
	end
	else
	begin
		//	Write Side 1
		if(WR1_LOAD)
			rWR1_ADDR	<=	WR1_ADDR;
		else if(mWR_DONE&WR_MASK)
		begin
			if(rWR1_ADDR<WR1_MAX_ADDR-WR1_LENGTH)
			rWR1_ADDR	<=	rWR1_ADDR+WR1_LENGTH;
			else
			rWR1_ADDR	<=	WR1_ADDR;
		end
		//	Read Side 1
		if(RD1_LOAD)
			rRD1_ADDR	<=	RD1_ADDR;
		else if(mRD_DONE&RD_MASK)
		begin
			if(rRD1_ADDR<RD1_MAX_ADDR-RD1_LENGTH)
			rRD1_ADDR	<=	rRD1_ADDR+RD1_LENGTH;
			else
			rRD1_ADDR	<=	RD1_ADDR;
		end
	end
end
//	Auto Read/Write Control
always@(posedge CLK or negedge RESET_N)
begin
	if(!RESET_N)
	begin
		WR_MASK	<=	1'b0;
		RD_MASK	<=	1'b0;
		mWR		<=	0;
		mRD		<=	0;
	end
	else
	begin
		if( (mWR==0) && (mRD==0) && (ST==0) &&
			(WR_MASK==0)	&&	(RD_MASK==0) )
		begin
			//	Read Side 1
			if( (read_side_fifo_wusedw1 < RD1_LENGTH) && (RD1_LOAD==0))
			begin
				mADDR	<=	rRD1_ADDR;
				mLENGTH	<=	RD1_LENGTH;
				WR_MASK	<=	1'b0;
				RD_MASK	<=	1'b1;
				mWR		<=	0;
				mRD		<=	1;				
			end
			//	Write Side 1
			else if( (write_side_fifo_rusedw1 >= WR1_LENGTH) && (WR1_LENGTH!=0) && (WR1_LOAD==0))
			begin
				mADDR	<=	rWR1_ADDR;
				mLENGTH	<=	WR1_LENGTH;
				WR_MASK	<=	1'b1;
				RD_MASK	<=	1'b0;
				mWR		<=	1;
				mRD		<=	0;
			end
		end
		if(mWR_DONE)
		begin
			WR_MASK	<=	0;
			mWR		<=	0;
		end
		if(mRD_DONE)
		begin
			RD_MASK	<=	0;
			mRD		<=	0;
		end
	end
end

endmodule