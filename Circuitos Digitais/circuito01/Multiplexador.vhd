LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1_1bit IS
	PORT( w0,w1,s : IN STD_LOGIC;
				f : OUT STD_LOGIC);
END mux2to1_1bit;

ARCHITECTURE df OF mux2to1_1bit IS
	SIGNAL m1, m2 : STD_LOGIC;

BEGIN
	m1 <= w0 and (not s);
	m2 <= w1 and s;
	f <= m1 or m2;
END df;

