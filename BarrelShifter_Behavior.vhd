--
-- VHDL Architecture my_project.BarrelShifter.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 23:34:16 02/ 7/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
use ieee.numeric_std.all;


ENTITY BarrelShifter IS
  GENERIC (width : POSITIVE := 8; -- Number of input and output bits
          ControlBits : POSITIVE := 4);
  PORT (A : IN std_logic_vector(width - 1 DOWNTO 0);
        Y : OUT std_logic_vector(width - 1 DOWNTO 0);
        RightShifts : IN std_logic_vector(ControlBits - 1 DOWNTO 0));
        
END ENTITY BarrelShifter;

--
ARCHITECTURE Behavior OF BarrelShifter IS
  --Y <= A srl unsigned(RightShifts);
BEGIN
  process(A,RightShifts)
  VARIABLE selection : integer;
  Begin
    selection := To_Integer(signed(RightShifts));
    If(selection = 0) Then
      Y <= A;
    ELSIF(selection < 0) Then
      selection := -1*selection;
      Y <= std_logic_vector(shift_left(unsigned(A), selection)); 
    Else
       Y <= std_logic_vector(shift_right(unsigned(A), selection));
    End IF;
       
    
  End Process;
END ARCHITECTURE Behavior;

