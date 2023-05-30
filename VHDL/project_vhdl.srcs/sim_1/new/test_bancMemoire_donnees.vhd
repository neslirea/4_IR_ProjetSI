----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 11:16:55
-- Design Name: 
-- Module Name: test_bancMemoire_donnees - Behavioral
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

entity test_bancMemoire_donnees is
--  Port ( );
end test_bancMemoire_donnees;

architecture Behavioral of test_bancMemoire_donnees is
    COMPONENT BancMemoire_donnees is
        Port ( Addr : in STD_LOGIC_VECTOR (7 downto 0);
               INPUT : in STD_LOGIC_VECTOR (7 downto 0);
               RW : in STD_LOGIC;   -- 1 pour lecture, 0 pour ecriture
               RST : in STD_LOGIC;
               CLK : in STD_LOGIC;
               OUTPUT : out STD_LOGIC_VECTOR (7 downto 0));
    END COMPONENT;
    
    
    --Inputs
    signal SAddr : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal SINPUT : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal SRW : STD_LOGIC := '0' ;   -- 1 pour lecture, 0 pour ecriture
    signal SRST : STD_LOGIC := '0' ;
    signal SCLK : STD_LOGIC := '0' ;
    -- Outputs
    signal SOUTPUT : STD_LOGIC_VECTOR (7 downto 0);
    
    -- Clock period definitions
    -- Si 100 MHz
    constant Clock_period : time := 10 ns;

begin

    
    -- Instantiate the BancMemoire_donnees
    test: BancMemoire_donnees PORT MAP (
        Addr => SAddr,
        INPUT => SINPUT,
        RW => SRW,
        RST => SRST,
        CLK => SCLK,
        OUTPUT => SOUTPUT
    );

    -- Clock process definitions
    Clock_process : process
    begin
        SCLK <= not(SCLK);
        wait for Clock_period/2;
    end process;
    
    SRST <= '0' after 10 ns, '1' after 30 ns;
    SRW <= '1' after 40 ns, '0' after 60 ns, '1' after 70ns, '0' after 80ns;
    SAddr <= "0011" after 40 ns, "0010" after 50 ns;
    
    SINPUT <= "11110011" after 40 ns, "01010101" after 50 ns, "00000101" after 70 ns;

end Behavioral;
