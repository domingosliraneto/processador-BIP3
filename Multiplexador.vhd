LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Multiplexador IS
PORT(A:IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	 B:IN STD_LOGIC_VECTOR(10 DOWNTO 0);
	 sel:IN STD_LOGIC;
	 S:OUT STD_LOGIC_VECTOR(10 DOWNTO 0));
END Multiplexador;

ARCHITECTURE Multiplex OF Multiplexador IS
BEGIN
	PROCESS(sel,A,B)
		BEGIN
			IF(sel='1') THEN
				S <= A;
			ELSE
				S <= B;
			END IF;
	END PROCESS;
END Multiplex;