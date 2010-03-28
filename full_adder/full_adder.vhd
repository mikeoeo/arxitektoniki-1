-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
--Insertion of libraries
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--definition of a 1 bit adder
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