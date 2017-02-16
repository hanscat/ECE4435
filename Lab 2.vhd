--
-- VHDL Architecture my_project.Inverter.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 12:14:25 01/23/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Inverter IS
  Port(A: in std_logic;
       Y: out std_logic);
END ENTITY Inverter;

--
ARCHITECTURE Behavior OF Inverter IS
BEGIN
  Process(A)
  Begin
      Y <= NOT A AFTER 10ns;
  End Process;
END ARCHITECTURE Behavior;

