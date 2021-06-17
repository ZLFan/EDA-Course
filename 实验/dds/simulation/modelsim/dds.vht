-- Copyright (C) 1991-2012 Altera Corporation
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
-- Generated on "11/20/2020 21:09:27"
                                                            
-- Vhdl Test Bench template for design  :  dds
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dds_vhd_tst IS
END dds_vhd_tst;
ARCHITECTURE dds_arch OF dds_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dout : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL dout_en : STD_LOGIC;
SIGNAL f_word : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL phase_init : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rstn : STD_LOGIC;
SIGNAL wave_amp : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL wave_en : STD_LOGIC;
SIGNAL wave_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT dds
	PORT (
	clk : IN STD_LOGIC;
	dout : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	dout_en : OUT STD_LOGIC;
	f_word : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	phase_init : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	rstn : IN STD_LOGIC;
	wave_amp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	wave_en : IN STD_LOGIC;
	wave_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : dds
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dout => dout,
	dout_en => dout_en,
	f_word => f_word,
	phase_init => phase_init,
	rstn => rstn,
	wave_amp => wave_amp,
	wave_en => wave_en,
	wave_sel => wave_sel
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END dds_arch;
