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

-- 00 - NOP
-- 01 - AFC
-- 02 - COP
-- 03 - ADD
-- 04 - SUB
-- 05 - MUL
-- 06 - DIV
-- 07 - LOAD
-- 08 - STORE


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
           VAL : out STD_LOGIC_VECTOR (7 downto 0)
           );
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
           S : out STD_LOGIC_VECTOR (7 downto 0)); -- sortie;
    END COMPONENT;
    
    COMPONENT BancMemoire_donnees is
        Port ( Addr : in STD_LOGIC_VECTOR (7 downto 0);
               INPUT : in STD_LOGIC_VECTOR (7 downto 0);
               RW : in STD_LOGIC;   -- 1 pour lecture, 0 pour ecriture
               RST : in STD_LOGIC;
               CLK : in STD_LOGIC;
               OUTPUT : out STD_LOGIC_VECTOR (7 downto 0));
    end COMPONENT;
    
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
    
    signal bancMem_addrIn : std_logic_vector(7 downto 0);
    signal bancMem_out : std_logic_vector(7 downto 0);
    signal bancMem_w : STD_LOGIC;
    
    
    signal bancReg_w : std_logic;   
    signal is_alea_detected : std_logic; -- 1 if detected

begin

    -- Instantiate the bancInstructions 
    bancInstructions: BancMemoire_instructions PORT MAP (
        Addr => ip,
        CLK => CLK,
        OUTPUT => ins
    );
            
    -- Instantiate the bancReg 
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
    
    -- Instantiate the ALU
    ALU: AUL PORT MAP (
        A => di_b,
        B => di_c,
        Ctrl_Alu => alu_ctrl,
        S => alu_s
    );
    -- Instantiate the alea_detect
    alea_detect : alea_detection PORT MAP (
           new_op => ins(31 downto 24) ,
           new_a => ins(23 downto 16) ,
           new_b => ins(15 downto 8) ,
           new_c => ins(7 downto 0) ,
           li_op => li_op ,
           li_a => li_a ,
           li_b => li_b,
           li_c => li_c ,
           di_op => di_op ,
           di_a => di_a ,
           di_b => di_b ,
           di_c => di_c ,
           ex_op => ex_op ,
           ex_a => ex_a ,
           ex_b => ex_b ,
           mem_op => mem_op ,
           mem_a => mem_a ,
           mem_b => mem_b ,
           is_alea_detected => is_alea_detected
    );
    -- Instantiate the bancMem     
    bancMem: BancMemoire_donnees 
        Port map ( Addr => bancMem_addrIn,
               INPUT  => ex_b,
               RW => bancMem_w,  -- 1 pour lecture, 0 pour ecriture
               RST  =>RST,
               CLK  => CLK,
               OUTPUT  =>bancMem_out);
    
    -- LC ctrl ALU
    alu_ctrl <= di_op(2 downto 0)-3;
    
    -- LC mem OP
    bancReg_w <= '1' when (mem_op >= x"01" and mem_op <= x"07") 
                    else '0'; -- AFC
     -- LC  banc mem -> WRITE SI STORE (08)
    bancMem_w <= '0' when ex_op = x"08" else '1';  
      
    -- MUX bancMem_addrIn mem données
    bancMem_addrIn <= ex_a when (ex_op=x"08")else ex_b;

    process
    begin
        wait until CLK'Event and CLK='1';

        if RST = '0' then
            ip <= x"00";
        else
            if is_alea_detected='0' then -- si pas d'alea, on passe à la suivante
                    ip <= ip + x"01";
            end if;
        end if;
    end process;

    process
    begin
        wait until CLK'Event and CLK='1';
        if is_alea_detected='0' then -- si pas d'alea, on lit la suivante
            li_op <= ins(31 downto 24);
            li_a <= ins(23 downto 16);
            li_b <= ins(15 downto 8);
            li_c <= ins(7 downto 0);
        else -- sinon, NOP
            li_op <= "00000000";
            li_a <= "00000000";
            li_b <= "00000000";
            li_c <= "00000000";
        end if;

                    
        di_op <= li_op;
        di_a <= li_a;
        -- MUX di_b condition
        if (li_op >= x"02" and li_op <= x"06") or li_op = x"08" then
            di_b <= bancReg_a;
        else
            di_b <= li_b;
        end if;
        di_c <= bancReg_b;        
        
         -- MUX ex_b
            if (di_op > x"00" and di_op <= x"02" ) or di_op >= x"07"  then
                ex_b <= di_b;
        else
                ex_b <= alu_s;        
        end if;   
        --
                        
        ex_op <= di_op;
        ex_a <= di_a;
        
       
        -- MUX mem_b
        if ex_op=x"07" then 
            mem_b <= bancMem_out;
        else 
            mem_b <= ex_b;
        end if;      
        --   

        --   
        mem_op <= ex_op;        
        mem_a <= ex_a;
        

    end process;

end Behavioral;
