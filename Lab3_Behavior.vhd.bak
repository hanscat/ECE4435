--
-- VHDL Architecture my_project.Lab3.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 11:46:45 01/30/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Lab3 IS
 PORT ( A : IN std_logic_vector(7 DOWNTO 0); -- Data Input
 Y : OUT std_logic_vector(7 DOWNTO 0); -- Data Output
 c, e, m : IN std_logic);
END ENTITY Lab3;

--
ARCHITECTURE Behavior OF Lab3 IS
      SIGNAL D, Q, X : std_logic_vector(7 DOWNTO 0);
BEGIN
      --left of right arrow is the individual component
      --right of right arrow is the name in the overall component
      Mux : ENTITY work.Mux(Behavior)
            PORT MAP(b=>X, a=>A, Mout=>D, m=>m);
      Reg : ENTITY work.DFlipflip(Behavior)
            PORT MAP(D=>D, clock=>c, e=>e, Q=>Q); 
      XorGate: ENTITY work.GateXOR(Behavior)
            PORT MAP(a=>a, b=>Q, Xout=>X);
              
      Y <= Q; -- This just assigns the value of signal Q to port Y
END ARCHITECTURE Behavior;

