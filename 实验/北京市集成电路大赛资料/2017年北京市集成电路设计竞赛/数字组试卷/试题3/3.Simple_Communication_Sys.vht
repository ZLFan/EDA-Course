                                                           
-- Vhdl Test Bench template for design  :  Simple_Communication_Sys
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Simple_Communication_Sys_vhd_tst IS
END Simple_Communication_Sys_vhd_tst;
ARCHITECTURE Simple_Communication_Sys_arch OF Simple_Communication_Sys_vhd_tst IS
-- constants
constant clk_period :time :=31.25 ns;                                                  
-- signals                                                   
SIGNAL Clk_V1 : STD_LOGIC:='0';
SIGNAL Clk_V2 : STD_LOGIC:='0';
SIGNAL Clk_V3 : STD_LOGIC:='0';
SIGNAL clock : STD_LOGIC:='0';
SIGNAL M_seq_REG : STD_LOGIC_VECTOR(4 DOWNTO 0):="00000";
SIGNAL reset : STD_LOGIC:='0';
SIGNAL V1 : STD_LOGIC:='0';
SIGNAL V2 : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
SIGNAL V3 : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";

COMPONENT Simple_Communication_Sys
	PORT (
	clock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	Clk_V1 : OUT STD_LOGIC;
	Clk_V2 : OUT STD_LOGIC;
	Clk_V3 : OUT STD_LOGIC;
	M_seq_REG : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	V1 : OUT STD_LOGIC;
	V2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	V3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	
	);
END COMPONENT;
BEGIN
	i1 : Simple_Communication_Sys
	PORT MAP (
-- list connections between master ports and signals
	Clk_V1 => Clk_V1,
	Clk_V2 => Clk_V2,
	Clk_V3 => Clk_V3,
	clock => clock,
	M_seq_REG => M_seq_REG,
	reset => reset,
	V1 => V1,
	V2 => V2,
	V3 => V3
	
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once 
     reset <='1'; wait for clk_period;  
     reset <='0'; wait for clk_period;	  
     WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list 
	clock<='0'; wait for clk_period/2;  
	clock<='1'; wait for clk_period/2;
 
                                                       
END PROCESS always;                                          
END Simple_Communication_Sys_arch;
