library ieee;
use ieee.std_logic_1164.all;

entity ALU is
	port(
	Input1,Input2: in std_logic_vector (15 downto 0);
	Operation: in std_logic_vector (2 downto 0);
	Output: out std_logic_vector(15 downto 0));
end ALU;

architecture structural of ALU is
	component FA_RTL
		port(
		A, B, Cin: in std_logic;
	    S, Cout: out std_logic);
	end component;
	begin
		--if Operation = "000" then
			Output <= --((Input1 + Input2) AND NOT Operation(2) AND NOT Operation(1) AND NOT Operation(0)) OR 
			--((Input1 - Input2) AND NOT Operation(2) AND NOT Operation(1) AND Operation(0)) OR 
			((Input1 AND Input2) AND NOT Operation(2) AND Operation(1) AND NOT Operation(0)) OR 
			((Input1 OR Input2) AND NOT Operation(2) AND Operation(1) AND Operation(0)) OR 
			--((Input1 >= '0') AND Operation(2) AND NOT Operation(1) AND NOT Operation(0)) OR 
			((NOT Input1) AND Operation(2) AND NOT Operation(1) AND Operation(0));
		--elsif Operation = "001" then
			--Output <= Input1 - Input2;
		--elsif Operation = "010" then
			--Output <= Input1 AND Input2;
		--elsif Operation = "011" then
			--Output <= Input1 OR Input2;
		--elsif Operation = "100" then
			--Output <= Input1 >= '0';
		--elsif OPeration = "101" then
			--Output <= NOT Input1;
		--end if;

end structural;