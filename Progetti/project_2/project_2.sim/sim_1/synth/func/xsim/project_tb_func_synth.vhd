-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug 20 22:32:31 2020
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
  signal \address_to_encode[6]_i_2_n_0\ : STD_LOGIC;
  signal \address_to_encode[6]_i_3_n_0\ : STD_LOGIC;
  signal \address_to_encode[6]_i_4_n_0\ : STD_LOGIC;
  signal \address_to_encode[6]_i_5_n_0\ : STD_LOGIC;
  signal current_memory_address0 : STD_LOGIC;
  signal \current_memory_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_3_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_4_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address[12]_i_6_n_0\ : STD_LOGIC;
  signal \current_memory_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[14]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_2_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_3_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_6_n_0\ : STD_LOGIC;
  signal \current_memory_address[15]_i_7_n_0\ : STD_LOGIC;
  signal \current_memory_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_3_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_4_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address[4]_i_6_n_0\ : STD_LOGIC;
  signal \current_memory_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_3_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_4_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_5_n_0\ : STD_LOGIC;
  signal \current_memory_address[8]_i_6_n_0\ : STD_LOGIC;
  signal \current_memory_address[9]_i_1_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \current_memory_address_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[10]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[11]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[12]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[13]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[14]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[15]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_memory_address_reg_n_0_[2]\ : STD_LOGIC;
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
  signal \current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal next_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[3]_i_2_n_0\ : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_data0 : STD_LOGIC;
  signal \o_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_10_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_11_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_12_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_7_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_8_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_9_n_0\ : STD_LOGIC;
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_data_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_4\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal \o_data_reg[7]_i_4_n_7\ : STD_LOGIC;
  signal \o_data_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \o_data_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \o_data_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal \o_data_reg[7]_i_5_n_5\ : STD_LOGIC;
  signal \o_data_reg[7]_i_5_n_6\ : STD_LOGIC;
  signal \o_data_reg[7]_i_5_n_7\ : STD_LOGIC;
  signal o_done0 : STD_LOGIC;
  signal o_done_OBUF : STD_LOGIC;
  signal o_done_i_2_n_0 : STD_LOGIC;
  signal o_en0 : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_i_2_n_0 : STD_LOGIC;
  signal o_en_i_3_n_0 : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_we_i_1_n_0 : STD_LOGIC;
  signal \NLW_current_memory_address_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_current_memory_address_reg[15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_data_reg[7]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_o_data_reg[7]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_memory_address[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current_memory_address[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_memory_address[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_memory_address[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_memory_address[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_memory_address[14]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \current_memory_address[15]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_memory_address[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current_memory_address[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_memory_address[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_memory_address[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current_memory_address[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current_memory_address[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_memory_address[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_memory_address[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \current_memory_address[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \current_state[0]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current_state[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_state[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \next_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_address[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_address[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_data[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_data[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_data[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_data[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_data[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of o_done_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of o_en_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_we_i_1 : label is "soft_lutpair0";
begin
\address_to_encode[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => i_rst_IBUF,
      I3 => \address_to_encode[6]_i_2_n_0\,
      O => address_to_encode0
    );
\address_to_encode[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \address_to_encode[6]_i_3_n_0\,
      I1 => \current_memory_address_reg_n_0_[0]\,
      I2 => \current_memory_address_reg_n_0_[1]\,
      I3 => \current_memory_address_reg_n_0_[3]\,
      I4 => \current_memory_address_reg_n_0_[2]\,
      I5 => \address_to_encode[6]_i_4_n_0\,
      O => \address_to_encode[6]_i_2_n_0\
    );
\address_to_encode[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[14]\,
      I1 => \current_memory_address_reg_n_0_[13]\,
      I2 => \current_memory_address_reg_n_0_[15]\,
      I3 => \current_memory_address_reg_n_0_[12]\,
      I4 => \address_to_encode[6]_i_5_n_0\,
      O => \address_to_encode[6]_i_3_n_0\
    );
\address_to_encode[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[4]\,
      I1 => \current_memory_address_reg_n_0_[7]\,
      I2 => \current_memory_address_reg_n_0_[5]\,
      I3 => \current_memory_address_reg_n_0_[6]\,
      O => \address_to_encode[6]_i_4_n_0\
    );
\address_to_encode[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[8]\,
      I1 => \current_memory_address_reg_n_0_[11]\,
      I2 => \current_memory_address_reg_n_0_[9]\,
      I3 => \current_memory_address_reg_n_0_[10]\,
      O => \address_to_encode[6]_i_5_n_0\
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
\current_memory_address[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => \current_memory_address_reg_n_0_[0]\,
      O => \current_memory_address[0]_i_1_n_0\
    );
\current_memory_address[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(10),
      O => \current_memory_address[10]_i_1_n_0\
    );
\current_memory_address[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(11),
      O => \current_memory_address[11]_i_1_n_0\
    );
\current_memory_address[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(12),
      O => \current_memory_address[12]_i_1_n_0\
    );
\current_memory_address[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[12]\,
      O => \current_memory_address[12]_i_3_n_0\
    );
\current_memory_address[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[11]\,
      O => \current_memory_address[12]_i_4_n_0\
    );
\current_memory_address[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[10]\,
      O => \current_memory_address[12]_i_5_n_0\
    );
\current_memory_address[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[9]\,
      O => \current_memory_address[12]_i_6_n_0\
    );
\current_memory_address[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(13),
      O => \current_memory_address[13]_i_1_n_0\
    );
\current_memory_address[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(14),
      O => \current_memory_address[14]_i_1_n_0\
    );
\current_memory_address[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02AAAAAA"
    )
        port map (
      I0 => \o_address[3]_i_1_n_0\,
      I1 => \o_data[7]_i_3_n_0\,
      I2 => \current_memory_address[15]_i_3_n_0\,
      I3 => \address_to_encode[6]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[0]\,
      O => current_memory_address0
    );
\current_memory_address[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(15),
      O => \current_memory_address[15]_i_2_n_0\
    );
\current_memory_address[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \address_to_encode[6]_i_3_n_0\,
      I1 => \current_memory_address_reg_n_0_[0]\,
      I2 => \current_memory_address_reg_n_0_[1]\,
      I3 => \current_memory_address_reg_n_0_[2]\,
      I4 => \current_memory_address_reg_n_0_[3]\,
      I5 => \address_to_encode[6]_i_4_n_0\,
      O => \current_memory_address[15]_i_3_n_0\
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
\current_memory_address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(1),
      O => \current_memory_address[1]_i_1_n_0\
    );
\current_memory_address[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(2),
      O => \current_memory_address[2]_i_1_n_0\
    );
\current_memory_address[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => minusOp(3),
      I1 => \current_state_reg_n_0_[0]\,
      O => \current_memory_address[3]_i_1_n_0\
    );
\current_memory_address[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(4),
      O => \current_memory_address[4]_i_1_n_0\
    );
\current_memory_address[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[4]\,
      O => \current_memory_address[4]_i_3_n_0\
    );
\current_memory_address[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[3]\,
      O => \current_memory_address[4]_i_4_n_0\
    );
\current_memory_address[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[2]\,
      O => \current_memory_address[4]_i_5_n_0\
    );
\current_memory_address[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[1]\,
      O => \current_memory_address[4]_i_6_n_0\
    );
\current_memory_address[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(5),
      O => \current_memory_address[5]_i_1_n_0\
    );
\current_memory_address[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(6),
      O => \current_memory_address[6]_i_1_n_0\
    );
\current_memory_address[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(7),
      O => \current_memory_address[7]_i_1_n_0\
    );
\current_memory_address[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(8),
      O => \current_memory_address[8]_i_1_n_0\
    );
\current_memory_address[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[8]\,
      O => \current_memory_address[8]_i_3_n_0\
    );
\current_memory_address[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[7]\,
      O => \current_memory_address[8]_i_4_n_0\
    );
\current_memory_address[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[6]\,
      O => \current_memory_address[8]_i_5_n_0\
    );
\current_memory_address[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[5]\,
      O => \current_memory_address[8]_i_6_n_0\
    );
\current_memory_address[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(9),
      O => \current_memory_address[9]_i_1_n_0\
    );
\current_memory_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[0]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[0]\,
      R => '0'
    );
\current_memory_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[10]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[10]\,
      R => '0'
    );
\current_memory_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[11]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[11]\,
      R => '0'
    );
\current_memory_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[12]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[12]\,
      R => '0'
    );
\current_memory_address_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_memory_address_reg[8]_i_2_n_0\,
      CO(3) => \current_memory_address_reg[12]_i_2_n_0\,
      CO(2) => \current_memory_address_reg[12]_i_2_n_1\,
      CO(1) => \current_memory_address_reg[12]_i_2_n_2\,
      CO(0) => \current_memory_address_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \current_memory_address_reg_n_0_[12]\,
      DI(2) => \current_memory_address_reg_n_0_[11]\,
      DI(1) => \current_memory_address_reg_n_0_[10]\,
      DI(0) => \current_memory_address_reg_n_0_[9]\,
      O(3 downto 0) => minusOp(12 downto 9),
      S(3) => \current_memory_address[12]_i_3_n_0\,
      S(2) => \current_memory_address[12]_i_4_n_0\,
      S(1) => \current_memory_address[12]_i_5_n_0\,
      S(0) => \current_memory_address[12]_i_6_n_0\
    );
\current_memory_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[13]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[13]\,
      R => '0'
    );
\current_memory_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[14]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[14]\,
      R => '0'
    );
\current_memory_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[15]_i_2_n_0\,
      Q => \current_memory_address_reg_n_0_[15]\,
      R => '0'
    );
\current_memory_address_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_memory_address_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_current_memory_address_reg[15]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \current_memory_address_reg[15]_i_4_n_2\,
      CO(0) => \current_memory_address_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \current_memory_address_reg_n_0_[14]\,
      DI(0) => \current_memory_address_reg_n_0_[13]\,
      O(3) => \NLW_current_memory_address_reg[15]_i_4_O_UNCONNECTED\(3),
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
      D => \current_memory_address[1]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[1]\,
      R => '0'
    );
\current_memory_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[2]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[2]\,
      R => '0'
    );
\current_memory_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
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
      D => \current_memory_address[4]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[4]\,
      R => '0'
    );
\current_memory_address_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \current_memory_address_reg[4]_i_2_n_0\,
      CO(2) => \current_memory_address_reg[4]_i_2_n_1\,
      CO(1) => \current_memory_address_reg[4]_i_2_n_2\,
      CO(0) => \current_memory_address_reg[4]_i_2_n_3\,
      CYINIT => \current_memory_address_reg_n_0_[0]\,
      DI(3) => \current_memory_address_reg_n_0_[4]\,
      DI(2) => \current_memory_address_reg_n_0_[3]\,
      DI(1) => \current_memory_address_reg_n_0_[2]\,
      DI(0) => \current_memory_address_reg_n_0_[1]\,
      O(3 downto 0) => minusOp(4 downto 1),
      S(3) => \current_memory_address[4]_i_3_n_0\,
      S(2) => \current_memory_address[4]_i_4_n_0\,
      S(1) => \current_memory_address[4]_i_5_n_0\,
      S(0) => \current_memory_address[4]_i_6_n_0\
    );
\current_memory_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[5]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[5]\,
      R => '0'
    );
\current_memory_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[6]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[6]\,
      R => '0'
    );
\current_memory_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[7]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[7]\,
      R => '0'
    );
\current_memory_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[8]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[8]\,
      R => '0'
    );
\current_memory_address_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_memory_address_reg[4]_i_2_n_0\,
      CO(3) => \current_memory_address_reg[8]_i_2_n_0\,
      CO(2) => \current_memory_address_reg[8]_i_2_n_1\,
      CO(1) => \current_memory_address_reg[8]_i_2_n_2\,
      CO(0) => \current_memory_address_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \current_memory_address_reg_n_0_[8]\,
      DI(2) => \current_memory_address_reg_n_0_[7]\,
      DI(1) => \current_memory_address_reg_n_0_[6]\,
      DI(0) => \current_memory_address_reg_n_0_[5]\,
      O(3 downto 0) => minusOp(8 downto 5),
      S(3) => \current_memory_address[8]_i_3_n_0\,
      S(2) => \current_memory_address[8]_i_4_n_0\,
      S(1) => \current_memory_address[8]_i_5_n_0\,
      S(0) => \current_memory_address[8]_i_6_n_0\
    );
\current_memory_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => current_memory_address0,
      D => \current_memory_address[9]_i_1_n_0\,
      Q => \current_memory_address_reg_n_0_[9]\,
      R => '0'
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B88888BBB888"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => next_state(0),
      I3 => \current_state_reg_n_0_[1]\,
      I4 => \current_state_reg_n_0_[0]\,
      I5 => \current_state[0]_i_2_n_0\,
      O => current_state(0)
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555754"
    )
        port map (
      I0 => \o_data[7]_i_3_n_0\,
      I1 => \address_to_encode[6]_i_4_n_0\,
      I2 => \current_memory_address_reg_n_0_[2]\,
      I3 => \current_memory_address_reg_n_0_[3]\,
      I4 => \current_state[0]_i_3_n_0\,
      I5 => \address_to_encode[6]_i_3_n_0\,
      O => \current_state[0]_i_2_n_0\
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[1]\,
      I1 => \current_memory_address_reg_n_0_[0]\,
      O => \current_state[0]_i_3_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB10"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => i_start_IBUF,
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
      INIT => X"B888"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \current_state_reg_n_0_[2]\,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
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
\next_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => current_memory_address0,
      I3 => next_state(0),
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
      Q => next_state(0),
      R => '0'
    );
\o_address[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \current_memory_address_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[0]\,
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
      I3 => \current_state[0]_i_2_n_0\,
      O => \o_address[15]_i_1_n_0\
    );
\o_address[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \current_state_reg_n_0_[1]\,
      I1 => i_rst_IBUF,
      I2 => \current_state_reg_n_0_[2]\,
      O => \o_address[3]_i_1_n_0\
    );
\o_address[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => minusOp(3),
      I2 => \current_state[0]_i_2_n_0\,
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
      CE => \o_address[3]_i_1_n_0\,
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
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[10]_i_1_n_0\,
      Q => o_address_OBUF(10),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[11]_i_1_n_0\,
      Q => o_address_OBUF(11),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[12]_i_1_n_0\,
      Q => o_address_OBUF(12),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[13]_i_1_n_0\,
      Q => o_address_OBUF(13),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[14]_i_1_n_0\,
      Q => o_address_OBUF(14),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[15]_i_2_n_0\,
      Q => o_address_OBUF(15),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[1]_i_1_n_0\,
      Q => o_address_OBUF(1),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[2]_i_1_n_0\,
      Q => o_address_OBUF(2),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
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
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[4]_i_1_n_0\,
      Q => o_address_OBUF(4),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[5]_i_1_n_0\,
      Q => o_address_OBUF(5),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[6]_i_1_n_0\,
      Q => o_address_OBUF(6),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[7]_i_1_n_0\,
      Q => o_address_OBUF(7),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[8]_i_1_n_0\,
      Q => o_address_OBUF(8),
      R => \o_address[15]_i_1_n_0\
    );
\o_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_address[3]_i_1_n_0\,
      D => \current_memory_address[9]_i_1_n_0\,
      Q => o_address_OBUF(9),
      R => \o_address[15]_i_1_n_0\
    );
\o_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \o_data_reg[7]_i_4_n_6\,
      I1 => \o_data_reg[7]_i_4_n_7\,
      I2 => \o_data[7]_i_3_n_0\,
      I3 => address_to_encode(0),
      O => \o_data[0]_i_1_n_0\
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \o_data_reg[7]_i_4_n_7\,
      I1 => \o_data_reg[7]_i_4_n_6\,
      I2 => \o_data[7]_i_3_n_0\,
      I3 => address_to_encode(1),
      O => \o_data[1]_i_1_n_0\
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \o_data_reg[7]_i_4_n_6\,
      I1 => \o_data_reg[7]_i_4_n_7\,
      I2 => \o_data[7]_i_3_n_0\,
      I3 => address_to_encode(2),
      O => \o_data[2]_i_1_n_0\
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \o_data_reg[7]_i_4_n_6\,
      I1 => \o_data_reg[7]_i_4_n_7\,
      I2 => \o_data[7]_i_3_n_0\,
      I3 => address_to_encode(3),
      O => \o_data[3]_i_1_n_0\
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[0]\,
      I1 => \o_data[7]_i_3_n_0\,
      I2 => address_to_encode(4),
      O => \o_data[4]_i_1_n_0\
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[1]\,
      I1 => \o_data[7]_i_3_n_0\,
      I2 => address_to_encode(5),
      O => \o_data[5]_i_1_n_0\
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \current_memory_address_reg_n_0_[2]\,
      I1 => \o_data[7]_i_3_n_0\,
      I2 => address_to_encode(6),
      O => \o_data[6]_i_1_n_0\
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => i_rst_IBUF,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \current_state_reg_n_0_[0]\,
      O => \o_data[7]_i_1_n_0\
    );
\o_data[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(6),
      I1 => i_data_IBUF(6),
      O => \o_data[7]_i_10_n_0\
    );
\o_data[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(5),
      I1 => i_data_IBUF(5),
      O => \o_data[7]_i_11_n_0\
    );
\o_data[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(4),
      I1 => i_data_IBUF(4),
      O => \o_data[7]_i_12_n_0\
    );
\o_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000101"
    )
        port map (
      I0 => \current_state_reg_n_0_[2]\,
      I1 => i_rst_IBUF,
      I2 => \current_state_reg_n_0_[1]\,
      I3 => \address_to_encode[6]_i_2_n_0\,
      I4 => \current_state_reg_n_0_[0]\,
      O => o_data0
    );
\o_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \o_data_reg[7]_i_4_n_4\,
      I1 => \o_data_reg[7]_i_5_n_7\,
      I2 => \o_data_reg[7]_i_4_n_5\,
      I3 => \o_data_reg[7]_i_5_n_0\,
      I4 => \o_data_reg[7]_i_5_n_5\,
      I5 => \o_data_reg[7]_i_5_n_6\,
      O => \o_data[7]_i_3_n_0\
    );
\o_data[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(3),
      I1 => i_data_IBUF(3),
      O => \o_data[7]_i_6_n_0\
    );
\o_data[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(2),
      I1 => i_data_IBUF(2),
      O => \o_data[7]_i_7_n_0\
    );
\o_data[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(1),
      I1 => i_data_IBUF(1),
      O => \o_data[7]_i_8_n_0\
    );
\o_data[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => address_to_encode(0),
      I1 => i_data_IBUF(0),
      O => \o_data[7]_i_9_n_0\
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
      R => \o_data[7]_i_1_n_0\
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
      R => \o_data[7]_i_1_n_0\
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
      R => \o_data[7]_i_1_n_0\
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
      R => \o_data[7]_i_1_n_0\
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
      R => \o_data[7]_i_1_n_0\
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
      R => \o_data[7]_i_1_n_0\
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
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => o_data0,
      D => \o_data[7]_i_3_n_0\,
      Q => o_data_OBUF(7),
      R => \o_data[7]_i_1_n_0\
    );
\o_data_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_data_reg[7]_i_4_n_0\,
      CO(2) => \o_data_reg[7]_i_4_n_1\,
      CO(1) => \o_data_reg[7]_i_4_n_2\,
      CO(0) => \o_data_reg[7]_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => address_to_encode(3 downto 0),
      O(3) => \o_data_reg[7]_i_4_n_4\,
      O(2) => \o_data_reg[7]_i_4_n_5\,
      O(1) => \o_data_reg[7]_i_4_n_6\,
      O(0) => \o_data_reg[7]_i_4_n_7\,
      S(3) => \o_data[7]_i_6_n_0\,
      S(2) => \o_data[7]_i_7_n_0\,
      S(1) => \o_data[7]_i_8_n_0\,
      S(0) => \o_data[7]_i_9_n_0\
    );
\o_data_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data_reg[7]_i_4_n_0\,
      CO(3) => \o_data_reg[7]_i_5_n_0\,
      CO(2) => \NLW_o_data_reg[7]_i_5_CO_UNCONNECTED\(2),
      CO(1) => \o_data_reg[7]_i_5_n_2\,
      CO(0) => \o_data_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => address_to_encode(6 downto 4),
      O(3) => \NLW_o_data_reg[7]_i_5_O_UNCONNECTED\(3),
      O(2) => \o_data_reg[7]_i_5_n_5\,
      O(1) => \o_data_reg[7]_i_5_n_6\,
      O(0) => \o_data_reg[7]_i_5_n_7\,
      S(3) => '1',
      S(2) => \o_data[7]_i_10_n_0\,
      S(1) => \o_data[7]_i_11_n_0\,
      S(0) => \o_data[7]_i_12_n_0\
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => i_rst_IBUF,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[1]\,
      O => o_done0
    );
o_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \current_state_reg_n_0_[0]\,
      I1 => i_start_IBUF,
      I2 => \current_state_reg_n_0_[2]\,
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
o_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D3"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => \current_state_reg_n_0_[0]\,
      I3 => \current_state_reg_n_0_[2]\,
      I4 => i_rst_IBUF,
      O => o_en0
    );
o_en_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3022"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \current_state_reg_n_0_[1]\,
      I2 => o_en_i_3_n_0,
      I3 => \current_state_reg_n_0_[0]\,
      O => o_en_i_2_n_0
    );
o_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \address_to_encode[6]_i_4_n_0\,
      I1 => \current_memory_address_reg_n_0_[3]\,
      I2 => \current_memory_address_reg_n_0_[2]\,
      I3 => \current_state[0]_i_3_n_0\,
      I4 => \address_to_encode[6]_i_3_n_0\,
      I5 => \o_data[7]_i_3_n_0\,
      O => o_en_i_3_n_0
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
o_we_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => o_en_i_3_n_0,
      I1 => \current_state_reg_n_0_[0]\,
      I2 => \current_state_reg_n_0_[1]\,
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
