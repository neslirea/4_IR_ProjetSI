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
           --N : out STD_LOGIC; -- valeur négative en sortie
           --O : out STD_LOGIC; -- overflow
           --Z : out STD_LOGIC; -- sortie nulle
           --C : out STD_LOGIC; -- carry
           S : out STD_LOGIC_VECTOR (7 downto 0)); -- sortie
end AUL;

architecture Behavioral of AUL is
    signal Auxiliaire: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal var: STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin
process
begin
   --N <= '0';
   --O <= '0';
   --Z <= '0';
   --C <= '0';
   if (Ctrl_Alu="000") then -- addition +
        Auxiliaire <= A+B;
        --C <= A(7) and B(7);
   elsif (Ctrl_Alu="001") then  -- soustraction -
        Auxiliaire <= A-B;
   elsif (Ctrl_Alu="010") then  -- multiplication *
        var <= A*B;
        Auxiliaire <= var(7 downto 0);
        Auxiliaire <= "00000001";
        --if(var(15 downto 8)/="00000000") then
        --O <= '1';
        --end if;
   end if;
   --if(Auxiliaire="00000000") then
        --Z <= '1';
   --end if;

end process;

S <= Auxiliaire;

end Behavioral;
