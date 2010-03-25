LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder IS
	PORT(
		A, B, Cin, sub:	IN 	STD_LOGIC;
		S, Cout:		OUT	STD_LOGIC);
END full_adder;

ARCHITECTURE struct OF full_adder IS
	BEGIN
		S 		<= 	(Cin XOR (A XOR B));
		Cout 	<=	((A AND (B XOR sub)) OR ((A XOR (B XOR sub)) AND Cin));
END struct;