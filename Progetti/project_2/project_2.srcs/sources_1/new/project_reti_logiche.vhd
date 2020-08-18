----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: Miah Mohd Ehtesham
-- Codice persona: 10583195
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package my_constants is

    constant memory_0 : std_logic_vector := "0000000000000000" ;
    constant memory_1 : std_logic_vector := "0000000000000001" ;
    constant memory_2 : std_logic_vector := "0000000000000010" ;
    constant memory_3 : std_logic_vector := "0000000000000011" ;
    constant memory_4 : std_logic_vector := "0000000000000100" ;
    constant memory_5 : std_logic_vector := "0000000000000101" ;
    constant memory_6 : std_logic_vector := "0000000000000110" ;
    constant memory_7 : std_logic_vector := "0000000000000111" ;
    constant memory_8 : std_logic_vector := "0000000000001000" ;
    constant memory_9 : std_logic_vector := "0000000000001001" ;

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

    type state is (rst_state, read_mem_state, write_mem_state, end_state);

    signal current_state            : state := rst_state;

    signal current_memory_address   : std_logic_vector(15 downto 0);
    signal address_to_encode        : std_logic_vector(7 downto 0);

begin

    main: process(i_clk, i_rst) is

        variable is_to_encode             : integer range 0 to 1;
        variable address_offset           : integer range 0 to 255;

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


        procedure go_to_next_state (constant next_memory : std_logic_vector(15 downto 0)) is
        begin
            if is_to_encode = 1 then
                o_en <= '1';
                o_we <= '1';
                o_address <= memory_9;

                current_state <= write_mem_state;
            else
                current_memory_address <= next_memory;
                o_address <= next_memory;
            end if;
        end procedure;



    begin
        if i_rst = '1' then
            current_state <= rst_state;

        elsif i_clk'event and i_clk = '0' then

            case current_state is

                when rst_state =>
                    current_state <= rst_state;
                    is_to_encode := 0;
                    current_memory_address <= memory_8;

                    -- reset outputs
                    o_address <= memory_8;
                    o_done <= '0';
                    o_en <= '0';
                    o_we <= '0';
                    o_data <= "00000000";

                    if i_start = '1' then
                        o_en <= '1';
                        current_state <= read_mem_state;
                    end if;


                when read_mem_state =>
                    -- lettura indirizzo de codificare
                    if current_memory_address = memory_8 then
                        address_to_encode <= '0' & i_data(6 downto 0);

                        current_memory_address <= memory_7;
                        o_address <= memory_7;

                    elsif current_memory_address = memory_7 then
                        encode_address;
                        go_to_next_state(memory_6);


                    elsif current_memory_address = memory_6 then
                        encode_address;
                        go_to_next_state(memory_5);


                    elsif current_memory_address = memory_5 then
                        encode_address;
                        go_to_next_state(memory_4);


                    elsif current_memory_address = memory_4 then
                        encode_address;
                        go_to_next_state(memory_3);


                    elsif current_memory_address = memory_3 then
                        encode_address;
                        go_to_next_state(memory_2);


                    elsif current_memory_address = memory_2 then
                        encode_address;
                        go_to_next_state(memory_1);


                    elsif current_memory_address = memory_1 then
                        encode_address;
                        go_to_next_state(memory_0);


                    elsif current_memory_address = memory_0 then
                        encode_address;

                        o_en <= '1';
                        o_we <= '1';
                        o_address <= memory_9;

                        current_state <= write_mem_state;

                    end if;

                when write_mem_state =>
                    o_done <= '1';
                    o_en <= '0';
                    o_we <= '0';
                    current_state <= end_state;

                when end_state =>
                    if i_start = '0' then
                        o_done <= '0';
                        current_state <= rst_state;
                    else
                        o_done <= '1';
                    end if;
            end case;

        end if;
    end process main;


end Behavioral;
