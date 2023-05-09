LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY meio_somador IS
	PORT( A,B : IN STD_LOGIC;
				Sigma, Cout : OUT STD_LOGIC);
END meio_somador;

ARCHITECTURE df OF meio_somador IS

BEGIN
	Sigma <= A xor B;
	Cout <= A and B;
END df;