----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:04:48 11/16/2023 
-- Design Name: 
-- Module Name:    mux_2_1 - Behavioral 
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
entity mux_2_1 is
port ( a,b : in std_logic;
	s : in std_logic;
	g : out std_logic);
end mux_2_1;


architecture behaviour of mux_2_1 is
begin
	up: process (a,b,s)
		begin
			if s='0' then
			g <= a;
			else
			g <= b;
			end if;
	end process;
end behaviour; 
