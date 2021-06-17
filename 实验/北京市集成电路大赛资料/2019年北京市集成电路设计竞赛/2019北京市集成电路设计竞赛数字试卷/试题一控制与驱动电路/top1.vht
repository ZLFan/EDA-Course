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
-- Generated on "05/08/2019 09:21:00"
                                                            
-- Vhdl Test Bench template for design  :  top1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;                              
                             

ENTITY top1_vhd_tst IS
END top1_vhd_tst;
ARCHITECTURE top1_arch OF top1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_cs : STD_LOGIC;
SIGNAL flag_cs : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL rst_cs : STD_LOGIC;
SIGNAL state_o : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL we_en : STD_LOGIC;
CONSTANT clk_period :time :=200 ns; 

COMPONENT top1
	PORT (
	clk : IN STD_LOGIC;
	clk_cs : OUT STD_LOGIC;
	flag_cs : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	rst_cs : OUT STD_LOGIC;
	state_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	we_en : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : top1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_cs => clk_cs,
	flag_cs => flag_cs,
	rst => rst,
	rst_cs => rst_cs,
	state_o => state_o,
	we_en => we_en
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
    wait for 100ns;
		clk <= '0';
		rst <= '1';
		flag_cs <= '0';
		we_en <= '0';
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
		clk <= '0';    -- code executes for every event on sensitivity list          -- code executes for every event on sensitivity list  
                                                       
END PROCESS always; 

process(clk)
begin
	if clk'event and clk = '1' then
		if state_o = "010" then
			we_en <= '1';
		end if;
	end if;
end process;
END top1_arch;
