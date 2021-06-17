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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 232 07/05/2012 Service Pack 1 SJ Web Edition"

-- DATE "11/20/2020 21:09:14"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dds IS
    PORT (
	clk : IN std_logic;
	rstn : IN std_logic;
	wave_en : IN std_logic;
	wave_sel : IN std_logic_vector(1 DOWNTO 0);
	wave_amp : IN std_logic_vector(1 DOWNTO 0);
	phase_init : IN std_logic_vector(7 DOWNTO 0);
	f_word : IN std_logic_vector(7 DOWNTO 0);
	dout : OUT std_logic_vector(9 DOWNTO 0);
	dout_en : OUT std_logic
	);
END dds;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[2]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[5]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[7]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[8]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[9]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout_en	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- wave_amp[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wave_amp[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rstn	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wave_sel[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wave_sel[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wave_en	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[7]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- phase_init[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[7]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[5]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[3]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_word[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dds IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_wave_en : std_logic;
SIGNAL ww_wave_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_wave_amp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_phase_init : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_f_word : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dout_en : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rstn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem_addr_r[2]~12_combout\ : std_logic;
SIGNAL \mem_addr_r[5]~18_combout\ : std_logic;
SIGNAL \mem_addr_r[6]~20_combout\ : std_logic;
SIGNAL \phase_acc_r[0]~8_combout\ : std_logic;
SIGNAL \phase_acc_r[2]~12_combout\ : std_logic;
SIGNAL \phase_acc_r[4]~16_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~3_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~6_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \mem_addr_r[0]~8_combout\ : std_logic;
SIGNAL \rstn~combout\ : std_logic;
SIGNAL \rstn~clkctrl_outclk\ : std_logic;
SIGNAL \wave_en~combout\ : std_logic;
SIGNAL \u_mem_wave|en_r[0]~feeder_combout\ : std_logic;
SIGNAL \u_mem_wave|comb~0_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~0_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \u_mem_wave|en_r[1]~feeder_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \u_mem_wave|u_square_ROM|q~0_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~1_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \phase_acc_r[0]~9\ : std_logic;
SIGNAL \phase_acc_r[1]~10_combout\ : std_logic;
SIGNAL \mem_addr_r[0]~9\ : std_logic;
SIGNAL \mem_addr_r[1]~10_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~2_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \phase_acc_r[1]~11\ : std_logic;
SIGNAL \phase_acc_r[2]~13\ : std_logic;
SIGNAL \phase_acc_r[3]~14_combout\ : std_logic;
SIGNAL \mem_addr_r[1]~11\ : std_logic;
SIGNAL \mem_addr_r[2]~13\ : std_logic;
SIGNAL \mem_addr_r[3]~14_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~4_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \mem_addr_r[3]~15\ : std_logic;
SIGNAL \mem_addr_r[4]~16_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~5_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \phase_acc_r[3]~15\ : std_logic;
SIGNAL \phase_acc_r[4]~17\ : std_logic;
SIGNAL \phase_acc_r[5]~18_combout\ : std_logic;
SIGNAL \phase_acc_r[5]~19\ : std_logic;
SIGNAL \phase_acc_r[6]~20_combout\ : std_logic;
SIGNAL \phase_acc_r[6]~21\ : std_logic;
SIGNAL \phase_acc_r[7]~22_combout\ : std_logic;
SIGNAL \mem_addr_r[4]~17\ : std_logic;
SIGNAL \mem_addr_r[5]~19\ : std_logic;
SIGNAL \mem_addr_r[6]~21\ : std_logic;
SIGNAL \mem_addr_r[7]~22_combout\ : std_logic;
SIGNAL \u_mem_wave|u_tri_ROM|q~7_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL phase_acc_r : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_addr_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_mem_wave|en_r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_mem_wave|u_square_ROM|q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_mem_wave|u_tri_ROM|q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \wave_sel~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \wave_amp~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \phase_init~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f_word~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rstn~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_wave_en~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rstn <= rstn;
ww_wave_en <= wave_en;
ww_wave_sel <= wave_sel;
ww_wave_amp <= wave_amp;
ww_phase_init <= phase_init;
ww_f_word <= f_word;
dout <= ww_dout;
dout_en <= ww_dout_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rstn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rstn~combout\);
\ALT_INV_rstn~clkctrl_outclk\ <= NOT \rstn~clkctrl_outclk\;
\ALT_INV_wave_en~combout\ <= NOT \wave_en~combout\;

-- Location: LCFF_X28_Y35_N5
\mem_addr_r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[2]~12_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(2));

-- Location: LCFF_X28_Y35_N11
\mem_addr_r[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[5]~18_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(5));

-- Location: LCFF_X28_Y35_N13
\mem_addr_r[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[6]~20_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(6));

-- Location: LCFF_X28_Y35_N25
\phase_acc_r[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[4]~16_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(4));

-- Location: LCFF_X28_Y35_N21
\phase_acc_r[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[2]~12_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(2));

-- Location: LCFF_X28_Y35_N17
\phase_acc_r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[0]~8_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(0));

-- Location: LCCOMB_X28_Y35_N4
\mem_addr_r[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[2]~12_combout\ = ((phase_acc_r(2) $ (\phase_init~combout\(2) $ (!\mem_addr_r[1]~11\)))) # (GND)
-- \mem_addr_r[2]~13\ = CARRY((phase_acc_r(2) & ((\phase_init~combout\(2)) # (!\mem_addr_r[1]~11\))) # (!phase_acc_r(2) & (\phase_init~combout\(2) & !\mem_addr_r[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(2),
	datab => \phase_init~combout\(2),
	datad => VCC,
	cin => \mem_addr_r[1]~11\,
	combout => \mem_addr_r[2]~12_combout\,
	cout => \mem_addr_r[2]~13\);

-- Location: LCCOMB_X28_Y35_N10
\mem_addr_r[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[5]~18_combout\ = (\phase_init~combout\(5) & ((phase_acc_r(5) & (\mem_addr_r[4]~17\ & VCC)) # (!phase_acc_r(5) & (!\mem_addr_r[4]~17\)))) # (!\phase_init~combout\(5) & ((phase_acc_r(5) & (!\mem_addr_r[4]~17\)) # (!phase_acc_r(5) & 
-- ((\mem_addr_r[4]~17\) # (GND)))))
-- \mem_addr_r[5]~19\ = CARRY((\phase_init~combout\(5) & (!phase_acc_r(5) & !\mem_addr_r[4]~17\)) # (!\phase_init~combout\(5) & ((!\mem_addr_r[4]~17\) # (!phase_acc_r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init~combout\(5),
	datab => phase_acc_r(5),
	datad => VCC,
	cin => \mem_addr_r[4]~17\,
	combout => \mem_addr_r[5]~18_combout\,
	cout => \mem_addr_r[5]~19\);

-- Location: LCCOMB_X28_Y35_N12
\mem_addr_r[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[6]~20_combout\ = ((\phase_init~combout\(6) $ (phase_acc_r(6) $ (!\mem_addr_r[5]~19\)))) # (GND)
-- \mem_addr_r[6]~21\ = CARRY((\phase_init~combout\(6) & ((phase_acc_r(6)) # (!\mem_addr_r[5]~19\))) # (!\phase_init~combout\(6) & (phase_acc_r(6) & !\mem_addr_r[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init~combout\(6),
	datab => phase_acc_r(6),
	datad => VCC,
	cin => \mem_addr_r[5]~19\,
	combout => \mem_addr_r[6]~20_combout\,
	cout => \mem_addr_r[6]~21\);

-- Location: LCCOMB_X28_Y35_N16
\phase_acc_r[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[0]~8_combout\ = (phase_acc_r(0) & (\f_word~combout\(0) $ (VCC))) # (!phase_acc_r(0) & (\f_word~combout\(0) & VCC))
-- \phase_acc_r[0]~9\ = CARRY((phase_acc_r(0) & \f_word~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(0),
	datab => \f_word~combout\(0),
	datad => VCC,
	combout => \phase_acc_r[0]~8_combout\,
	cout => \phase_acc_r[0]~9\);

-- Location: LCCOMB_X28_Y35_N20
\phase_acc_r[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[2]~12_combout\ = ((phase_acc_r(2) $ (\f_word~combout\(2) $ (!\phase_acc_r[1]~11\)))) # (GND)
-- \phase_acc_r[2]~13\ = CARRY((phase_acc_r(2) & ((\f_word~combout\(2)) # (!\phase_acc_r[1]~11\))) # (!phase_acc_r(2) & (\f_word~combout\(2) & !\phase_acc_r[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(2),
	datab => \f_word~combout\(2),
	datad => VCC,
	cin => \phase_acc_r[1]~11\,
	combout => \phase_acc_r[2]~12_combout\,
	cout => \phase_acc_r[2]~13\);

-- Location: LCCOMB_X28_Y35_N24
\phase_acc_r[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[4]~16_combout\ = ((phase_acc_r(4) $ (\f_word~combout\(4) $ (!\phase_acc_r[3]~15\)))) # (GND)
-- \phase_acc_r[4]~17\ = CARRY((phase_acc_r(4) & ((\f_word~combout\(4)) # (!\phase_acc_r[3]~15\))) # (!phase_acc_r(4) & (\f_word~combout\(4) & !\phase_acc_r[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(4),
	datab => \f_word~combout\(4),
	datad => VCC,
	cin => \phase_acc_r[3]~15\,
	combout => \phase_acc_r[4]~16_combout\,
	cout => \phase_acc_r[4]~17\);

-- Location: LCFF_X29_Y35_N13
\u_mem_wave|u_tri_ROM|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(5));

-- Location: LCFF_X29_Y35_N11
\u_mem_wave|u_tri_ROM|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(8));

-- Location: LCCOMB_X29_Y35_N12
\u_mem_wave|u_tri_ROM|q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~3_combout\ = (\u_mem_wave|comb~0_combout\ & (mem_addr_r(7) $ (mem_addr_r(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datac => mem_addr_r(2),
	datad => \u_mem_wave|comb~0_combout\,
	combout => \u_mem_wave|u_tri_ROM|q~3_combout\);

-- Location: LCCOMB_X29_Y35_N10
\u_mem_wave|u_tri_ROM|q~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~6_combout\ = (\u_mem_wave|comb~0_combout\ & (mem_addr_r(7) $ (mem_addr_r(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datab => \u_mem_wave|comb~0_combout\,
	datad => mem_addr_r(5),
	combout => \u_mem_wave|u_tri_ROM|q~6_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(6),
	combout => \phase_init~combout\(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(5),
	combout => \phase_init~combout\(5));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(3),
	combout => \phase_init~combout\(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(1),
	combout => \phase_init~combout\(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(6),
	combout => \f_word~combout\(6));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(5),
	combout => \f_word~combout\(5));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(3),
	combout => \f_word~combout\(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(1),
	combout => \f_word~combout\(1));

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wave_amp[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_wave_amp(1),
	combout => \wave_amp~combout\(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(0),
	combout => \phase_init~combout\(0));

-- Location: LCCOMB_X28_Y35_N0
\mem_addr_r[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[0]~8_combout\ = (phase_acc_r(0) & (\phase_init~combout\(0) $ (VCC))) # (!phase_acc_r(0) & (\phase_init~combout\(0) & VCC))
-- \mem_addr_r[0]~9\ = CARRY((phase_acc_r(0) & \phase_init~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(0),
	datab => \phase_init~combout\(0),
	datad => VCC,
	combout => \mem_addr_r[0]~8_combout\,
	cout => \mem_addr_r[0]~9\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rstn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rstn,
	combout => \rstn~combout\);

-- Location: CLKCTRL_G1
\rstn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rstn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rstn~clkctrl_outclk\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wave_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_wave_en,
	combout => \wave_en~combout\);

-- Location: LCFF_X28_Y35_N1
\mem_addr_r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[0]~8_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wave_sel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_wave_sel(0),
	combout => \wave_sel~combout\(0));

-- Location: LCCOMB_X29_Y35_N14
\u_mem_wave|en_r[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|en_r[0]~feeder_combout\ = \wave_en~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wave_en~combout\,
	combout => \u_mem_wave|en_r[0]~feeder_combout\);

-- Location: LCFF_X29_Y35_N15
\u_mem_wave|en_r[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|en_r[0]~feeder_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|en_r\(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wave_sel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_wave_sel(1),
	combout => \wave_sel~combout\(1));

-- Location: LCCOMB_X29_Y35_N0
\u_mem_wave|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|comb~0_combout\ = (!\wave_sel~combout\(0) & (\u_mem_wave|en_r\(0) & \wave_sel~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wave_sel~combout\(0),
	datac => \u_mem_wave|en_r\(0),
	datad => \wave_sel~combout\(1),
	combout => \u_mem_wave|comb~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\u_mem_wave|u_tri_ROM|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~0_combout\ = (\u_mem_wave|comb~0_combout\ & (mem_addr_r(7) $ (mem_addr_r(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datac => mem_addr_r(0),
	datad => \u_mem_wave|comb~0_combout\,
	combout => \u_mem_wave|u_tri_ROM|q~0_combout\);

-- Location: LCFF_X29_Y35_N5
\u_mem_wave|u_tri_ROM|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(3));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wave_amp[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_wave_amp(0),
	combout => \wave_amp~combout\(0));

-- Location: LCCOMB_X30_Y35_N10
\ShiftRight0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\u_mem_wave|en_r\(1) & (\wave_amp~combout\(1) & (\u_mem_wave|u_tri_ROM|q\(3) & \wave_amp~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|en_r\(1),
	datab => \wave_amp~combout\(1),
	datac => \u_mem_wave|u_tri_ROM|q\(3),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X30_Y35_N20
\u_mem_wave|en_r[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|en_r[1]~feeder_combout\ = \u_mem_wave|en_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_mem_wave|en_r\(0),
	combout => \u_mem_wave|en_r[1]~feeder_combout\);

-- Location: LCFF_X30_Y35_N21
\u_mem_wave|en_r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|en_r[1]~feeder_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|en_r\(1));

-- Location: LCCOMB_X30_Y35_N22
\ShiftRight0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\u_mem_wave|en_r\(1) & ((!\wave_amp~combout\(0)) # (!\wave_amp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wave_amp~combout\(1),
	datac => \u_mem_wave|en_r\(1),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X29_Y35_N30
\u_mem_wave|u_square_ROM|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_square_ROM|q~0_combout\ = (!mem_addr_r(7) & (\wave_sel~combout\(0) & (\u_mem_wave|en_r\(0) & !\wave_sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datab => \wave_sel~combout\(0),
	datac => \u_mem_wave|en_r\(0),
	datad => \wave_sel~combout\(1),
	combout => \u_mem_wave|u_square_ROM|q~0_combout\);

-- Location: LCFF_X29_Y35_N31
\u_mem_wave|u_square_ROM|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_square_ROM|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_square_ROM|q\(0));

-- Location: LCCOMB_X30_Y35_N0
\ShiftRight0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\u_mem_wave|u_square_ROM|q\(0) & \u_mem_wave|en_r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_mem_wave|u_square_ROM|q\(0),
	datad => \u_mem_wave|en_r\(1),
	combout => \ShiftRight0~5_combout\);

-- Location: LCCOMB_X29_Y35_N16
\u_mem_wave|u_tri_ROM|q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~1_combout\ = (mem_addr_r(7) & (!\wave_sel~combout\(0) & (\u_mem_wave|en_r\(0) & \wave_sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datab => \wave_sel~combout\(0),
	datac => \u_mem_wave|en_r\(0),
	datad => \wave_sel~combout\(1),
	combout => \u_mem_wave|u_tri_ROM|q~1_combout\);

-- Location: LCFF_X29_Y35_N17
\u_mem_wave|u_tri_ROM|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(0));

-- Location: LCCOMB_X30_Y35_N4
\ShiftRight0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\ShiftRight0~4_combout\) # ((\ShiftRight0~5_combout\) # ((\ShiftRight0~6_combout\ & \u_mem_wave|u_tri_ROM|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~4_combout\,
	datab => \ShiftRight0~6_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \u_mem_wave|u_tri_ROM|q\(0),
	combout => \ShiftRight0~7_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(0),
	combout => \f_word~combout\(0));

-- Location: LCCOMB_X28_Y35_N18
\phase_acc_r[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[1]~10_combout\ = (\f_word~combout\(1) & ((phase_acc_r(1) & (\phase_acc_r[0]~9\ & VCC)) # (!phase_acc_r(1) & (!\phase_acc_r[0]~9\)))) # (!\f_word~combout\(1) & ((phase_acc_r(1) & (!\phase_acc_r[0]~9\)) # (!phase_acc_r(1) & 
-- ((\phase_acc_r[0]~9\) # (GND)))))
-- \phase_acc_r[1]~11\ = CARRY((\f_word~combout\(1) & (!phase_acc_r(1) & !\phase_acc_r[0]~9\)) # (!\f_word~combout\(1) & ((!\phase_acc_r[0]~9\) # (!phase_acc_r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f_word~combout\(1),
	datab => phase_acc_r(1),
	datad => VCC,
	cin => \phase_acc_r[0]~9\,
	combout => \phase_acc_r[1]~10_combout\,
	cout => \phase_acc_r[1]~11\);

-- Location: LCFF_X28_Y35_N19
\phase_acc_r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[1]~10_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(1));

-- Location: LCCOMB_X28_Y35_N2
\mem_addr_r[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[1]~10_combout\ = (\phase_init~combout\(1) & ((phase_acc_r(1) & (\mem_addr_r[0]~9\ & VCC)) # (!phase_acc_r(1) & (!\mem_addr_r[0]~9\)))) # (!\phase_init~combout\(1) & ((phase_acc_r(1) & (!\mem_addr_r[0]~9\)) # (!phase_acc_r(1) & 
-- ((\mem_addr_r[0]~9\) # (GND)))))
-- \mem_addr_r[1]~11\ = CARRY((\phase_init~combout\(1) & (!phase_acc_r(1) & !\mem_addr_r[0]~9\)) # (!\phase_init~combout\(1) & ((!\mem_addr_r[0]~9\) # (!phase_acc_r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init~combout\(1),
	datab => phase_acc_r(1),
	datad => VCC,
	cin => \mem_addr_r[0]~9\,
	combout => \mem_addr_r[1]~10_combout\,
	cout => \mem_addr_r[1]~11\);

-- Location: LCFF_X28_Y35_N3
\mem_addr_r[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[1]~10_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(1));

-- Location: LCCOMB_X29_Y35_N26
\u_mem_wave|u_tri_ROM|q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~2_combout\ = (\u_mem_wave|comb~0_combout\ & (mem_addr_r(7) $ (mem_addr_r(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datab => \u_mem_wave|comb~0_combout\,
	datad => mem_addr_r(1),
	combout => \u_mem_wave|u_tri_ROM|q~2_combout\);

-- Location: LCFF_X29_Y35_N27
\u_mem_wave|u_tri_ROM|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(4));

-- Location: LCCOMB_X30_Y35_N28
\ShiftRight0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(4))) # (!\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_mem_wave|u_tri_ROM|q\(4),
	datac => \u_mem_wave|u_tri_ROM|q\(3),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X30_Y35_N30
\ShiftRight0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\u_mem_wave|en_r\(1) & ((\u_mem_wave|u_square_ROM|q\(0)) # ((\u_mem_wave|u_tri_ROM|q\(0) & !\wave_amp~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|en_r\(1),
	datab => \u_mem_wave|u_tri_ROM|q\(0),
	datac => \u_mem_wave|u_square_ROM|q\(0),
	datad => \wave_amp~combout\(1),
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X30_Y35_N12
\ShiftRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\ShiftRight0~8_combout\) # ((\ShiftRight0~10_combout\ & (\u_mem_wave|en_r\(1) & \wave_amp~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datab => \ShiftRight0~8_combout\,
	datac => \u_mem_wave|en_r\(1),
	datad => \wave_amp~combout\(1),
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X30_Y35_N8
\ShiftRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(5))) # (!\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|u_tri_ROM|q\(5),
	datab => \u_mem_wave|u_tri_ROM|q\(4),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X30_Y35_N18
\ShiftRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\ShiftRight0~11_combout\ & ((\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(3)))) # (!\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~11_combout\,
	datab => \u_mem_wave|u_tri_ROM|q\(0),
	datac => \u_mem_wave|u_tri_ROM|q\(3),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X31_Y35_N28
\ShiftRight0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\u_mem_wave|en_r\(1) & \wave_amp~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_mem_wave|en_r\(1),
	datad => \wave_amp~combout\(1),
	combout => \ShiftRight0~9_combout\);

-- Location: LCCOMB_X31_Y35_N8
\ShiftRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\ShiftRight0~12_combout\) # ((\ShiftRight0~5_combout\) # ((\ShiftRight0~13_combout\ & \ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~13_combout\,
	datab => \ShiftRight0~12_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~14_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(2),
	combout => \f_word~combout\(2));

-- Location: LCCOMB_X28_Y35_N22
\phase_acc_r[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[3]~14_combout\ = (\f_word~combout\(3) & ((phase_acc_r(3) & (\phase_acc_r[2]~13\ & VCC)) # (!phase_acc_r(3) & (!\phase_acc_r[2]~13\)))) # (!\f_word~combout\(3) & ((phase_acc_r(3) & (!\phase_acc_r[2]~13\)) # (!phase_acc_r(3) & 
-- ((\phase_acc_r[2]~13\) # (GND)))))
-- \phase_acc_r[3]~15\ = CARRY((\f_word~combout\(3) & (!phase_acc_r(3) & !\phase_acc_r[2]~13\)) # (!\f_word~combout\(3) & ((!\phase_acc_r[2]~13\) # (!phase_acc_r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f_word~combout\(3),
	datab => phase_acc_r(3),
	datad => VCC,
	cin => \phase_acc_r[2]~13\,
	combout => \phase_acc_r[3]~14_combout\,
	cout => \phase_acc_r[3]~15\);

-- Location: LCFF_X28_Y35_N23
\phase_acc_r[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[3]~14_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(3));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(2),
	combout => \phase_init~combout\(2));

-- Location: LCCOMB_X28_Y35_N6
\mem_addr_r[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[3]~14_combout\ = (\phase_init~combout\(3) & ((phase_acc_r(3) & (\mem_addr_r[2]~13\ & VCC)) # (!phase_acc_r(3) & (!\mem_addr_r[2]~13\)))) # (!\phase_init~combout\(3) & ((phase_acc_r(3) & (!\mem_addr_r[2]~13\)) # (!phase_acc_r(3) & 
-- ((\mem_addr_r[2]~13\) # (GND)))))
-- \mem_addr_r[3]~15\ = CARRY((\phase_init~combout\(3) & (!phase_acc_r(3) & !\mem_addr_r[2]~13\)) # (!\phase_init~combout\(3) & ((!\mem_addr_r[2]~13\) # (!phase_acc_r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init~combout\(3),
	datab => phase_acc_r(3),
	datad => VCC,
	cin => \mem_addr_r[2]~13\,
	combout => \mem_addr_r[3]~14_combout\,
	cout => \mem_addr_r[3]~15\);

-- Location: LCFF_X28_Y35_N7
\mem_addr_r[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[3]~14_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(3));

-- Location: LCCOMB_X29_Y35_N2
\u_mem_wave|u_tri_ROM|q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~4_combout\ = (\u_mem_wave|comb~0_combout\ & (mem_addr_r(7) $ (mem_addr_r(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datac => mem_addr_r(3),
	datad => \u_mem_wave|comb~0_combout\,
	combout => \u_mem_wave|u_tri_ROM|q~4_combout\);

-- Location: LCFF_X29_Y35_N3
\u_mem_wave|u_tri_ROM|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(6));

-- Location: LCCOMB_X31_Y35_N6
\ShiftRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\ShiftRight0~9_combout\ & ((\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(6)))) # (!\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|u_tri_ROM|q\(5),
	datab => \u_mem_wave|u_tri_ROM|q\(6),
	datac => \wave_amp~combout\(0),
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X31_Y35_N30
\ShiftRight0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\u_mem_wave|en_r\(1) & !\wave_amp~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_mem_wave|en_r\(1),
	datad => \wave_amp~combout\(1),
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X31_Y35_N0
\ShiftRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\ShiftRight0~15_combout\) # ((\ShiftRight0~5_combout\) # ((\ShiftRight0~10_combout\ & \ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \ShiftRight0~10_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~11_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(4),
	combout => \phase_init~combout\(4));

-- Location: LCCOMB_X28_Y35_N8
\mem_addr_r[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[4]~16_combout\ = ((phase_acc_r(4) $ (\phase_init~combout\(4) $ (!\mem_addr_r[3]~15\)))) # (GND)
-- \mem_addr_r[4]~17\ = CARRY((phase_acc_r(4) & ((\phase_init~combout\(4)) # (!\mem_addr_r[3]~15\))) # (!phase_acc_r(4) & (\phase_init~combout\(4) & !\mem_addr_r[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(4),
	datab => \phase_init~combout\(4),
	datad => VCC,
	cin => \mem_addr_r[3]~15\,
	combout => \mem_addr_r[4]~16_combout\,
	cout => \mem_addr_r[4]~17\);

-- Location: LCFF_X28_Y35_N9
\mem_addr_r[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[4]~16_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(4));

-- Location: LCCOMB_X29_Y35_N20
\u_mem_wave|u_tri_ROM|q~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~5_combout\ = (\u_mem_wave|comb~0_combout\ & (mem_addr_r(7) $ (mem_addr_r(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(7),
	datab => \u_mem_wave|comb~0_combout\,
	datad => mem_addr_r(4),
	combout => \u_mem_wave|u_tri_ROM|q~5_combout\);

-- Location: LCFF_X29_Y35_N21
\u_mem_wave|u_tri_ROM|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(7));

-- Location: LCCOMB_X31_Y35_N22
\ShiftRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\ShiftRight0~9_combout\ & ((\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(7))) # (!\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wave_amp~combout\(0),
	datab => \u_mem_wave|u_tri_ROM|q\(7),
	datac => \u_mem_wave|u_tri_ROM|q\(6),
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X31_Y35_N16
\ShiftRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\ShiftRight0~17_combout\) # ((\ShiftRight0~5_combout\) # ((\ShiftRight0~13_combout\ & \ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~13_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~11_combout\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X30_Y35_N14
\ShiftRight0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(8))) # (!\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|u_tri_ROM|q\(8),
	datac => \u_mem_wave|u_tri_ROM|q\(7),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X31_Y35_N2
\ShiftRight0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\ShiftRight0~11_combout\ & ((\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(6)))) # (!\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|u_tri_ROM|q\(5),
	datab => \u_mem_wave|u_tri_ROM|q\(6),
	datac => \wave_amp~combout\(0),
	datad => \ShiftRight0~11_combout\,
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X31_Y35_N24
\ShiftRight0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\ShiftRight0~19_combout\) # ((\ShiftRight0~5_combout\) # ((\ShiftRight0~20_combout\ & \ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \ShiftRight0~19_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~21_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\phase_init[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_phase_init(7),
	combout => \phase_init~combout\(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(7),
	combout => \f_word~combout\(7));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_word[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_word(4),
	combout => \f_word~combout\(4));

-- Location: LCCOMB_X28_Y35_N26
\phase_acc_r[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[5]~18_combout\ = (\f_word~combout\(5) & ((phase_acc_r(5) & (\phase_acc_r[4]~17\ & VCC)) # (!phase_acc_r(5) & (!\phase_acc_r[4]~17\)))) # (!\f_word~combout\(5) & ((phase_acc_r(5) & (!\phase_acc_r[4]~17\)) # (!phase_acc_r(5) & 
-- ((\phase_acc_r[4]~17\) # (GND)))))
-- \phase_acc_r[5]~19\ = CARRY((\f_word~combout\(5) & (!phase_acc_r(5) & !\phase_acc_r[4]~17\)) # (!\f_word~combout\(5) & ((!\phase_acc_r[4]~17\) # (!phase_acc_r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f_word~combout\(5),
	datab => phase_acc_r(5),
	datad => VCC,
	cin => \phase_acc_r[4]~17\,
	combout => \phase_acc_r[5]~18_combout\,
	cout => \phase_acc_r[5]~19\);

-- Location: LCFF_X28_Y35_N27
\phase_acc_r[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[5]~18_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(5));

-- Location: LCCOMB_X28_Y35_N28
\phase_acc_r[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[6]~20_combout\ = ((\f_word~combout\(6) $ (phase_acc_r(6) $ (!\phase_acc_r[5]~19\)))) # (GND)
-- \phase_acc_r[6]~21\ = CARRY((\f_word~combout\(6) & ((phase_acc_r(6)) # (!\phase_acc_r[5]~19\))) # (!\f_word~combout\(6) & (phase_acc_r(6) & !\phase_acc_r[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f_word~combout\(6),
	datab => phase_acc_r(6),
	datad => VCC,
	cin => \phase_acc_r[5]~19\,
	combout => \phase_acc_r[6]~20_combout\,
	cout => \phase_acc_r[6]~21\);

-- Location: LCFF_X28_Y35_N29
\phase_acc_r[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[6]~20_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(6));

-- Location: LCCOMB_X28_Y35_N30
\phase_acc_r[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \phase_acc_r[7]~22_combout\ = \f_word~combout\(7) $ (\phase_acc_r[6]~21\ $ (phase_acc_r(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f_word~combout\(7),
	datad => phase_acc_r(7),
	cin => \phase_acc_r[6]~21\,
	combout => \phase_acc_r[7]~22_combout\);

-- Location: LCFF_X28_Y35_N31
\phase_acc_r[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \phase_acc_r[7]~22_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => phase_acc_r(7));

-- Location: LCCOMB_X28_Y35_N14
\mem_addr_r[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~22_combout\ = \phase_init~combout\(7) $ (\mem_addr_r[6]~21\ $ (phase_acc_r(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \phase_init~combout\(7),
	datad => phase_acc_r(7),
	cin => \mem_addr_r[6]~21\,
	combout => \mem_addr_r[7]~22_combout\);

-- Location: LCFF_X28_Y35_N15
\mem_addr_r[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mem_addr_r[7]~22_combout\,
	aclr => \ALT_INV_rstn~clkctrl_outclk\,
	sclr => \ALT_INV_wave_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => mem_addr_r(7));

-- Location: LCCOMB_X29_Y35_N24
\u_mem_wave|u_tri_ROM|q~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_mem_wave|u_tri_ROM|q~7_combout\ = (\u_mem_wave|comb~0_combout\ & (mem_addr_r(6) $ (mem_addr_r(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_addr_r(6),
	datab => \u_mem_wave|comb~0_combout\,
	datad => mem_addr_r(7),
	combout => \u_mem_wave|u_tri_ROM|q~7_combout\);

-- Location: LCFF_X29_Y35_N25
\u_mem_wave|u_tri_ROM|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_mem_wave|u_tri_ROM|q~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_mem_wave|u_tri_ROM|q\(9));

-- Location: LCCOMB_X30_Y35_N24
\ShiftRight0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(9)))) # (!\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|u_tri_ROM|q\(8),
	datab => \u_mem_wave|u_tri_ROM|q\(9),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X31_Y35_N18
\ShiftRight0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\ShiftRight0~11_combout\ & ((\wave_amp~combout\(0) & (\u_mem_wave|u_tri_ROM|q\(7))) # (!\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wave_amp~combout\(0),
	datab => \u_mem_wave|u_tri_ROM|q\(7),
	datac => \u_mem_wave|u_tri_ROM|q\(6),
	datad => \ShiftRight0~11_combout\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X31_Y35_N12
\ShiftRight0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\ShiftRight0~22_combout\) # ((\ShiftRight0~5_combout\) # ((\ShiftRight0~23_combout\ & \ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \ShiftRight0~5_combout\,
	datad => \ShiftRight0~9_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X30_Y35_N6
\ShiftRight0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\u_mem_wave|u_square_ROM|q\(0)) # ((\u_mem_wave|u_tri_ROM|q\(9) & \wave_amp~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_mem_wave|u_tri_ROM|q\(9),
	datac => \u_mem_wave|u_square_ROM|q\(0),
	datad => \wave_amp~combout\(1),
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X30_Y35_N16
\ShiftRight0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\ShiftRight0~6_combout\ & ((\ShiftRight0~25_combout\) # ((\ShiftRight0~20_combout\ & !\wave_amp~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \ShiftRight0~6_combout\,
	datac => \ShiftRight0~20_combout\,
	datad => \wave_amp~combout\(1),
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X30_Y35_N26
\ShiftRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\u_mem_wave|en_r\(1) & (!\wave_amp~combout\(1) & ((\u_mem_wave|u_square_ROM|q\(0)) # (\ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mem_wave|u_square_ROM|q\(0),
	datab => \u_mem_wave|en_r\(1),
	datac => \ShiftRight0~23_combout\,
	datad => \wave_amp~combout\(1),
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X30_Y35_N2
\ShiftRight0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\ShiftRight0~11_combout\ & (!\wave_amp~combout\(0) & ((\u_mem_wave|u_tri_ROM|q\(9)) # (\u_mem_wave|u_square_ROM|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~11_combout\,
	datab => \u_mem_wave|u_tri_ROM|q\(9),
	datac => \u_mem_wave|u_square_ROM|q\(0),
	datad => \wave_amp~combout\(0),
	combout => \ShiftRight0~27_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(1));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(2));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(4));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(5));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(6));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(7));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(8));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShiftRight0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(9));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_mem_wave|en_r\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout_en);
END structure;


