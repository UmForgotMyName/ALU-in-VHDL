----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:45 11/16/2023 
-- Design Name: 
-- Module Name:    ALU_Block - Behavioral 
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

entity ALU_Block is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           G : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end ALU_Block;
architecture Behavioral of ALU_Block is

component mux_2_1
		port (
				a,b : in std_logic;
				s : in std_logic;
				g : out std_logic);
				end component;
		
component Arithmetic_Block
		 Port (
				A : in  STD_LOGIC;
				B : in  STD_LOGIC;
				Cin : in  STD_LOGIC;
				S0 : in  STD_LOGIC;
				S1 : in  STD_LOGIC;
				Cout : out  STD_LOGIC;
				G : out  STD_LOGIC);
				end component;
component Logic_Block
		 Port (
				S0 : in  STD_LOGIC;
				S1 : in  STD_LOGIC;
				A : in  STD_LOGIC;
				B : in  STD_LOGIC;
				G_Logic : out  STD_LOGIC);
				end component;
				
Signal FA_OUT : STD_LOGIC;
Signal Logic_OUT: STD_LOGIC;
begin

Arith: Arithmetic_Block
	 Port map( A => A,
           B => B,
           Cin => Cin,
           S0 => S0,
           S1 => S1,
           Cout => Cout,
           G => FA_OUT
			  );
			  
Logic: Logic_Block
	Port map(
			  S0 => S0,
           S1 => S1,
           A => A,
           B => B,
           G_Logic => Logic_OUT
			  );
			  
Mux:mux_2_1
Port map(
           a => FA_OUT,
           b => Logic_OUT,
			  s => S2,
			  g => G
			  );
end Behavioral;

