----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:15 11/21/2023 
-- Design Name: 
-- Module Name:    ALU_SevenSegment - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_SevenSegment is
    Port ( A : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S2 : in  STD_LOGIC;
           G : out STD_LOGIC_VECTOR(3 DOWNTO 0);
           segs : out  STD_LOGIC_VECTOR(6 DOWNTO 0));
end ALU_SevenSegment;
architecture Behavioral of ALU_SevenSegment is
	component ALU_FOURSTAGE
	 Port ( A : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           G : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           Cout : out  STD_LOGIC);
end component;
signal Sum: STD_LOGIC_VECTOR (3 DOWNTO 0);
begin
SEVENSEG: ALU_FOURSTAGE
port map(A => A,
			B => B,
			S0 => S0,
			S1 => S1,
			S2 => S2,
			G => Sum,
			Cin => Cin,
			Cout => Cout
			);
segs <= "0000001" when Sum = "0000" else
			  "1001111" when Sum = "0001" else
			  "0010010" when Sum = "0010" else
			  "0000110" when Sum = "0011" else
			  "1001100" when Sum = "0100" else
			  "0100100" when Sum = "0101" else
			  "0100000" when Sum = "0110" else
			  "0001111" when Sum = "0111" else
			  "0000000" when Sum = "1000" else
			  "0000100" when Sum = "1001" else
			  "0001000" when Sum = "1010" else
			  "1100000" when Sum = "1011" else
			  "0110001" when Sum = "1100" else
			  "1000010" when Sum = "1101" else
			  "0110000" when Sum = "1110" else
			  "0111000" when Sum = "1111" else
			  "1111111";
end Behavioral;

