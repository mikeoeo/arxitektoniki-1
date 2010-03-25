LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder_x16 IS
	PORT(
		A_x16, B_x16:		IN 	STD_LOGIC_VECTOR(15 DOWNTO 0);
		Cin_x16, sub_x16:	IN	STD_LOGIC;
		Cout_x16:			OUT	STD_LOGIC;
		S_x16:				OUT	STD_LOGIC_VECTOR(15 DOWNTO 0));
END full_adder_x16;

ARCHITECTURE struct OF full_adder_x16 IS
	COMPONENT full_adder
		PORT(
		A, B, Cin, sub:	IN 	STD_LOGIC;
		S, Cout:		OUT	STD_LOGIC);
	END COMPONENT;
	
	SIGNAL Couts :	STD_LOGIC_VECTOR(14 DOWNTO 0);
	
	BEGIN
	


	adder_0:full_adder PORT MAP(A=>A_x16(0), B=>B_x16(0), Cin=>Cin_x16, sub=>sub_x16, Cout=>Couts(0), S=>S_x16(0));
	adder_1:full_adder PORT MAP(A=>A_x16(1), B=>B_x16(1), Cin=>Couts(0), sub=>sub_x16,  Cout=>Couts(1), S=>S_x16(1));
	adder_2:full_adder PORT MAP(A=>A_x16(2), B=>B_x16(2), Cin=>Couts(1), sub=>sub_x16,  Cout=>Couts(2), S=>S_x16(2));
	adder_3:full_adder PORT MAP(A=>A_x16(3), B=>B_x16(3), Cin=>Couts(2), sub=>sub_x16,  Cout=>Couts(3), S=>S_x16(3));
	adder_4:full_adder PORT MAP(A=>A_x16(4), B=>B_x16(4), Cin=>Couts(3), sub=>sub_x16,  Cout=>Couts(4), S=>S_x16(4));
	adder_5:full_adder PORT MAP(A=>A_x16(5), B=>B_x16(5), Cin=>Couts(4), sub=>sub_x16,  Cout=>Couts(5), S=>S_x16(5));
	adder_6:full_adder PORT MAP(A=>A_x16(6), B=>B_x16(6), Cin=>Couts(5), sub=>sub_x16,  Cout=>Couts(6), S=>S_x16(6));
	adder_7:full_adder PORT MAP(A=>A_x16(7), B=>B_x16(7), Cin=>Couts(6), sub=>sub_x16,  Cout=>Couts(7), S=>S_x16(7));
	adder_8:full_adder PORT MAP(A=>A_x16(8), B=>B_x16(8), Cin=>Couts(7), sub=>sub_x16,  Cout=>Couts(8), S=>S_x16(8));
	adder_9:full_adder PORT MAP(A=>A_x16(9), B=>B_x16(9), Cin=>Couts(8), sub=>sub_x16,  Cout=>Couts(9), S=>S_x16(9));
	adder_10:full_adder PORT MAP(A=>A_x16(10), B=>B_x16(10), Cin=>Couts(9), sub=>sub_x16,  Cout=>Couts(10), S=>S_x16(10));
	adder_11:full_adder PORT MAP(A=>A_x16(11), B=>B_x16(11), Cin=>Couts(10), sub=>sub_x16,  Cout=>Couts(11), S=>S_x16(11));
	adder_12:full_adder PORT MAP(A=>A_x16(12), B=>B_x16(12), Cin=>Couts(11), sub=>sub_x16,  Cout=>Couts(12), S=>S_x16(12));
	adder_13:full_adder PORT MAP(A=>A_x16(13), B=>B_x16(13), Cin=>Couts(12), sub=>sub_x16,  Cout=>Couts(13), S=>S_x16(13));
	adder_14:full_adder PORT MAP(A=>A_x16(14), B=>B_x16(14), Cin=>Couts(13), sub=>sub_x16,  Cout=>Couts(14), S=>S_x16(14));
	adder_15:full_adder PORT MAP(A=>A_x16(15), B=>B_x16(15), Cin=>Couts(14), sub=>sub_x16,  Cout=>Cout_x16, S=>S_x16(15));	
END struct;