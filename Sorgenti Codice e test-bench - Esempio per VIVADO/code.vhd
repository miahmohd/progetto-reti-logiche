----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2018 14:36:54
-- Design Name: 
-- Module Name: code - pippo
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

entity code is
    Port ( i : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           o : out STD_LOGIC);
end code;

architecture pippo of code is
  type state_type is (S0, S1, S2, S3);
signal next_state, current_state: state_type;
begin

state_reg: process(clk, rst)
  begin
    if rst='1' then
      current_state <= S0;
    elsif rising_edge(clk) then
      current_state <= next_state;
    end if;
  end process;
  
  lambda: process(current_state, i)
  begin
    case current_state is
      when S0 =>
        if i='0' then
          next_state <= S1;
        else
          next_state <= S0;
        end if;
      when S1 =>
        if i='0' then
          next_state <= S2;
        else
          next_state <= S0;
        end if;
      when S2 =>
        if i='0' then
          next_state <= S2;
        else
          next_state <= S3;
        end if;
      when S3 =>
        if i='1' then
          next_state <= S1;
        else
          next_state <= S0;
        end if;
    end case;
  end process;

 delta: process(current_state)
  begin
    case current_state is
      when S0 =>
        o <= '0';
      when S1 =>
        o <= '0';
      when S2 =>
        o <= '0';
      when S3 =>
        o <= '1';
    end case;
  end process;

end pippo;
