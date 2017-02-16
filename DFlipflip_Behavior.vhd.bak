--
-- VHDL Architecture my_project.DFlipflip.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 12:04:14 01/27/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY DFlipflip IS
  Port(D: In std_logic_vector (7 DownTo 0);
       Q: Out std_logic_vector (7 Downto 0);
       E, Clock: In std_logic);
END ENTITY DFlipflip;

--
ARCHITECTURE Behavior OF DFlipflip IS
BEGIN
  Process(D,Clock,E)
  Begin
    If(rising_edge(Clock)) Then
      If(E = '1') Then
        Q <=  D After 10 ns; -- C delay then P delay
        Assert D'Stable(2ns)
          Report "Setup Violation"
          Severity Warning;
      End If;
    End IF;
  End Process; 


  
END ARCHITECTURE Behavior;



--
