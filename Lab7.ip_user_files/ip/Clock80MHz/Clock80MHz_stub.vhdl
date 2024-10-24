-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Oct 22 14:34:08 2024
-- Host        : archlinux running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/beandog/433/ECE433-Lab7/Lab7.gen/sources_1/ip/Clock80MHz/Clock80MHz_stub.vhdl
-- Design      : Clock80MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clock80MHz is
  Port ( 
    clk_out80MHz : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in100MHz : in STD_LOGIC
  );

end Clock80MHz;

architecture stub of Clock80MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out80MHz,locked,clk_in100MHz";
begin
end;
