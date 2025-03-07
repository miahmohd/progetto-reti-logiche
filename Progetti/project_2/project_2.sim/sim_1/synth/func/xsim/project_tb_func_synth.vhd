-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Aug 31 21:24:00 2020
-- Host        : Miah-Desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/miah-/Documents/Polimi/Progetto-reti-logiche/Progetti/project_2/project_2.sim/sim_1/synth/func/xsim/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal address_to_encode : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal address_to_encode0 : STD_LOGIC;
  signal current_memory_address0 : STD_LOGIC;
  signal \current_memory_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_2_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_3_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_4_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_4_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_6_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_7_n_0\ : STD_LOGIC;
  signal \current_memory_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_3_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_4_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_2_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_3_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_4_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[10]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[11]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[12]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[13]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[14]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[15]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[3]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[4]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[5]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[6]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[7]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[8]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[9]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal o_address0 : STD_LOGIC;
  signal \o_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[15]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[3]_i_2_n_0\ : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_data0 : STD_LOGIC;
  signal \o_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \o_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_7_n_0\ : STD_LOGIC;
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \o_data_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal o_done0 : STD_LOGIC;
  signal o_done_OBUF : STD_LOGIC;
  signal o_done_i_2_n_0 : STD_LOGIC;
  signal o_en0 : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_i_2_n_0 : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_we_i_1_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_current_memory_address_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_current_memory_address_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_data_reg[7]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_o_data_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_memory_address[15]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_state[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_state[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_address[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_address[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_data[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_data[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of o_en_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_we_i_1 : label is "soft_lutpair1";
begin
\address_to_encode[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state[0]_i_3_n_0\,
      I2 => \current_memory_address_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[1]\,
      I4 => i_rst_IBUF,
      O => address_to_encode0
    );
\address_to_encode_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => address_to_encode0,
      D => i_data_IBUF(0),
      Q => address_to_encode(0),
      R => '0'
    );
\address_to_encode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => address_to_encode0,
      D => i_data_IBUF(1),
      Q => address_to_encode(1),
      R => '0'
    );
\address_to_encode_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => address_to_encode0,
      D => i_data_IBUF(2),
      Q => address_to_encode(2),
      R => '0'
    );
\address_to_encode_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => address_to_encode0,
      D => i_data_IBUF(3),
      Q => address_to_encode(3),
      R => '0'
    );
\address_to_encode_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => address_to_encode0,
      D => i_data_IBUF(4),
      Q => address_to_encode(4),
      R => '0'
    );
\address_to_encode_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => address_to_encode0,
      D => i_data_IBUF(5),
      Q => address_to_encode(5),
      R => '0'
    );
\address_to_encode_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => address_to_encode0,
      D => i_data_IBUF(6),
      Q => address_to_encode(6),
      R => '0'
    );
\current_memory_address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data0(4),
      O => \current_memory_address[0]_i_1_n_0\
    );
\current_memory_address[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[12]\,
      O => \current_memory_address[12]_i_2_n_0\
    );
\current_memory_address[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[11]\,
      O => \current_memory_address[12]_i_3_n_0\
    );
\current_memory_address[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[10]\,
      O => \current_memory_address[12]_i_4_n_0\
    );
\current_memory_address[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[9]\,
      O => \current_memory_address[12]_i_5_n_0\
    );
\current_memory_address[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => i_rst_IBUF,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      O => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000B"
    )
        port map (
      I0 => \current_memory_address[15]_i_4_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => i_rst_IBUF,
      I4 => \current_state_reg_n_0_[2]\,
      O => current_memory_address0
    );
\current_memory_address[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state[0]_i_3_n_0\,
      I2 => \current_memory_address_reg_n_0_[3]\,
      O => \current_memory_address[15]_i_4_n_0\
    );
\current_memory_address[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[15]\,
      O => \current_memory_address[15]_i_5_n_0\
    );
\current_memory_address[15]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[14]\,
      O => \current_memory_address[15]_i_6_n_0\
    );
\current_memory_address[15]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[13]\,
      O => \current_memory_address[15]_i_7_n_0\
    );
\current_memory_address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8F00"
    )
        port map (
      I0 => minusOp(3),
      I1 => \current_memory_address[15]_i_4_n_0\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => o_address0,
      I4 => \current_memory_address_reg_n_0_[3]\,
      O => \current_memory_address[3]_i_1_n_0\
    );
\current_memory_address[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[4]\,
      O => \current_memory_address[4]_i_2_n_0\
    );
\current_memory_address[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[3]\,
      O => \current_memory_address[4]_i_3_n_0\
    );
\current_memory_address[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data0(6),
      O => \current_memory_address[4]_i_4_n_0\
    );
\current_memory_address[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data0(5),
      O => \current_memory_address[4]_i_5_n_0\
    );
\current_memory_address[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[8]\,
      O => \current_memory_address[8]_i_2_n_0\
    );
\current_memory_address[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[7]\,
      O => \current_memory_address[8]_i_3_n_0\
    );
\current_memory_address[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[6]\,
      O => \current_memory_address[8]_i_4_n_0\
    );
\current_memory_address[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[5]\,
      O => \current_memory_address[8]_i_5_n_0\
    );
\current_memory_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[0]_i_1_n_0\,
      Q => data0(4),
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(10),
      Q => \current_memory_address_reg_n_0_[10]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(11),
      Q => \current_memory_address_reg_n_0_[11]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(12),
      Q => \current_memory_address_reg_n_0_[12]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_memory_address_reg[8]_i_1_n_0\,
      CO(3) => \current_memory_address_reg[12]_i_1_n_0\,
      CO(2) => \current_memory_address_reg[12]_i_1_n_1\,
      CO(1) => \current_memory_address_reg[12]_i_1_n_2\,
      CO(0) => \current_memory_address_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \current_memory_address_reg_n_0_[12]\,
      DI(2) => \current_memory_address_reg_n_0_[11]\,
      DI(1) => \current_memory_address_reg_n_0_[10]\,
      DI(0) => \current_memory_address_reg_n_0_[9]\,
      O(3 downto 0) => minusOp(12 downto 9),
      S(3) => \current_memory_address[12]_i_2_n_0\,
      S(2) => \current_memory_address[12]_i_3_n_0\,
      S(1) => \current_memory_address[12]_i_4_n_0\,
      S(0) => \current_memory_address[12]_i_5_n_0\
    );
\current_memory_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(13),
      Q => \current_memory_address_reg_n_0_[13]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(14),
      Q => \current_memory_address_reg_n_0_[14]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(15),
      Q => \current_memory_address_reg_n_0_[15]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_memory_address_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_current_memory_address_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \current_memory_address_reg[15]_i_3_n_2\,
      CO(0) => \current_memory_address_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \current_memory_address_reg_n_0_[14]\,
      DI(0) => \current_memory_address_reg_n_0_[13]\,
      O(3) => \NLW_current_memory_address_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => minusOp(15 downto 13),
      S(3) => '0',
      S(2) => \current_memory_address[15]_i_5_n_0\,
      S(1) => \current_memory_address[15]_i_6_n_0\,
      S(0) => \current_memory_address[15]_i_7_n_0\
    );
\current_memory_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(1),
      Q => data0(5),
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(2),
      Q => data0(6),
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \current_memory_address[3]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[3]\,
      R => '0'
    );
\current_memory_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(4),
      Q => \current_memory_address_reg_n_0_[4]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \current_memory_address_reg[4]_i_1_n_0\,
      CO(2) => \current_memory_address_reg[4]_i_1_n_1\,
      CO(1) => \current_memory_address_reg[4]_i_1_n_2\,
      CO(0) => \current_memory_address_reg[4]_i_1_n_3\,
      CYINIT => data0(4),
      DI(3) => \current_memory_address_reg_n_0_[4]\,
      DI(2) => \current_memory_address_reg_n_0_[3]\,
      DI(1 downto 0) => data0(6 downto 5),
      O(3 downto 0) => minusOp(4 downto 1),
      S(3) => \current_memory_address[4]_i_2_n_0\,
      S(2) => \current_memory_address[4]_i_3_n_0\,
      S(1) => \current_memory_address[4]_i_4_n_0\,
      S(0) => \current_memory_address[4]_i_5_n_0\
    );
\current_memory_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(5),
      Q => \current_memory_address_reg_n_0_[5]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(6),
      Q => \current_memory_address_reg_n_0_[6]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(7),
      Q => \current_memory_address_reg_n_0_[7]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(8),
      Q => \current_memory_address_reg_n_0_[8]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_memory_address_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_memory_address_reg[4]_i_1_n_0\,
      CO(3) => \current_memory_address_reg[8]_i_1_n_0\,
      CO(2) => \current_memory_address_reg[8]_i_1_n_1\,
      CO(1) => \current_memory_address_reg[8]_i_1_n_2\,
      CO(0) => \current_memory_address_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \current_memory_address_reg_n_0_[8]\,
      DI(2) => \current_memory_address_reg_n_0_[7]\,
      DI(1) => \current_memory_address_reg_n_0_[6]\,
      DI(0) => \current_memory_address_reg_n_0_[5]\,
      O(3 downto 0) => minusOp(8 downto 5),
      S(3) => \current_memory_address[8]_i_2_n_0\,
      S(2) => \current_memory_address[8]_i_3_n_0\,
      S(1) => \current_memory_address[8]_i_4_n_0\,
      S(0) => \current_memory_address[8]_i_5_n_0\
    );
\current_memory_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => minusOp(9),
      Q => \current_memory_address_reg_n_0_[9]\,
      R => \current_memory_address[15]_i_1_n_0\
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAFFEA"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \current_state[0]_i_3_n_0\,
      I2 => \o_data[7]_i_2_n_0\,
      I3 => \current_state[0]_i_4_n_0\,
      I4 => \current_state_reg_n_0_[1]\,
      I5 => \current_state_reg_n_0_[2]\,
      O => current_state(0)
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200020"
    )
        port map (
      I0 => \next_state__0\(0),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => i_start_IBUF,
      O => \current_state[0]_i_2_n_0\
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \current_state[0]_i_5_n_0\,
      I1 => \current_state[0]_i_6_n_0\,
      I2 => \current_memory_address_reg_n_0_[15]\,
      I3 => \current_memory_address_reg_n_0_[14]\,
      I4 => data0(4),
      I5 => \current_state[0]_i_7_n_0\,
      O => \current_state[0]_i_3_n_0\
    );
\current_state[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state[0]_i_3_n_0\,
      I2 => \current_memory_address_reg_n_0_[3]\,
      O => \current_state[0]_i_4_n_0\
    );
\current_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[7]\,
      I1 => \current_memory_address_reg_n_0_[6]\,
      I2 => \current_memory_address_reg_n_0_[9]\,
      I3 => \current_memory_address_reg_n_0_[8]\,
      O => \current_state[0]_i_5_n_0\
    );
\current_state[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data0(6),
      I1 => data0(5),
      I2 => \current_memory_address_reg_n_0_[5]\,
      I3 => \current_memory_address_reg_n_0_[4]\,
      O => \current_state[0]_i_6_n_0\
    );
\current_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[11]\,
      I1 => \current_memory_address_reg_n_0_[10]\,
      I2 => \current_memory_address_reg_n_0_[13]\,
      I3 => \current_memory_address_reg_n_0_[12]\,
      O => \current_state[0]_i_7_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA32"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[2]\,
      O => current_state(1)
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \current_state_reg_n_0_[2]\,
      O => \current_state[2]_i_1_n_0\
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => i_start_IBUF,
      O => current_state(2)
    );
\current_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => current_state(0),
      Q => \current_state_reg_n_0_[0]\
    );
\current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => current_state(1),
      Q => \current_state_reg_n_0_[1]\
    );
\current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => current_state(2),
      Q => \current_state_reg_n_0_[2]\
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF040"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => i_start_IBUF,
      I2 => o_address0,
      I3 => \o_address[15]_i_2_n_0\,
      I4 => \next_state__0\(0),
      O => \next_state[0]_i_1_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \next_state[0]_i_1_n_0\,
      Q => \next_state__0\(0),
      R => '0'
    );
\o_address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => data0(4),
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \o_data[7]_i_2_n_0\,
      O => \o_address[0]_i_1_n_0\
    );
\o_address[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => i_rst_IBUF,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \o_address[15]_i_2_n_0\,
      O => \o_address[15]_i_1_n_0\
    );
\o_address[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC00"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_memory_address_reg_n_0_[3]\,
      I2 => \current_state[0]_i_3_n_0\,
      I3 => \current_state_reg_n_0_[0]\,
      O => \o_address[15]_i_2_n_0\
    );
\o_address[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => i_rst_IBUF,
      I2 => \current_state_reg_n_0_[2]\,
      O => o_address0
    );
\o_address[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_memory_address[15]_i_4_n_0\,
      I2 => minusOp(3),
      O => \o_address[3]_i_2_n_0\
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(11),
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(12),
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(13),
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(14),
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(15),
      O => o_address(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => \o_address[0]_i_1_n_0\,
      Q => o_address_OBUF(0),
      R => '0'
    );
\o_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(10),
      Q => o_address_OBUF(10),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(11),
      Q => o_address_OBUF(11),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(12),
      Q => o_address_OBUF(12),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(13),
      Q => o_address_OBUF(13),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(14),
      Q => o_address_OBUF(14),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(15),
      Q => o_address_OBUF(15),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(1),
      Q => o_address_OBUF(1),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(2),
      Q => o_address_OBUF(2),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => \o_address[3]_i_2_n_0\,
      Q => o_address_OBUF(3),
      R => '0'
    );
\o_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(4),
      Q => o_address_OBUF(4),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(5),
      Q => o_address_OBUF(5),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(6),
      Q => o_address_OBUF(6),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(7),
      Q => o_address_OBUF(7),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(8),
      Q => o_address_OBUF(8),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_address0,
      D => minusOp(9),
      Q => o_address_OBUF(9),
      R => \o_address[15]_i_1_n_0\
    );
\o_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080808080FF80"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => address_to_encode(0),
      I3 => \o_data[7]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \o_data[0]_i_1_n_0\
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080FF808080"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => address_to_encode(1),
      I3 => \o_data[7]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \o_data[1]_i_1_n_0\
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080FF808080"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => address_to_encode(2),
      I3 => \o_data[7]_i_2_n_0\,
      I4 => sel0(1),
      I5 => sel0(0),
      O => \o_data[2]_i_1_n_0\
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => address_to_encode(3),
      I3 => \o_data[7]_i_2_n_0\,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \o_data[3]_i_1_n_0\
    );
\o_data[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(3),
      I1 => i_data_IBUF(3),
      O => \o_data[3]_i_3_n_0\
    );
\o_data[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(2),
      I1 => i_data_IBUF(2),
      O => \o_data[3]_i_4_n_0\
    );
\o_data[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(1),
      I1 => i_data_IBUF(1),
      O => \o_data[3]_i_5_n_0\
    );
\o_data[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(0),
      I1 => i_data_IBUF(0),
      O => \o_data[3]_i_6_n_0\
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => address_to_encode(4),
      I3 => data0(4),
      I4 => \o_data[7]_i_2_n_0\,
      O => \o_data[4]_i_1_n_0\
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => address_to_encode(5),
      I3 => data0(5),
      I4 => \o_data[7]_i_2_n_0\,
      O => \o_data[5]_i_1_n_0\
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => address_to_encode(6),
      I3 => data0(6),
      I4 => \o_data[7]_i_2_n_0\,
      O => \o_data[6]_i_1_n_0\
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000DF"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_state[0]_i_3_n_0\,
      I2 => \current_memory_address_reg_n_0_[3]\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => i_rst_IBUF,
      I5 => \current_state_reg_n_0_[1]\,
      O => o_data0
    );
\o_data[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \o_data[7]_i_3_n_0\,
      O => \o_data[7]_i_2_n_0\
    );
\o_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => sel0(6),
      I1 => \o_data_reg[7]_i_4_n_0\,
      I2 => sel0(4),
      I3 => sel0(5),
      I4 => sel0(3),
      I5 => sel0(2),
      O => \o_data[7]_i_3_n_0\
    );
\o_data[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(6),
      I1 => i_data_IBUF(6),
      O => \o_data[7]_i_5_n_0\
    );
\o_data[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(5),
      I1 => i_data_IBUF(5),
      O => \o_data[7]_i_6_n_0\
    );
\o_data[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(4),
      I1 => i_data_IBUF(4),
      O => \o_data[7]_i_7_n_0\
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
\o_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[0]_i_1_n_0\,
      Q => o_data_OBUF(0),
      R => '0'
    );
\o_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[1]_i_1_n_0\,
      Q => o_data_OBUF(1),
      R => '0'
    );
\o_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[2]_i_1_n_0\,
      Q => o_data_OBUF(2),
      R => '0'
    );
\o_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[3]_i_1_n_0\,
      Q => o_data_OBUF(3),
      R => '0'
    );
\o_data_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_data_reg[3]_i_2_n_0\,
      CO(2) => \o_data_reg[3]_i_2_n_1\,
      CO(1) => \o_data_reg[3]_i_2_n_2\,
      CO(0) => \o_data_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => address_to_encode(3 downto 0),
      O(3 downto 0) => sel0(3 downto 0),
      S(3) => \o_data[3]_i_3_n_0\,
      S(2) => \o_data[3]_i_4_n_0\,
      S(1) => \o_data[3]_i_5_n_0\,
      S(0) => \o_data[3]_i_6_n_0\
    );
\o_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[4]_i_1_n_0\,
      Q => o_data_OBUF(4),
      R => '0'
    );
\o_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[5]_i_1_n_0\,
      Q => o_data_OBUF(5),
      R => '0'
    );
\o_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[6]_i_1_n_0\,
      Q => o_data_OBUF(6),
      R => '0'
    );
\o_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[7]_i_2_n_0\,
      Q => o_data_OBUF(7),
      R => '0'
    );
\o_data_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data_reg[3]_i_2_n_0\,
      CO(3) => \o_data_reg[7]_i_4_n_0\,
      CO(2) => \NLW_o_data_reg[7]_i_4_CO_UNCONNECTED\(2),
      CO(1) => \o_data_reg[7]_i_4_n_2\,
      CO(0) => \o_data_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => address_to_encode(6 downto 4),
      O(3) => \NLW_o_data_reg[7]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => sel0(6 downto 4),
      S(3) => '1',
      S(2) => \o_data[7]_i_5_n_0\,
      S(1) => \o_data[7]_i_6_n_0\,
      S(0) => \o_data[7]_i_7_n_0\
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => i_rst_IBUF,
      I2 => \current_state_reg_n_0_[0]\,
      O => o_done0
    );
o_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => i_start_IBUF,
      O => o_done_i_2_n_0
    );
o_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_done0,
      D => o_done_i_2_n_0,
      Q => o_done_OBUF,
      R => '0'
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101110111011"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => i_start_IBUF,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \current_memory_address[15]_i_4_n_0\,
      O => o_en0
    );
o_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E0F0E"
    )
        port map (
      I0 => \current_state[0]_i_4_n_0\,
      I1 => \o_data[7]_i_2_n_0\,
      I2 => \current_state_reg_n_0_[2]\,
      I3 => i_start_IBUF,
      I4 => \current_state_reg_n_0_[0]\,
      O => o_en_i_2_n_0
    );
o_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_en0,
      D => o_en_i_2_n_0,
      Q => o_en_OBUF,
      R => '0'
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
o_we_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \current_state[0]_i_4_n_0\,
      I1 => \o_data[7]_i_2_n_0\,
      O => o_we_i_1_n_0
    );
o_we_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_en0,
      D => o_we_i_1_n_0,
      Q => o_we_OBUF,
      R => '0'
    );
end STRUCTURE;
