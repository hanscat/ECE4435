--
-- VHDL Architecture my_project.RegReadWrite.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 17:09:17 02/ 1/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY RegReadWrite IS
  GENERIC(size : POSITIVE := 4);
  PORT(D : IN std_logic_vector(size - 1 DOWNTO 0);
        Q : OUT std_logic_vector(size - 1 DOWNTO 0);
        Clk, LE, OE : IN std_logic);
END ENTITY RegReadWrite; 

--
ARCHITECTURE Behavior OF RegReadWrite IS
  SIGNAL Qval : std_logic_vector(size - 1 DOWNTO 0);
  CONSTANT HiZ : std_logic_vector(size - 1 DOWNTO 0) := (others => 'Z');
BEGIN
  store : ENTITY work.Reg(Behavior)
    GENERIC MAP(size => size)
    PORT MAP(D=>D, Q=>Qval, C=>Clk, E=>LE);
      
  Q <= Qval WHEN OE='1' ELSE HiZ;
END ARCHITECTURE Behavior;
    


