library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity esempio15 is
  port(
      i:  in std_logic;
      clk:  in std_logic;
      rst:  in std_logic;
      o:  out std_logic
  );
end esempio15;

architecture FSM of esempio15 is
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

end FSM;
    

