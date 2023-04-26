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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/25/2023 14:26:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux2to1_1bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux2to1_1bit_vhd_vec_tst IS
END mux2to1_1bit_vhd_vec_tst;
ARCHITECTURE mux2to1_1bit_arch OF mux2to1_1bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL w0 : STD_LOGIC;
SIGNAL w1 : STD_LOGIC;
COMPONENT mux2to1_1bit
	PORT (
	f : BUFFER STD_LOGIC;
	s : IN STD_LOGIC;
	w0 : IN STD_LOGIC;
	w1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux2to1_1bit
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	s => s,
	w0 => w0,
	w1 => w1
	);

-- s
t_prcs_s: PROCESS
BEGIN
	s <= '1';
	WAIT FOR 20000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 40000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 20000 ps;
	s <= '0';
	WAIT FOR 40000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 40000 ps;
	s <= '1';
	WAIT FOR 80000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 30000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 30000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 30000 ps;
	s <= '1';
	WAIT FOR 40000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 30000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 40000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 20000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 20000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 60000 ps;
	s <= '0';
	WAIT FOR 20000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 20000 ps;
	s <= '0';
	WAIT FOR 50000 ps;
	s <= '1';
	WAIT FOR 20000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 20000 ps;
	s <= '1';
	WAIT FOR 20000 ps;
	s <= '0';
	WAIT FOR 40000 ps;
	s <= '1';
	WAIT FOR 10000 ps;
	s <= '0';
	WAIT FOR 10000 ps;
	s <= '1';
	WAIT FOR 20000 ps;
	s <= '0';
WAIT;
END PROCESS t_prcs_s;

-- w0
t_prcs_w0: PROCESS
BEGIN
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 30000 ps;
	w0 <= '0';
	WAIT FOR 40000 ps;
	w0 <= '1';
	WAIT FOR 40000 ps;
	w0 <= '0';
	WAIT FOR 20000 ps;
	w0 <= '1';
	WAIT FOR 20000 ps;
	w0 <= '0';
	WAIT FOR 30000 ps;
	w0 <= '1';
	WAIT FOR 70000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 20000 ps;
	w0 <= '0';
	WAIT FOR 20000 ps;
	w0 <= '1';
	WAIT FOR 20000 ps;
	w0 <= '0';
	WAIT FOR 40000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 20000 ps;
	w0 <= '0';
	WAIT FOR 40000 ps;
	w0 <= '1';
	WAIT FOR 20000 ps;
	w0 <= '0';
	WAIT FOR 70000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 20000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 20000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 50000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 20000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 30000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 20000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 10000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
	WAIT FOR 20000 ps;
	w0 <= '1';
	WAIT FOR 40000 ps;
	w0 <= '0';
	WAIT FOR 30000 ps;
	w0 <= '1';
	WAIT FOR 10000 ps;
	w0 <= '0';
WAIT;
END PROCESS t_prcs_w0;

-- w1
t_prcs_w1: PROCESS
BEGIN
	w1 <= '1';
	WAIT FOR 30000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 30000 ps;
	w1 <= '0';
	WAIT FOR 50000 ps;
	w1 <= '1';
	WAIT FOR 50000 ps;
	w1 <= '0';
	WAIT FOR 50000 ps;
	w1 <= '1';
	WAIT FOR 50000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 50000 ps;
	w1 <= '0';
	WAIT FOR 30000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 20000 ps;
	w1 <= '1';
	WAIT FOR 20000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 20000 ps;
	w1 <= '0';
	WAIT FOR 20000 ps;
	w1 <= '1';
	WAIT FOR 20000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 30000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 20000 ps;
	w1 <= '1';
	WAIT FOR 90000 ps;
	w1 <= '0';
	WAIT FOR 20000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 40000 ps;
	w1 <= '1';
	WAIT FOR 20000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 20000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 30000 ps;
	w1 <= '0';
	WAIT FOR 20000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 20000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 20000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
	WAIT FOR 10000 ps;
	w1 <= '0';
	WAIT FOR 10000 ps;
	w1 <= '1';
WAIT;
END PROCESS t_prcs_w1;
END mux2to1_1bit_arch;
