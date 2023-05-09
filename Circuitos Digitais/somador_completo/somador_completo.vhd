LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_completo IS
	PORT( A,B,Cin : IN STD_LOGIC;
				Sigma, Cout : OUT STD_LOGIC);
END somador_completo;

ARCHITECTURE df OF somador_completo IS

BEGIN
	Sigma <= (A xor B) xor Cin;
	Cout <= (A and B) or ((A xor B) and Cin);
END df;