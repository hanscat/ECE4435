--
-- VHDL Architecture my_project.RegFile.Behavior
--
-- Created:
--          by - Timothy.UNKNOWN (TIMOTHY)
--          at - 12:06:35 02/ 1/2017
--
-- using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
--
--Behavior Version of RegFile
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--Use ieee.std_logic_arith.all;
USE ieee.numeric_std.all;

ENTITY RegFile IS
  GENERIC(RegWidth : positive := 8; -- Bits in each register
          RegSel : positive := 2); -- The bits required to select a register
  PORT ( D : IN std_logic_vector(RegWidth - 1 DOWNTO 0); -- Data Input
         Q : OUT std_logic_vector(RegWidth - 1 DOWNTO 0); -- Data Output
         ReadSel, WriteSel : IN std_logic_vector(RegSel - 1 DOWNTO 0);
         Clock, Load : IN std_logic);
END ENTITY RegFile;
  
ARCHITECTURE Behavior OF RegFile IS
  TYPE mem IS ARRAY(0 TO (2**RegSel-1)) OF std_logic_vector(RegWidth-1 DOWNTO 0);
  SIGNAL memory : mem;
  SIGNAL ReadDC, WriteDC : std_logic_vector((2**RegSel)-1 DOWNTO 0);   
  SIGNAL RegOut : std_logic_vector(RegWidth-1 DOWNTO 0);
BEGIN
  
  ReadDecode : ENTITY work.Decoder(Behavior)    
    GENERIC MAP(InBits=>RegSel)    
     PORT MAP(sel=>ReadSel, OneHot=>ReadDC, enable=>'1'); 
  WriteDecode : ENTITY work.Decoder(Behavior)  
     GENERIC MAP(InBits=>RegSel)   
       PORT MAP(sel=>WriteSel, OneHot=>WriteDC, enable=>Load); 
         
 PROCESS (ReadSel,memory)
    VARIABLE OutSelect : NATURAL;
 BEGIN
    OutSelect := To_Integer(unsigned(ReadSel));
    Q <= memory(OutSelect);
 END PROCESS;

 PROCESS(Clock)
    VARIABLE InSelect : NATURAL;
 BEGIN
    IF (rising_edge(Clock) AND Load = '1') THEN
      InSelect := To_Integer(unsigned(WriteSel));
      memory(InSelect) <= D;
    END IF;
 END PROCESS;
END ARCHITECTURE Behavior; 


