----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2023 10:12:33
-- Design Name: 
-- Module Name: BancRegistres - Behavioral
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

entity BancRegistres is
    Port ( AddrA : in STD_LOGIC_VECTOR (3 downto 0);
           AddrB : in STD_LOGIC_VECTOR (3 downto 0);
           AddrW : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           DATA : in STD_LOGIC_VECTOR (7 downto 0);
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0));
end BancRegistres;


architecture Behavioral of BancRegistres is
    type TAB is array (0 to 7) of STD_LOGIC_VECTOR (7 downto 0);
    signal Mem : TAB;
    
begin
    process
    begin
        wait until CLK'Event and CLK='1';
        
        if (RST='0') then 
            Mem <= (others =>"00000000");
        else
            if (W='1') then -- écriture de DATA dans ARW    
                Mem(conv_integer(AddrW))<=DATA;
            end if;
        end if;

    
    end process;
    -- gestion ALEA
    QA <= DATA when AddrA = AddrW else Mem(conv_integer(AddrA));
    QB <= DATA when (AddrB = AddrW) else Mem(conv_integer(AddrB));


end Behavioral;
