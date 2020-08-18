library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY esempio17 IS
END esempio17;

ARCHITECTURE testbench_arch OF esempio17 IS
  COMPONENT esempio15 IS
    port(
      i:  in std_logic;
      clk:  in std_logic;
      rst:  in std_logic;
      o:  out std_logic
    );
  END COMPONENT;

  CONSTANT clk_period : time := 1 ns;

  SIGNAL clk : std_logic := '0';
  SIGNAL rst : std_logic := '1';
  SIGNAL i : std_logic := '0';
  SIGNAL o : std_logic := '0';

BEGIN

  es15: esempio15
    PORT MAP(i, clk, rst, o);

  clk_process: PROCESS
  BEGIN
    clk <= '0';
    WAIT FOR clk_period/2;
    clk <= '1';
    WAIT FOR clk_period/2;
  END PROCESS;

  stimula_process: PROCESS
  BEGIN
    WAIT FOR clk_period;
    rst <= '0';
    i <= '0';
    WAIT FOR clk_period;
    i <= '0';
    WAIT FOR clk_period;
    i <= '0';
    WAIT FOR clk_period;
    i <= '1';
    WAIT FOR clk_period;
    i <= '0';
    WAIT FOR clk_period;
    i <= '1';
    WAIT FOR clk_period;
    i <= '1';
    WAIT FOR clk_period;
    ASSERT(FALSE) REPORT "Simulation OK." SEVERITY FAILURE;
  END PROCESS;

END testbench_arch;
