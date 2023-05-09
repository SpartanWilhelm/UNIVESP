LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_completo2 IS
	PORT( A,B,Cin : IN STD_LOGIC;
				Sigma, Cout : OUT STD_LOGIC);
END somador_completo;

ARCHITECTURE df OF somador_completo2 IS

	COMPONENT meio_somador IS
	PORT( A,B : IN STD_LOGIC;
				Sigma, Cout : OUT STD_LOGIC);
	END COMPONENT;
	
	Signal C0,C1,S0: std_logic;

BEGIN
	MS1: meio_somador port map (A => A, B => B,
										Sigma => S0, Cout => C0);
	MS2: meio_somador port map (A => S0, B => Cin,
										Sigma => Sigma, Cout => C1);
	Cout <= C0 or C1;
										
END df;