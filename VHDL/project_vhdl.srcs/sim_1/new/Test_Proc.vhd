----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 12:12:52
-- Design Name: 
-- Module Name: Test_Proc - Behavioral
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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity Test_Proc is
--  Port ( );
end Test_Proc;

architecture Behavioral of Test_Proc is
    COMPONent Proc
        Port (  CLK : in STD_LOGIC;
                RST : in STD_LOGIC;
                VAL : out STD_LOGIC_VECTOR (7 downto 0);
               RW : out STD_LOGIC;
               MEMIN : out STD_LOGIC_VECTOR (7 downto 0);
               MEMADDR : out STD_LOGIC_VECTOR (7 downto 0));
    end COMPONent;
   signal SRST : STD_LOGIC := '0';
   signal SCLK : STD_LOGIC := '0';
   signal SRW : STD_LOGIC;
   signal SVAL : STD_LOGIC_VECTOR (7 downto 0);
   signal SMEMIN : STD_LOGIC_VECTOR (7 downto 0);
   signal SMEMADDR : STD_LOGIC_VECTOR (7 downto 0);
   
   
   -- Clock period definitions
   -- Si 100 MHz
   constant Clock_period : time := 10 ns;
begin

    
    -- Instantiate the AUL hahahahahahahahahaha
    test: Proc PORT MAP (
        RST => SRST,
        CLK => SCLK,
        VAL => SVAL,
        RW => SRW,
        MEMIN => SMEMIN,
        MEMADDR => SMEMADDR
    );

    -- Clock process definitions
    Clock_process : process
    begin
        SCLK <= not(SCLK);
        wait for Clock_period/2;
    end process;
    
    SRST <= '0' after 10 ns, '1' after 30 ns;


end Behavioral;
