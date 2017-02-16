--
-- VHDL Architecture my_project.lab1.practice
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 12:30:17 01/20/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY lab1 IS
  PORT ( Data_In_0, Data_In_1 : IN std_logic_vector(3 DOWNTO 0);
 Data_Out : OUT std_logic_vector(3 DOWNTO 0);
 control : IN std_logic);
END ENTITY lab1;

--
ARCHITECTURE practice1 OF lab1 IS
BEGIN
 PROCESS(Data_In_0, Data_In_1, control)
 BEGIN
 IF (control = '0') THEN
 Data_Out <= Data_In_0;
 ELSIF (control = '1') THEN
 Data_Out <= Data_In_1;
 ELSE
 Data_Out <= "XXXX";
 END IF;
 END PROCESS;
END ARCHITECTURE practice1;

