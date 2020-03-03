library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEC7SEGVHDL is 
   port(
		aMSB : std_logic;
		b : std_logic;
		c : std_logic;
		dLSB : std_logic;					
		OUTDEC: out std_logic_vector(6 downto 0)
   );
end DEC7SEGVHDL;

architecture Behavioral of DEC7SEGVHDL is 

component DEC7SEG is 
   port(
		aMSB : in std_logic;
		b : in std_logic;
		c : in std_logic;
		dLSB : in std_logic;					
		OUTDEC : out std_logic_vector(6 downto 0)
   );
end component;

begin  

DECO : DEC7SEG port map(aMSB, b, c, dLSB, OUTDEC(6 downto 0));

end Behavioral;
