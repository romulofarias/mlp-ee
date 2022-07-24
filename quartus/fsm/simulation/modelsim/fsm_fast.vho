-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/23/2022 21:18:15"

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

ENTITY 	fsm IS
    PORT (
	clk : IN std_logic;
	input : IN std_logic;
	reset : IN std_logic;
	output : OUT std_logic;
	code : OUT std_logic_vector(8 DOWNTO 0)
	);
END fsm;

-- Design Ports Information
-- output	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- code[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- input	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fsm IS
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
SIGNAL ww_input : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL ww_code : std_logic_vector(8 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \input~combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \state.F~regout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.G~regout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.H~regout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.D~regout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.E~regout\ : std_logic;
SIGNAL \state.C~0_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state.B~regout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.C~regout\ : std_logic;
SIGNAL \state.A~1_combout\ : std_logic;
SIGNAL \state.A~0_combout\ : std_logic;
SIGNAL \state.A~3_combout\ : std_logic;
SIGNAL \state.A~4_combout\ : std_logic;
SIGNAL \state.A~regout\ : std_logic;
SIGNAL \state.A~2_combout\ : std_logic;
SIGNAL \state.A~5_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.I~regout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.A~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_reset <= reset;
output <= ww_output;
code <= ww_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_state.A~regout\ <= NOT \state.A~regout\;

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input~I\ : cycloneii_io
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
	padio => ww_input,
	combout => \input~combout\);

-- Location: LCCOMB_X64_Y7_N6
\state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!\state.F~regout\ & (!\state.G~regout\ & (!\state.I~regout\ & !\state.H~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.F~regout\,
	datab => \state.G~regout\,
	datac => \state.I~regout\,
	datad => \state.H~regout\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X64_Y7_N20
\state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\input~combout\ & (\state~18_combout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state~18_combout\,
	datad => \state.A~5_combout\,
	combout => \state~19_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G6
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X64_Y7_N21
\state.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~19_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.F~regout\);

-- Location: LCCOMB_X64_Y7_N22
\state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\input~combout\ & (\state.F~regout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state.F~regout\,
	datad => \state.A~5_combout\,
	combout => \state~20_combout\);

-- Location: LCFF_X64_Y7_N23
\state.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~20_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.G~regout\);

-- Location: LCCOMB_X64_Y7_N8
\state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\state.G~regout\ & (\input~combout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.G~regout\,
	datac => \input~combout\,
	datad => \state.A~5_combout\,
	combout => \state~21_combout\);

-- Location: LCFF_X64_Y7_N9
\state.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~21_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.H~regout\);

-- Location: LCCOMB_X64_Y7_N30
\state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (!\input~combout\ & (\state.C~regout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state.C~regout\,
	datad => \state.A~5_combout\,
	combout => \state~17_combout\);

-- Location: LCFF_X64_Y7_N31
\state.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~17_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.D~regout\);

-- Location: LCCOMB_X64_Y7_N16
\state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!\input~combout\ & (\state.A~5_combout\ & ((\state.D~regout\) # (\state.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.D~regout\,
	datab => \input~combout\,
	datac => \state.E~regout\,
	datad => \state.A~5_combout\,
	combout => \state~13_combout\);

-- Location: LCFF_X64_Y7_N17
\state.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.E~regout\);

-- Location: LCCOMB_X64_Y7_N10
\state.C~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.C~0_combout\ = (!\state.D~regout\ & (!\state.E~regout\ & !\state.B~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.D~regout\,
	datac => \state.E~regout\,
	datad => \state.B~regout\,
	combout => \state.C~0_combout\);

-- Location: LCCOMB_X64_Y7_N2
\state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (!\state.C~regout\ & (!\input~combout\ & (\state.C~0_combout\ & \state.A~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.C~regout\,
	datab => \input~combout\,
	datac => \state.C~0_combout\,
	datad => \state.A~5_combout\,
	combout => \state~15_combout\);

-- Location: LCFF_X64_Y7_N3
\state.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.B~regout\);

-- Location: LCCOMB_X64_Y7_N4
\state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (!\input~combout\ & (\state.B~regout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state.B~regout\,
	datad => \state.A~5_combout\,
	combout => \state~16_combout\);

-- Location: LCFF_X64_Y7_N5
\state.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.C~regout\);

-- Location: LCCOMB_X64_Y7_N14
\state.A~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~1_combout\ = (\state.F~regout\) # ((\state.H~regout\ & ((\state.C~regout\) # (\state.I~regout\))) # (!\state.H~regout\ & (\state.C~regout\ & \state.I~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.F~regout\,
	datab => \state.H~regout\,
	datac => \state.C~regout\,
	datad => \state.I~regout\,
	combout => \state.A~1_combout\);

-- Location: LCCOMB_X64_Y7_N24
\state.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~0_combout\ = (\state.H~regout\ & (!\state.C~regout\ & (!\state.F~regout\ & !\state.I~regout\))) # (!\state.H~regout\ & ((\state.C~regout\ & (!\state.F~regout\ & !\state.I~regout\)) # (!\state.C~regout\ & (\state.F~regout\ $ (\state.I~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.H~regout\,
	datab => \state.C~regout\,
	datac => \state.F~regout\,
	datad => \state.I~regout\,
	combout => \state.A~0_combout\);

-- Location: LCCOMB_X64_Y7_N26
\state.A~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~3_combout\ = (\state.E~regout\ & ((\state.F~regout\) # ((!\state.D~regout\ & !\state.B~regout\)))) # (!\state.E~regout\ & ((\state.D~regout\ & ((\state.F~regout\) # (!\state.B~regout\))) # (!\state.D~regout\ & ((\state.B~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.E~regout\,
	datab => \state.D~regout\,
	datac => \state.F~regout\,
	datad => \state.B~regout\,
	combout => \state.A~3_combout\);

-- Location: LCCOMB_X64_Y7_N28
\state.A~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~4_combout\ = (\state.A~1_combout\ & (((\state.A~0_combout\ & !\state.A~3_combout\)))) # (!\state.A~1_combout\ & ((\state.A~0_combout\ & (\state.C~0_combout\)) # (!\state.A~0_combout\ & ((\state.A~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.C~0_combout\,
	datab => \state.A~1_combout\,
	datac => \state.A~0_combout\,
	datad => \state.A~3_combout\,
	combout => \state.A~4_combout\);

-- Location: LCFF_X64_Y7_N1
\state.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state.A~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.A~regout\);

-- Location: LCCOMB_X64_Y7_N12
\state.A~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~2_combout\ = (!\state.A~1_combout\ & (!\state.A~0_combout\ & \state.C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.A~1_combout\,
	datac => \state.A~0_combout\,
	datad => \state.C~0_combout\,
	combout => \state.A~2_combout\);

-- Location: LCCOMB_X64_Y7_N0
\state.A~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~5_combout\ = (\state.G~regout\ & (((\state.A~regout\ & \state.A~2_combout\)))) # (!\state.G~regout\ & ((\state.A~regout\ & (\state.A~4_combout\)) # (!\state.A~regout\ & ((\state.A~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.G~regout\,
	datab => \state.A~4_combout\,
	datac => \state.A~regout\,
	datad => \state.A~2_combout\,
	combout => \state.A~5_combout\);

-- Location: LCCOMB_X64_Y7_N18
\state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\input~combout\ & (\state.A~5_combout\ & ((\state.H~regout\) # (\state.I~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.H~regout\,
	datab => \input~combout\,
	datac => \state.I~regout\,
	datad => \state.A~5_combout\,
	combout => \state~14_combout\);

-- Location: LCFF_X64_Y7_N19
\state.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \state~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.I~regout\);

-- Location: LCCOMB_X60_Y1_N0
\output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\state.I~regout\) # (\state.E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.I~regout\,
	datac => \state.E~regout\,
	combout => \output~0_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output~I\ : cycloneii_io
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
	datain => \output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_state.A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[1]~I\ : cycloneii_io
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
	datain => \state.B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[2]~I\ : cycloneii_io
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
	datain => \state.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[3]~I\ : cycloneii_io
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
	datain => \state.D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[4]~I\ : cycloneii_io
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
	datain => \state.E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[5]~I\ : cycloneii_io
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
	datain => \state.F~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[6]~I\ : cycloneii_io
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
	datain => \state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[7]~I\ : cycloneii_io
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
	datain => \state.H~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\code[8]~I\ : cycloneii_io
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
	datain => \state.I~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_code(8));
END structure;


