-- Copyright (C) 1991-2008 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/07/2019 14:52:06"
                                                            
-- Vhdl Test Bench template for design  :  top2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;                              

ENTITY top2_vhd_tst IS
END top2_vhd_tst;
ARCHITECTURE top2_arch OF top2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_cs : STD_LOGIC;
SIGNAL cs_o : STD_LOGIC;
SIGNAL da_cs : STD_LOGIC;
SIGNAL flag_cs : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL rst_cs : STD_LOGIC;
SIGNAL state_o : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL we_en : STD_LOGIC;
CONSTANT clk_period :time :=20 ns; 

COMPONENT top2
	PORT (
	clk : IN STD_LOGIC;
	clk_cs : OUT STD_LOGIC;
	cs_o : OUT STD_LOGIC;
	da_cs : OUT STD_LOGIC;
	flag_cs : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	rst_cs : OUT STD_LOGIC;
	state_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	we_en : IN STD_LOGIC
	);
END COMPONENT;

component confg
 port (
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	state_o : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	flag_cs : OUT STD_LOGIC;
	we_en : OUT STD_LOGIC
	);
end component;

BEGIN
	i1 : top2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_cs => clk_cs,
	cs_o => cs_o,
	da_cs => da_cs,
	flag_cs => flag_cs,
	rst => rst,
	rst_cs => rst_cs,
	state_o => state_o,
	we_en => we_en
	);
	
	confg_t : confg
	port map (
	clk => clk,
	rst => rst,
	state_o => state_o,
	flag_cs => flag_cs, 
	we_en => we_en
	);
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
    wait for 100ns;
		clk <= '0';
		rst <= '1';
	wait for 1000ns;
		rst <= '0';        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
WAIT FOR clk_period/2;
		clk <= '1';
	WAIT FOR clk_period/2;
		clk <= '0';    -- code executes for every event on sensitivity list                                                         
END PROCESS always; 


                                         
END top2_arch;



LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;  

entity confg is
 port (
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	state_o : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	flag_cs : OUT STD_LOGIC;
	we_en : OUT STD_LOGIC
	);
end confg;

architecture be_confg of confg is

signal cnt1: std_logic_vector(3 downto 0) := "0000";
signal cnt2: std_logic_vector(3 downto 0) := "0000";
signal cnt3: std_logic_vector(3 downto 0) := "0000";
signal state_f: std_logic := '0';	
signal state_f1: std_logic := '0';	
signal state_f2: std_logic := '0';	
signal state_ff: std_logic := '0';	
signal state_ff1: std_logic := '0';	
signal state_ff2: std_logic := '0';

begin

process(rst, clk)
begin
	if rst= '1' then
		flag_cs <= '0';
		we_en <= '0';
	elsif clk'event and clk = '1' then
		if state_o = "010" then
			state_f <= '1';
		else
			state_f <= '0';
		end if;
		state_f1 <= state_f;
		state_f2 <= (state_f1 xor state_f) and state_f;
		
		if state_o = "100" then
			state_ff <= '1';
		else
			state_ff <= '0';
		end if;
		state_ff1 <= state_ff;
		state_ff2 <= (state_ff1 xor state_ff) and state_ff;
		
		if state_f2 = '1' then
			if cnt2 = "0001" then
				we_en <= '0';
			else
				cnt2 <= cnt2 + "0001";
				we_en <= '1';
			end if;
		end if;
		
		if state_ff2 = '1' then
			if cnt3 = "0001" then
				flag_cs <= '1';
			else
				cnt3 <= cnt3 + "0001";
				flag_cs <= '0';
			end if;
		end if;
	end if;
end process;
end be_confg;
		


