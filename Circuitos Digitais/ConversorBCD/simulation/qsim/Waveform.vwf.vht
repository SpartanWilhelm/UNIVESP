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
-- Generated on "04/25/2023 16:05:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bcd7_seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bcd7_seg_vhd_vec_tst IS
END bcd7_seg_vhd_vec_tst;
ARCHITECTURE bcd7_seg_arch OF bcd7_seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL seg : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL w : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT bcd7_seg
	PORT (
	seg : BUFFER STD_LOGIC_VECTOR(0 TO 6);
	w : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bcd7_seg
	PORT MAP (
-- list connections between master ports and signals
	seg => seg,
	w => w
	);
-- w[3]
t_prcs_w_3: PROCESS
BEGIN
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 20000 ps;
	w(3) <= '0';
	WAIT FOR 70000 ps;
	w(3) <= '1';
	WAIT FOR 20000 ps;
	w(3) <= '0';
	WAIT FOR 30000 ps;
	w(3) <= '1';
	WAIT FOR 30000 ps;
	w(3) <= '0';
	WAIT FOR 20000 ps;
	w(3) <= '1';
	WAIT FOR 30000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 30000 ps;
	w(3) <= '0';
	WAIT FOR 30000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 50000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 20000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 30000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 30000 ps;
	w(3) <= '0';
	WAIT FOR 40000 ps;
	w(3) <= '1';
	WAIT FOR 20000 ps;
	w(3) <= '0';
	WAIT FOR 40000 ps;
	w(3) <= '1';
	WAIT FOR 30000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 30000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 20000 ps;
	w(3) <= '0';
	WAIT FOR 20000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 40000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 30000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 30000 ps;
	w(3) <= '0';
	WAIT FOR 10000 ps;
	w(3) <= '1';
	WAIT FOR 10000 ps;
	w(3) <= '0';
	WAIT FOR 30000 ps;
	w(3) <= '1';
WAIT;
END PROCESS t_prcs_w_3;
-- w[2]
t_prcs_w_2: PROCESS
BEGIN
	w(2) <= '1';
	WAIT FOR 30000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 20000 ps;
	w(2) <= '1';
	WAIT FOR 30000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 30000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 30000 ps;
	w(2) <= '0';
	WAIT FOR 30000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 40000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 30000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 20000 ps;
	w(2) <= '0';
	WAIT FOR 30000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 20000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 20000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 20000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 40000 ps;
	w(2) <= '1';
	WAIT FOR 20000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 20000 ps;
	w(2) <= '0';
	WAIT FOR 60000 ps;
	w(2) <= '1';
	WAIT FOR 40000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
	WAIT FOR 20000 ps;
	w(2) <= '1';
	WAIT FOR 30000 ps;
	w(2) <= '0';
	WAIT FOR 10000 ps;
	w(2) <= '1';
	WAIT FOR 10000 ps;
	w(2) <= '0';
WAIT;
END PROCESS t_prcs_w_2;
-- w[1]
t_prcs_w_1: PROCESS
BEGIN
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 20000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 40000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 50000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 40000 ps;
	w(1) <= '1';
	WAIT FOR 40000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 40000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 20000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 30000 ps;
	w(1) <= '0';
	WAIT FOR 30000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 20000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 20000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 40000 ps;
	w(1) <= '1';
	WAIT FOR 30000 ps;
	w(1) <= '0';
	WAIT FOR 20000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 20000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
	WAIT FOR 10000 ps;
	w(1) <= '1';
	WAIT FOR 10000 ps;
	w(1) <= '0';
WAIT;
END PROCESS t_prcs_w_1;
-- w[0]
t_prcs_w_0: PROCESS
BEGIN
	w(0) <= '1';
	WAIT FOR 30000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 20000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 30000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 60000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 30000 ps;
	w(0) <= '0';
	WAIT FOR 20000 ps;
	w(0) <= '1';
	WAIT FOR 30000 ps;
	w(0) <= '0';
	WAIT FOR 20000 ps;
	w(0) <= '1';
	WAIT FOR 30000 ps;
	w(0) <= '0';
	WAIT FOR 20000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 60000 ps;
	w(0) <= '0';
	WAIT FOR 30000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 20000 ps;
	w(0) <= '1';
	WAIT FOR 70000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 30000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 30000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 20000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 40000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 30000 ps;
	w(0) <= '0';
	WAIT FOR 10000 ps;
	w(0) <= '1';
	WAIT FOR 10000 ps;
	w(0) <= '0';
WAIT;
END PROCESS t_prcs_w_0;
END bcd7_seg_arch;
