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

-- DATE "11/21/2020 00:32:16"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dds IS
    PORT (
	clk : IN std_logic;
	rstn : IN std_logic;
	wave_en : IN std_logic;
	wave_amp : IN std_logic_vector(1 DOWNTO 0);
	phase_init : IN std_logic_vector(7 DOWNTO 0);
	f_word : IN std_logic_vector(7 DOWNTO 0);
	dout : OUT std_logic_vector(9 DOWNTO 0);
	dout_en : OUT std_logic_vector(9 DOWNTO 0)
	);
END dds;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[8]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[9]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout_en[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wave_amp[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wave_amp[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstn	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wave_en	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase_init[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_word[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_wave_amp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_phase_init : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_f_word : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dout_en : std_logic_vector(9 DOWNTO 0);
SIGNAL \rstn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \phase_acc_r[3]~14_combout\ : std_logic;
SIGNAL \phase_acc_r[5]~18_combout\ : std_logic;
SIGNAL \phase_acc_r[6]~20_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \phase_init[4]~input_o\ : std_logic;
SIGNAL \phase_init[2]~input_o\ : std_logic;
SIGNAL \phase_init[1]~input_o\ : std_logic;
SIGNAL \phase_init[0]~input_o\ : std_logic;
SIGNAL \f_word[4]~input_o\ : std_logic;
SIGNAL \f_word[2]~input_o\ : std_logic;
SIGNAL \f_word[1]~input_o\ : std_logic;
SIGNAL \f_word[0]~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \dout[8]~output_o\ : std_logic;
SIGNAL \dout[9]~output_o\ : std_logic;
SIGNAL \dout_en[0]~output_o\ : std_logic;
SIGNAL \dout_en[1]~output_o\ : std_logic;
SIGNAL \dout_en[2]~output_o\ : std_logic;
SIGNAL \dout_en[3]~output_o\ : std_logic;
SIGNAL \dout_en[4]~output_o\ : std_logic;
SIGNAL \dout_en[5]~output_o\ : std_logic;
SIGNAL \dout_en[6]~output_o\ : std_logic;
SIGNAL \dout_en[7]~output_o\ : std_logic;
SIGNAL \dout_en[8]~output_o\ : std_logic;
SIGNAL \dout_en[9]~output_o\ : std_logic;
SIGNAL \wave_en~input_o\ : std_logic;
SIGNAL \uut|en_r[0]~feeder_combout\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \rstn~inputclkctrl_outclk\ : std_logic;
SIGNAL \uut|en_r[1]~feeder_combout\ : std_logic;
SIGNAL \f_word[7]~input_o\ : std_logic;
SIGNAL \f_word[6]~input_o\ : std_logic;
SIGNAL \f_word[5]~input_o\ : std_logic;
SIGNAL \f_word[3]~input_o\ : std_logic;
SIGNAL \phase_acc_r[0]~8_combout\ : std_logic;
SIGNAL \phase_acc_r[0]~9\ : std_logic;
SIGNAL \phase_acc_r[1]~10_combout\ : std_logic;
SIGNAL \phase_acc_r[1]~11\ : std_logic;
SIGNAL \phase_acc_r[2]~12_combout\ : std_logic;
SIGNAL \phase_acc_r[2]~13\ : std_logic;
SIGNAL \phase_acc_r[3]~15\ : std_logic;
SIGNAL \phase_acc_r[4]~16_combout\ : std_logic;
SIGNAL \phase_acc_r[4]~17\ : std_logic;
SIGNAL \phase_acc_r[5]~19\ : std_logic;
SIGNAL \phase_acc_r[6]~21\ : std_logic;
SIGNAL \phase_acc_r[7]~22_combout\ : std_logic;
SIGNAL \phase_init[7]~input_o\ : std_logic;
SIGNAL \phase_init[6]~input_o\ : std_logic;
SIGNAL \phase_init[5]~input_o\ : std_logic;
SIGNAL \phase_init[3]~input_o\ : std_logic;
SIGNAL \mem_addr_r[7]~2_cout\ : std_logic;
SIGNAL \mem_addr_r[7]~4_cout\ : std_logic;
SIGNAL \mem_addr_r[7]~6_cout\ : std_logic;
SIGNAL \mem_addr_r[7]~8_cout\ : std_logic;
SIGNAL \mem_addr_r[7]~10_cout\ : std_logic;
SIGNAL \mem_addr_r[7]~12_cout\ : std_logic;
SIGNAL \mem_addr_r[7]~14_cout\ : std_logic;
SIGNAL \mem_addr_r[7]~15_combout\ : std_logic;
SIGNAL \uut|uut|wave~0_combout\ : std_logic;
SIGNAL \uut|dout[0]~0_combout\ : std_logic;
SIGNAL \wave_amp[1]~input_o\ : std_logic;
SIGNAL \wave_amp[0]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL phase_acc_r : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_addr_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|en_r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \uut|uut|wave\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_wave_en~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rstn <= rstn;
ww_wave_en <= wave_en;
ww_wave_amp <= wave_amp;
ww_phase_init <= phase_init;
ww_f_word <= f_word;
dout <= ww_dout;
dout_en <= ww_dout_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rstn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rstn~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_wave_en~input_o\ <= NOT \wave_en~input_o\;

-- Location: FF_X32_Y15_N13
\phase_acc_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[6]~20_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(6));

-- Location: FF_X32_Y15_N11
\phase_acc_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[5]~18_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(5));

-- Location: FF_X32_Y15_N7
\phase_acc_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[3]~14_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(3));

-- Location: LCCOMB_X32_Y15_N6
\phase_acc_r[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[3]~14_combout\ = (phase_acc_r(3) & ((\f_word[3]~input_o\ & (\phase_acc_r[2]~13\ & VCC)) # (!\f_word[3]~input_o\ & (!\phase_acc_r[2]~13\)))) # (!phase_acc_r(3) & ((\f_word[3]~input_o\ & (!\phase_acc_r[2]~13\)) # (!\f_word[3]~input_o\ & 
-- ((\phase_acc_r[2]~13\) # (GND)))))
-- \phase_acc_r[3]~15\ = CARRY((phase_acc_r(3) & (!\f_word[3]~input_o\ & !\phase_acc_r[2]~13\)) # (!phase_acc_r(3) & ((!\phase_acc_r[2]~13\) # (!\f_word[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(3),
	datab => \f_word[3]~input_o\,
	datad => VCC,
	cin => \phase_acc_r[2]~13\,
	combout => \phase_acc_r[3]~14_combout\,
	cout => \phase_acc_r[3]~15\);

-- Location: LCCOMB_X32_Y15_N10
\phase_acc_r[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[5]~18_combout\ = (phase_acc_r(5) & ((\f_word[5]~input_o\ & (\phase_acc_r[4]~17\ & VCC)) # (!\f_word[5]~input_o\ & (!\phase_acc_r[4]~17\)))) # (!phase_acc_r(5) & ((\f_word[5]~input_o\ & (!\phase_acc_r[4]~17\)) # (!\f_word[5]~input_o\ & 
-- ((\phase_acc_r[4]~17\) # (GND)))))
-- \phase_acc_r[5]~19\ = CARRY((phase_acc_r(5) & (!\f_word[5]~input_o\ & !\phase_acc_r[4]~17\)) # (!phase_acc_r(5) & ((!\phase_acc_r[4]~17\) # (!\f_word[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(5),
	datab => \f_word[5]~input_o\,
	datad => VCC,
	cin => \phase_acc_r[4]~17\,
	combout => \phase_acc_r[5]~18_combout\,
	cout => \phase_acc_r[5]~19\);

-- Location: LCCOMB_X32_Y15_N12
\phase_acc_r[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[6]~20_combout\ = ((phase_acc_r(6) $ (\f_word[6]~input_o\ $ (!\phase_acc_r[5]~19\)))) # (GND)
-- \phase_acc_r[6]~21\ = CARRY((phase_acc_r(6) & ((\f_word[6]~input_o\) # (!\phase_acc_r[5]~19\))) # (!phase_acc_r(6) & (\f_word[6]~input_o\ & !\phase_acc_r[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(6),
	datab => \f_word[6]~input_o\,
	datad => VCC,
	cin => \phase_acc_r[5]~19\,
	combout => \phase_acc_r[6]~20_combout\,
	cout => \phase_acc_r[6]~21\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\phase_init[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(4),
	o => \phase_init[4]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\phase_init[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(2),
	o => \phase_init[2]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\phase_init[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(1),
	o => \phase_init[1]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\phase_init[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(0),
	o => \phase_init[0]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\f_word[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(4),
	o => \f_word[4]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\f_word[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(2),
	o => \f_word[2]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\f_word[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(1),
	o => \f_word[1]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\f_word[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(0),
	o => \f_word[0]~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X29_Y31_N9
\dout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\dout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\dout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\dout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\dout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\dout[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\dout[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\dout[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRight0~0_combout\,
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\dout[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRight0~1_combout\,
	devoe => ww_devoe,
	o => \dout[8]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\dout[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRight0~2_combout\,
	devoe => ww_devoe,
	o => \dout[9]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\dout_en[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|en_r\(1),
	devoe => ww_devoe,
	o => \dout_en[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\dout_en[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dout_en[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\dout_en[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\dout_en[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\dout_en[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\dout_en[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\dout_en[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[7]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\dout_en[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[8]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\dout_en[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dout_en[9]~output_o\);

-- Location: IOIBUF_X33_Y11_N8
\wave_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wave_en,
	o => \wave_en~input_o\);

-- Location: LCCOMB_X32_Y7_N20
\uut|en_r[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uut|en_r[0]~feeder_combout\ = \wave_en~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wave_en~input_o\,
	combout => \uut|en_r[0]~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rstn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstn,
	o => \rstn~input_o\);

-- Location: CLKCTRL_G19
\rstn~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rstn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rstn~inputclkctrl_outclk\);

-- Location: FF_X32_Y7_N21
\uut|en_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|en_r[0]~feeder_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|en_r\(0));

-- Location: LCCOMB_X32_Y7_N12
\uut|en_r[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uut|en_r[1]~feeder_combout\ = \uut|en_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|en_r\(0),
	combout => \uut|en_r[1]~feeder_combout\);

-- Location: FF_X32_Y7_N13
\uut|en_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|en_r[1]~feeder_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|en_r\(1));

-- Location: IOIBUF_X33_Y14_N8
\f_word[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(7),
	o => \f_word[7]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\f_word[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(6),
	o => \f_word[6]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\f_word[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(5),
	o => \f_word[5]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\f_word[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f_word(3),
	o => \f_word[3]~input_o\);

-- Location: LCCOMB_X32_Y15_N0
\phase_acc_r[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[0]~8_combout\ = (\f_word[0]~input_o\ & (phase_acc_r(0) $ (VCC))) # (!\f_word[0]~input_o\ & (phase_acc_r(0) & VCC))
-- \phase_acc_r[0]~9\ = CARRY((\f_word[0]~input_o\ & phase_acc_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_word[0]~input_o\,
	datab => phase_acc_r(0),
	datad => VCC,
	combout => \phase_acc_r[0]~8_combout\,
	cout => \phase_acc_r[0]~9\);

-- Location: FF_X32_Y15_N1
\phase_acc_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[0]~8_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(0));

-- Location: LCCOMB_X32_Y15_N2
\phase_acc_r[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[1]~10_combout\ = (\f_word[1]~input_o\ & ((phase_acc_r(1) & (\phase_acc_r[0]~9\ & VCC)) # (!phase_acc_r(1) & (!\phase_acc_r[0]~9\)))) # (!\f_word[1]~input_o\ & ((phase_acc_r(1) & (!\phase_acc_r[0]~9\)) # (!phase_acc_r(1) & 
-- ((\phase_acc_r[0]~9\) # (GND)))))
-- \phase_acc_r[1]~11\ = CARRY((\f_word[1]~input_o\ & (!phase_acc_r(1) & !\phase_acc_r[0]~9\)) # (!\f_word[1]~input_o\ & ((!\phase_acc_r[0]~9\) # (!phase_acc_r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f_word[1]~input_o\,
	datab => phase_acc_r(1),
	datad => VCC,
	cin => \phase_acc_r[0]~9\,
	combout => \phase_acc_r[1]~10_combout\,
	cout => \phase_acc_r[1]~11\);

-- Location: FF_X32_Y15_N3
\phase_acc_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[1]~10_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(1));

-- Location: LCCOMB_X32_Y15_N4
\phase_acc_r[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[2]~12_combout\ = ((\f_word[2]~input_o\ $ (phase_acc_r(2) $ (!\phase_acc_r[1]~11\)))) # (GND)
-- \phase_acc_r[2]~13\ = CARRY((\f_word[2]~input_o\ & ((phase_acc_r(2)) # (!\phase_acc_r[1]~11\))) # (!\f_word[2]~input_o\ & (phase_acc_r(2) & !\phase_acc_r[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f_word[2]~input_o\,
	datab => phase_acc_r(2),
	datad => VCC,
	cin => \phase_acc_r[1]~11\,
	combout => \phase_acc_r[2]~12_combout\,
	cout => \phase_acc_r[2]~13\);

-- Location: FF_X32_Y15_N5
\phase_acc_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[2]~12_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(2));

-- Location: LCCOMB_X32_Y15_N8
\phase_acc_r[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[4]~16_combout\ = ((\f_word[4]~input_o\ $ (phase_acc_r(4) $ (!\phase_acc_r[3]~15\)))) # (GND)
-- \phase_acc_r[4]~17\ = CARRY((\f_word[4]~input_o\ & ((phase_acc_r(4)) # (!\phase_acc_r[3]~15\))) # (!\f_word[4]~input_o\ & (phase_acc_r(4) & !\phase_acc_r[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f_word[4]~input_o\,
	datab => phase_acc_r(4),
	datad => VCC,
	cin => \phase_acc_r[3]~15\,
	combout => \phase_acc_r[4]~16_combout\,
	cout => \phase_acc_r[4]~17\);

-- Location: FF_X32_Y15_N9
\phase_acc_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[4]~16_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(4));

-- Location: LCCOMB_X32_Y15_N14
\phase_acc_r[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \phase_acc_r[7]~22_combout\ = phase_acc_r(7) $ (\phase_acc_r[6]~21\ $ (\f_word[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => phase_acc_r(7),
	datad => \f_word[7]~input_o\,
	cin => \phase_acc_r[6]~21\,
	combout => \phase_acc_r[7]~22_combout\);

-- Location: FF_X32_Y15_N15
\phase_acc_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \phase_acc_r[7]~22_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => phase_acc_r(7));

-- Location: IOIBUF_X33_Y27_N1
\phase_init[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(7),
	o => \phase_init[7]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\phase_init[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(6),
	o => \phase_init[6]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\phase_init[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(5),
	o => \phase_init[5]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\phase_init[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase_init(3),
	o => \phase_init[3]~input_o\);

-- Location: LCCOMB_X32_Y15_N16
\mem_addr_r[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~2_cout\ = CARRY((\phase_init[0]~input_o\ & phase_acc_r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init[0]~input_o\,
	datab => phase_acc_r(0),
	datad => VCC,
	cout => \mem_addr_r[7]~2_cout\);

-- Location: LCCOMB_X32_Y15_N18
\mem_addr_r[7]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~4_cout\ = CARRY((\phase_init[1]~input_o\ & (!phase_acc_r(1) & !\mem_addr_r[7]~2_cout\)) # (!\phase_init[1]~input_o\ & ((!\mem_addr_r[7]~2_cout\) # (!phase_acc_r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init[1]~input_o\,
	datab => phase_acc_r(1),
	datad => VCC,
	cin => \mem_addr_r[7]~2_cout\,
	cout => \mem_addr_r[7]~4_cout\);

-- Location: LCCOMB_X32_Y15_N20
\mem_addr_r[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~6_cout\ = CARRY((\phase_init[2]~input_o\ & ((phase_acc_r(2)) # (!\mem_addr_r[7]~4_cout\))) # (!\phase_init[2]~input_o\ & (phase_acc_r(2) & !\mem_addr_r[7]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init[2]~input_o\,
	datab => phase_acc_r(2),
	datad => VCC,
	cin => \mem_addr_r[7]~4_cout\,
	cout => \mem_addr_r[7]~6_cout\);

-- Location: LCCOMB_X32_Y15_N22
\mem_addr_r[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~8_cout\ = CARRY((phase_acc_r(3) & (!\phase_init[3]~input_o\ & !\mem_addr_r[7]~6_cout\)) # (!phase_acc_r(3) & ((!\mem_addr_r[7]~6_cout\) # (!\phase_init[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(3),
	datab => \phase_init[3]~input_o\,
	datad => VCC,
	cin => \mem_addr_r[7]~6_cout\,
	cout => \mem_addr_r[7]~8_cout\);

-- Location: LCCOMB_X32_Y15_N24
\mem_addr_r[7]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~10_cout\ = CARRY((\phase_init[4]~input_o\ & ((phase_acc_r(4)) # (!\mem_addr_r[7]~8_cout\))) # (!\phase_init[4]~input_o\ & (phase_acc_r(4) & !\mem_addr_r[7]~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \phase_init[4]~input_o\,
	datab => phase_acc_r(4),
	datad => VCC,
	cin => \mem_addr_r[7]~8_cout\,
	cout => \mem_addr_r[7]~10_cout\);

-- Location: LCCOMB_X32_Y15_N26
\mem_addr_r[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~12_cout\ = CARRY((phase_acc_r(5) & (!\phase_init[5]~input_o\ & !\mem_addr_r[7]~10_cout\)) # (!phase_acc_r(5) & ((!\mem_addr_r[7]~10_cout\) # (!\phase_init[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(5),
	datab => \phase_init[5]~input_o\,
	datad => VCC,
	cin => \mem_addr_r[7]~10_cout\,
	cout => \mem_addr_r[7]~12_cout\);

-- Location: LCCOMB_X32_Y15_N28
\mem_addr_r[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~14_cout\ = CARRY((phase_acc_r(6) & ((\phase_init[6]~input_o\) # (!\mem_addr_r[7]~12_cout\))) # (!phase_acc_r(6) & (\phase_init[6]~input_o\ & !\mem_addr_r[7]~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => phase_acc_r(6),
	datab => \phase_init[6]~input_o\,
	datad => VCC,
	cin => \mem_addr_r[7]~12_cout\,
	cout => \mem_addr_r[7]~14_cout\);

-- Location: LCCOMB_X32_Y15_N30
\mem_addr_r[7]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_addr_r[7]~15_combout\ = phase_acc_r(7) $ (\mem_addr_r[7]~14_cout\ $ (\phase_init[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => phase_acc_r(7),
	datad => \phase_init[7]~input_o\,
	cin => \mem_addr_r[7]~14_cout\,
	combout => \mem_addr_r[7]~15_combout\);

-- Location: FF_X32_Y15_N31
\mem_addr_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_addr_r[7]~15_combout\,
	clrn => \rstn~inputclkctrl_outclk\,
	sclr => \ALT_INV_wave_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_addr_r(7));

-- Location: LCCOMB_X32_Y7_N26
\uut|uut|wave~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uut|uut|wave~0_combout\ = (\wave_en~input_o\ & !mem_addr_r(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wave_en~input_o\,
	datad => mem_addr_r(7),
	combout => \uut|uut|wave~0_combout\);

-- Location: FF_X32_Y7_N27
\uut|uut|wave[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uut|uut|wave~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|uut|wave\(0));

-- Location: LCCOMB_X32_Y7_N28
\uut|dout[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uut|dout[0]~0_combout\ = (\uut|en_r\(1) & \uut|uut|wave\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|en_r\(1),
	datac => \uut|uut|wave\(0),
	combout => \uut|dout[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\wave_amp[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wave_amp(1),
	o => \wave_amp[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\wave_amp[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wave_amp(0),
	o => \wave_amp[0]~input_o\);

-- Location: LCCOMB_X32_Y7_N6
\ShiftRight0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\uut|uut|wave\(0) & (\uut|en_r\(1) & ((!\wave_amp[0]~input_o\) # (!\wave_amp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|uut|wave\(0),
	datab => \wave_amp[1]~input_o\,
	datac => \wave_amp[0]~input_o\,
	datad => \uut|en_r\(1),
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X32_Y7_N8
\ShiftRight0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\uut|uut|wave\(0) & (!\wave_amp[1]~input_o\ & \uut|en_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|uut|wave\(0),
	datac => \wave_amp[1]~input_o\,
	datad => \uut|en_r\(1),
	combout => \ShiftRight0~1_combout\);

-- Location: LCCOMB_X32_Y7_N2
\ShiftRight0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (\uut|uut|wave\(0) & (!\wave_amp[1]~input_o\ & (!\wave_amp[0]~input_o\ & \uut|en_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|uut|wave\(0),
	datab => \wave_amp[1]~input_o\,
	datac => \wave_amp[0]~input_o\,
	datad => \uut|en_r\(1),
	combout => \ShiftRight0~2_combout\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;

ww_dout(8) <= \dout[8]~output_o\;

ww_dout(9) <= \dout[9]~output_o\;

ww_dout_en(0) <= \dout_en[0]~output_o\;

ww_dout_en(1) <= \dout_en[1]~output_o\;

ww_dout_en(2) <= \dout_en[2]~output_o\;

ww_dout_en(3) <= \dout_en[3]~output_o\;

ww_dout_en(4) <= \dout_en[4]~output_o\;

ww_dout_en(5) <= \dout_en[5]~output_o\;

ww_dout_en(6) <= \dout_en[6]~output_o\;

ww_dout_en(7) <= \dout_en[7]~output_o\;

ww_dout_en(8) <= \dout_en[8]~output_o\;

ww_dout_en(9) <= \dout_en[9]~output_o\;
END structure;


