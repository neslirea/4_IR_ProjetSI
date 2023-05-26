----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 11:59:27
-- Design Name: 
-- Module Name: Proc - Behavioral
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

entity Proc is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           VAL : out STD_LOGIC_VECTOR (7 downto 0));
end Proc;

architecture Behavioral of Proc is
    
    component BancMemoire_instructions is
        Port (
           Addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    
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
    
    COMPONENT AUL
    PORT  ( 
           A : in STD_LOGIC_VECTOR (7 downto 0); --nb1
           B : in STD_LOGIC_VECTOR (7 downto 0); --nb2
           Ctrl_Alu : in STD_LOGIC_VECTOR (2 downto 0); -- controle du calcul : +,-,*
           --N : out STD_LOGIC; -- valeur négative en sortie
           --O : out STD_LOGIC; -- overflow
           --Z : out STD_LOGIC; -- sortie nulle
           --C : out STD_LOGIC; -- carry
           S : out STD_LOGIC_VECTOR (7 downto 0)); -- sortie;
    END COMPONENT;
    
    signal ip : STD_LOGIC_VECTOR(7 downto 0);
    signal ins: STD_LOGIC_VECTOR (31 downto 0);
    
    signal li_op : STD_LOGIC_VECTOR(7 downto 0);
    signal li_a : STD_LOGIC_VECTOR(7 downto 0);
    signal li_b : STD_LOGIC_VECTOR(7 downto 0);
    signal li_c : STD_LOGIC_VECTOR(7 downto 0);
    
    signal di_op : STD_LOGIC_VECTOR(7 downto 0);
    signal di_a : STD_LOGIC_VECTOR(7 downto 0);
    signal di_b : STD_LOGIC_VECTOR(7 downto 0);
    signal di_c : STD_LOGIC_VECTOR(7 downto 0);
    
    signal ex_op : STD_LOGIC_VECTOR(7 downto 0);
    signal ex_a : STD_LOGIC_VECTOR(7 downto 0);
    signal ex_b : STD_LOGIC_VECTOR(7 downto 0);
    
    signal mem_op : STD_LOGIC_VECTOR(7 downto 0);
    signal mem_a : STD_LOGIC_VECTOR(7 downto 0);
    signal mem_b : STD_LOGIC_VECTOR(7 downto 0);
        
    signal bancReg_a : STD_LOGIC_VECTOR(7 downto 0);
    signal bancReg_b : STD_LOGIC_VECTOR(7 downto 0);
    
    
    signal alu_ctrl : std_logic_vector(2 downto 0);
    signal alu_s : std_logic_vector(7 downto 0);
    
    
    signal bancReg_w : std_logic;

begin

    -- Instantiate the AUL hahahaha
    bancInstructions: BancMemoire_instructions PORT MAP (
        Addr => ip,
        CLK => CLK,
        OUTPUT => ins
    );
            
    -- Instantiate the AUL haha
    bancReg: BancRegistres PORT MAP (
        AddrA => li_b(3 downto 0),
        AddrB => li_c(3 downto 0),
        AddrW => mem_a(3 downto 0),
        W => bancReg_w,
        DATA => mem_b,
        RST => RST,
        CLK => CLK,
        QA => bancReg_a,
        QB => bancReg_b
    );
    
    ALU: AUL PORT MAP (
        A => di_b,
        B => di_c,
        Ctrl_Alu => alu_ctrl,
        S => alu_s
    );
    
    alu_ctrl <= di_op(2 downto 0)-3;
    bancReg_w <= '1' when mem_op >= x"01" and mem_op <= x"07" 
                    else '0'; -- AFC

    

    process
    begin
        wait until CLK'Event and CLK='1';
        if RST = '0' then
            ip <= x"00";
        else
            ip <= ip + x"01";
        end if;
    end process;

    process
    begin
        wait until CLK'Event and CLK='1';

        li_op <= ins(31 downto 24);
        li_a <= ins(23 downto 16);
        li_b <= ins(15 downto 8);
        li_c <= ins(7 downto 0);
                    
        di_op <= li_op;
        di_a <= li_a;
        --di_b <= li_b;
        --if li_op = x"02" then
        --    bancReg_AddrA <= ;
        --end if; 
        if li_op >= x"02" and li_op <= x"07" then
            di_b <= bancReg_a;
        else
            di_b <= li_b;
        end if;
        di_c <= bancReg_b;
                           
        ex_op <= di_op;
        ex_a <= di_a;
        if (di_op > x"00" and di_op <= x"02" ) or di_op >= x"07"  then
                ex_b <= di_b;
        else
                ex_b <= alu_s;        
        end if;
                                
        mem_op <= ex_op;
        mem_a <= ex_a;
        mem_b <= ex_b;
    end process;
    
end Behavioral;
