LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux3_1 IS
	PORT(E2, E1, E0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  S : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END mux3_1;

ARCHITECTURE arch OF mux3_1 IS
BEGIN
	S <= E0 WHEN SEL = "00" ELSE
	     E1 WHEN SEL = "01" ELSE
		  E2;
END;