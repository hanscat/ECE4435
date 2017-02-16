--
-- VHDL Architecture my_project.GateXOR.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 12:31:23 01/27/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY GateXOR IS
  port(a,b: In std_logic_vector(7 DownTO 0);
    Xout: Out std_logic_vector(7 DownTo 0));
    
END ENTITY GateXOR;

--
ARCHITECTURE Behavior OF GateXOR IS
BEGIN
  process(a,b,Xout)
  Begin
      Xout <= a xor b;
  End Process;
END ARCHITECTURE Behavior;

