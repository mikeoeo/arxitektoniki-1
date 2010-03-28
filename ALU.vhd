-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
--Insertion of libraries
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--definition of a 16 bit ALU
ENTITY ALU IS
	PORT (
		Input1,Input2	:	IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		Operation		:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		Output			:	OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
END ALU;

ARCHITECTURE structural OF ALU IS
	COMPONENT Mux5To1
		PORT (	
			In0, In1, In2, In3, In4	:	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			selection				:	IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Output					:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
			);

	END COMPONENT;
	COMPONENT full_adder_x16 
		PORT (
			A_x16, B_x16	:	IN 	STD_LOGIC_VECTOR(15 DOWNTO 0);
			Cin_x16, sub_x16:	IN	STD_LOGIC;
			Cout_x16		:	OUT	STD_LOGIC;
			S_x16			:	OUT	STD_LOGIC_VECTOR(15 DOWNTO 0)
			);
	END COMPONENT;
	SIGNAL sub, cout					 : STD_LOGIC;
	SIGNAL temp1, temp2, temp3, temp4, temp5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN
		sub <= Operation(0);
set_temp1:	full_adder_x16 PORT MAP (A_x16=>Input1,B_x16=>Input2,Cin_x16=>sub, sub_x16=>sub, Cout_x16=>cout, S_x16=>temp1);
		temp2 <= Input1 AND Input2;
		temp3 <= Input1 OR Input2;
		temp4(0) <= NOT Input1(15);
		temp4(1) <= '0';
		temp4(2) <= '0';
		temp4(3) <= '0';
		temp4(4) <= '0';
		temp4(5) <= '0';
		temp4(6) <= '0';
		temp4(7) <= '0';
		temp4(8) <= '0';
		temp4(9) <= '0';
		temp4(10) <= '0';
		temp4(11) <= '0';
		temp4(12) <= '0';
		temp4(13) <= '0';
		temp4(14) <= '0';
		temp4(15) <= '0';
		temp5(0) <= NOT (Input1(0) OR Input1(1) OR Input1(2) OR Input1(3) OR Input1(4) OR Input1(5) OR Input1(6) OR Input1(7) OR Input1(8) OR Input1(9) OR Input1(10) OR Input1(11) OR Input1(12) OR Input1(13) OR Input1(14) OR Input1(15));
		temp5(1) <= '0';
		temp5(2) <= '0';
		temp5(3) <= '0';
		temp5(4) <= '0';
		temp5(5) <= '0';
		temp5(6) <= '0';
		temp5(7) <= '0';
		temp5(8) <= '0';
		temp5(9) <= '0';
		temp5(10) <= '0';
		temp5(11) <= '0';
		temp5(12) <= '0';
		temp5(13) <= '0';
		temp5(14) <= '0';
		temp5(15) <= '0';
mux:	Mux5To1 PORT MAP (In0=>temp1, In1=>temp2, In2=>temp3, In3=>temp4, In4=>temp5, selection=>Operation, Output=>Output);
END structural;