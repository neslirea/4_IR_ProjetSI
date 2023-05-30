----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2023 16:28:52
-- Design Name: 
-- Module Name: AUL - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AUL is
    Port ( 
           A : in STD_LOGIC_VECTOR (7 downto 0); --nb1
           B : in STD_LOGIC_VECTOR (7 downto 0); --nb2
           Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0); -- controle du calcul : +,-,*
           S : out STD_LOGIC_VECTOR (7 downto 0)); -- sortie
end AUL;

architecture Behavioral of AUL is
    signal Auxiliaire: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal var: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin
    var <= A*B;
    Auxiliaire <= A+B when Ctrl_Alu="000" else
                (A)-(B) when Ctrl_Alu="001" else
                var(7 downto 0) when Ctrl_Alu="010";

    S <= Auxiliaire;

end Behavioral;
