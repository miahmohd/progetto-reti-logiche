----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.12.2018 14:43:00
-- Design Name: 
-- Module Name: bench - Behavioral
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

entity bench is
--  Port ( );
end bench;

architecture Behavioral of bench is

  COMPONENT code IS
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

begin

es15: code
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

end Behavioral;
