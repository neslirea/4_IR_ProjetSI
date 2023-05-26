----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 11:12:15
-- Design Name: 
-- Module Name: BancMemoire_instructions - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BancMemoire_instructions is
    Port ( Addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (31 downto 0));
end BancMemoire_instructions;

architecture Behavioral of BancMemoire_instructions is

    type TAB is array (0 to 255) of STD_LOGIC_VECTOR (31 downto 0);


    signal Mem : TAB := (x"01014200",  x"01022700",  x"00000000",  x"00000000", x"00000000", x"03000102", others => x"00000000");
begin

    OUTPUT <= Mem(conv_integer(Addr));
        
end Behavioral;