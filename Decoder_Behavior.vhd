--
-- VHDL Architecture my_project.Decoder.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 11:59:03 02/ 1/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
ENTITY Decoder IS
 GENERIC(InBits : POSITIVE := 2);
 PORT(sel : IN std_logic_vector(InBits-1 DOWNTO 0);
      OneHot : OUT std_logic_vector((2**InBits-1) DOWNTO 0);
      enable : IN std_logic);
END ENTITY Decoder;
ARCHITECTURE Behavior OF Decoder IS
BEGIN
  PROCESS(sel, enable)
    VARIABLE selection : NATURAL;
    VARIABLE result : std_logic_vector((2**InBits-1) DOWNTO 0);
    CONSTANT zero : std_logic_vector((2**InBits-1) DOWNTO 0) := (others=>'0');
 BEGIN
    result := zero;
    IF(enable = '1') THEN
      selection := To_Integer(unsigned(sel));
      result(selection) := '1';
    END IF;
    OneHot <= result;
  END PROCESS;
END ARCHITECTURE Behavior;

