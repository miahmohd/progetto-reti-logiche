test_case = 1500
addrs_list = []
to_encode_list = []
expected_int_list = []

out = """
        library ieee;
        use ieee.std_logic_1164.all;
        use ieee.numeric_std.all;
        use ieee.std_logic_unsigned.all;

        entity project_tb is
        end project_tb;

        architecture projecttb of project_tb is
        constant c_CLOCK_PERIOD		: time := 100 ns;
        signal   tb_done		: std_logic;
        signal   mem_address		: std_logic_vector (15 downto 0) := (others => '0');
        signal   tb_rst	                : std_logic := '0';
        signal   tb_start		: std_logic := '0';
        signal   tb_clk		        : std_logic := '0';
        signal   mem_o_data,mem_i_data	: std_logic_vector (7 downto 0);
        signal   enable_wire  		: std_logic;
        signal   mem_we		        : std_logic;

        type ram_type is array (65535 downto 0) of std_logic_vector(7 downto 0);
        type int_arr is array (0 to {}) of integer range 0 to 255;
        """.format(test_case-1)




with open("out/15000_cases/ram_content.txt") as file:
    for i in range(test_case):
        addrs = [int(file.readline()) for x in range(8)]
        addrs_list.append(addrs)
        to_encode = int(file.readline())
        to_encode_list.append(to_encode)

        file.readline()  # butta lo 0
        expected_int = int(file.readline())
        expected_int_list.append(expected_int)

       # encoded = "{0:08b}".format(expected_int)  # int to byte


out += "shared variable addrs : int_arr :=" + str(tuple(to_encode_list)) +";\n"
out += "shared variable enc_addrs : int_arr :=" + str(tuple(expected_int_list)) +";\n"



out += """
shared variable i : integer range 0 to {} := 0;
shared variable is_next : integer range 0 to 3 := 0;

-- come da esempio su specifica
signal RAM: ram_type := (0 => std_logic_vector(to_unsigned({} , 8)),
                        1 => std_logic_vector(to_unsigned( {} , 8)),
                        2 => std_logic_vector(to_unsigned( {} , 8)),
                        3 => std_logic_vector(to_unsigned( {} , 8)),
                        4 => std_logic_vector(to_unsigned( {} , 8)),
                        5 => std_logic_vector(to_unsigned( {} , 8)),
                        6 => std_logic_vector(to_unsigned( {} , 8)),
                        7 => std_logic_vector(to_unsigned( {} , 8)),
                        8 => std_logic_vector(to_unsigned( {} , 8)),
            others => (others =>'0'));

component project_reti_logiche is
port (
    i_clk         : in  std_logic;
    i_start       : in  std_logic;
    i_rst         : in  std_logic;
    i_data        : in  std_logic_vector(7 downto 0);
    o_address     : out std_logic_vector(15 downto 0);
    o_done        : out std_logic;
    o_en          : out std_logic;
    o_we          : out std_logic;
    o_data        : out std_logic_vector (7 downto 0)
    );
end component project_reti_logiche;


begin
UUT: project_reti_logiche
port map (
        i_clk      	=> tb_clk,
        i_start       => tb_start,
        i_rst      	=> tb_rst,
        i_data    	=> mem_o_data,
        o_address  	=> mem_address,
        o_done      	=> tb_done,
        o_en   	=> enable_wire,
        o_we 		=> mem_we,
        o_data    	=> mem_i_data
        );

p_CLK_GEN : process is
begin
    wait for c_CLOCK_PERIOD/2;
    tb_clk <= not tb_clk;
end process p_CLK_GEN;

""".format(test_case+1,*addrs_list[0], to_encode_list[0])


out += """
MEM : process(tb_clk)
begin
    if tb_clk'event and tb_clk = '1' then
        if enable_wire = '1' then
            if mem_we = '1' then
                RAM(conv_integer(mem_address))  <= mem_i_data;
                mem_o_data                      <= mem_i_data after 1 ns;
            else
                mem_o_data <= RAM(conv_integer(mem_address)) after 1 ns;
            end if;
        end if;
"""

for i in range(test_case):
    if i>0:
        out += """
         if i={} and is_next=1 then
            RAM <= (0 => std_logic_vector(to_unsigned( {}, 8)),
                    1 => std_logic_vector(to_unsigned( {} , 8)),
                    2 => std_logic_vector(to_unsigned( {} , 8)),
                    3 => std_logic_vector(to_unsigned( {} , 8)),
                    4 => std_logic_vector(to_unsigned( {} , 8)),
                    5 => std_logic_vector(to_unsigned( {} , 8)),
                    6 => std_logic_vector(to_unsigned( {} , 8)),
                    7 => std_logic_vector(to_unsigned( {} , 8)),
                    8 => std_logic_vector(to_unsigned( addrs(i) , 8)),
        others => (others =>'0'));
    end if;
    """.format(i, *addrs_list[i])


out+="""
    end if;
end process;
"""





out+="""


test : process is
begin
if i < {} then
    wait for 100 ns;
    wait for c_CLOCK_PERIOD;
    tb_rst <= '1';
    wait for c_CLOCK_PERIOD;
    tb_rst <= '0';
    wait for c_CLOCK_PERIOD;
    tb_start <= '1';
    wait for c_CLOCK_PERIOD;
    wait until tb_done = '1';
    wait for c_CLOCK_PERIOD;
    tb_start <= '0';
    wait until tb_done = '0';

    -- Maschera di output = 0 - 129
    assert RAM(9) = std_logic_vector(to_unsigned( enc_addrs(i) , 8)) report "TEST FALLITO. Expected " & integer'image(enc_addrs(i)) & " found " & integer'image(to_integer(unsigned(RAM(9))))  severity failure;

    i := i+1;
    is_next := 1;

    wait for c_CLOCK_PERIOD;
    wait for c_CLOCK_PERIOD;

    is_next := 0;

    if i={} then
        assert false report "Simulation Ended!, TEST PASSATO" severity failure;
    end if;
end if;
end process test;

end projecttb;



""".format(test_case, test_case)

print(out)