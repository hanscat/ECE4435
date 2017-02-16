-- VHDL Entity my_project.AddSubtract.arch_name
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 22:44:09 02/ 7/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
USe ieee.numeric_std.all;

ENTITY AddSubtract IS
  GENERIC (width : POSITIVE := 8); -- Number of fixed point number bits
  PORT (Left, Right : IN std_logic_vector(width - 1 DOWNTO 0); -- Inputs
        Sum : OUT std_logic_vector(width DOWNTO 0); -- Output
        AddSub : IN std_logic); -- Control to choose Add or Subtract
END ENTITY AddSubtract;

ARCHITECTURE Behavior OF AddSubtract IS
  SIGNAL lMantissa,sMantissa: std_logic_vector(width - 6 DOWNTO 0);   
  SIGNAL lSign, sSign, sel: std_logic;
Begin
  Process(Left,Right,AddSub)
  Begin
    
   --lSign <= Left(width - 1);
    --sSign <= right(width - 1);
    --sel <= lSign XOR sSign;
    if (AddSub) = '1' then
        Sum <= std_logic_vector(resize(unsigned(Left),width+1) - resize(unsigned(Right),width+1));
    else
        Sum <= std_logic_vector(resize(unsigned(Left),width+1) + resize(unsigned(Right),width+1));
     END IF;
  End Process;
END ARCHITECTURE Behavior;


