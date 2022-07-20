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

-- DATE "07/19/2022 21:48:17"

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
	output : OUT std_logic
	);
END fsm;

-- Design Ports Information
-- output	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- input	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \input~combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \state.C~regout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.D~regout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.B~regout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.E~regout\ : std_logic;
SIGNAL \state.C~0_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.G~regout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state.H~regout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.F~regout\ : std_logic;
SIGNAL \state.A~0_combout\ : std_logic;
SIGNAL \state.A~1_combout\ : std_logic;
SIGNAL \state.A~2_combout\ : std_logic;
SIGNAL \state.A~regout\ : std_logic;
SIGNAL \state.A~3_combout\ : std_logic;
SIGNAL \state.A~4_combout\ : std_logic;
SIGNAL \state.A~5_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.I~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \output~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_reset <= reset;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

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

-- Location: LCCOMB_X31_Y35_N24
\state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\state.B~regout\ & (!\input~combout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.B~regout\,
	datab => \input~combout\,
	datad => \state.A~5_combout\,
	combout => \state~17_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
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

-- Location: LCFF_X31_Y35_N25
\state.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~17_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.C~regout\);

-- Location: LCCOMB_X31_Y35_N4
\state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!\input~combout\ & (\state.C~regout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state.C~regout\,
	datad => \state.A~5_combout\,
	combout => \state~13_combout\);

-- Location: LCFF_X31_Y35_N5
\state.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.D~regout\);

-- Location: LCCOMB_X31_Y35_N8
\state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!\state.C~regout\ & (!\input~combout\ & (\state.C~0_combout\ & \state.A~5_combout\)))

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
	combout => \state~18_combout\);

-- Location: LCFF_X31_Y35_N9
\state.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.B~regout\);

-- Location: LCCOMB_X31_Y35_N6
\state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (!\input~combout\ & (\state.A~5_combout\ & ((\state.D~regout\) # (\state.E~regout\))))

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
	combout => \state~14_combout\);

-- Location: LCFF_X31_Y35_N7
\state.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.E~regout\);

-- Location: LCCOMB_X31_Y35_N14
\state.C~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.C~0_combout\ = (!\state.D~regout\ & (!\state.B~regout\ & !\state.E~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.D~regout\,
	datac => \state.B~regout\,
	datad => \state.E~regout\,
	combout => \state.C~0_combout\);

-- Location: LCCOMB_X31_Y35_N12
\state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\input~combout\ & (\state.F~regout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state.F~regout\,
	datad => \state.A~5_combout\,
	combout => \state~19_combout\);

-- Location: LCFF_X31_Y35_N13
\state.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~19_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.G~regout\);

-- Location: LCCOMB_X31_Y35_N20
\state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\input~combout\ & (\state.G~regout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state.G~regout\,
	datad => \state.A~5_combout\,
	combout => \state~15_combout\);

-- Location: LCFF_X31_Y35_N21
\state.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~15_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.H~regout\);

-- Location: LCCOMB_X31_Y35_N10
\state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!\state.I~regout\ & (!\state.H~regout\ & (!\state.F~regout\ & !\state.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \state.H~regout\,
	datac => \state.F~regout\,
	datad => \state.G~regout\,
	combout => \state~20_combout\);

-- Location: LCCOMB_X31_Y35_N2
\state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\input~combout\ & (\state~20_combout\ & \state.A~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~combout\,
	datac => \state~20_combout\,
	datad => \state.A~5_combout\,
	combout => \state~21_combout\);

-- Location: LCFF_X31_Y35_N3
\state.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~21_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.F~regout\);

-- Location: LCCOMB_X31_Y35_N16
\state.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~0_combout\ = (\state.H~regout\ & (!\state.F~regout\ & (!\state.C~regout\ & !\state.G~regout\))) # (!\state.H~regout\ & ((\state.F~regout\ & (!\state.C~regout\ & !\state.G~regout\)) # (!\state.F~regout\ & (\state.C~regout\ $ (\state.G~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.H~regout\,
	datab => \state.F~regout\,
	datac => \state.C~regout\,
	datad => \state.G~regout\,
	combout => \state.A~0_combout\);

-- Location: LCCOMB_X31_Y35_N22
\state.A~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~1_combout\ = (\state.F~regout\) # ((\state.C~regout\ & ((\state.H~regout\) # (\state.G~regout\))) # (!\state.C~regout\ & (\state.H~regout\ & \state.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.C~regout\,
	datab => \state.F~regout\,
	datac => \state.H~regout\,
	datad => \state.G~regout\,
	combout => \state.A~1_combout\);

-- Location: LCCOMB_X31_Y35_N0
\state.A~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~2_combout\ = (\state.C~0_combout\ & (!\state.A~0_combout\ & !\state.A~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.C~0_combout\,
	datac => \state.A~0_combout\,
	datad => \state.A~1_combout\,
	combout => \state.A~2_combout\);

-- Location: LCFF_X31_Y35_N27
\state.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.A~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.A~regout\);

-- Location: LCCOMB_X31_Y35_N30
\state.A~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~3_combout\ = (\state.B~regout\ & ((\state.F~regout\) # ((!\state.D~regout\ & !\state.E~regout\)))) # (!\state.B~regout\ & ((\state.D~regout\ & ((\state.F~regout\) # (!\state.E~regout\))) # (!\state.D~regout\ & ((\state.E~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.B~regout\,
	datab => \state.F~regout\,
	datac => \state.D~regout\,
	datad => \state.E~regout\,
	combout => \state.A~3_combout\);

-- Location: LCCOMB_X31_Y35_N28
\state.A~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~4_combout\ = (\state.A~0_combout\ & ((\state.A~1_combout\ & ((!\state.A~3_combout\))) # (!\state.A~1_combout\ & (\state.C~0_combout\)))) # (!\state.A~0_combout\ & (((\state.A~3_combout\ & !\state.A~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.C~0_combout\,
	datab => \state.A~3_combout\,
	datac => \state.A~0_combout\,
	datad => \state.A~1_combout\,
	combout => \state.A~4_combout\);

-- Location: LCCOMB_X31_Y35_N26
\state.A~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.A~5_combout\ = (\state.I~regout\ & (\state.A~2_combout\ & (\state.A~regout\))) # (!\state.I~regout\ & ((\state.A~regout\ & ((\state.A~4_combout\))) # (!\state.A~regout\ & (\state.A~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \state.A~2_combout\,
	datac => \state.A~regout\,
	datad => \state.A~4_combout\,
	combout => \state.A~5_combout\);

-- Location: LCCOMB_X31_Y35_N18
\state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\input~combout\ & (\state.A~5_combout\ & ((\state.H~regout\) # (\state.I~regout\))))

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
	combout => \state~16_combout\);

-- Location: LCFF_X31_Y35_N19
\state.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.I~regout\);

-- Location: LCCOMB_X30_Y35_N2
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\input~combout\ & ((\state.D~regout\) # (\state.E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.D~regout\,
	datab => \input~combout\,
	datad => \state.E~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X30_Y35_N0
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\input~combout\ & ((\state.H~regout\) # (\state.I~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.H~regout\,
	datab => \input~combout\,
	datac => \state.I~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCFF_X30_Y35_N1
\output~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output~reg0_regout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \output~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output);
END structure;


