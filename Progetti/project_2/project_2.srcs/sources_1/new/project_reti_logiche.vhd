----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineers: Miah Mohd Ehtesham, Ouahidi Yassine
-- Codice persona: 10583195, 10568926
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package my_constants is

    constant base_memory: std_logic_vector := "0000000000000000";
    constant address: std_logic_vector := "0000000000001000";
    constant address_to_write: std_logic_vector := "0000000000001001" ;
    constant memory_offset: std_logic_vector := "0000000000000001";

end my_constants;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.my_constants.all;


entity project_reti_logiche is
  Port (
    i_clk       : in    std_logic;
    i_start     : in    std_logic;
    i_rst       : in    std_logic;
    i_data      : in    std_logic_vector(7 downto 0);
    o_address   : out   std_logic_vector(15 downto 0);
    o_done      : out   std_logic;
    o_en        : out   std_logic;
    o_we        : out   std_logic;
    o_data      : out   std_logic_vector(7 downto 0)
  );
end project_reti_logiche;



architecture Behavioral of project_reti_logiche is

    type state is (rst_state, read_mem_state, wait_i_data_change, write_mem_state, end_state);

    signal current_state            : state := rst_state;
    signal next_state               : state := rst_state;

    signal current_memory_address   : std_logic_vector(15 downto 0);
    signal address_to_encode        : std_logic_vector(7 downto 0);

begin

    main: process(i_clk, i_rst) is

        variable is_to_encode             : integer range 0 to 1;
        variable address_offset           : integer range -255 to 255;

        procedure encode_address is
        begin
            address_offset := to_integer( signed(address_to_encode) - signed('0' & i_data(6 downto 0)));

            if  ( address_offset >= 0 ) and ( address_offset < 4 ) then
                is_to_encode := 1;

                -- encode
                if address_offset = 0 then
                    o_data <= '1' & current_memory_address(2 downto 0) & "0001";
                elsif address_offset = 1 then
                    o_data <= '1' & current_memory_address(2 downto 0) & "0010";
                elsif address_offset = 2 then
                    o_data <= '1' & current_memory_address(2 downto 0) & "0100";
                else
                    o_data <= '1' & current_memory_address(2 downto 0) & "1000";
                end if;

            else
                is_to_encode := 0;
                o_data <= address_to_encode;
            end if;
        end procedure;

    begin
        if i_rst = '1' then
            current_state <= rst_state;

        elsif rising_edge(i_clk) then

            case current_state is

                when rst_state =>
                    current_state <= rst_state;
                    is_to_encode := 0;
                    current_memory_address <= address;

                    -- reset outputs
                    o_address <= address;
                    o_done <= '0';
                    o_en <= '0';
                    o_we <= '0';
                    o_data <= "00000000";

                    if i_start = '1' then
                        o_en <= '1';
                        current_state <= wait_i_data_change;
                        next_state <= read_mem_state;
                    end if;


                when read_mem_state =>
                    -- lettura indirizzo de codificare
                    if current_memory_address = address then
                        address_to_encode <= '0' & i_data(6 downto 0);

                        o_address <= current_memory_address - memory_offset;
                        current_memory_address <= current_memory_address - memory_offset;

                        current_state <= wait_i_data_change;
                        next_state <= read_mem_state;

                    elsif current_memory_address = base_memory then
                         encode_address;

                         o_en <= '1';
                         o_we <= '1';
                         o_address <= address_to_write;
                         current_state <= write_mem_state;

                    else
                        encode_address;

                        -- Go to next state
                        if is_to_encode = 1 then
                            o_en <= '1';
                            o_we <= '1';
                            o_address <= address_to_write;

                            current_state <= write_mem_state;

                        else
                            o_address <= current_memory_address - memory_offset;
                            current_memory_address <= current_memory_address - memory_offset;

                            current_state <= wait_i_data_change;
                            next_state <= read_mem_state;
                        end if;
                    end if;


                when wait_i_data_change => -- wait a clock period in order to read the correct i_data value
                    current_state <= next_state;

                when write_mem_state =>
                    current_state <= end_state;

                when end_state =>
                    if i_start = '0' then
                        o_done <= '0';
                        current_state <= rst_state;
                    else
                        o_done <= '1';
                        o_en <= '0';
                        o_we <= '0';
                    end if;
            end case;

        end if;
    end process main;

end Behavioral;
