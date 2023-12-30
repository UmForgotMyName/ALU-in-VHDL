----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:51 11/16/2023 
-- Design Name: 
-- Module Name:    ALU_FOURSTAGE - Behavioral 
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

entity ALU_FOURSTAGE is
    Port ( A : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           G : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           Cout : out  STD_LOGIC);
end ALU_FOURSTAGE;
architecture Behavioral of ALU_FOURSTAGE is

component ALU_Block
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           G : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

Signal Cout1,Cout2,Cout3: STD_LOGIC;
begin

ALU1: ALU_Block
	port map(A=> A(0),
           B=> B(0),
           S0=> S0,
           S1=> S1,
           Cin=> Cin,
           S2=> S2,
           G=> G(0),
           Cout=> Cout1
			  );
ALU2: ALU_Block
port map(A=> A(1),
           B=> B(1),
           S0=> S0,
           S1=> S1,
           Cin=> Cout1,
           S2=> S2,
           G=> G(1),
           Cout=> Cout2
			  );
ALU3: ALU_Block
port map(A=> A(2),
           B=> B(2),
           S0=> S0,
           S1=> S1,
           Cin=> Cout2,
           S2=> S2,
           G=> G(2),
           Cout=> Cout3
			  );
ALU4: ALU_Block
port map(A=> A(3),
           B=> B(3),
           S0=> S0,
           S1=> S1,
           Cin=> Cout3,
           S2=> S2,
           G=> G(3),
           Cout=> Cout
			  );
			  
end Behavioral;

