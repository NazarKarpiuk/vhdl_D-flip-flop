----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 				-- library declaration

entity vhdlDff is
Port (S : in std_logic;       			-- input signal
		 R : in std_logic;      			-- input signal
		 D : in std_logic;      			-- input signal
		 Q,NQ : out std_logic;				-- output signals
		 CLK : in std_logic					-- input signal
);
end vhdlDff;

architecture Behavioral of vhdlDff is
signal tmp : std_logic;						-- additional intermediate signal
begin
 dff: process (R, S, CLK)					-- processing of input signals
begin 
if (S = '0') then
tmp <= '1';
elsif (R = '0' and S = '1') then			
tmp <= '0';										-- assignment of output signals through "tmp" signal
elsif (rising_edge(CLK)) then 
tmp <= D;
end if;
end process;
Q <= tmp;										-- final assignment of output signals
NQ <= not tmp;									
end Behavioral;

