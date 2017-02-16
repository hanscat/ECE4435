--
-- VHDL Architecture my_project.NormalShiftCount.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 23:48:46 02/ 7/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use IEEE.numeric_std.all;

ENTITY NormalShiftCount IS
  GENERIC (width : POSITIVE := 8; -- Number of mantissa bits
           Shifts : POSITIVE := 4); -- Number of bits in shift count
  PORT (A : IN std_logic_vector(width - 1 DOWNTO 0);
        S : OUT std_logic_vector(shifts - 1 DOWNTO 0);
        NoOnes : OUT std_logic); -- NoOnes is asserted if the mantissa is all zeros
END ENTITY NormalShiftCount;


ARCHITECTURE Behavior OF NormalShiftCount IS  
BEGIN
  process(A)
  VARIABLE zero : std_logic_vector(Shifts-1 DOWNTO 0) := (others=>'0');
  VARIABLE one : std_logic_vector(Shifts-1 DOWNTO 0) := (others=>'0');
  VARIABLE neg: signed(Shifts - 1 DOWNTO 0) := (OTHERS=>'1');
  VARIABLE neg1: signed(Shifts - 1 DOWNTO 0) := (OTHERS=>'1');
  BEGIN
    neg := neg1;
    one(0) := '1';
    IF A(width - 1) = '1' THEN
      S <= one;
      NoOnes <= '0';
    ELSIF A(width - 2) = '1' THEN
      S <= zero;
      NoOnes <= '0';
    ELSE 
      for I in width-3 DOWNTO 0 LOOP
        IF A(I) = '1' THEN
          S <= std_logic_vector(neg);
        END IF;
        EXIT WHEN A(I) = '1';
        neg := neg - 1;
      END LOOP;
      --
      If neg = -7 Then
        S <= zero;
       NoOnes <= '1';
      ELSE
        NoOnes <= '0';
     END IF;
    END IF;
  End Process;
  
END ARCHITECTURE Behavior;

