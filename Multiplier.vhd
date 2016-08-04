-------------------------------------------------------------------------------
--
-- Title       : Multiplier
-- Design      : Multiplier
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
use ieee.numeric_std.all;

entity Multiplier is
	generic(
		N:integer:=12
		);
	port(
		D1		:in std_logic_vector(N-1 downto 0):=(others=>'U');
		D2		:in std_logic_vector(N-1 downto 0):=(others=>'U');
		Q		:out std_logic_vector(2*N-1 downto 0):=(others=>'0')
		);	   
end Multiplier;	 

architecture arithmetical of Multiplier is	 
begin
	
	Q <= std_logic_vector(signed(D1)*signed(D2));
	
end arithmetical;				 

