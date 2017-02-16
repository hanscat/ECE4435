--
-- VHDL Architecture my_project.Mux.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 11:49:59 01/27/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

-- zero is a and one is b
ENTITY Mux IS
  port(a,b: In std_logic_vector(7 DownTO 0);
    Mout: Out std_logic_vector(7 DownTo 0);
    m: In std_logic);
END ENTITY Mux;

--
ARCHITECTURE Behavior OF Mux IS
BEGIN
  process(a,b,m)
  Begin
    if(m = '0') Then
      Mout <= a; 
    Else
      Mout <= b;
    End if;
  End Process;
END ARCHITECTURE Behavior;

