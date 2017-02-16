--
-- VHDL Architecture my_project.LargerFloat.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 11:55:11 02/ 6/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY LargerFloat IS
  GENERIC (width : POSITIVE := 8); -- Number of floating point number bits
  PORT (A, B : IN std_logic_vector(width - 1 DOWNTO 0);
        Larger, Smaller : OUT std_logic_vector(width - 1 DOWNTO 0));
END ENTITY LargerFloat;

--
ARCHITECTURE Behavior OF LargerFloat IS
  SIGNAL temp1,temp2 : std_logic_vector(width - 2 DOWNTO 0);   
  SIGNAL muxSel: std_logic;
BEGIN
  Process(A,B)
  Begin
    temp1 <= A(width - 2 DOWNTO 0);
    temp2 <= B(width - 2 DOWNTO 0);
    
    If(temp1 > temp2) Then
       muxSel <= '0';
    else
      muxSel <= '1';
    End IF;
    
    
  End Process; 
  
  SmallerMux : ENTITY work.Mux(Behavior)    
     PORT MAP(a=>B, b=>A, m=>muxSel, Mout=>Smaller); 
  BiggerMux : ENTITY work.Mux(Behavior)       
     PORT MAP(a=>A, b=>B, m=>muxSel, Mout=>Larger);
END ARCHITECTURE Behavior;

