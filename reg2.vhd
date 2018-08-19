LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY reg2 IS
	PORT(D : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 CLK, EN, CLR : IN STD_LOGIC;
		 Q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END reg2;

ARCHITECTURE arch OF reg2 IS
BEGIN
	PROCESS(D, CLK, EN, CLR)
	BEGIN
		IF(CLR = '1') THEN
			Q <= (OTHERS => '0');
		ELSIF(RISING_EDGE(CLK)) THEN
			IF(EN = '1') THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;
END;