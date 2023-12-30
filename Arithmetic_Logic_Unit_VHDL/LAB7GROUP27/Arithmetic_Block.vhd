----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:55 11/16/2023 
-- Design Name: 
-- Module Name:    Arithmetic_Block - Behavioral 
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

entity Arithmetic_Block is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           G : out  STD_LOGIC);
end Arithmetic_Block;
	
architecture Behavioral of Arithmetic_Block is
component B_Logic
		port (
			B : in STD_LOGIC;
			S0: in STD_LOGIC;
			S1 : in STD_LOGIC;
			Y : out STD_LOGIC
		);
	end component;
	
component Full_Adder
		port (
			A,B,Cin : in STD_LOGIC;
			Carry,Sum : out STD_LOGIC
		);
	end component;
	
	signal Y : STD_LOGIC;


begin

	BLogic: B_Logic
		Port map (
			B => B,
			S0 => S0,
			S1 => S1,
			Y => Y
		);
		
	FA: Full_Adder
		Port map (
			A=>A,
			B=>Y,
			Cin=>Cin,
			Carry=>Cout,
			Sum=>G
		);
end Behavioral;

