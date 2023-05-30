----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2023 16:35:35
-- Design Name: 
-- Module Name: test_alea_detection - Behavioral
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

entity test_alea_detection is
--  Port ( );
end test_alea_detection;

architecture Behavioral of test_alea_detection is
    COMPONENT alea_detection is
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
    end COMPONENT;

    
    --Inputs
    signal s_new_op : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_new_a : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_new_b : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_new_c : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_li_op : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_li_a : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_li_b : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_li_c : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_di_op : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_di_a : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_di_b : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_di_c : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_ex_op : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_ex_a : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_ex_b : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_mem_op : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_mem_a : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_mem_b : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    -- Outputs
    signal s_is_alea_detected :  STD_LOGIC;


begin
    
    -- Instantiate the alea_detection
    test: alea_detection PORT MAP (
            new_op => s_new_op,
            new_a => s_new_a,
            new_b => s_new_b,
            new_c => s_new_c,
            li_op => s_li_op,
            li_a => s_li_a,
            li_b => s_li_b,
            li_c => s_li_c,
            di_op => s_di_op,
            di_a => s_di_a,
            di_b => s_di_b,
            di_c => s_di_c,
            ex_op => s_ex_op,
            ex_a => s_ex_a,
            ex_b => s_ex_b,
            mem_op => s_mem_op,
            mem_a => s_mem_a,
            mem_b => s_mem_b,
            is_alea_detected => s_is_alea_detected
    );

    s_new_op <= x"02";
    s_new_a <= "00000000";
    s_new_b <= "00000001";
    s_new_c <= "00000000";
    s_li_op <= x"00";
    s_li_a <= "00000000";
    s_li_b <= "00000001";
    s_li_c <= "00000000";
    s_di_op <= x"01";
    s_di_a <= "00000001";
    s_di_b <= "00000000";
    s_di_c <= "00000000";
    s_ex_op <= "00000000";
    s_ex_a <= "00000000";
    s_ex_b <= "00000000";
    s_mem_op <= "00000000";
    s_mem_a <= "00000000";
    s_mem_b <= "00000000";

end Behavioral;
