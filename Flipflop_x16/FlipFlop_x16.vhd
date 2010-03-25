-- Ntanasis Periklis A.M.:3070130 - Xatzipetros Mixail A.M.:3070175
--Insert libraries
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--definition of 16 bit flip flop
ENTITY flipflop_x16 IS 
	PORT(Input_x16:					IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		Enable_x16,Clock_x16: 				IN STD_LOGIC;
		Output_x16:					OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END flipflop_x16;

ARCHITECTURE structural OF flipflop_x16 IS
COMPONENT flipflop
PORT(Input,Clock,Enable: 	IN STD_LOGIC;
	Output:					OUT STD_LOGIC);
END COMPONENT;

SIGNAL Outputs :	STD_LOGIC_VECTOR(14 DOWNTO 0);

BEGIN

flipflop_0:flipflop PORT MAP(Input=>Input_x16(0), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(0));
flipflop_1:flipflop PORT MAP(Input=>Input_x16(1), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(1));
flipflop_2:flipflop PORT MAP(Input=>Input_x16(2), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(2));
flipflop_3:flipflop PORT MAP(Input=>Input_x16(3), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(3));
flipflop_4:flipflop PORT MAP(Input=>Input_x16(4), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(4));
flipflop_5:flipflop PORT MAP(Input=>Input_x16(5), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(5));
flipflop_6:flipflop PORT MAP(Input=>Input_x16(6), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(6));
flipflop_7:flipflop PORT MAP(Input=>Input_x16(7), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(7));
flipflop_8:flipflop PORT MAP(Input=>Input_x16(8), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(8));
flipflop_9:flipflop PORT MAP(Input=>Input_x16(9), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(9));
flipflop_10:flipflop PORT MAP(Input=>Input_x16(10), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(10));
flipflop_11:flipflop PORT MAP(Input=>Input_x16(11), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(11));
flipflop_12:flipflop PORT MAP(Input=>Input_x16(12), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(12));
flipflop_13:flipflop PORT MAP(Input=>Input_x16(13), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(13));
flipflop_14:flipflop PORT MAP(Input=>Input_x16(14), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(14));
flipflop_15:flipflop PORT MAP(Input=>Input_x16(15), Clock=>Clock_x16, Enable=>Enable_x16, Output=>Output_x16(15));	
END structural;