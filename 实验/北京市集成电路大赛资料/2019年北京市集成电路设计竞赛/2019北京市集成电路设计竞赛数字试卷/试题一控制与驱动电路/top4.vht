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
-- Generated on "05/08/2019 09:19:16"
                                                            
-- Vhdl Test Bench template for design  :  top4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;                              
                                                            

ENTITY top4_vhd_tst IS
END top4_vhd_tst;
ARCHITECTURE top4_arch OF top4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clk_cs : STD_LOGIC;
SIGNAL cs_o : STD_LOGIC;
SIGNAL da_cs1 : STD_LOGIC;
SIGNAL da_cs2 : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL flag_cs : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL rst_cs : STD_LOGIC;
SIGNAL state_o : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL we_en : STD_LOGIC;
SIGNAL wr_data : STD_LOGIC;
CONSTANT clk_period :time :=200 ns; 
signal cnt1 : std_logic_vector(3 downto 0) := "0000";
signal cnt2 : std_logic_vector(3 downto 0) := "0000";


COMPONENT top4
	PORT (
	addr_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	clk_cs : OUT STD_LOGIC;
	cs_o : OUT STD_LOGIC;
	da_cs1 : OUT STD_LOGIC;
	da_cs2 : OUT STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	flag_cs : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	rst_cs : OUT STD_LOGIC;
	state_o : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	we_en : IN STD_LOGIC;
	wr_data : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : top4
	PORT MAP (
-- list connections between master ports and signals
	addr_in => addr_in,
	clk => clk,
	clk_cs => clk_cs,
	cs_o => cs_o,
	da_cs1 => da_cs1,
	da_cs2 => da_cs2,
	data_in => data_in,
	flag_cs => flag_cs,
	rst => rst,
	rst_cs => rst_cs,
	state_o => state_o,
	we_en => we_en,
	wr_data => wr_data
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
    wait for 100ns;
		clk <= '0';
		rst <= '1';
		flag_cs <= '0';
		data_in <= "00000000";
		addr_in <= "0000";
		wr_data <= '0';
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

process(clk_cs)
begin
	if clk_cs'event and clk_cs = '1' then
		if cs_o = '0' then
			cnt1 <= cnt1 + "0001";
		else
			cnt1 <= "0000";
		end if;
		
		if state_o = "010" then
			flag_cs <= '0';
		else
			if cnt1 = "0110" then
				flag_cs <= '1';
			end if;
		end if;
	end if;
end process;

process(clk)
begin
	if rst = '1' then
		cnt2 <= "0000";
		data_in <= data_in;
		addr_in <= addr_in;
		wr_data <= '0';
	else
		if cnt2 = "1010" then
			wr_data <= '0';
		else
			data_in <= data_in + "00011001";
			addr_in <= addr_in + "0011";
			wr_data <= '1';
			cnt2 <= cnt2 + "0001";
		end if;
	end if;
end process;
                                         
END top4_arch;
