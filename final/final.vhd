-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
--Insert libraries
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY final IS
	PORT (
		Clock					: 	IN STD_LOGIC;
		Input1,Input2			:	IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		Operation				:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		ALUout,Output,one,two	:	OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
END final;

ARCHITECTURE structural OF final IS
	COMPONENT ALU
		PORT (
		Input1,Input2	:	IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		Operation		:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		Output			:	OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT flipflop_x16 IS 
		PORT (
		Input_x16				:	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		Enable_x16,Clock_x16	: 	IN STD_LOGIC;
		Output_x16				:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT;
	SIGNAL temp1, temp2, temp3	:	STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
first_ff:	flipflop_x16 PORT MAP (Input_x16=>Input1, Enable_x16=>'1', Clock_x16=>Clock, Output_x16=>temp1);
			one	<=	temp1;
second_ff:	flipflop_x16 PORT MAP (Input_x16=>Input2, Enable_x16=>'1', Clock_x16=>Clock, Output_x16=>temp2);
			two <=	temp2;
calc_alu:	ALU			 PORT MAP (Input1=>temp1, Input2=>temp2, Operation=>Operation, Output=>temp3);
			ALUout<=temp3;
third_ff:	flipflop_x16 PORT MAP (Input_x16=>temp3, Enable_x16=>'1', Clock_x16=>Clock, Output_x16=>Output);
	END structural;