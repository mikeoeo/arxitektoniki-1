-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
--Insert libraries
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--definition of 1 bit flip flop
ENTITY flipflop IS 
	PORT(Input,Clock,Enable: 	IN STD_LOGIC;
		Output:					OUT STD_LOGIC);
END flipflop;

ARCHITECTURE structural OF flipflop IS
		SIGNAL Temp1 : STD_LOGIC;
		SIGNAL Temp2 : STD_LOGIC;
		Signal Q	 : STD_LOGIC;
		SIGNAL NQ	 : STD_LOGIC;
	BEGIN
		Temp1 	<=	Input NAND Clock;
		Temp2	<=	(NOT Input) NAND Clock;
		Q 		<= 	Temp1 NAND NQ;
		NQ		<=	Temp2 NAND Q;
		Output	<=	(Enable AND Q) OR (NOT Enable AND NQ);
END structural;