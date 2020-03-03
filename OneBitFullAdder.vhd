library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
entity OneBitFullAdder is
port(
	cin: in std_logic;
	a: in std_logic;
	b: in std_logic;
	output: out std_logic;
	cout: out std_logic
);
end OneBitFullAdder;

architecture OneBitFullAdderLogic of OneBitFullAdder is
begin
output <= cin xor (a xor b);
cout <= ((a or b) and cin) or (a and b);
end OneBitFullAdderLogic;
