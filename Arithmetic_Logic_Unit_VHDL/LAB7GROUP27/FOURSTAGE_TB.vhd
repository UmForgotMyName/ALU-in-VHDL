-------------------------------------------------------------------------------- 
-- Company:  
-- Engineer: 
-- 
-- Create Date:   14:59:25 11/23/2023 
-- Design Name:    
-- Module Name:   /home/ise/ISE/LAB7GROUP27/FOURSTAGE_TB.vhd 
-- Project Name:  LAB7GROUP27 
-- Target Device:   
-- Tool versions:   
-- Description:    
--  
-- VHDL Test Bench Created by ISE for module: ALU_FOURSTAGE 
--  
-- Dependencies: 
--  
-- Revision: 
-- Revision 0.01 - File Created 
-- Additional Comments: 
-- 
-- Notes:  
-- This testbench has been automatically generated using types std_logic and 
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation  
-- simulation model. 
-------------------------------------------------------------------------------- 

LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 

-- Uncomment the following library declaration if using 
-- arithmetic functions with Signed or Unsigned values 
--USE ieee.numeric_std.ALL; 

ENTITY FOURSTAGE_TB IS 
END FOURSTAGE_TB; 

ARCHITECTURE behavior OF FOURSTAGE_TB IS  

    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT ALU_FOURSTAGE 
    PORT( 
         A    : IN  std_logic_vector(3 downto 0); 
         B    : IN  std_logic_vector(3 downto 0); 
         S0   : IN  std_logic; 
         S1   : IN  std_logic; 
         Cin  : IN  std_logic; 
         S2   : IN  std_logic; 
         G    : OUT std_logic_vector(3 downto 0); 
         Cout : OUT std_logic 
        ); 
    END COMPONENT; 
     
    -- Inputs 
    signal A    : std_logic_vector(3 downto 0); 
    signal B    : std_logic_vector(3 downto 0); 
    signal S0   : std_logic := '0'; 
    signal S1   : std_logic := '0'; 
    signal Cin  : std_logic := '0'; 
    signal S2   : std_logic := '0'; 

    -- Outputs 
    signal G    : std_logic_vector(3 downto 0); 
    signal Cout : std_logic; 
    
    -- No clocks detected in port list. Replace <clock> below with  
    -- appropriate port name  
    
BEGIN 

    -- Instantiate the Unit Under Test (UUT) 
    uut: ALU_FOURSTAGE PORT MAP ( 
          A    => A, 
          B    => B, 
          S0   => S0, 
          S1   => S1, 
          Cin  => Cin, 
          S2   => S2, 
          G    => G, 
          Cout => Cout 
        ); 

    tb: process 
        constant period : time := 20 ns; 
    begin		 
        S0 <= '0'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "0101"; 
        B <= "0000"; 
        wait for period; 
        assert ((G = "0101") and (Cout ='0')) 
            report "Test failed 1 "; 

        S0 <= '0'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "1010"; 
        B <= "1010"; 
        wait for period; 
        assert ((G = "1010") and (Cout ='0')) 
            report "Test failed 2 "; 

        S0 <= '0'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "0010"; 
        B <= "0000"; 
        wait for period; 
        assert ((G = "0011") and (Cout ='0')) 
            report "Test failed 3 "; 

        S0 <= '0'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "1111"; 
        B <= "0101"; 
        wait for period; 
        assert ((G = "0000") and (Cout ='1')) 
            report "Test failed 4 "; 
				
		  S0 <= '1'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "0101"; 
        B <= "1010"; 
        wait for period; 
        assert ((G = "1111") and (Cout ='0')) 
            report "Test failed 5"; 
				
		  S0 <= '1'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "1111"; 
        B <= "1111"; 
        wait for period; 
        assert ((G = "1110") and (Cout ='1')) 
            report "Test failed 6"; 
				
		  S0 <= '1'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "1111"; 
        B <= "1111"; 
        wait for period; 
        assert ((G = "1111") and (Cout ='1')) 
            report "Test failed 7"; 
				
		  S0 <= '1'; 
        S1 <= '0'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "0100"; 
        B <= "0100"; 
        wait for period; 
        assert ((G = "1001") and (Cout ='0')) 
            report "Test failed 8"; 
				
		  S0 <= '0'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "0000"; 
        B <= "0000"; 
        wait for period; 
        assert ((G = "1111") and (Cout ='0')) 
            report "Test failed 9";
         
		  S0 <= '0'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "0010"; 
        B <= "1101"; 
        wait for period; 
        assert ((G = "0100") and (Cout ='0')) 
            report "Test failed 10";

		  S0 <= '0'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "1100"; 
        B <= "1000"; 
        wait for period; 
        assert ((G = "0100") and (Cout ='1')) 
            report "Test failed 11"; 
				
		  S0 <= '0'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "0100"; 
        B <= "1000"; 
        wait for period; 
        assert ((G = "1100") and (Cout ='0')) 
            report "Test failed 12"; 
				
		  S0 <= '1'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "0100"; 
        B <= "0000"; 
        wait for period; 
        assert ((G = "0011") and (Cout ='1')) 
            report "Test failed 13"; 
				
		  S0 <= '1'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '0'; 
        A <= "1111"; 
        B <= "0101"; 
        wait for period; 
        assert ((G = "1110") and (Cout ='1')) 
            report "Test failed 14"; 
				
		  S0 <= '1'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "1111"; 
        B <= "0101"; 
        wait for period; 
        assert ((G = "1111") and (Cout ='1')) 
            report "Test failed 15"; 
				
		  S0 <= '1'; 
        S1 <= '1'; 
        S2 <= '0'; 
        Cin <= '1'; 
        A <= "0011"; 
        B <= "0000"; 
        wait for period; 
        assert ((G = "0011") and (Cout ='1')) 
            report "Test failed 16";
				
		  S0 <= '0'; 
        S1 <= '0'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "0101"; 
        B <= "0101"; 
        wait for period; 
        assert ((G = "0101") and (Cout ='0')) 
            report "Test failed 17";
				
		  S0 <= '0'; 
        S1 <= '0'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "1111"; 
        B <= "0101"; 
        wait for period; 
        assert ((G = "0101") and (Cout ='0')) 
            report "Test failed 18";
				
		  S0 <= '1'; 
        S1 <= '0'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "0100"; 
        B <= "0001"; 
        wait for period; 
        assert ((G = "0101") and (Cout ='0')) 
            report "Test failed 19";
				
		  S0 <= '1'; 
        S1 <= '0'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "0110"; 
        B <= "0100"; 
        wait for period; 
        assert ((G = "0110") and (Cout ='0')) 
            report "Test failed 20";
				

        S0 <= '0'; 
        S1 <= '1'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "0110"; 
        B <= "0110"; 
        wait for period; 
        assert ((G = "0000") and (Cout ='0')) 
            report "Test failed 21";

        S0 <= '0'; 
        S1 <= '1'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "0101"; 
        B <= "1010"; 
        wait for period; 
        assert ((G = "1111") and (Cout ='0')) 
            report "Test failed 22";

		  S0 <= '1'; 
        S1 <= '1'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "0101"; 
        B <= "1010"; 
        wait for period; 
        assert ((G = "1010") and (Cout ='1')) 
            report "Test failed 23";
				
		  S0 <= '1'; 
        S1 <= '1'; 
        S2 <= '1'; 
        Cin <= '0'; 
        A <= "0110"; 
        B <= "0000"; 
        wait for period; 
        assert ((G = "1001") and (Cout ='1')) 
            report "Test failed 24";

        wait; 
    end process; 
END;