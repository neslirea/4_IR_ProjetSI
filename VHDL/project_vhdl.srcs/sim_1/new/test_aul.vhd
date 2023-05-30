----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2023 17:45:23
-- Design Name: 
-- Module Name: test_aul - Behavioral
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

entity test_aul is
--  Port ( );
end test_aul;

architecture Behavioral of test_aul is


COMPONENT AUL
PORT  ( 
       A : in STD_LOGIC_VECTOR (7 downto 0); --nb1
       B : in STD_LOGIC_VECTOR (7 downto 0); --nb2
       Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0); -- controle du calcul : +,-,*
       S : out STD_LOGIC_VECTOR (7 downto 0)); -- sortie;
END COMPONENT;
--Inputs
signal Signal_A : std_logic_vector(7 downto 0) := x"02";
signal Signal_B : std_logic_vector(7 downto 0) := x"40";
signal Signal_Ctrl : std_logic_vector(2 downto 0) := "010";
--Outputs
signal Signal_S : std_logic_vector(7 downto 0);


begin
-- Instantiate the AUL
test: AUL PORT MAP (
    A => Signal_A,
    B => Signal_B,
    Ctrl_Alu => Signal_Ctrl,
    --N => Signal_N,
    --O => Signal_O,
    --Z => Signal_Z,
    --C => Signal_C,
    S => Signal_S
);



end Behavioral;
