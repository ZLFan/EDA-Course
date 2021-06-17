LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_vhd_tst IS
END test_vhd_tst;
ARCHITECTURE test_arch OF test_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC:='0';
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC:='0';
COMPONENT test
	PORT (
	address : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clk => clk,
	data => data,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	reset <= '0';
	WAIT FOR 50 ns;
	reset <= '1';
	WAIT FOR 40 ns;
	reset <= '0';
	WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
	clk <= NOT clk;
	WAIT FOR 20 ns;
END PROCESS always;                                          
END test_arch;
