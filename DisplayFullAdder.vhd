library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DisplayFullAdder is 
port(
	cin : in std_logic;
	aMSB_0 : in std_logic;
	aMSB_1 : in std_logic;
	b_0 : in std_logic;
	b_1 : in std_logic;
	c_0 : in std_logic;
	c_1 : in std_logic;
	dLSB_0 : in std_logic;
	dLSB_1 : in std_logic;
	output : out std_logic_vector(6 downto 0);
	cout: out std_logic
	);
end DisplayFullAdder;

architecture DisplayFullAdderLogic of DisplayFullAdder is 
signal aMSBOut, bOut, outc, dLSBOut : std_logic;
begin 

FH: entity work.FourBitFullAdder port map (	cin, 
															aMSB_0, 
															aMSB_1,
															b_0,
															b_1,
															c_0,
															c_1,
															dLSB_0,
															dLSB_1,
															aMSBOut,
															bOut,
															outc,
															dLSBOut,
															cout);
DECO: entity work.DEC7SEGVHDL port map(aMSBOut, bOut, outc, dLSBOut, output);
end DisplayFullAdderLogic;