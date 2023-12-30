----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:04:16 11/16/2023 
-- Design Name: 
-- Module Name:    Logic_Block - Behavioral 
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

entity Logic_Block is
    Port ( S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           G_Logic : out  STD_LOGIC);
end Logic_Block;
architecture Behavioral of Logic_Block is
begin
    process(S0, S1, A, B)
    begin
	 if (S0 = '0' and S1 = '0') then
	  G_Logic <= A AND B;
	  elsif (S0 = '1' and S1 = '0') then
	   G_Logic <= A OR B;
		elsif (S0 = '0' and S1 = '1') then
		G_Logic <= A XOR B;
		 elsif (S0 = '1' and S1 = '1') then
		  G_Logic <= NOT A;
		   else
            G_Logic <= '0';
				end if;
    end process;

end Behavioral;

