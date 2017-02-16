--
-- VHDL Architecture my_project.Reg.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 21:25:09 02/ 2/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Reg IS
  GENERIC(size : POSITIVE := 8);
  PORT(D : IN std_logic_vector(size - 1 DOWNTO 0);
        Q : OUT std_logic_vector(size - 1 DOWNTO 0);
        C, E : IN std_logic);
END ENTITY Reg;

ARCHITECTURE Behavior OF Reg IS
BEGIN
  PROCESS(C)
  BEGIN
    IF(rising_edge(C) AND E = '1') THEN
      Q <= D;
    END IF;
  END PROCESS;
END ARCHITECTURE Behavior;

