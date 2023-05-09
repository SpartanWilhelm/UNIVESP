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
-- Generated on "05/08/2023 11:28:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          meio_somador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY meio_somador_vhd_vec_tst IS
END meio_somador_vhd_vec_tst;
ARCHITECTURE meio_somador_arch OF meio_somador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL Sigma : STD_LOGIC;
COMPONENT meio_somador
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	Sigma : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : meio_somador
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cout => Cout,
	Sigma => Sigma
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 80000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 60000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 20000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 30000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 30000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	A <= '0';
	WAIT FOR 20000 ps;
	A <= '1';
	WAIT FOR 50000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 30000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 40000 ps;
	B <= '0';
	WAIT FOR 40000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 20000 ps;
	B <= '0';
	WAIT FOR 40000 ps;
	B <= '1';
	WAIT FOR 30000 ps;
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 40000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 30000 ps;
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 60000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	B <= '0';
	WAIT FOR 30000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 30000 ps;
	B <= '0';
	WAIT FOR 30000 ps;
	B <= '1';
	WAIT FOR 20000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 40000 ps;
	B <= '0';
	WAIT FOR 30000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 50000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 50000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 20000 ps;
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
WAIT;
END PROCESS t_prcs_B;
END meio_somador_arch;
