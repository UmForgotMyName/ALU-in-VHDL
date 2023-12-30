----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:53 11/16/2023 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Carry : out  STD_LOGIC;
           Sum : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
component HalfAdder
		port (
			A,B : in STD_LOGIC;
			Sum,Carry : out STD_LOGIC
		);
	end component;
	
	signal Sum1, Carry1, Carry2 : STD_LOGIC;

begin

		HA1: HalfAdder
		Port map (
			A => A,
			B => B,
			Sum => Sum1,
			Carry => Carry1
		);
		
		HA2: HalfAdder
		Port map (
			A => Sum1,
			B => Cin,
			Sum => Sum,
			Carry => Carry2
		);
		
		Carry <= Carry1 or Carry2;
end architecture Behavioral;

