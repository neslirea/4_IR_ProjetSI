----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2023 11:17:00
-- Design Name: 
-- Module Name: test_banregistres - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_banregistres is
--  Port ( );
end test_banregistres;

architecture Behavioral of test_banregistres is
    COMPONENT BancRegistres 
    PORT   (
               AddrA : in STD_LOGIC_VECTOR (3 downto 0);
               AddrB : in STD_LOGIC_VECTOR (3 downto 0);
               AddrW : in STD_LOGIC_VECTOR (3 downto 0);
               W : in STD_LOGIC;
               DATA : in STD_LOGIC_VECTOR (7 downto 0);
               RST : in STD_LOGIC;
               CLK : in STD_LOGIC;
               QA : out STD_LOGIC_VECTOR (7 downto 0);
               QB : out STD_LOGIC_VECTOR (7 downto 0));
    END COMPONENT;

    
    --Inputs
    signal SAddrA :  STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal SAddrB : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal SAddrW : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal SW : STD_LOGIC := '0';
    signal SDATA : STD_LOGIC_VECTOR (7 downto 0):="00000000";
    signal SRST : STD_LOGIC := '0';
    signal SCLK : STD_LOGIC :='0';
    -- Outputs
    signal SQA : STD_LOGIC_VECTOR (7 downto 0);
    signal SQB : STD_LOGIC_VECTOR (7 downto 0);
    
    -- Clock period definitions
    -- Si 100 MHz
    constant Clock_period : time := 10 ns;

begin
    
    -- Instantiate the BancRegistres
    test: BancRegistres PORT MAP (
        AddrA => SAddrA,
        AddrB => SAddrB,
        AddrW => SAddrW,
        W => SW,
        DATA => SDATA,
        RST => SRST,
        CLK => SCLK,
        QA => SQA,
        QB => SQB
    );

    
    
    -- Clock process definitions
    Clock_process : process
    begin
        SCLK <= not(SCLK);
        wait for Clock_period/2;
    end process;
    
    SRST <= '0' after 10 ns, '1' after 30 ns;
    SW <= '1' after 40 ns, '0' after 60 ns, '1' after 70ns, '0' after 80ns;
    SAddrW <= "0011" after 40 ns, "0010" after 50 ns;
    
    SAddrA <= "0001" after 20 ns, "0011" after 60 ns;
    SAddrB <= "0000" after 20 ns, "0010" after 60 ns;
    SDATA <= "11110011" after 40 ns, "01010101" after 50 ns, "00000101" after 70 ns;



end Behavioral;
