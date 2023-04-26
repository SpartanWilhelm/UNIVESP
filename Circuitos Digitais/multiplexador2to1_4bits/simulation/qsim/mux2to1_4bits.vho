-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/25/2023 14:58:01"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux2to1_4bits IS
    PORT (
	w0 : IN std_logic_vector(3 DOWNTO 0);
	w1 : IN std_logic_vector(3 DOWNTO 0);
	s : IN std_logic;
	f : OUT std_logic_vector(3 DOWNTO 0)
	);
END mux2to1_4bits;

ARCHITECTURE structure OF mux2to1_4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_w1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic;
SIGNAL ww_f : std_logic_vector(3 DOWNTO 0);
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[3]~output_o\ : std_logic;
SIGNAL \w1[0]~input_o\ : std_logic;
SIGNAL \w0[0]~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \w1[1]~input_o\ : std_logic;
SIGNAL \w0[1]~input_o\ : std_logic;
SIGNAL \f~1_combout\ : std_logic;
SIGNAL \w1[2]~input_o\ : std_logic;
SIGNAL \w0[2]~input_o\ : std_logic;
SIGNAL \f~2_combout\ : std_logic;
SIGNAL \w1[3]~input_o\ : std_logic;
SIGNAL \w0[3]~input_o\ : std_logic;
SIGNAL \f~3_combout\ : std_logic;

BEGIN

ww_w0 <= w0;
ww_w1 <= w1;
ww_s <= s;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\f[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~0_combout\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

\f[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~1_combout\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

\f[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~2_combout\,
	devoe => ww_devoe,
	o => \f[2]~output_o\);

\f[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f~3_combout\,
	devoe => ww_devoe,
	o => \f[3]~output_o\);

\w1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(0),
	o => \w1[0]~input_o\);

\w0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(0),
	o => \w0[0]~input_o\);

\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

\f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~0_combout\ = (\s~input_o\ & (\w1[0]~input_o\)) # (!\s~input_o\ & ((\w0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1[0]~input_o\,
	datab => \w0[0]~input_o\,
	datad => \s~input_o\,
	combout => \f~0_combout\);

\w1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(1),
	o => \w1[1]~input_o\);

\w0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(1),
	o => \w0[1]~input_o\);

\f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~1_combout\ = (\s~input_o\ & (\w1[1]~input_o\)) # (!\s~input_o\ & ((\w0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1[1]~input_o\,
	datab => \w0[1]~input_o\,
	datad => \s~input_o\,
	combout => \f~1_combout\);

\w1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(2),
	o => \w1[2]~input_o\);

\w0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(2),
	o => \w0[2]~input_o\);

\f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~2_combout\ = (\s~input_o\ & (\w1[2]~input_o\)) # (!\s~input_o\ & ((\w0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1[2]~input_o\,
	datab => \w0[2]~input_o\,
	datad => \s~input_o\,
	combout => \f~2_combout\);

\w1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1(3),
	o => \w1[3]~input_o\);

\w0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0(3),
	o => \w0[3]~input_o\);

\f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f~3_combout\ = (\s~input_o\ & (\w1[3]~input_o\)) # (!\s~input_o\ & ((\w0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1[3]~input_o\,
	datab => \w0[3]~input_o\,
	datad => \s~input_o\,
	combout => \f~3_combout\);

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(3) <= \f[3]~output_o\;
END structure;


