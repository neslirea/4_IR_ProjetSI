----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 10:54:52
-- Design Name: 
-- Module Name: BancMemoire_donnees - Behavioral
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

entity BancMemoire_donnees is
    Port ( Addr : in STD_LOGIC_VECTOR (7 downto 0);
           INPUT : in STD_LOGIC_VECTOR (7 downto 0);
           RW : in STD_LOGIC;   -- 1 pour lecture, 0 pour ecriture
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (7 downto 0));
end BancMemoire_donnees;

architecture Behavioral of BancMemoire_donnees is
    type TAB is array (0 to 255) of STD_LOGIC_VECTOR (7 downto 0);

    signal Mem : TAB;
begin

    process
    
    begin
        wait until CLK'Event and CLK='1';
        
        
        if (RST='0') then 
            Mem <= (others =>"00000000");
            OUTPUT <= "00000000"; -- init de la valeur
        else
            if (RW='0') then -- écriture de DATA dans ARW   
                Mem(conv_integer(Addr))<=INPUT;
                OUTPUT <= "00000000"; -- init de la valeur
            else
                OUTPUT <= Mem(conv_integer(Addr));
            end if;
        end if;
        
    end process;
end Behavioral;
