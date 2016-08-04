-------------------------------------------------------------------------------
--
-- Title       : Figure
-- Design      : Circle
-- Author      : Maximiliano Valencia Moctezuma
-- Company     : Universidad Autonoma de Queretaro
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Electronica_Avanzada_2\Up_Down_Counter_Synchronous_Clear\Up_Down_Counter_Synchronous_Clear\Up_Down_Counter_Synchronous_Clear\src\Up_Down_Counter_Synchronous_Clear.vhd
-- Generated   : Tue Aug  4 16:51:42 2015
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;   

entity Figure is
	generic(
		N:integer:=10 
		);
	port(
		X		:in std_logic_vector(N-1 downto 0):=(others=>'U');
		Y		:in std_logic_vector(N-1 downto 0):=(others=>'U');
		CX		:in std_logic_vector(N-1 downto 0):=(others=>'U');
		CY		:in std_logic_vector(N-1 downto 0):=(others=>'U');
		R		:in std_logic_vector(2*N-1 downto 0):=(others=>'U');
		H		:out std_logic:='0'
		);	   
end Figure;	 

architecture structural of Figure is	 
	signal Q1:std_logic_vector(N-1 downto 0):=(others=>'0');
	signal Q2:std_logic_vector(N-1 downto 0):=(others=>'0');
	signal Q3:std_logic_vector(2*N-1 downto 0):=(others=>'0');
	signal Q4:std_logic_vector(2*N-1 downto 0):=(others=>'0');
	signal Q5:std_logic_vector(2*N-1 downto 0):=(others=>'0');
begin
	
	U0:entity work.Adder generic map(N) port map(X,CX,Q1);
	U1:entity work.Adder generic map(N) port map(Y,CY,Q2);
	U2:entity work.Multiplier generic map(N) port map(Q1,Q1,Q3);
	U3:entity work.Multiplier generic map(N) port map(Q2,Q2,Q4);
	U4:entity work.Adder generic map(2*N) port map(Q3,Q4,Q5);
	U5:entity work.Comparator_MN generic map(2*N) port map(Q5,R,H);
	
end structural;				 

