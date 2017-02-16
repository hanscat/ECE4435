--
-- VHDL Architecture my_project.DType.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 12:27:25 01/23/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY DType IS
  Port(D, Clock: In Std_logic;
       Q: Out std_logic);
END ENTITY DType;

--
ARCHITECTURE Behavior OF DType IS
BEGIN
  Process(Clock)
  Begin
    If(rising_edge(Clock)) Then
      Q <= 'X' After 5 ns, D After 15 ns;
      Assert D'Stable(6ns)
        Report "Setup Violation"
        Severity Warning;
     End IF;
  End Process; 


PROCESS(Clock'DELAYED(2ns))
 BEGIN
 IF rising_edge(Clock'DELAYED(2ns)) THEN
 ASSERT D'STABLE(6ns)
 REPORT "Hold Violation"
 SEVERITY WARNING;
 END IF;
 END PROCESS; 
END ARCHITECTURE Behavior;
