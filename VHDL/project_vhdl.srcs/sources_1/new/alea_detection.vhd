----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2023 15:57:45
-- Design Name: 
-- Module Name: alea_detection - Behavioral
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

entity alea_detection is
    Port (
       new_op : in STD_LOGIC_VECTOR(7 downto 0);
       new_a : in STD_LOGIC_VECTOR(7 downto 0);
       new_b : in STD_LOGIC_VECTOR(7 downto 0);
       new_c : in STD_LOGIC_VECTOR(7 downto 0);
       li_op : in STD_LOGIC_VECTOR(7 downto 0);
       li_a : in STD_LOGIC_VECTOR(7 downto 0);
       li_b : in STD_LOGIC_VECTOR(7 downto 0);
       li_c : in STD_LOGIC_VECTOR(7 downto 0);
       di_op : in STD_LOGIC_VECTOR(7 downto 0);
       di_a : in STD_LOGIC_VECTOR(7 downto 0);
       di_b : in STD_LOGIC_VECTOR(7 downto 0);
       di_c : in STD_LOGIC_VECTOR(7 downto 0);
       ex_op : in STD_LOGIC_VECTOR(7 downto 0);
       ex_a : in STD_LOGIC_VECTOR(7 downto 0);
       ex_b : in STD_LOGIC_VECTOR(7 downto 0);
       mem_op : in STD_LOGIC_VECTOR(7 downto 0);
       mem_a : in STD_LOGIC_VECTOR(7 downto 0);
       mem_b : in STD_LOGIC_VECTOR(7 downto 0);
       is_alea_detected : out STD_LOGIC);
end alea_detection;

architecture Behavioral of alea_detection is

begin
      is_alea_detected <= '1' when 
    -- ALEA : lecture / ecriture registres
    -- lecture d'un registre
    ((new_op >= x"02" and new_op <= x"06") or new_op = x"08") 
        -- écriture d'un registre (AFC, COP, MUL, SUB, ADD, DIV, LOAD) et  le registre est le même
        and (
            ((li_op >=  x"01" and  li_op<= x"07" ) and (new_b(3 downto 0) = li_a(3 downto 0)))
            or ((di_op >=  x"01" and  di_op<= x"07" ) and (new_b(3 downto 0) = di_a(3 downto 0)))
            or ((ex_op >=  x"01" and  ex_op<= x"07" ) and (new_b(3 downto 0) = ex_a(3 downto 0)))
            or ((mem_op >=  x"01" and  mem_op<= x"07" ) and (new_b(3 downto 0) = mem_a(3 downto 0)))
        )     
    else '0';

end Behavioral;
