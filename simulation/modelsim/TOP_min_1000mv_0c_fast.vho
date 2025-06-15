-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/27/2025 04:14:33"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	o : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END TOP;

-- Design Ports Information
-- o[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[4]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[6]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o[7]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o[0]~output_o\ : std_logic;
SIGNAL \o[1]~output_o\ : std_logic;
SIGNAL \o[2]~output_o\ : std_logic;
SIGNAL \o[3]~output_o\ : std_logic;
SIGNAL \o[4]~output_o\ : std_logic;
SIGNAL \o[5]~output_o\ : std_logic;
SIGNAL \o[6]~output_o\ : std_logic;
SIGNAL \o[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux14~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux6~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux9~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux14~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux14~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux7~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux15~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux15~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux15~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux15~5_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \offset_aux[1]~9_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[0]~17\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[1]~18_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[1]~feeder_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux1~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux1~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux23~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|s1~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|s1~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux3~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux3~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux3~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux3~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux5~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux0~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux0~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux0~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux0~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux0~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux28~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux22~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux27~0_combout\ : std_logic;
SIGNAL \i_sp_aux~0_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_sp_aux~1_combout\ : std_logic;
SIGNAL \i_sp_aux~2_combout\ : std_logic;
SIGNAL \a_aux[2]~0_combout\ : std_logic;
SIGNAL \i_sp_aux~3_combout\ : std_logic;
SIGNAL \i_sp_aux~4_combout\ : std_logic;
SIGNAL \a_aux[3]~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \STACK|ram~70feeder_combout\ : std_logic;
SIGNAL \STACK_POINTER|q_aux[0]~0_combout\ : std_logic;
SIGNAL \a_aux[1]~2_combout\ : std_logic;
SIGNAL \STACK|ram~475_combout\ : std_logic;
SIGNAL \STACK|ram~491_combout\ : std_logic;
SIGNAL \STACK|ram~70_q\ : std_logic;
SIGNAL \STACK|ram~22feeder_combout\ : std_logic;
SIGNAL \STACK|ram~471_combout\ : std_logic;
SIGNAL \STACK|ram~487_combout\ : std_logic;
SIGNAL \STACK|ram~22_q\ : std_logic;
SIGNAL \STACK|ram~479_combout\ : std_logic;
SIGNAL \STACK|ram~495_combout\ : std_logic;
SIGNAL \STACK|ram~54_q\ : std_logic;
SIGNAL \STACK|ram~443_combout\ : std_logic;
SIGNAL \STACK|ram~483_combout\ : std_logic;
SIGNAL \STACK|ram~499_combout\ : std_logic;
SIGNAL \STACK|ram~38_q\ : std_logic;
SIGNAL \STACK|ram~444_combout\ : std_logic;
SIGNAL \STACK|ram~150feeder_combout\ : std_logic;
SIGNAL \STACK|ram~470_combout\ : std_logic;
SIGNAL \STACK|ram~486_combout\ : std_logic;
SIGNAL \STACK|ram~150_q\ : std_logic;
SIGNAL \STACK|ram~182feeder_combout\ : std_logic;
SIGNAL \STACK|ram~478_combout\ : std_logic;
SIGNAL \STACK|ram~494_combout\ : std_logic;
SIGNAL \STACK|ram~182_q\ : std_logic;
SIGNAL \STACK|ram~441_combout\ : std_logic;
SIGNAL \STACK|ram~198feeder_combout\ : std_logic;
SIGNAL \STACK|ram~473_combout\ : std_logic;
SIGNAL \STACK|ram~489_combout\ : std_logic;
SIGNAL \STACK|ram~198_q\ : std_logic;
SIGNAL \STACK|ram~481_combout\ : std_logic;
SIGNAL \STACK|ram~497_combout\ : std_logic;
SIGNAL \STACK|ram~166_q\ : std_logic;
SIGNAL \STACK|ram~442_combout\ : std_logic;
SIGNAL \STACK|ram~445_combout\ : std_logic;
SIGNAL \STACK|ram~102feeder_combout\ : std_logic;
SIGNAL \STACK|ram~482_combout\ : std_logic;
SIGNAL \STACK|ram~498_combout\ : std_logic;
SIGNAL \STACK|ram~102_q\ : std_logic;
SIGNAL \STACK|ram~469_combout\ : std_logic;
SIGNAL \STACK|ram~485_combout\ : std_logic;
SIGNAL \STACK|ram~86_q\ : std_logic;
SIGNAL \STACK|ram~134feeder_combout\ : std_logic;
SIGNAL \STACK|ram~474_combout\ : std_logic;
SIGNAL \STACK|ram~490_combout\ : std_logic;
SIGNAL \STACK|ram~134_q\ : std_logic;
SIGNAL \STACK|ram~477_combout\ : std_logic;
SIGNAL \STACK|ram~493_combout\ : std_logic;
SIGNAL \STACK|ram~118_q\ : std_logic;
SIGNAL \STACK|ram~439_combout\ : std_logic;
SIGNAL \STACK|ram~440_combout\ : std_logic;
SIGNAL \STACK|ram~484_combout\ : std_logic;
SIGNAL \STACK|ram~500_combout\ : std_logic;
SIGNAL \STACK|ram~230_q\ : std_logic;
SIGNAL \STACK|ram~262feeder_combout\ : std_logic;
SIGNAL \STACK|ram~476_combout\ : std_logic;
SIGNAL \STACK|ram~492_combout\ : std_logic;
SIGNAL \STACK|ram~262_q\ : std_logic;
SIGNAL \STACK|ram~480_combout\ : std_logic;
SIGNAL \STACK|ram~496_combout\ : std_logic;
SIGNAL \STACK|ram~246_q\ : std_logic;
SIGNAL \STACK|ram~446_combout\ : std_logic;
SIGNAL \STACK|ram~472_combout\ : std_logic;
SIGNAL \STACK|ram~488_combout\ : std_logic;
SIGNAL \STACK|ram~214_q\ : std_logic;
SIGNAL \STACK|ram~447_combout\ : std_logic;
SIGNAL \STACK|ram~448_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux12~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux12~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux12~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \offset_aux[0]~10_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[0]~16_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|ram~504_combout\ : std_logic;
SIGNAL \STACK|ram~261_q\ : std_logic;
SIGNAL \STACK|ram~501_combout\ : std_logic;
SIGNAL \STACK|ram~133_q\ : std_logic;
SIGNAL \STACK|ram~503_combout\ : std_logic;
SIGNAL \STACK|ram~69_q\ : std_logic;
SIGNAL \STACK|ram~502_combout\ : std_logic;
SIGNAL \STACK|ram~197_q\ : std_logic;
SIGNAL \STACK|ram~429_combout\ : std_logic;
SIGNAL \STACK|ram~430_combout\ : std_logic;
SIGNAL \STACK|ram~512_combout\ : std_logic;
SIGNAL \STACK|ram~245_q\ : std_logic;
SIGNAL \STACK|ram~509_combout\ : std_logic;
SIGNAL \STACK|ram~181_q\ : std_logic;
SIGNAL \STACK|ram~510_combout\ : std_logic;
SIGNAL \STACK|ram~117_q\ : std_logic;
SIGNAL \STACK|ram~511_combout\ : std_logic;
SIGNAL \STACK|ram~53_q\ : std_logic;
SIGNAL \STACK|ram~433_combout\ : std_logic;
SIGNAL \STACK|ram~434_combout\ : std_logic;
SIGNAL \STACK|ram~505_combout\ : std_logic;
SIGNAL \STACK|ram~149_q\ : std_logic;
SIGNAL \STACK|ram~508_combout\ : std_logic;
SIGNAL \STACK|ram~213_q\ : std_logic;
SIGNAL \STACK|ram~507_combout\ : std_logic;
SIGNAL \STACK|ram~21_q\ : std_logic;
SIGNAL \STACK|ram~506_combout\ : std_logic;
SIGNAL \STACK|ram~85_q\ : std_logic;
SIGNAL \STACK|ram~431_combout\ : std_logic;
SIGNAL \STACK|ram~432_combout\ : std_logic;
SIGNAL \STACK|ram~435_combout\ : std_logic;
SIGNAL \STACK|ram~513_combout\ : std_logic;
SIGNAL \STACK|ram~101_q\ : std_logic;
SIGNAL \STACK|ram~516_combout\ : std_logic;
SIGNAL \STACK|ram~229_q\ : std_logic;
SIGNAL \STACK|ram~515_combout\ : std_logic;
SIGNAL \STACK|ram~37_q\ : std_logic;
SIGNAL \STACK|ram~514_combout\ : std_logic;
SIGNAL \STACK|ram~165_q\ : std_logic;
SIGNAL \STACK|ram~436_combout\ : std_logic;
SIGNAL \STACK|ram~437_combout\ : std_logic;
SIGNAL \STACK|ram~438_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~5_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~6_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux13~7_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux10~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux10~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux10~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux10~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \offset_aux[2]~8_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[1]~19\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[2]~20_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[2]~feeder_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \STACK|ram~215feeder_combout\ : std_logic;
SIGNAL \STACK|ram~215_q\ : std_logic;
SIGNAL \STACK|ram~87_q\ : std_logic;
SIGNAL \STACK|ram~151feeder_combout\ : std_logic;
SIGNAL \STACK|ram~151_q\ : std_logic;
SIGNAL \STACK|ram~23_q\ : std_logic;
SIGNAL \STACK|ram~449_combout\ : std_logic;
SIGNAL \STACK|ram~450_combout\ : std_logic;
SIGNAL \STACK|ram~103feeder_combout\ : std_logic;
SIGNAL \STACK|ram~103_q\ : std_logic;
SIGNAL \STACK|ram~39_q\ : std_logic;
SIGNAL \STACK|ram~456_combout\ : std_logic;
SIGNAL \STACK|ram~231_q\ : std_logic;
SIGNAL \STACK|ram~167_q\ : std_logic;
SIGNAL \STACK|ram~457_combout\ : std_logic;
SIGNAL \STACK|ram~119feeder_combout\ : std_logic;
SIGNAL \STACK|ram~119_q\ : std_logic;
SIGNAL \STACK|ram~247_q\ : std_logic;
SIGNAL \STACK|ram~55feeder_combout\ : std_logic;
SIGNAL \STACK|ram~55_q\ : std_logic;
SIGNAL \STACK|ram~183feeder_combout\ : std_logic;
SIGNAL \STACK|ram~183_q\ : std_logic;
SIGNAL \STACK|ram~453_combout\ : std_logic;
SIGNAL \STACK|ram~454_combout\ : std_logic;
SIGNAL \STACK|ram~263feeder_combout\ : std_logic;
SIGNAL \STACK|ram~263_q\ : std_logic;
SIGNAL \STACK|ram~199_q\ : std_logic;
SIGNAL \STACK|ram~135feeder_combout\ : std_logic;
SIGNAL \STACK|ram~135_q\ : std_logic;
SIGNAL \STACK|ram~71_q\ : std_logic;
SIGNAL \STACK|ram~451_combout\ : std_logic;
SIGNAL \STACK|ram~452_combout\ : std_logic;
SIGNAL \STACK|ram~455_combout\ : std_logic;
SIGNAL \STACK|ram~458_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux7~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux7~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux7~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~5_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \offset_aux[5]~5_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[2]~21\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[3]~23\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[4]~25\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[5]~26_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[5]~feeder_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \STACK|ram~106feeder_combout\ : std_logic;
SIGNAL \STACK|ram~106_q\ : std_logic;
SIGNAL \STACK|ram~90_q\ : std_logic;
SIGNAL \STACK|ram~138feeder_combout\ : std_logic;
SIGNAL \STACK|ram~138_q\ : std_logic;
SIGNAL \STACK|ram~122_q\ : std_logic;
SIGNAL \STACK|ram~419_combout\ : std_logic;
SIGNAL \STACK|ram~420_combout\ : std_logic;
SIGNAL \STACK|ram~234_q\ : std_logic;
SIGNAL \STACK|ram~218_q\ : std_logic;
SIGNAL \STACK|ram~266feeder_combout\ : std_logic;
SIGNAL \STACK|ram~266_q\ : std_logic;
SIGNAL \STACK|ram~250_q\ : std_logic;
SIGNAL \STACK|ram~426_combout\ : std_logic;
SIGNAL \STACK|ram~427_combout\ : std_logic;
SIGNAL \STACK|ram~74feeder_combout\ : std_logic;
SIGNAL \STACK|ram~74_q\ : std_logic;
SIGNAL \STACK|ram~42_q\ : std_logic;
SIGNAL \STACK|ram~26feeder_combout\ : std_logic;
SIGNAL \STACK|ram~26_q\ : std_logic;
SIGNAL \STACK|ram~58_q\ : std_logic;
SIGNAL \STACK|ram~423_combout\ : std_logic;
SIGNAL \STACK|ram~424_combout\ : std_logic;
SIGNAL \STACK|ram~202feeder_combout\ : std_logic;
SIGNAL \STACK|ram~202_q\ : std_logic;
SIGNAL \STACK|ram~170_q\ : std_logic;
SIGNAL \STACK|ram~154feeder_combout\ : std_logic;
SIGNAL \STACK|ram~154_q\ : std_logic;
SIGNAL \STACK|ram~186_q\ : std_logic;
SIGNAL \STACK|ram~421_combout\ : std_logic;
SIGNAL \STACK|ram~422_combout\ : std_logic;
SIGNAL \STACK|ram~425_combout\ : std_logic;
SIGNAL \STACK|ram~428_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux11~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux11~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux11~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux11~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux11~4_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \offset_aux[4]~6_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[4]~24_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[4]~feeder_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \STACK|ram~233_q\ : std_logic;
SIGNAL \STACK|ram~105_q\ : std_logic;
SIGNAL \STACK|ram~169feeder_combout\ : std_logic;
SIGNAL \STACK|ram~169_q\ : std_logic;
SIGNAL \STACK|ram~41_q\ : std_logic;
SIGNAL \STACK|ram~466_combout\ : std_logic;
SIGNAL \STACK|ram~467_combout\ : std_logic;
SIGNAL \STACK|ram~121feeder_combout\ : std_logic;
SIGNAL \STACK|ram~121_q\ : std_logic;
SIGNAL \STACK|ram~57_q\ : std_logic;
SIGNAL \STACK|ram~463_combout\ : std_logic;
SIGNAL \STACK|ram~185feeder_combout\ : std_logic;
SIGNAL \STACK|ram~185_q\ : std_logic;
SIGNAL \STACK|ram~249_q\ : std_logic;
SIGNAL \STACK|ram~464_combout\ : std_logic;
SIGNAL \STACK|ram~217feeder_combout\ : std_logic;
SIGNAL \STACK|ram~217_q\ : std_logic;
SIGNAL \STACK|ram~153_q\ : std_logic;
SIGNAL \STACK|ram~89feeder_combout\ : std_logic;
SIGNAL \STACK|ram~89_q\ : std_logic;
SIGNAL \STACK|ram~25_q\ : std_logic;
SIGNAL \STACK|ram~461_combout\ : std_logic;
SIGNAL \STACK|ram~462_combout\ : std_logic;
SIGNAL \STACK|ram~465_combout\ : std_logic;
SIGNAL \STACK|ram~137_q\ : std_logic;
SIGNAL \STACK|ram~201feeder_combout\ : std_logic;
SIGNAL \STACK|ram~201_q\ : std_logic;
SIGNAL \STACK|ram~73_q\ : std_logic;
SIGNAL \STACK|ram~459_combout\ : std_logic;
SIGNAL \STACK|ram~265_q\ : std_logic;
SIGNAL \STACK|ram~460_combout\ : std_logic;
SIGNAL \STACK|ram~468_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux9~6_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux9~5_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux9~7_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux9~10_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux9~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \offset_aux[3]~7_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[3]~22_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[3]~feeder_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \STACK|ram~168feeder_combout\ : std_logic;
SIGNAL \STACK|ram~168_q\ : std_logic;
SIGNAL \STACK|ram~152_q\ : std_logic;
SIGNAL \STACK|ram~200feeder_combout\ : std_logic;
SIGNAL \STACK|ram~200_q\ : std_logic;
SIGNAL \STACK|ram~184_q\ : std_logic;
SIGNAL \STACK|ram~409_combout\ : std_logic;
SIGNAL \STACK|ram~410_combout\ : std_logic;
SIGNAL \STACK|ram~232_q\ : std_logic;
SIGNAL \STACK|ram~264_q\ : std_logic;
SIGNAL \STACK|ram~216feeder_combout\ : std_logic;
SIGNAL \STACK|ram~216_q\ : std_logic;
SIGNAL \STACK|ram~248_q\ : std_logic;
SIGNAL \STACK|ram~416_combout\ : std_logic;
SIGNAL \STACK|ram~417_combout\ : std_logic;
SIGNAL \STACK|ram~136feeder_combout\ : std_logic;
SIGNAL \STACK|ram~136_q\ : std_logic;
SIGNAL \STACK|ram~104_q\ : std_logic;
SIGNAL \STACK|ram~88feeder_combout\ : std_logic;
SIGNAL \STACK|ram~88_q\ : std_logic;
SIGNAL \STACK|ram~120_q\ : std_logic;
SIGNAL \STACK|ram~411_combout\ : std_logic;
SIGNAL \STACK|ram~412_combout\ : std_logic;
SIGNAL \STACK|ram~72feeder_combout\ : std_logic;
SIGNAL \STACK|ram~72_q\ : std_logic;
SIGNAL \STACK|ram~56_q\ : std_logic;
SIGNAL \STACK|ram~413_combout\ : std_logic;
SIGNAL \STACK|ram~40_q\ : std_logic;
SIGNAL \STACK|ram~24feeder_combout\ : std_logic;
SIGNAL \STACK|ram~24_q\ : std_logic;
SIGNAL \STACK|ram~414_combout\ : std_logic;
SIGNAL \STACK|ram~415_combout\ : std_logic;
SIGNAL \STACK|ram~418_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~6_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~5_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~7_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~8_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux10~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux4~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux4~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux4~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux4~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal0~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux6~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux6~4_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux6~5_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux6~6_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux5~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux5~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux5~3_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux5~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal0~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal0~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal0~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux19~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux18~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~10_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux5~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux19~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux1~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal1~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal1~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal1~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal1~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal1~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal1~5_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux5~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux15~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux15~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux0~6_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal0~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Equal0~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux0~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux0~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux16~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux17~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux17~3_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \offset_aux[10]~0_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \offset_aux[9]~1_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \offset_aux[8]~2_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \offset_aux[7]~3_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \offset_aux[6]~4_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[5]~27\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[6]~28_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \STACK|ram~123feeder_combout\ : std_logic;
SIGNAL \STACK|ram~123_q\ : std_logic;
SIGNAL \STACK|ram~251_q\ : std_logic;
SIGNAL \STACK|ram~187feeder_combout\ : std_logic;
SIGNAL \STACK|ram~187_q\ : std_logic;
SIGNAL \STACK|ram~59_q\ : std_logic;
SIGNAL \STACK|ram~333_combout\ : std_logic;
SIGNAL \STACK|ram~334_combout\ : std_logic;
SIGNAL \STACK|ram~267feeder_combout\ : std_logic;
SIGNAL \STACK|ram~267_q\ : std_logic;
SIGNAL \STACK|ram~203_q\ : std_logic;
SIGNAL \STACK|ram~139feeder_combout\ : std_logic;
SIGNAL \STACK|ram~139_q\ : std_logic;
SIGNAL \STACK|ram~75_q\ : std_logic;
SIGNAL \STACK|ram~331_combout\ : std_logic;
SIGNAL \STACK|ram~332_combout\ : std_logic;
SIGNAL \STACK|ram~335_combout\ : std_logic;
SIGNAL \STACK|ram~219feeder_combout\ : std_logic;
SIGNAL \STACK|ram~219_q\ : std_logic;
SIGNAL \STACK|ram~91_q\ : std_logic;
SIGNAL \STACK|ram~155feeder_combout\ : std_logic;
SIGNAL \STACK|ram~155_q\ : std_logic;
SIGNAL \STACK|ram~27_q\ : std_logic;
SIGNAL \STACK|ram~329_combout\ : std_logic;
SIGNAL \STACK|ram~330_combout\ : std_logic;
SIGNAL \STACK|ram~235_q\ : std_logic;
SIGNAL \STACK|ram~107feeder_combout\ : std_logic;
SIGNAL \STACK|ram~107_q\ : std_logic;
SIGNAL \STACK|ram~43_q\ : std_logic;
SIGNAL \STACK|ram~336_combout\ : std_logic;
SIGNAL \STACK|ram~171_q\ : std_logic;
SIGNAL \STACK|ram~337_combout\ : std_logic;
SIGNAL \STACK|ram~338_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[6]~29\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[7]~30_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \STACK|ram~204feeder_combout\ : std_logic;
SIGNAL \STACK|ram~204_q\ : std_logic;
SIGNAL \STACK|ram~188_q\ : std_logic;
SIGNAL \STACK|ram~339_combout\ : std_logic;
SIGNAL \STACK|ram~172feeder_combout\ : std_logic;
SIGNAL \STACK|ram~172_q\ : std_logic;
SIGNAL \STACK|ram~156_q\ : std_logic;
SIGNAL \STACK|ram~340_combout\ : std_logic;
SIGNAL \STACK|ram~140feeder_combout\ : std_logic;
SIGNAL \STACK|ram~140_q\ : std_logic;
SIGNAL \STACK|ram~108_q\ : std_logic;
SIGNAL \STACK|ram~92feeder_combout\ : std_logic;
SIGNAL \STACK|ram~92_q\ : std_logic;
SIGNAL \STACK|ram~124_q\ : std_logic;
SIGNAL \STACK|ram~341_combout\ : std_logic;
SIGNAL \STACK|ram~342_combout\ : std_logic;
SIGNAL \STACK|ram~28feeder_combout\ : std_logic;
SIGNAL \STACK|ram~28_q\ : std_logic;
SIGNAL \STACK|ram~44_q\ : std_logic;
SIGNAL \STACK|ram~76feeder_combout\ : std_logic;
SIGNAL \STACK|ram~76_q\ : std_logic;
SIGNAL \STACK|ram~60_q\ : std_logic;
SIGNAL \STACK|ram~343_combout\ : std_logic;
SIGNAL \STACK|ram~344_combout\ : std_logic;
SIGNAL \STACK|ram~345_combout\ : std_logic;
SIGNAL \STACK|ram~236_q\ : std_logic;
SIGNAL \STACK|ram~268_q\ : std_logic;
SIGNAL \STACK|ram~220feeder_combout\ : std_logic;
SIGNAL \STACK|ram~220_q\ : std_logic;
SIGNAL \STACK|ram~252_q\ : std_logic;
SIGNAL \STACK|ram~346_combout\ : std_logic;
SIGNAL \STACK|ram~347_combout\ : std_logic;
SIGNAL \STACK|ram~348_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[7]~31\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[8]~32_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[8]~feeder_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \STACK|ram~269feeder_combout\ : std_logic;
SIGNAL \STACK|ram~269_q\ : std_logic;
SIGNAL \STACK|ram~205feeder_combout\ : std_logic;
SIGNAL \STACK|ram~205_q\ : std_logic;
SIGNAL \STACK|ram~77_q\ : std_logic;
SIGNAL \STACK|ram~349_combout\ : std_logic;
SIGNAL \STACK|ram~141_q\ : std_logic;
SIGNAL \STACK|ram~350_combout\ : std_logic;
SIGNAL \STACK|ram~237_q\ : std_logic;
SIGNAL \STACK|ram~109_q\ : std_logic;
SIGNAL \STACK|ram~173feeder_combout\ : std_logic;
SIGNAL \STACK|ram~173_q\ : std_logic;
SIGNAL \STACK|ram~45_q\ : std_logic;
SIGNAL \STACK|ram~356_combout\ : std_logic;
SIGNAL \STACK|ram~357_combout\ : std_logic;
SIGNAL \STACK|ram~189feeder_combout\ : std_logic;
SIGNAL \STACK|ram~189_q\ : std_logic;
SIGNAL \STACK|ram~125feeder_combout\ : std_logic;
SIGNAL \STACK|ram~125_q\ : std_logic;
SIGNAL \STACK|ram~61_q\ : std_logic;
SIGNAL \STACK|ram~353_combout\ : std_logic;
SIGNAL \STACK|ram~253_q\ : std_logic;
SIGNAL \STACK|ram~354_combout\ : std_logic;
SIGNAL \STACK|ram~93feeder_combout\ : std_logic;
SIGNAL \STACK|ram~93_q\ : std_logic;
SIGNAL \STACK|ram~29_q\ : std_logic;
SIGNAL \STACK|ram~351_combout\ : std_logic;
SIGNAL \STACK|ram~221feeder_combout\ : std_logic;
SIGNAL \STACK|ram~221_q\ : std_logic;
SIGNAL \STACK|ram~157_q\ : std_logic;
SIGNAL \STACK|ram~352_combout\ : std_logic;
SIGNAL \STACK|ram~355_combout\ : std_logic;
SIGNAL \STACK|ram~358_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[8]~33\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[9]~34_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[9]~feeder_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \STACK|ram~110feeder_combout\ : std_logic;
SIGNAL \STACK|ram~110_q\ : std_logic;
SIGNAL \STACK|ram~94_q\ : std_logic;
SIGNAL \STACK|ram~142feeder_combout\ : std_logic;
SIGNAL \STACK|ram~142_q\ : std_logic;
SIGNAL \STACK|ram~126_q\ : std_logic;
SIGNAL \STACK|ram~359_combout\ : std_logic;
SIGNAL \STACK|ram~360_combout\ : std_logic;
SIGNAL \STACK|ram~78feeder_combout\ : std_logic;
SIGNAL \STACK|ram~78_q\ : std_logic;
SIGNAL \STACK|ram~46_q\ : std_logic;
SIGNAL \STACK|ram~30feeder_combout\ : std_logic;
SIGNAL \STACK|ram~30_q\ : std_logic;
SIGNAL \STACK|ram~62_q\ : std_logic;
SIGNAL \STACK|ram~363_combout\ : std_logic;
SIGNAL \STACK|ram~364_combout\ : std_logic;
SIGNAL \STACK|ram~206feeder_combout\ : std_logic;
SIGNAL \STACK|ram~206_q\ : std_logic;
SIGNAL \STACK|ram~174_q\ : std_logic;
SIGNAL \STACK|ram~190feeder_combout\ : std_logic;
SIGNAL \STACK|ram~190_q\ : std_logic;
SIGNAL \STACK|ram~158_q\ : std_logic;
SIGNAL \STACK|ram~361_combout\ : std_logic;
SIGNAL \STACK|ram~362_combout\ : std_logic;
SIGNAL \STACK|ram~365_combout\ : std_logic;
SIGNAL \STACK|ram~270feeder_combout\ : std_logic;
SIGNAL \STACK|ram~270_q\ : std_logic;
SIGNAL \STACK|ram~254_q\ : std_logic;
SIGNAL \STACK|ram~366_combout\ : std_logic;
SIGNAL \STACK|ram~238_q\ : std_logic;
SIGNAL \STACK|ram~222_q\ : std_logic;
SIGNAL \STACK|ram~367_combout\ : std_logic;
SIGNAL \STACK|ram~368_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[9]~35\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[10]~36_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[10]~feeder_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \STACK|ram~159feeder_combout\ : std_logic;
SIGNAL \STACK|ram~159_q\ : std_logic;
SIGNAL \STACK|ram~31_q\ : std_logic;
SIGNAL \STACK|ram~309_combout\ : std_logic;
SIGNAL \STACK|ram~95_q\ : std_logic;
SIGNAL \STACK|ram~223feeder_combout\ : std_logic;
SIGNAL \STACK|ram~223_q\ : std_logic;
SIGNAL \STACK|ram~310_combout\ : std_logic;
SIGNAL \STACK|ram~239_q\ : std_logic;
SIGNAL \STACK|ram~175_q\ : std_logic;
SIGNAL \STACK|ram~111feeder_combout\ : std_logic;
SIGNAL \STACK|ram~111_q\ : std_logic;
SIGNAL \STACK|ram~47_q\ : std_logic;
SIGNAL \STACK|ram~316_combout\ : std_logic;
SIGNAL \STACK|ram~317_combout\ : std_logic;
SIGNAL \STACK|ram~127feeder_combout\ : std_logic;
SIGNAL \STACK|ram~127_q\ : std_logic;
SIGNAL \STACK|ram~255_q\ : std_logic;
SIGNAL \STACK|ram~191feeder_combout\ : std_logic;
SIGNAL \STACK|ram~191_q\ : std_logic;
SIGNAL \STACK|ram~63_q\ : std_logic;
SIGNAL \STACK|ram~313_combout\ : std_logic;
SIGNAL \STACK|ram~314_combout\ : std_logic;
SIGNAL \STACK|ram~271feeder_combout\ : std_logic;
SIGNAL \STACK|ram~271_q\ : std_logic;
SIGNAL \STACK|ram~207_q\ : std_logic;
SIGNAL \STACK|ram~143feeder_combout\ : std_logic;
SIGNAL \STACK|ram~143_q\ : std_logic;
SIGNAL \STACK|ram~79_q\ : std_logic;
SIGNAL \STACK|ram~311_combout\ : std_logic;
SIGNAL \STACK|ram~312_combout\ : std_logic;
SIGNAL \STACK|ram~315_combout\ : std_logic;
SIGNAL \STACK|ram~318_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[10]~37\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[11]~39\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[12]~40_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[12]~feeder_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \STACK|ram~241_q\ : std_logic;
SIGNAL \STACK|ram~113_q\ : std_logic;
SIGNAL \STACK|ram~177feeder_combout\ : std_logic;
SIGNAL \STACK|ram~177_q\ : std_logic;
SIGNAL \STACK|ram~49_q\ : std_logic;
SIGNAL \STACK|ram~386_combout\ : std_logic;
SIGNAL \STACK|ram~387_combout\ : std_logic;
SIGNAL \STACK|ram~273feeder_combout\ : std_logic;
SIGNAL \STACK|ram~273_q\ : std_logic;
SIGNAL \STACK|ram~145_q\ : std_logic;
SIGNAL \STACK|ram~209feeder_combout\ : std_logic;
SIGNAL \STACK|ram~209_q\ : std_logic;
SIGNAL \STACK|ram~81_q\ : std_logic;
SIGNAL \STACK|ram~379_combout\ : std_logic;
SIGNAL \STACK|ram~380_combout\ : std_logic;
SIGNAL \STACK|ram~97feeder_combout\ : std_logic;
SIGNAL \STACK|ram~97_q\ : std_logic;
SIGNAL \STACK|ram~33_q\ : std_logic;
SIGNAL \STACK|ram~381_combout\ : std_logic;
SIGNAL \STACK|ram~225feeder_combout\ : std_logic;
SIGNAL \STACK|ram~225_q\ : std_logic;
SIGNAL \STACK|ram~161_q\ : std_logic;
SIGNAL \STACK|ram~382_combout\ : std_logic;
SIGNAL \STACK|ram~129feeder_combout\ : std_logic;
SIGNAL \STACK|ram~129_q\ : std_logic;
SIGNAL \STACK|ram~65_q\ : std_logic;
SIGNAL \STACK|ram~383_combout\ : std_logic;
SIGNAL \STACK|ram~193feeder_combout\ : std_logic;
SIGNAL \STACK|ram~193_q\ : std_logic;
SIGNAL \STACK|ram~257_q\ : std_logic;
SIGNAL \STACK|ram~384_combout\ : std_logic;
SIGNAL \STACK|ram~385_combout\ : std_logic;
SIGNAL \STACK|ram~388_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[12]~41\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[13]~42_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[13]~feeder_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \STACK|ram~114feeder_combout\ : std_logic;
SIGNAL \STACK|ram~114_q\ : std_logic;
SIGNAL \STACK|ram~98_q\ : std_logic;
SIGNAL \STACK|ram~146feeder_combout\ : std_logic;
SIGNAL \STACK|ram~146_q\ : std_logic;
SIGNAL \STACK|ram~130_q\ : std_logic;
SIGNAL \STACK|ram~389_combout\ : std_logic;
SIGNAL \STACK|ram~390_combout\ : std_logic;
SIGNAL \STACK|ram~242_q\ : std_logic;
SIGNAL \STACK|ram~274feeder_combout\ : std_logic;
SIGNAL \STACK|ram~274_q\ : std_logic;
SIGNAL \STACK|ram~258_q\ : std_logic;
SIGNAL \STACK|ram~396_combout\ : std_logic;
SIGNAL \STACK|ram~226_q\ : std_logic;
SIGNAL \STACK|ram~397_combout\ : std_logic;
SIGNAL \STACK|ram~82feeder_combout\ : std_logic;
SIGNAL \STACK|ram~82_q\ : std_logic;
SIGNAL \STACK|ram~50_q\ : std_logic;
SIGNAL \STACK|ram~34_q\ : std_logic;
SIGNAL \STACK|ram~66_q\ : std_logic;
SIGNAL \STACK|ram~393_combout\ : std_logic;
SIGNAL \STACK|ram~394_combout\ : std_logic;
SIGNAL \STACK|ram~210feeder_combout\ : std_logic;
SIGNAL \STACK|ram~210_q\ : std_logic;
SIGNAL \STACK|ram~178_q\ : std_logic;
SIGNAL \STACK|ram~162feeder_combout\ : std_logic;
SIGNAL \STACK|ram~162_q\ : std_logic;
SIGNAL \STACK|ram~194_q\ : std_logic;
SIGNAL \STACK|ram~391_combout\ : std_logic;
SIGNAL \STACK|ram~392_combout\ : std_logic;
SIGNAL \STACK|ram~395_combout\ : std_logic;
SIGNAL \STACK|ram~398_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[13]~43\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[14]~44_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[14]~feeder_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \STACK|ram~227feeder_combout\ : std_logic;
SIGNAL \STACK|ram~227_q\ : std_logic;
SIGNAL \STACK|ram~99_q\ : std_logic;
SIGNAL \STACK|ram~163feeder_combout\ : std_logic;
SIGNAL \STACK|ram~163_q\ : std_logic;
SIGNAL \STACK|ram~35_q\ : std_logic;
SIGNAL \STACK|ram~369_combout\ : std_logic;
SIGNAL \STACK|ram~370_combout\ : std_logic;
SIGNAL \STACK|ram~115feeder_combout\ : std_logic;
SIGNAL \STACK|ram~115_q\ : std_logic;
SIGNAL \STACK|ram~51_q\ : std_logic;
SIGNAL \STACK|ram~376_combout\ : std_logic;
SIGNAL \STACK|ram~243_q\ : std_logic;
SIGNAL \STACK|ram~179_q\ : std_logic;
SIGNAL \STACK|ram~377_combout\ : std_logic;
SIGNAL \STACK|ram~131feeder_combout\ : std_logic;
SIGNAL \STACK|ram~131_q\ : std_logic;
SIGNAL \STACK|ram~259_q\ : std_logic;
SIGNAL \STACK|ram~195feeder_combout\ : std_logic;
SIGNAL \STACK|ram~195_q\ : std_logic;
SIGNAL \STACK|ram~67_q\ : std_logic;
SIGNAL \STACK|ram~373_combout\ : std_logic;
SIGNAL \STACK|ram~374_combout\ : std_logic;
SIGNAL \STACK|ram~275feeder_combout\ : std_logic;
SIGNAL \STACK|ram~275_q\ : std_logic;
SIGNAL \STACK|ram~211_q\ : std_logic;
SIGNAL \STACK|ram~147feeder_combout\ : std_logic;
SIGNAL \STACK|ram~147_q\ : std_logic;
SIGNAL \STACK|ram~83_q\ : std_logic;
SIGNAL \STACK|ram~371_combout\ : std_logic;
SIGNAL \STACK|ram~372_combout\ : std_logic;
SIGNAL \STACK|ram~375_combout\ : std_logic;
SIGNAL \STACK|ram~378_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~0_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~9_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux17~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux17~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux17~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux5~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux5~2_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux9~9_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux7~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux1~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux1~6_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux7~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~7_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux18~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux4~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux11~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux1~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux1~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux1~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux11~1_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux12~6_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux11~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux1~7_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux4~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux2~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux3~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux1~8_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~12_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux5~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux0~4_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux0~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux23~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux23~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux23~4_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[15]~37_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[11]~23_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~4_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[9]~21_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:10:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~1_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[10]~20_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~9_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[8]~22_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux14~5_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux13~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux13~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux15~6_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux14~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux14~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~13_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~14_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[3]~31_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~2_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[2]~28_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~10_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[0]~30_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~14_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~6_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[1]~29_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~15_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~16_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~15_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[15]~35_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~7_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[13]~32_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~11_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[12]~34_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~18_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:6:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~0_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[6]~25_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:7:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~13_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[7]~27_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~5_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[5]~24_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~8_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[4]~26_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~10_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~11_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~19_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:28:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[31]~36_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[28]~15_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[24]~13_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[20]~12_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[16]~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~5_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:30:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|Decoder0~3_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[30]~7_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[26]~5_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[18]~6_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[22]~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~3_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~6_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[29]~11_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[21]~9_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:17:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[17]~10_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:25:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[25]~8_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~1_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[23]~17_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[31]~19_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[27]~16_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[19]~18_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~8_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~9_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux0~20_combout\ : std_logic;
SIGNAL \dato_I_aux[7]~14_combout\ : std_logic;
SIGNAL \dato_I_aux[7]~15_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:14:REG_INST|Q_aux[7]~feeder_combout\ : std_logic;
SIGNAL \REGE|DECODIFICADOR|O[14]~33_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux8~0_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux9~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~18_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux8~7_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux6~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~8_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux0~20_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~3_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:28:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:24:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~5_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~6_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:30:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:26:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:18:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~8_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~9_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~10_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:10:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~11_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:12:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~18_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:3:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:1:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:0:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~15_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:5:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:4:REG_INST|Q_aux[6]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~13_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~16_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~19_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux1~20_combout\ : std_logic;
SIGNAL \dato_I_aux[6]~12_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:5:REG_INST|Q_aux[5]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~10_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~11_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:15:REG_INST|Q_aux[5]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~18_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~13_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:2:REG_INST|Q_aux[5]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~15_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~16_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~19_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~8_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:26:REG_INST|Q_aux[5]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~3_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~5_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~6_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~9_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux2~20_combout\ : std_logic;
SIGNAL \dato_I_aux[5]~10_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:28:REG_INST|Q_aux[4]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~5_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~3_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~6_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~8_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:30:REG_INST|Q_aux[4]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~9_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~18_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~10_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~11_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:3:REG_INST|Q_aux[4]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~15_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:6:REG_INST|Q_aux[4]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~13_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~16_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~19_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux3~20_combout\ : std_logic;
SIGNAL \dato_I_aux[4]~8_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|F_aux~3_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:13:REG_INST|Q_aux[3]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~18_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:9:REG_INST|Q_aux[3]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:8:REG_INST|Q_aux[3]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~13_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~15_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~16_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~10_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~11_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~19_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~8_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~3_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~5_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~6_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~9_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux4~20_combout\ : std_logic;
SIGNAL \dato_I_aux[3]~6_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|F_aux~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~10_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~11_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:14:REG_INST|Q_aux[2]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~18_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:5:REG_INST|Q_aux[2]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~13_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:2:REG_INST|Q_aux[2]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~15_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~16_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~19_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~8_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:24:REG_INST|Q_aux[2]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~5_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~3_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~6_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:26:REG_INST|Q_aux[2]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~9_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux5~20_combout\ : std_logic;
SIGNAL \dato_I_aux[2]~4_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|F_aux~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~3_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~5_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~6_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~8_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~9_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:13:REG_INST|Q_aux[1]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~18_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:0:REG_INST|Q_aux[1]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~15_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:9:REG_INST|Q_aux[1]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:8:REG_INST|Q_aux[1]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~13_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~16_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~10_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~11_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~19_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux6~20_combout\ : std_logic;
SIGNAL \dato_I_aux[1]~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux8~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux8~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux8~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux8~3_combout\ : std_logic;
SIGNAL \dato_I_aux[0]~0_combout\ : std_logic;
SIGNAL \dato_I_aux[0]~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~8_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:26:REG_INST|Q_aux[0]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~18_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~13_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:2:REG_INST|Q_aux[0]~feeder_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:0:REG_INST|Q_aux[0]~feeder_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux7~20_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|F_aux~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux7~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux7~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~1\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~1\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux7~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux7~3_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux7~4_combout\ : std_logic;
SIGNAL \dato_I_aux[1]~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~8_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~18_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux6~20_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux6~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux6~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~3\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~4_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~3\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~4_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux6~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux6~3_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux6~4_combout\ : std_logic;
SIGNAL \dato_I_aux[2]~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~8_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~18_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux5~20_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux5~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux5~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~5\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~6_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~5\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~6_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux5~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux5~3_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux5~4_combout\ : std_logic;
SIGNAL \dato_I_aux[3]~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~18_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~8_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux4~20_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux4~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux4~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux4~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~7\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~8_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~7\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~8_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux4~3_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux4~4_combout\ : std_logic;
SIGNAL \dato_I_aux[4]~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~8_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~18_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux3~20_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|F_aux~4_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux3~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux3~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~9\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~10_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~9\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~10_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux3~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux3~3_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux3~4_combout\ : std_logic;
SIGNAL \dato_I_aux[5]~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~8_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~18_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux2~20_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|F_aux~5_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux2~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux2~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux2~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~11\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~12_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~11\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~12_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux2~3_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux2~4_combout\ : std_logic;
SIGNAL \dato_I_aux[6]~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~7_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~8_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~4_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~5_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~2_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~3_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~6_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~0_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~1_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~9_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~17_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~18_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~10_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~11_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~12_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~13_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~14_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~15_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~16_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~19_combout\ : std_logic;
SIGNAL \REGE|MUX_D|Mux1~20_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux1~0_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux1~1_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux1~2_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~13\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add0~14_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~13\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Add1~14_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux1~3_combout\ : std_logic;
SIGNAL \ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\ : std_logic;
SIGNAL \STATE_REG|q_aux~1_combout\ : std_logic;
SIGNAL \STATE_REG|q_aux~0_combout\ : std_logic;
SIGNAL \STATE_REG|q_aux~2_combout\ : std_logic;
SIGNAL \STATE_REG|q_aux~3_combout\ : std_logic;
SIGNAL \STATE_REG|q_aux~q\ : std_logic;
SIGNAL \branch_aux~0_combout\ : std_logic;
SIGNAL \branch_aux~1_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \offset_aux[11]~11_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[11]~38_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[11]~feeder_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \STACK|ram~224feeder_combout\ : std_logic;
SIGNAL \STACK|ram~224_q\ : std_logic;
SIGNAL \STACK|ram~256_q\ : std_logic;
SIGNAL \STACK|ram~326_combout\ : std_logic;
SIGNAL \STACK|ram~272_q\ : std_logic;
SIGNAL \STACK|ram~240_q\ : std_logic;
SIGNAL \STACK|ram~327_combout\ : std_logic;
SIGNAL \STACK|ram~32feeder_combout\ : std_logic;
SIGNAL \STACK|ram~32_q\ : std_logic;
SIGNAL \STACK|ram~48_q\ : std_logic;
SIGNAL \STACK|ram~64feeder_combout\ : std_logic;
SIGNAL \STACK|ram~64_q\ : std_logic;
SIGNAL \STACK|ram~80_q\ : std_logic;
SIGNAL \STACK|ram~323_combout\ : std_logic;
SIGNAL \STACK|ram~324_combout\ : std_logic;
SIGNAL \STACK|ram~144feeder_combout\ : std_logic;
SIGNAL \STACK|ram~144_q\ : std_logic;
SIGNAL \STACK|ram~112_q\ : std_logic;
SIGNAL \STACK|ram~96feeder_combout\ : std_logic;
SIGNAL \STACK|ram~96_q\ : std_logic;
SIGNAL \STACK|ram~128_q\ : std_logic;
SIGNAL \STACK|ram~321_combout\ : std_logic;
SIGNAL \STACK|ram~322_combout\ : std_logic;
SIGNAL \STACK|ram~325_combout\ : std_logic;
SIGNAL \STACK|ram~208feeder_combout\ : std_logic;
SIGNAL \STACK|ram~208_q\ : std_logic;
SIGNAL \STACK|ram~192_q\ : std_logic;
SIGNAL \STACK|ram~319_combout\ : std_logic;
SIGNAL \STACK|ram~176feeder_combout\ : std_logic;
SIGNAL \STACK|ram~176_q\ : std_logic;
SIGNAL \STACK|ram~160_q\ : std_logic;
SIGNAL \STACK|ram~320_combout\ : std_logic;
SIGNAL \STACK|ram~328_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~1_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux2~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux22~5_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \offset_aux[15]~12_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[14]~45\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[15]~46_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|q_aux[15]~feeder_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \STACK|ram~212feeder_combout\ : std_logic;
SIGNAL \STACK|ram~212_q\ : std_logic;
SIGNAL \STACK|ram~196_q\ : std_logic;
SIGNAL \STACK|ram~399_combout\ : std_logic;
SIGNAL \STACK|ram~180feeder_combout\ : std_logic;
SIGNAL \STACK|ram~180_q\ : std_logic;
SIGNAL \STACK|ram~164_q\ : std_logic;
SIGNAL \STACK|ram~400_combout\ : std_logic;
SIGNAL \STACK|ram~244_q\ : std_logic;
SIGNAL \STACK|ram~276_q\ : std_logic;
SIGNAL \STACK|ram~228feeder_combout\ : std_logic;
SIGNAL \STACK|ram~228_q\ : std_logic;
SIGNAL \STACK|ram~260_q\ : std_logic;
SIGNAL \STACK|ram~406_combout\ : std_logic;
SIGNAL \STACK|ram~407_combout\ : std_logic;
SIGNAL \STACK|ram~36feeder_combout\ : std_logic;
SIGNAL \STACK|ram~36_q\ : std_logic;
SIGNAL \STACK|ram~52_q\ : std_logic;
SIGNAL \STACK|ram~84feeder_combout\ : std_logic;
SIGNAL \STACK|ram~84_q\ : std_logic;
SIGNAL \STACK|ram~68_q\ : std_logic;
SIGNAL \STACK|ram~403_combout\ : std_logic;
SIGNAL \STACK|ram~404_combout\ : std_logic;
SIGNAL \STACK|ram~148feeder_combout\ : std_logic;
SIGNAL \STACK|ram~148_q\ : std_logic;
SIGNAL \STACK|ram~116_q\ : std_logic;
SIGNAL \STACK|ram~100feeder_combout\ : std_logic;
SIGNAL \STACK|ram~100_q\ : std_logic;
SIGNAL \STACK|ram~132_q\ : std_logic;
SIGNAL \STACK|ram~401_combout\ : std_logic;
SIGNAL \STACK|ram~402_combout\ : std_logic;
SIGNAL \STACK|ram~405_combout\ : std_logic;
SIGNAL \STACK|ram~408_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux1~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux10~5_combout\ : std_logic;
SIGNAL \PROGRAM_MEMORY|Mux6~7_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux10~2_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux10~3_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux10~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~7_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~8_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~2_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~3_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~4_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~5_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~6_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~0_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~1_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~9_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~10_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~11_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~17_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~18_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~14_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~15_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~12_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~13_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~16_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~19_combout\ : std_logic;
SIGNAL \REGE|MUX_R|Mux7~20_combout\ : std_logic;
SIGNAL \INSTR_DECODER|Mux24~0_combout\ : std_logic;
SIGNAL \REGE|GEN_REG:1:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:2:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:3:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:4:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:5:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:6:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:7:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:8:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:9:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:10:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:11:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:12:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:13:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:14:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:15:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:16:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:17:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:18:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:19:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:20:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:21:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:22:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:23:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:24:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROGRAM_COUNTER|q_aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REGE|GEN_REG:0:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \STACK_POINTER|q_aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REGE|GEN_REG:29:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:30:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:26:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:28:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:27:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PORT_OUT|O\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:25:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGE|GEN_REG:31:REG_INST|Q_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \INSTR_DECODER|ALT_INV_Mux28~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
o <= ww_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
\INSTR_DECODER|ALT_INV_Mux28~0_combout\ <= NOT \INSTR_DECODER|Mux28~0_combout\;

-- Location: IOOBUF_X16_Y0_N23
\o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(0),
	devoe => ww_devoe,
	o => \o[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(1),
	devoe => ww_devoe,
	o => \o[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(2),
	devoe => ww_devoe,
	o => \o[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(3),
	devoe => ww_devoe,
	o => \o[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(4),
	devoe => ww_devoe,
	o => \o[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(5),
	devoe => ww_devoe,
	o => \o[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(6),
	devoe => ww_devoe,
	o => \o[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PORT_OUT|O\(7),
	devoe => ww_devoe,
	o => \o[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y14_N2
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux12~2_combout\)))
-- \Add4~1\ = CARRY((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux12~2_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X19_Y14_N4
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\PROGRAM_COUNTER|q_aux\(15) & (((!\Add4~1\)))) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux11~4_combout\ & (!\Add4~1\)) # (!\PROGRAM_MEMORY|Mux11~4_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY(((!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux11~4_combout\)) # (!\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux11~4_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X22_Y13_N18
\PROGRAM_MEMORY|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~0_combout\ = (!\PROGRAM_COUNTER|q_aux\(4) & !\PROGRAM_COUNTER|q_aux\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(4),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y13_N22
\PROGRAM_MEMORY|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux14~2_combout\ = (\PROGRAM_COUNTER|q_aux\(5)) # ((!\PROGRAM_COUNTER|q_aux\(4) & (!\PROGRAM_COUNTER|q_aux\(0) & \PROGRAM_COUNTER|q_aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(5),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux14~2_combout\);

-- Location: LCCOMB_X23_Y16_N20
\PROGRAM_MEMORY|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux6~2_combout\ = (\PROGRAM_COUNTER|q_aux\(2) & (!\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(0) & !\PROGRAM_COUNTER|q_aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(0),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux6~2_combout\);

-- Location: LCCOMB_X21_Y13_N18
\PROGRAM_MEMORY|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux9~4_combout\ = (\PROGRAM_COUNTER|q_aux\(2) & \PROGRAM_COUNTER|q_aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(1),
	combout => \PROGRAM_MEMORY|Mux9~4_combout\);

-- Location: LCCOMB_X22_Y13_N24
\PROGRAM_MEMORY|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux14~3_combout\ = (\PROGRAM_MEMORY|Mux14~2_combout\ & ((\PROGRAM_MEMORY|Mux9~4_combout\) # ((\PROGRAM_COUNTER|q_aux\(4) & \PROGRAM_MEMORY|Mux6~2_combout\)))) # (!\PROGRAM_MEMORY|Mux14~2_combout\ & (\PROGRAM_COUNTER|q_aux\(4) & 
-- (\PROGRAM_MEMORY|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux14~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_MEMORY|Mux6~2_combout\,
	datad => \PROGRAM_MEMORY|Mux9~4_combout\,
	combout => \PROGRAM_MEMORY|Mux14~3_combout\);

-- Location: LCCOMB_X22_Y13_N8
\PROGRAM_MEMORY|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux14~4_combout\ = ((\PROGRAM_MEMORY|Mux14~3_combout\) # ((\PROGRAM_COUNTER|q_aux\(5) & !\PROGRAM_MEMORY|Mux13~0_combout\))) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(5),
	datab => \PROGRAM_MEMORY|Mux13~0_combout\,
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux14~3_combout\,
	combout => \PROGRAM_MEMORY|Mux14~4_combout\);

-- Location: LCCOMB_X22_Y16_N12
\PROGRAM_MEMORY|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux7~0_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & (\PROGRAM_COUNTER|q_aux\(3) $ (((!\PROGRAM_COUNTER|q_aux\(1)) # (!\PROGRAM_COUNTER|q_aux\(2)))))) # (!\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(2) $ 
-- (\PROGRAM_COUNTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\PROGRAM_MEMORY|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux15~3_combout\ = (\PROGRAM_COUNTER|q_aux\(2) & ((\PROGRAM_COUNTER|q_aux\(1) & (!\PROGRAM_COUNTER|q_aux\(0) & \PROGRAM_COUNTER|q_aux\(3))) # (!\PROGRAM_COUNTER|q_aux\(1) & ((!\PROGRAM_COUNTER|q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux15~3_combout\);

-- Location: LCCOMB_X22_Y13_N14
\PROGRAM_MEMORY|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux15~4_combout\ = (\PROGRAM_COUNTER|q_aux\(4) & (((\PROGRAM_MEMORY|Mux7~0_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(4) & (!\PROGRAM_COUNTER|q_aux\(5) & ((!\PROGRAM_MEMORY|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux7~0_combout\,
	datad => \PROGRAM_MEMORY|Mux15~3_combout\,
	combout => \PROGRAM_MEMORY|Mux15~4_combout\);

-- Location: LCCOMB_X23_Y16_N18
\PROGRAM_MEMORY|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux15~2_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(4)) # (!\PROGRAM_MEMORY|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_COUNTER|q_aux\(5),
	datad => \PROGRAM_MEMORY|Mux6~2_combout\,
	combout => \PROGRAM_MEMORY|Mux15~2_combout\);

-- Location: LCCOMB_X22_Y13_N0
\PROGRAM_MEMORY|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux15~5_combout\ = ((\PROGRAM_MEMORY|Mux15~4_combout\) # (\PROGRAM_MEMORY|Mux15~2_combout\)) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux15~4_combout\,
	datad => \PROGRAM_MEMORY|Mux15~2_combout\,
	combout => \PROGRAM_MEMORY|Mux15~5_combout\);

-- Location: LCCOMB_X21_Y14_N4
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux15~5_combout\)))
-- \Add5~1\ = CARRY((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux15~5_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X21_Y14_N6
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\PROGRAM_COUNTER|q_aux\(15) & (((!\Add5~1\)))) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux14~4_combout\ & (!\Add5~1\)) # (!\PROGRAM_MEMORY|Mux14~4_combout\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY(((!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux14~4_combout\)) # (!\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux14~4_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X19_Y16_N8
\offset_aux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[1]~9_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & ((\Add5~2_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & (\Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add4~2_combout\,
	datad => \Add5~2_combout\,
	combout => \offset_aux[1]~9_combout\);

-- Location: LCCOMB_X19_Y15_N0
\PROGRAM_COUNTER|q_aux[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[0]~16_combout\ = (\offset_aux[0]~10_combout\ & (\PROGRAM_COUNTER|q_aux\(0) $ (VCC))) # (!\offset_aux[0]~10_combout\ & (\PROGRAM_COUNTER|q_aux\(0) & VCC))
-- \PROGRAM_COUNTER|q_aux[0]~17\ = CARRY((\offset_aux[0]~10_combout\ & \PROGRAM_COUNTER|q_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \offset_aux[0]~10_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datad => VCC,
	combout => \PROGRAM_COUNTER|q_aux[0]~16_combout\,
	cout => \PROGRAM_COUNTER|q_aux[0]~17\);

-- Location: LCCOMB_X19_Y15_N2
\PROGRAM_COUNTER|q_aux[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[1]~18_combout\ = (\PROGRAM_COUNTER|q_aux\(1) & ((\offset_aux[1]~9_combout\ & (\PROGRAM_COUNTER|q_aux[0]~17\ & VCC)) # (!\offset_aux[1]~9_combout\ & (!\PROGRAM_COUNTER|q_aux[0]~17\)))) # (!\PROGRAM_COUNTER|q_aux\(1) & 
-- ((\offset_aux[1]~9_combout\ & (!\PROGRAM_COUNTER|q_aux[0]~17\)) # (!\offset_aux[1]~9_combout\ & ((\PROGRAM_COUNTER|q_aux[0]~17\) # (GND)))))
-- \PROGRAM_COUNTER|q_aux[1]~19\ = CARRY((\PROGRAM_COUNTER|q_aux\(1) & (!\offset_aux[1]~9_combout\ & !\PROGRAM_COUNTER|q_aux[0]~17\)) # (!\PROGRAM_COUNTER|q_aux\(1) & ((!\PROGRAM_COUNTER|q_aux[0]~17\) # (!\offset_aux[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \offset_aux[1]~9_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[0]~17\,
	combout => \PROGRAM_COUNTER|q_aux[1]~18_combout\,
	cout => \PROGRAM_COUNTER|q_aux[1]~19\);

-- Location: LCCOMB_X22_Y16_N4
\PROGRAM_COUNTER|q_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[1]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[1]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[1]~18_combout\,
	combout => \PROGRAM_COUNTER|q_aux[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y13_N30
\PROGRAM_MEMORY|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux1~0_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & ((\PROGRAM_COUNTER|q_aux\(2) & (!\PROGRAM_COUNTER|q_aux\(1) & !\PROGRAM_COUNTER|q_aux\(4))) # (!\PROGRAM_COUNTER|q_aux\(2) & ((\PROGRAM_COUNTER|q_aux\(4)))))) # (!\PROGRAM_COUNTER|q_aux\(0) & 
-- (\PROGRAM_COUNTER|q_aux\(1) & ((!\PROGRAM_COUNTER|q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\PROGRAM_MEMORY|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~3_combout\ = (!\PROGRAM_COUNTER|q_aux\(4) & (\PROGRAM_COUNTER|q_aux\(0) & ((!\PROGRAM_COUNTER|q_aux\(2)) # (!\PROGRAM_COUNTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \PROGRAM_MEMORY|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y13_N6
\PROGRAM_MEMORY|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux1~1_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (((\PROGRAM_MEMORY|Mux2~3_combout\) # (\PROGRAM_COUNTER|q_aux\(5))))) # (!\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux\(5) & ((!\PROGRAM_MEMORY|Mux2~3_combout\))) # 
-- (!\PROGRAM_COUNTER|q_aux\(5) & (!\PROGRAM_MEMORY|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~0_combout\,
	datab => \PROGRAM_MEMORY|Mux2~3_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(3),
	datad => \PROGRAM_COUNTER|q_aux\(5),
	combout => \PROGRAM_MEMORY|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y12_N10
\INSTR_DECODER|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux23~5_combout\ = (!\PROGRAM_MEMORY|Mux1~1_combout\ & (\PROGRAM_MEMORY|Mux2~2_combout\ & (\PROGRAM_MEMORY|Mux2~7_combout\ & !\PROGRAM_COUNTER|q_aux\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~1_combout\,
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux2~7_combout\,
	datad => \PROGRAM_COUNTER|q_aux\(15),
	combout => \INSTR_DECODER|Mux23~5_combout\);

-- Location: LCCOMB_X26_Y14_N8
\INSTR_DECODER|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|s1~0_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (!\PROGRAM_MEMORY|Mux12~2_combout\ & !\PROGRAM_MEMORY|Mux15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux12~2_combout\,
	datad => \PROGRAM_MEMORY|Mux15~5_combout\,
	combout => \INSTR_DECODER|s1~0_combout\);

-- Location: LCCOMB_X26_Y14_N2
\INSTR_DECODER|s1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|s1~1_combout\ = (\INSTR_DECODER|s1~0_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux14~4_combout\ $ (!\PROGRAM_MEMORY|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux14~4_combout\,
	datab => \INSTR_DECODER|s1~0_combout\,
	datac => \PROGRAM_MEMORY|Mux13~7_combout\,
	datad => \PROGRAM_COUNTER|q_aux\(15),
	combout => \INSTR_DECODER|s1~1_combout\);

-- Location: LCCOMB_X21_Y16_N14
\PROGRAM_MEMORY|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux3~1_combout\ = \PROGRAM_COUNTER|q_aux\(1) $ (((\PROGRAM_COUNTER|q_aux\(3) & !\PROGRAM_COUNTER|q_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	combout => \PROGRAM_MEMORY|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y16_N16
\PROGRAM_MEMORY|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux3~0_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (((!\PROGRAM_COUNTER|q_aux\(2)) # (!\PROGRAM_COUNTER|q_aux\(0))) # (!\PROGRAM_COUNTER|q_aux\(1)))) # (!\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux\(2)) # 
-- ((\PROGRAM_COUNTER|q_aux\(1) & \PROGRAM_COUNTER|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(0),
	datad => \PROGRAM_COUNTER|q_aux\(2),
	combout => \PROGRAM_MEMORY|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y16_N0
\PROGRAM_MEMORY|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux3~2_combout\ = (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(4) & ((\PROGRAM_MEMORY|Mux3~0_combout\))) # (!\PROGRAM_COUNTER|q_aux\(4) & (!\PROGRAM_MEMORY|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datab => \PROGRAM_MEMORY|Mux3~1_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(5),
	datad => \PROGRAM_MEMORY|Mux3~0_combout\,
	combout => \PROGRAM_MEMORY|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y16_N10
\PROGRAM_MEMORY|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux3~3_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux3~2_combout\ & \PROGRAM_MEMORY|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux3~2_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \PROGRAM_MEMORY|Mux3~3_combout\);

-- Location: LCCOMB_X21_Y15_N0
\PROGRAM_MEMORY|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux5~0_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(2) & !\PROGRAM_COUNTER|q_aux\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\PROGRAM_MEMORY|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux0~1_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & ((\PROGRAM_COUNTER|q_aux\(2) & (!\PROGRAM_COUNTER|q_aux\(1) & !\PROGRAM_COUNTER|q_aux\(4))) # (!\PROGRAM_COUNTER|q_aux\(2) & ((\PROGRAM_COUNTER|q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(0),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y15_N14
\PROGRAM_MEMORY|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux0~0_combout\ = (!\PROGRAM_COUNTER|q_aux\(4) & ((\PROGRAM_COUNTER|q_aux\(0)) # ((\PROGRAM_COUNTER|q_aux\(2) & \PROGRAM_COUNTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(1),
	combout => \PROGRAM_MEMORY|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y15_N20
\PROGRAM_MEMORY|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux0~2_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (((\PROGRAM_MEMORY|Mux0~0_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(5) & (!\PROGRAM_MEMORY|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(3),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux0~1_combout\,
	datad => \PROGRAM_MEMORY|Mux0~0_combout\,
	combout => \PROGRAM_MEMORY|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y15_N10
\PROGRAM_MEMORY|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux0~3_combout\ = ((\PROGRAM_MEMORY|Mux0~2_combout\) # ((!\PROGRAM_MEMORY|Mux5~0_combout\ & \PROGRAM_COUNTER|q_aux\(5)))) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux5~0_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux0~2_combout\,
	combout => \PROGRAM_MEMORY|Mux0~3_combout\);

-- Location: LCCOMB_X22_Y15_N16
\PROGRAM_MEMORY|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux0~4_combout\ = (\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux0~3_combout\,
	combout => \PROGRAM_MEMORY|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y12_N30
\INSTR_DECODER|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux28~0_combout\ = ((\INSTR_DECODER|s1~1_combout\) # ((\PROGRAM_MEMORY|Mux3~3_combout\) # (!\PROGRAM_MEMORY|Mux0~4_combout\))) # (!\INSTR_DECODER|Mux23~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux23~5_combout\,
	datab => \INSTR_DECODER|s1~1_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \PROGRAM_MEMORY|Mux0~4_combout\,
	combout => \INSTR_DECODER|Mux28~0_combout\);

-- Location: LCCOMB_X21_Y13_N14
\INSTR_DECODER|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux22~4_combout\ = (\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux0~3_combout\ & ((\PROGRAM_MEMORY|Mux1~1_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~1_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux0~3_combout\,
	combout => \INSTR_DECODER|Mux22~4_combout\);

-- Location: LCCOMB_X19_Y12_N22
\INSTR_DECODER|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux27~0_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \PROGRAM_MEMORY|Mux2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux22~4_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \PROGRAM_MEMORY|Mux2~8_combout\,
	combout => \INSTR_DECODER|Mux27~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\i_sp_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_sp_aux~0_combout\ = ((\INSTR_DECODER|Mux28~0_combout\ & !\INSTR_DECODER|Mux27~0_combout\)) # (!\STACK_POINTER|q_aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux28~0_combout\,
	datac => \STACK_POINTER|q_aux\(1),
	datad => \INSTR_DECODER|Mux27~0_combout\,
	combout => \i_sp_aux~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G9
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y12_N12
\i_sp_aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_sp_aux~1_combout\ = ((!\PROGRAM_MEMORY|Mux3~3_combout\ & \INSTR_DECODER|Mux22~5_combout\)) # (!\INSTR_DECODER|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux28~0_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \INSTR_DECODER|Mux22~5_combout\,
	combout => \i_sp_aux~1_combout\);

-- Location: FF_X19_Y12_N1
\STACK_POINTER|q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_sp_aux~0_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \i_sp_aux~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|q_aux\(1));

-- Location: LCCOMB_X19_Y12_N30
\i_sp_aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_sp_aux~2_combout\ = (\INSTR_DECODER|Mux28~0_combout\ & ((\STACK_POINTER|q_aux\(2) $ (\STACK_POINTER|q_aux\(1))) # (!\INSTR_DECODER|Mux27~0_combout\))) # (!\INSTR_DECODER|Mux28~0_combout\ & ((\INSTR_DECODER|Mux27~0_combout\) # (\STACK_POINTER|q_aux\(2) 
-- $ (!\STACK_POINTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux28~0_combout\,
	datab => \INSTR_DECODER|Mux27~0_combout\,
	datac => \STACK_POINTER|q_aux\(2),
	datad => \STACK_POINTER|q_aux\(1),
	combout => \i_sp_aux~2_combout\);

-- Location: FF_X19_Y12_N31
\STACK_POINTER|q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_sp_aux~2_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \i_sp_aux~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|q_aux\(2));

-- Location: LCCOMB_X19_Y12_N28
\a_aux[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_aux[2]~0_combout\ = \STACK_POINTER|q_aux\(2) $ (((\STACK_POINTER|q_aux\(1)) # (\INSTR_DECODER|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(2),
	datab => \STACK_POINTER|q_aux\(1),
	datad => \INSTR_DECODER|Mux28~0_combout\,
	combout => \a_aux[2]~0_combout\);

-- Location: LCCOMB_X19_Y12_N18
\i_sp_aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_sp_aux~3_combout\ = (\INSTR_DECODER|Mux27~0_combout\ & (\STACK_POINTER|q_aux\(2) & \STACK_POINTER|q_aux\(1))) # (!\INSTR_DECODER|Mux27~0_combout\ & ((\STACK_POINTER|q_aux\(2)) # (\STACK_POINTER|q_aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux27~0_combout\,
	datac => \STACK_POINTER|q_aux\(2),
	datad => \STACK_POINTER|q_aux\(1),
	combout => \i_sp_aux~3_combout\);

-- Location: LCCOMB_X19_Y12_N6
\i_sp_aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i_sp_aux~4_combout\ = (\INSTR_DECODER|Mux28~0_combout\ & ((\STACK_POINTER|q_aux\(3) $ (\i_sp_aux~3_combout\)) # (!\INSTR_DECODER|Mux27~0_combout\))) # (!\INSTR_DECODER|Mux28~0_combout\ & ((\INSTR_DECODER|Mux27~0_combout\) # (\STACK_POINTER|q_aux\(3) $ 
-- (!\i_sp_aux~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux28~0_combout\,
	datab => \INSTR_DECODER|Mux27~0_combout\,
	datac => \STACK_POINTER|q_aux\(3),
	datad => \i_sp_aux~3_combout\,
	combout => \i_sp_aux~4_combout\);

-- Location: FF_X19_Y12_N7
\STACK_POINTER|q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i_sp_aux~4_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \i_sp_aux~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|q_aux\(3));

-- Location: LCCOMB_X19_Y12_N24
\a_aux[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_aux[3]~1_combout\ = \STACK_POINTER|q_aux\(3) $ (((\INSTR_DECODER|Mux28~0_combout\) # ((\STACK_POINTER|q_aux\(1)) # (\STACK_POINTER|q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux28~0_combout\,
	datab => \STACK_POINTER|q_aux\(1),
	datac => \STACK_POINTER|q_aux\(2),
	datad => \STACK_POINTER|q_aux\(3),
	combout => \a_aux[3]~1_combout\);

-- Location: LCCOMB_X18_Y14_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & (\PROGRAM_COUNTER|q_aux\(1) $ (VCC))) # (!\PROGRAM_COUNTER|q_aux\(0) & (\PROGRAM_COUNTER|q_aux\(1) & VCC))
-- \Add2~1\ = CARRY((\PROGRAM_COUNTER|q_aux\(0) & \PROGRAM_COUNTER|q_aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X17_Y15_N12
\STACK|ram~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~70feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \STACK|ram~70feeder_combout\);

-- Location: LCCOMB_X19_Y13_N18
\STACK_POINTER|q_aux[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK_POINTER|q_aux[0]~0_combout\ = (\STACK_POINTER|q_aux\(0)) # ((\INSTR_DECODER|Mux27~0_combout\ & !\INSTR_DECODER|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux27~0_combout\,
	datac => \STACK_POINTER|q_aux\(0),
	datad => \INSTR_DECODER|Mux28~0_combout\,
	combout => \STACK_POINTER|q_aux[0]~0_combout\);

-- Location: FF_X19_Y13_N19
\STACK_POINTER|q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK_POINTER|q_aux[0]~0_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|q_aux\(0));

-- Location: LCCOMB_X16_Y15_N0
\a_aux[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_aux[1]~2_combout\ = \STACK_POINTER|q_aux\(1) $ (!\INSTR_DECODER|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK_POINTER|q_aux\(1),
	datad => \INSTR_DECODER|Mux28~0_combout\,
	combout => \a_aux[1]~2_combout\);

-- Location: LCCOMB_X16_Y13_N22
\STACK|ram~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~475_combout\ = (!\a_aux[3]~1_combout\ & (!\STACK_POINTER|q_aux\(0) & (!\a_aux[2]~0_combout\ & !\a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[2]~0_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~475_combout\);

-- Location: LCCOMB_X16_Y13_N0
\STACK|ram~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~491_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & (\STACK|ram~475_combout\ & \PROGRAM_MEMORY|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \INSTR_DECODER|Mux22~4_combout\,
	datac => \STACK|ram~475_combout\,
	datad => \PROGRAM_MEMORY|Mux2~8_combout\,
	combout => \STACK|ram~491_combout\);

-- Location: FF_X17_Y15_N13
\STACK|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~70feeder_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~70_q\);

-- Location: LCCOMB_X16_Y15_N18
\STACK|ram~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~22feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \STACK|ram~22feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\STACK|ram~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~471_combout\ = (\STACK_POINTER|q_aux\(0) & (!\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & \a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~471_combout\);

-- Location: LCCOMB_X16_Y16_N0
\STACK|ram~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~487_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~471_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~471_combout\,
	combout => \STACK|ram~487_combout\);

-- Location: FF_X16_Y15_N19
\STACK|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~22feeder_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~22_q\);

-- Location: LCCOMB_X16_Y13_N20
\STACK|ram~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~479_combout\ = (!\a_aux[3]~1_combout\ & (\STACK_POINTER|q_aux\(0) & (!\a_aux[2]~0_combout\ & !\a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[2]~0_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~479_combout\);

-- Location: LCCOMB_X16_Y13_N30
\STACK|ram~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~495_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & \STACK|ram~479_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \INSTR_DECODER|Mux22~4_combout\,
	datad => \STACK|ram~479_combout\,
	combout => \STACK|ram~495_combout\);

-- Location: FF_X16_Y15_N29
\STACK|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~54_q\);

-- Location: LCCOMB_X16_Y15_N28
\STACK|ram~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~443_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~22_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~54_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~22_q\,
	datac => \STACK|ram~54_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~443_combout\);

-- Location: LCCOMB_X16_Y16_N24
\STACK|ram~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~483_combout\ = (!\STACK_POINTER|q_aux\(0) & (!\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & \a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~483_combout\);

-- Location: LCCOMB_X16_Y16_N8
\STACK|ram~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~499_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~483_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~483_combout\,
	combout => \STACK|ram~499_combout\);

-- Location: FF_X17_Y15_N27
\STACK|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~38_q\);

-- Location: LCCOMB_X17_Y15_N26
\STACK|ram~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~444_combout\ = (\STACK|ram~443_combout\ & (((\STACK|ram~38_q\) # (\STACK_POINTER|q_aux\(0))))) # (!\STACK|ram~443_combout\ & (\STACK|ram~70_q\ & ((!\STACK_POINTER|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~70_q\,
	datab => \STACK|ram~443_combout\,
	datac => \STACK|ram~38_q\,
	datad => \STACK_POINTER|q_aux\(0),
	combout => \STACK|ram~444_combout\);

-- Location: LCCOMB_X13_Y13_N16
\STACK|ram~150feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~150feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \STACK|ram~150feeder_combout\);

-- Location: LCCOMB_X16_Y16_N10
\STACK|ram~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~470_combout\ = (\STACK_POINTER|q_aux\(0) & (!\a_aux[2]~0_combout\ & (\a_aux[3]~1_combout\ & \a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~470_combout\);

-- Location: LCCOMB_X16_Y16_N22
\STACK|ram~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~486_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~470_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~470_combout\,
	combout => \STACK|ram~486_combout\);

-- Location: FF_X13_Y13_N17
\STACK|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~150feeder_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~150_q\);

-- Location: LCCOMB_X12_Y13_N10
\STACK|ram~182feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~182feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \STACK|ram~182feeder_combout\);

-- Location: LCCOMB_X16_Y13_N18
\STACK|ram~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~478_combout\ = (\a_aux[3]~1_combout\ & (\STACK_POINTER|q_aux\(0) & (!\a_aux[2]~0_combout\ & !\a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[2]~0_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~478_combout\);

-- Location: LCCOMB_X16_Y13_N4
\STACK|ram~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~494_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & \STACK|ram~478_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \INSTR_DECODER|Mux22~4_combout\,
	datad => \STACK|ram~478_combout\,
	combout => \STACK|ram~494_combout\);

-- Location: FF_X12_Y13_N11
\STACK|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~182feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~182_q\);

-- Location: LCCOMB_X14_Y13_N6
\STACK|ram~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~441_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~150_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~182_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~150_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \STACK|ram~182_q\,
	combout => \STACK|ram~441_combout\);

-- Location: LCCOMB_X14_Y13_N24
\STACK|ram~198feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~198feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \STACK|ram~198feeder_combout\);

-- Location: LCCOMB_X16_Y16_N12
\STACK|ram~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~473_combout\ = (!\STACK_POINTER|q_aux\(0) & (!\a_aux[2]~0_combout\ & (\a_aux[3]~1_combout\ & !\a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~473_combout\);

-- Location: LCCOMB_X16_Y16_N20
\STACK|ram~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~489_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~473_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~473_combout\,
	combout => \STACK|ram~489_combout\);

-- Location: FF_X14_Y13_N25
\STACK|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~198feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~198_q\);

-- Location: LCCOMB_X17_Y13_N12
\STACK|ram~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~481_combout\ = (!\a_aux[2]~0_combout\ & (!\STACK_POINTER|q_aux\(0) & (\a_aux[1]~2_combout\ & \a_aux[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~481_combout\);

-- Location: LCCOMB_X17_Y13_N10
\STACK|ram~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~497_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & \STACK|ram~481_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \INSTR_DECODER|Mux22~4_combout\,
	datac => \PROGRAM_MEMORY|Mux2~8_combout\,
	datad => \STACK|ram~481_combout\,
	combout => \STACK|ram~497_combout\);

-- Location: FF_X14_Y13_N13
\STACK|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~166_q\);

-- Location: LCCOMB_X14_Y13_N12
\STACK|ram~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~442_combout\ = (\STACK|ram~441_combout\ & (((\STACK|ram~166_q\) # (\STACK_POINTER|q_aux\(0))))) # (!\STACK|ram~441_combout\ & (\STACK|ram~198_q\ & ((!\STACK_POINTER|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~441_combout\,
	datab => \STACK|ram~198_q\,
	datac => \STACK|ram~166_q\,
	datad => \STACK_POINTER|q_aux\(0),
	combout => \STACK|ram~442_combout\);

-- Location: LCCOMB_X14_Y15_N18
\STACK|ram~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~445_combout\ = (\a_aux[2]~0_combout\ & (\a_aux[3]~1_combout\)) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & ((\STACK|ram~442_combout\))) # (!\a_aux[3]~1_combout\ & (\STACK|ram~444_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~444_combout\,
	datad => \STACK|ram~442_combout\,
	combout => \STACK|ram~445_combout\);

-- Location: LCCOMB_X14_Y14_N18
\STACK|ram~102feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~102feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~0_combout\,
	combout => \STACK|ram~102feeder_combout\);

-- Location: LCCOMB_X16_Y16_N18
\STACK|ram~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~482_combout\ = (!\STACK_POINTER|q_aux\(0) & (\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & \a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~482_combout\);

-- Location: LCCOMB_X16_Y16_N14
\STACK|ram~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~498_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~482_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~482_combout\,
	combout => \STACK|ram~498_combout\);

-- Location: FF_X14_Y14_N19
\STACK|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~102feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~102_q\);

-- Location: LCCOMB_X16_Y16_N28
\STACK|ram~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~469_combout\ = (\STACK_POINTER|q_aux\(0) & (\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & \a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~469_combout\);

-- Location: LCCOMB_X16_Y16_N4
\STACK|ram~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~485_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~469_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~469_combout\,
	combout => \STACK|ram~485_combout\);

-- Location: FF_X14_Y14_N29
\STACK|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~86_q\);

-- Location: LCCOMB_X13_Y14_N16
\STACK|ram~134feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~134feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \STACK|ram~134feeder_combout\);

-- Location: LCCOMB_X17_Y13_N20
\STACK|ram~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~474_combout\ = (\a_aux[2]~0_combout\ & (!\STACK_POINTER|q_aux\(0) & (!\a_aux[1]~2_combout\ & !\a_aux[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~474_combout\);

-- Location: LCCOMB_X17_Y13_N22
\STACK|ram~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~490_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & \STACK|ram~474_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \INSTR_DECODER|Mux22~4_combout\,
	datac => \PROGRAM_MEMORY|Mux2~8_combout\,
	datad => \STACK|ram~474_combout\,
	combout => \STACK|ram~490_combout\);

-- Location: FF_X13_Y14_N17
\STACK|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~134feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~134_q\);

-- Location: LCCOMB_X16_Y13_N28
\STACK|ram~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~477_combout\ = (!\a_aux[3]~1_combout\ & (\STACK_POINTER|q_aux\(0) & (\a_aux[2]~0_combout\ & !\a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[2]~0_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~477_combout\);

-- Location: LCCOMB_X16_Y13_N10
\STACK|ram~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~493_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & \STACK|ram~477_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \INSTR_DECODER|Mux22~4_combout\,
	datad => \STACK|ram~477_combout\,
	combout => \STACK|ram~493_combout\);

-- Location: FF_X13_Y14_N11
\STACK|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~118_q\);

-- Location: LCCOMB_X13_Y14_N10
\STACK|ram~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~439_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~118_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~134_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~134_q\,
	datac => \STACK|ram~118_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~439_combout\);

-- Location: LCCOMB_X14_Y14_N28
\STACK|ram~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~440_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~439_combout\ & (\STACK|ram~102_q\)) # (!\STACK|ram~439_combout\ & ((\STACK|ram~86_q\))))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~439_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~102_q\,
	datac => \STACK|ram~86_q\,
	datad => \STACK|ram~439_combout\,
	combout => \STACK|ram~440_combout\);

-- Location: LCCOMB_X16_Y16_N6
\STACK|ram~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~484_combout\ = (!\STACK_POINTER|q_aux\(0) & (\a_aux[2]~0_combout\ & (\a_aux[3]~1_combout\ & \a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~484_combout\);

-- Location: LCCOMB_X16_Y16_N30
\STACK|ram~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~500_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~484_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~484_combout\,
	combout => \STACK|ram~500_combout\);

-- Location: FF_X18_Y14_N1
\STACK|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~230_q\);

-- Location: LCCOMB_X18_Y13_N10
\STACK|ram~262feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~262feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \STACK|ram~262feeder_combout\);

-- Location: LCCOMB_X17_Y13_N14
\STACK|ram~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~476_combout\ = (\a_aux[2]~0_combout\ & (!\STACK_POINTER|q_aux\(0) & (!\a_aux[1]~2_combout\ & \a_aux[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~476_combout\);

-- Location: LCCOMB_X17_Y13_N4
\STACK|ram~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~492_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & (\STACK|ram~476_combout\ & \PROGRAM_MEMORY|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \INSTR_DECODER|Mux22~4_combout\,
	datac => \STACK|ram~476_combout\,
	datad => \PROGRAM_MEMORY|Mux2~8_combout\,
	combout => \STACK|ram~492_combout\);

-- Location: FF_X18_Y13_N11
\STACK|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~262feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~262_q\);

-- Location: LCCOMB_X16_Y13_N6
\STACK|ram~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~480_combout\ = (\a_aux[3]~1_combout\ & (\STACK_POINTER|q_aux\(0) & (\a_aux[2]~0_combout\ & !\a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[2]~0_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~480_combout\);

-- Location: LCCOMB_X16_Y13_N16
\STACK|ram~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~496_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & \STACK|ram~480_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \INSTR_DECODER|Mux22~4_combout\,
	datad => \STACK|ram~480_combout\,
	combout => \STACK|ram~496_combout\);

-- Location: FF_X12_Y13_N5
\STACK|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~246_q\);

-- Location: LCCOMB_X12_Y13_N4
\STACK|ram~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~446_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~246_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~262_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~262_q\,
	datac => \STACK|ram~246_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~446_combout\);

-- Location: LCCOMB_X16_Y16_N2
\STACK|ram~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~472_combout\ = (\STACK_POINTER|q_aux\(0) & (\a_aux[2]~0_combout\ & (\a_aux[3]~1_combout\ & \a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \a_aux[2]~0_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~472_combout\);

-- Location: LCCOMB_X16_Y16_N26
\STACK|ram~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~488_combout\ = (\INSTR_DECODER|Mux22~4_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & \STACK|ram~472_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~4_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \STACK|ram~472_combout\,
	combout => \STACK|ram~488_combout\);

-- Location: FF_X13_Y13_N31
\STACK|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	sload => VCC,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~214_q\);

-- Location: LCCOMB_X13_Y13_N30
\STACK|ram~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~447_combout\ = (\STACK|ram~446_combout\ & ((\STACK|ram~230_q\) # ((!\a_aux[1]~2_combout\)))) # (!\STACK|ram~446_combout\ & (((\STACK|ram~214_q\ & \a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~230_q\,
	datab => \STACK|ram~446_combout\,
	datac => \STACK|ram~214_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~447_combout\);

-- Location: LCCOMB_X14_Y15_N24
\STACK|ram~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~448_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~445_combout\ & ((\STACK|ram~447_combout\))) # (!\STACK|ram~445_combout\ & (\STACK|ram~440_combout\)))) # (!\a_aux[2]~0_combout\ & (\STACK|ram~445_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~445_combout\,
	datac => \STACK|ram~440_combout\,
	datad => \STACK|ram~447_combout\,
	combout => \STACK|ram~448_combout\);

-- Location: FF_X22_Y16_N5
\PROGRAM_COUNTER|q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[1]~feeder_combout\,
	asdata => \STACK|ram~448_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(1));

-- Location: LCCOMB_X22_Y14_N0
\PROGRAM_MEMORY|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~0_combout\ = (!\PROGRAM_COUNTER|q_aux\(2) & (\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(4) & !\PROGRAM_COUNTER|q_aux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(4),
	datad => \PROGRAM_COUNTER|q_aux\(5),
	combout => \PROGRAM_MEMORY|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y14_N30
\PROGRAM_MEMORY|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~1_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & (\PROGRAM_COUNTER|q_aux\(1) & \PROGRAM_MEMORY|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_MEMORY|Mux8~0_combout\,
	combout => \PROGRAM_MEMORY|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y14_N24
\PROGRAM_MEMORY|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux12~0_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & (!\PROGRAM_COUNTER|q_aux\(4) & ((\PROGRAM_COUNTER|q_aux\(1)) # (\PROGRAM_COUNTER|q_aux\(0))))) # (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(0))) # 
-- (!\PROGRAM_COUNTER|q_aux\(1) & ((\PROGRAM_COUNTER|q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(4),
	datad => \PROGRAM_COUNTER|q_aux\(5),
	combout => \PROGRAM_MEMORY|Mux12~0_combout\);

-- Location: LCCOMB_X22_Y14_N2
\PROGRAM_MEMORY|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux12~1_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (((\PROGRAM_COUNTER|q_aux\(5))))) # (!\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_MEMORY|Mux12~0_combout\ & (\PROGRAM_COUNTER|q_aux\(2))) # (!\PROGRAM_MEMORY|Mux12~0_combout\ & 
-- ((\PROGRAM_COUNTER|q_aux\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(5),
	datad => \PROGRAM_MEMORY|Mux12~0_combout\,
	combout => \PROGRAM_MEMORY|Mux12~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\PROGRAM_MEMORY|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux12~2_combout\ = ((\PROGRAM_MEMORY|Mux8~1_combout\) # (\PROGRAM_MEMORY|Mux12~1_combout\)) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux8~1_combout\,
	datad => \PROGRAM_MEMORY|Mux12~1_combout\,
	combout => \PROGRAM_MEMORY|Mux12~2_combout\);

-- Location: LCCOMB_X19_Y16_N30
\offset_aux[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[0]~10_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & ((\Add5~0_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (((\Add4~0_combout\)) # (!\branch_aux~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add4~0_combout\,
	datad => \Add5~0_combout\,
	combout => \offset_aux[0]~10_combout\);

-- Location: LCCOMB_X21_Y16_N30
\PROGRAM_COUNTER|q_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[0]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[0]~16_combout\,
	combout => \PROGRAM_COUNTER|q_aux[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N16
\STACK|ram~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~504_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~504_combout\);

-- Location: FF_X18_Y13_N17
\STACK|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~504_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~261_q\);

-- Location: LCCOMB_X17_Y13_N30
\STACK|ram~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~501_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~501_combout\);

-- Location: FF_X17_Y13_N7
\STACK|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \STACK|ram~501_combout\,
	sload => VCC,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~133_q\);

-- Location: LCCOMB_X18_Y13_N6
\STACK|ram~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~503_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~503_combout\);

-- Location: FF_X18_Y13_N7
\STACK|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~503_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~69_q\);

-- Location: LCCOMB_X14_Y13_N18
\STACK|ram~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~502_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~502_combout\);

-- Location: FF_X14_Y13_N19
\STACK|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~502_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~197_q\);

-- Location: LCCOMB_X17_Y13_N0
\STACK|ram~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~429_combout\ = (\a_aux[3]~1_combout\ & (((\STACK|ram~197_q\) # (\a_aux[2]~0_combout\)))) # (!\a_aux[3]~1_combout\ & (\STACK|ram~69_q\ & ((!\a_aux[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~69_q\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~197_q\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~429_combout\);

-- Location: LCCOMB_X17_Y13_N6
\STACK|ram~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~430_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~429_combout\ & (\STACK|ram~261_q\)) # (!\STACK|ram~429_combout\ & ((\STACK|ram~133_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~261_q\,
	datac => \STACK|ram~133_q\,
	datad => \STACK|ram~429_combout\,
	combout => \STACK|ram~430_combout\);

-- Location: LCCOMB_X18_Y12_N22
\STACK|ram~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~512_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~512_combout\);

-- Location: FF_X18_Y12_N23
\STACK|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~512_combout\,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~245_q\);

-- Location: LCCOMB_X18_Y12_N20
\STACK|ram~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~509_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~509_combout\);

-- Location: FF_X18_Y12_N21
\STACK|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~509_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~181_q\);

-- Location: LCCOMB_X16_Y12_N14
\STACK|ram~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~510_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~510_combout\);

-- Location: FF_X16_Y12_N15
\STACK|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~510_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~117_q\);

-- Location: LCCOMB_X16_Y12_N4
\STACK|ram~511\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~511_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~511_combout\);

-- Location: FF_X16_Y12_N5
\STACK|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~511_combout\,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~53_q\);

-- Location: LCCOMB_X17_Y12_N8
\STACK|ram~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~433_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~117_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~53_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~117_q\,
	datab => \STACK|ram~53_q\,
	datac => \a_aux[2]~0_combout\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~433_combout\);

-- Location: LCCOMB_X18_Y12_N16
\STACK|ram~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~434_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~433_combout\ & (\STACK|ram~245_q\)) # (!\STACK|ram~433_combout\ & ((\STACK|ram~181_q\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~245_q\,
	datab => \STACK|ram~181_q\,
	datac => \a_aux[3]~1_combout\,
	datad => \STACK|ram~433_combout\,
	combout => \STACK|ram~434_combout\);

-- Location: LCCOMB_X14_Y12_N4
\STACK|ram~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~505_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~505_combout\);

-- Location: FF_X14_Y12_N5
\STACK|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~505_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~149_q\);

-- Location: LCCOMB_X14_Y12_N10
\STACK|ram~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~508_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~508_combout\);

-- Location: FF_X14_Y12_N11
\STACK|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~508_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~213_q\);

-- Location: LCCOMB_X13_Y12_N26
\STACK|ram~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~507_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~507_combout\);

-- Location: FF_X13_Y12_N27
\STACK|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~507_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~21_q\);

-- Location: LCCOMB_X13_Y12_N4
\STACK|ram~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~506_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~506_combout\);

-- Location: FF_X13_Y12_N5
\STACK|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~506_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~85_q\);

-- Location: LCCOMB_X13_Y12_N8
\STACK|ram~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~431_combout\ = (\a_aux[2]~0_combout\ & (((\STACK|ram~85_q\) # (\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (\STACK|ram~21_q\ & ((!\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~21_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~85_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~431_combout\);

-- Location: LCCOMB_X13_Y12_N18
\STACK|ram~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~432_combout\ = (\STACK|ram~431_combout\ & (((\STACK|ram~213_q\) # (!\a_aux[3]~1_combout\)))) # (!\STACK|ram~431_combout\ & (\STACK|ram~149_q\ & ((\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~149_q\,
	datab => \STACK|ram~213_q\,
	datac => \STACK|ram~431_combout\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~432_combout\);

-- Location: LCCOMB_X21_Y15_N22
\STACK|ram~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~435_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & ((\STACK|ram~432_combout\))) # (!\a_aux[1]~2_combout\ & (\STACK|ram~434_combout\)))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~434_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \STACK|ram~432_combout\,
	combout => \STACK|ram~435_combout\);

-- Location: LCCOMB_X18_Y15_N12
\STACK|ram~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~513_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~513_combout\);

-- Location: FF_X18_Y15_N13
\STACK|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~513_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~101_q\);

-- Location: LCCOMB_X21_Y15_N28
\STACK|ram~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~516_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~516_combout\);

-- Location: FF_X21_Y15_N29
\STACK|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~516_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~229_q\);

-- Location: LCCOMB_X17_Y15_N10
\STACK|ram~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~515_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~515_combout\);

-- Location: FF_X17_Y15_N11
\STACK|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~515_combout\,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~37_q\);

-- Location: LCCOMB_X18_Y15_N2
\STACK|ram~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~514_combout\ = !\PROGRAM_COUNTER|q_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \STACK|ram~514_combout\);

-- Location: FF_X18_Y15_N3
\STACK|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~514_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~165_q\);

-- Location: LCCOMB_X18_Y15_N8
\STACK|ram~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~436_combout\ = (\a_aux[3]~1_combout\ & (((\STACK|ram~165_q\) # (\a_aux[2]~0_combout\)))) # (!\a_aux[3]~1_combout\ & (\STACK|ram~37_q\ & ((!\a_aux[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~37_q\,
	datab => \STACK|ram~165_q\,
	datac => \a_aux[3]~1_combout\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~436_combout\);

-- Location: LCCOMB_X18_Y15_N6
\STACK|ram~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~437_combout\ = (\STACK|ram~436_combout\ & (((\STACK|ram~229_q\) # (!\a_aux[2]~0_combout\)))) # (!\STACK|ram~436_combout\ & (\STACK|ram~101_q\ & ((\a_aux[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~101_q\,
	datab => \STACK|ram~229_q\,
	datac => \STACK|ram~436_combout\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~437_combout\);

-- Location: LCCOMB_X21_Y15_N2
\STACK|ram~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~438_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~435_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~435_combout\ & ((\STACK|ram~437_combout\))) # (!\STACK|ram~435_combout\ & (\STACK|ram~430_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~430_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~435_combout\,
	datad => \STACK|ram~437_combout\,
	combout => \STACK|ram~438_combout\);

-- Location: FF_X21_Y16_N31
\PROGRAM_COUNTER|q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[0]~feeder_combout\,
	asdata => \STACK|ram~438_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(0));

-- Location: LCCOMB_X21_Y16_N12
\PROGRAM_MEMORY|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~5_combout\ = (!\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(2) & !\PROGRAM_COUNTER|q_aux\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux13~5_combout\);

-- Location: LCCOMB_X21_Y16_N4
\PROGRAM_MEMORY|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~1_combout\ = (\PROGRAM_COUNTER|q_aux\(3)) # ((\PROGRAM_COUNTER|q_aux\(4)) # ((\PROGRAM_COUNTER|q_aux\(0) & !\PROGRAM_COUNTER|q_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux13~1_combout\);

-- Location: LCCOMB_X21_Y16_N26
\PROGRAM_MEMORY|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~2_combout\ = (\PROGRAM_COUNTER|q_aux\(2) & (\PROGRAM_COUNTER|q_aux\(4) & (\PROGRAM_COUNTER|q_aux\(0) $ (\PROGRAM_COUNTER|q_aux\(3))))) # (!\PROGRAM_COUNTER|q_aux\(2) & ((\PROGRAM_COUNTER|q_aux\(0)) # ((\PROGRAM_COUNTER|q_aux\(3)) # 
-- (\PROGRAM_COUNTER|q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux13~2_combout\);

-- Location: LCCOMB_X21_Y16_N20
\PROGRAM_MEMORY|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~3_combout\ = (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(4) & (\PROGRAM_COUNTER|q_aux\(0) $ (!\PROGRAM_COUNTER|q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux13~3_combout\);

-- Location: LCCOMB_X21_Y16_N2
\PROGRAM_MEMORY|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~4_combout\ = (\PROGRAM_COUNTER|q_aux\(1) & ((\PROGRAM_COUNTER|q_aux\(5)) # ((!\PROGRAM_MEMORY|Mux13~2_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(1) & (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_MEMORY|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux13~2_combout\,
	datad => \PROGRAM_MEMORY|Mux13~3_combout\,
	combout => \PROGRAM_MEMORY|Mux13~4_combout\);

-- Location: LCCOMB_X21_Y16_N22
\PROGRAM_MEMORY|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~6_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_MEMORY|Mux13~4_combout\ & (!\PROGRAM_MEMORY|Mux13~5_combout\)) # (!\PROGRAM_MEMORY|Mux13~4_combout\ & ((\PROGRAM_MEMORY|Mux13~1_combout\))))) # (!\PROGRAM_COUNTER|q_aux\(5) & 
-- (((\PROGRAM_MEMORY|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux13~5_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux13~1_combout\,
	datad => \PROGRAM_MEMORY|Mux13~4_combout\,
	combout => \PROGRAM_MEMORY|Mux13~6_combout\);

-- Location: LCCOMB_X22_Y12_N0
\PROGRAM_MEMORY|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux13~7_combout\ = (\PROGRAM_MEMORY|Mux13~6_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux13~6_combout\,
	combout => \PROGRAM_MEMORY|Mux13~7_combout\);

-- Location: LCCOMB_X21_Y14_N8
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\Add5~3\ & (((\PROGRAM_MEMORY|Mux13~7_combout\) # (\PROGRAM_COUNTER|q_aux\(15))))) # (!\Add5~3\ & ((((\PROGRAM_MEMORY|Mux13~7_combout\) # (\PROGRAM_COUNTER|q_aux\(15))))))
-- \Add5~5\ = CARRY((!\Add5~3\ & ((\PROGRAM_MEMORY|Mux13~7_combout\) # (\PROGRAM_COUNTER|q_aux\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux13~7_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X22_Y13_N26
\PROGRAM_MEMORY|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux10~0_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & (((\PROGRAM_COUNTER|q_aux\(1)) # (!\PROGRAM_MEMORY|Mux13~0_combout\)) # (!\PROGRAM_COUNTER|q_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(5),
	datad => \PROGRAM_MEMORY|Mux13~0_combout\,
	combout => \PROGRAM_MEMORY|Mux10~0_combout\);

-- Location: LCCOMB_X22_Y16_N24
\PROGRAM_MEMORY|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux10~1_combout\ = (!\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux\(1) & ((!\PROGRAM_COUNTER|q_aux\(0)))) # (!\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(3),
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \PROGRAM_MEMORY|Mux10~1_combout\);

-- Location: LCCOMB_X22_Y13_N28
\PROGRAM_MEMORY|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux10~2_combout\ = (\PROGRAM_MEMORY|Mux8~1_combout\) # ((\PROGRAM_MEMORY|Mux10~0_combout\) # ((\PROGRAM_COUNTER|q_aux\(4) & \PROGRAM_MEMORY|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux8~1_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_MEMORY|Mux10~0_combout\,
	datad => \PROGRAM_MEMORY|Mux10~1_combout\,
	combout => \PROGRAM_MEMORY|Mux10~2_combout\);

-- Location: LCCOMB_X19_Y13_N0
\PROGRAM_MEMORY|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux10~4_combout\ = (\PROGRAM_MEMORY|Mux10~2_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux10~2_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \PROGRAM_MEMORY|Mux10~4_combout\);

-- Location: LCCOMB_X19_Y14_N6
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add4~3\ & (((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux10~4_combout\)))) # (!\Add4~3\ & ((((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux10~4_combout\)))))
-- \Add4~5\ = CARRY((!\Add4~3\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux10~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X19_Y14_N26
\offset_aux[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[2]~8_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & (\Add5~4_combout\))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & ((\Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add5~4_combout\,
	datad => \Add4~4_combout\,
	combout => \offset_aux[2]~8_combout\);

-- Location: LCCOMB_X19_Y15_N4
\PROGRAM_COUNTER|q_aux[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[2]~20_combout\ = ((\PROGRAM_COUNTER|q_aux\(2) $ (\offset_aux[2]~8_combout\ $ (!\PROGRAM_COUNTER|q_aux[1]~19\)))) # (GND)
-- \PROGRAM_COUNTER|q_aux[2]~21\ = CARRY((\PROGRAM_COUNTER|q_aux\(2) & ((\offset_aux[2]~8_combout\) # (!\PROGRAM_COUNTER|q_aux[1]~19\))) # (!\PROGRAM_COUNTER|q_aux\(2) & (\offset_aux[2]~8_combout\ & !\PROGRAM_COUNTER|q_aux[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \offset_aux[2]~8_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[1]~19\,
	combout => \PROGRAM_COUNTER|q_aux[2]~20_combout\,
	cout => \PROGRAM_COUNTER|q_aux[2]~21\);

-- Location: LCCOMB_X22_Y16_N30
\PROGRAM_COUNTER|q_aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[2]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[2]~20_combout\,
	combout => \PROGRAM_COUNTER|q_aux[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\PROGRAM_COUNTER|q_aux\(2) & (!\Add2~1\)) # (!\PROGRAM_COUNTER|q_aux\(2) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\PROGRAM_COUNTER|q_aux\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X14_Y12_N2
\STACK|ram~215feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~215feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \STACK|ram~215feeder_combout\);

-- Location: FF_X14_Y12_N3
\STACK|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~215feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~215_q\);

-- Location: FF_X13_Y12_N1
\STACK|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~87_q\);

-- Location: LCCOMB_X14_Y12_N16
\STACK|ram~151feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~151feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \STACK|ram~151feeder_combout\);

-- Location: FF_X14_Y12_N17
\STACK|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~151feeder_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~151_q\);

-- Location: FF_X13_Y12_N7
\STACK|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~23_q\);

-- Location: LCCOMB_X13_Y12_N6
\STACK|ram~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~449_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~151_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~151_q\,
	datac => \STACK|ram~23_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~449_combout\);

-- Location: LCCOMB_X13_Y12_N0
\STACK|ram~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~450_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~449_combout\ & (\STACK|ram~215_q\)) # (!\STACK|ram~449_combout\ & ((\STACK|ram~87_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~449_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~215_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~87_q\,
	datad => \STACK|ram~449_combout\,
	combout => \STACK|ram~450_combout\);

-- Location: LCCOMB_X14_Y14_N12
\STACK|ram~103feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~103feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \STACK|ram~103feeder_combout\);

-- Location: FF_X14_Y14_N13
\STACK|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~103feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~103_q\);

-- Location: FF_X16_Y14_N7
\STACK|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~39_q\);

-- Location: LCCOMB_X16_Y14_N6
\STACK|ram~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~456_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~103_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~39_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~103_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~39_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~456_combout\);

-- Location: FF_X18_Y14_N3
\STACK|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~231_q\);

-- Location: FF_X17_Y12_N3
\STACK|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~167_q\);

-- Location: LCCOMB_X17_Y12_N2
\STACK|ram~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~457_combout\ = (\STACK|ram~456_combout\ & ((\STACK|ram~231_q\) # ((!\a_aux[3]~1_combout\)))) # (!\STACK|ram~456_combout\ & (((\STACK|ram~167_q\ & \a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~456_combout\,
	datab => \STACK|ram~231_q\,
	datac => \STACK|ram~167_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~457_combout\);

-- Location: LCCOMB_X16_Y12_N22
\STACK|ram~119feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~119feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \STACK|ram~119feeder_combout\);

-- Location: FF_X16_Y12_N23
\STACK|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~119feeder_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~119_q\);

-- Location: FF_X16_Y13_N9
\STACK|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~247_q\);

-- Location: LCCOMB_X16_Y15_N6
\STACK|ram~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~55feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~2_combout\,
	combout => \STACK|ram~55feeder_combout\);

-- Location: FF_X16_Y15_N7
\STACK|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~55feeder_combout\,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~55_q\);

-- Location: LCCOMB_X18_Y12_N10
\STACK|ram~183feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~183feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \STACK|ram~183feeder_combout\);

-- Location: FF_X18_Y12_N11
\STACK|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~183feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~183_q\);

-- Location: LCCOMB_X16_Y13_N2
\STACK|ram~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~453_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & ((\STACK|ram~183_q\))) # (!\a_aux[3]~1_combout\ & (\STACK|ram~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~55_q\,
	datab => \STACK|ram~183_q\,
	datac => \a_aux[2]~0_combout\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~453_combout\);

-- Location: LCCOMB_X16_Y13_N8
\STACK|ram~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~454_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~453_combout\ & ((\STACK|ram~247_q\))) # (!\STACK|ram~453_combout\ & (\STACK|ram~119_q\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~453_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~119_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~247_q\,
	datad => \STACK|ram~453_combout\,
	combout => \STACK|ram~454_combout\);

-- Location: LCCOMB_X12_Y14_N22
\STACK|ram~263feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~263feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \STACK|ram~263feeder_combout\);

-- Location: FF_X12_Y14_N23
\STACK|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~263feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~263_q\);

-- Location: FF_X12_Y14_N9
\STACK|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~199_q\);

-- Location: LCCOMB_X17_Y14_N20
\STACK|ram~135feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~135feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~2_combout\,
	combout => \STACK|ram~135feeder_combout\);

-- Location: FF_X17_Y14_N21
\STACK|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~135feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~135_q\);

-- Location: FF_X16_Y14_N21
\STACK|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~71_q\);

-- Location: LCCOMB_X16_Y14_N20
\STACK|ram~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~451_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~135_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~71_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~135_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~71_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~451_combout\);

-- Location: LCCOMB_X12_Y14_N8
\STACK|ram~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~452_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~451_combout\ & (\STACK|ram~263_q\)) # (!\STACK|ram~451_combout\ & ((\STACK|ram~199_q\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~451_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK|ram~263_q\,
	datac => \STACK|ram~199_q\,
	datad => \STACK|ram~451_combout\,
	combout => \STACK|ram~452_combout\);

-- Location: LCCOMB_X19_Y13_N12
\STACK|ram~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~455_combout\ = (\STACK_POINTER|q_aux\(0) & (\STACK|ram~454_combout\ & (!\a_aux[1]~2_combout\))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\) # (\STACK|ram~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~454_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \STACK|ram~452_combout\,
	combout => \STACK|ram~455_combout\);

-- Location: LCCOMB_X19_Y13_N6
\STACK|ram~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~458_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~455_combout\ & ((\STACK|ram~457_combout\))) # (!\STACK|ram~455_combout\ & (\STACK|ram~450_combout\)))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~455_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~450_combout\,
	datac => \STACK|ram~457_combout\,
	datad => \STACK|ram~455_combout\,
	combout => \STACK|ram~458_combout\);

-- Location: FF_X22_Y16_N31
\PROGRAM_COUNTER|q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[2]~feeder_combout\,
	asdata => \STACK|ram~458_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(2));

-- Location: LCCOMB_X22_Y16_N26
\PROGRAM_MEMORY|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux7~1_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (((\PROGRAM_COUNTER|q_aux\(1)) # (!\PROGRAM_COUNTER|q_aux\(0))))) # (!\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux\(1) & ((!\PROGRAM_COUNTER|q_aux\(0)))) # 
-- (!\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(2) & \PROGRAM_COUNTER|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \PROGRAM_MEMORY|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y16_N28
\PROGRAM_MEMORY|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux7~2_combout\ = (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(4) & ((!\PROGRAM_MEMORY|Mux7~0_combout\))) # (!\PROGRAM_COUNTER|q_aux\(4) & (!\PROGRAM_MEMORY|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux7~1_combout\,
	datad => \PROGRAM_MEMORY|Mux7~0_combout\,
	combout => \PROGRAM_MEMORY|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y12_N16
\PROGRAM_MEMORY|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux7~3_combout\ = (!\PROGRAM_MEMORY|Mux7~2_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux7~2_combout\,
	combout => \PROGRAM_MEMORY|Mux7~3_combout\);

-- Location: LCCOMB_X22_Y14_N22
\PROGRAM_MEMORY|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~2_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(3) & ((!\PROGRAM_COUNTER|q_aux\(2)) # (!\PROGRAM_COUNTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux8~2_combout\);

-- Location: LCCOMB_X22_Y14_N8
\PROGRAM_MEMORY|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~3_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(4)) # (!\PROGRAM_MEMORY|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux8~2_combout\,
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux8~3_combout\);

-- Location: LCCOMB_X23_Y16_N4
\PROGRAM_MEMORY|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~4_combout\ = (!\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(1) & (!\PROGRAM_COUNTER|q_aux\(3) & \PROGRAM_COUNTER|q_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(3),
	datad => \PROGRAM_COUNTER|q_aux\(2),
	combout => \PROGRAM_MEMORY|Mux8~4_combout\);

-- Location: LCCOMB_X23_Y16_N6
\PROGRAM_MEMORY|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~5_combout\ = (\PROGRAM_MEMORY|Mux8~4_combout\ & \PROGRAM_COUNTER|q_aux\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_MEMORY|Mux8~4_combout\,
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux8~5_combout\);

-- Location: LCCOMB_X22_Y14_N6
\PROGRAM_MEMORY|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~6_combout\ = (\PROGRAM_MEMORY|Mux8~1_combout\) # (((\PROGRAM_MEMORY|Mux8~3_combout\) # (\PROGRAM_MEMORY|Mux8~5_combout\)) # (!\PROGRAM_MEMORY|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux8~1_combout\,
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux8~3_combout\,
	datad => \PROGRAM_MEMORY|Mux8~5_combout\,
	combout => \PROGRAM_MEMORY|Mux8~6_combout\);

-- Location: LCCOMB_X19_Y14_N8
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\PROGRAM_COUNTER|q_aux\(15) & (((!\Add4~5\)))) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux9~8_combout\ & (!\Add4~5\)) # (!\PROGRAM_MEMORY|Mux9~8_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY(((!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux9~8_combout\)) # (!\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux9~8_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X19_Y14_N10
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\Add4~7\ & (((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux8~6_combout\)))) # (!\Add4~7\ & ((((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux8~6_combout\)))))
-- \Add4~9\ = CARRY((!\Add4~7\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux8~6_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X19_Y14_N12
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\PROGRAM_COUNTER|q_aux\(15) & (((!\Add4~9\)))) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux7~3_combout\ & (!\Add4~9\)) # (!\PROGRAM_MEMORY|Mux7~3_combout\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY(((!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux7~3_combout\)) # (!\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux7~3_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X21_Y14_N10
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\PROGRAM_MEMORY|Mux12~2_combout\ & (((!\Add5~5\)))) # (!\PROGRAM_MEMORY|Mux12~2_combout\ & ((\PROGRAM_COUNTER|q_aux\(15) & (!\Add5~5\)) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY(((!\PROGRAM_MEMORY|Mux12~2_combout\ & !\PROGRAM_COUNTER|q_aux\(15))) # (!\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux12~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X21_Y14_N12
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\Add5~7\ & (((\PROGRAM_MEMORY|Mux11~4_combout\) # (\PROGRAM_COUNTER|q_aux\(15))))) # (!\Add5~7\ & ((((\PROGRAM_MEMORY|Mux11~4_combout\) # (\PROGRAM_COUNTER|q_aux\(15))))))
-- \Add5~9\ = CARRY((!\Add5~7\ & ((\PROGRAM_MEMORY|Mux11~4_combout\) # (\PROGRAM_COUNTER|q_aux\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux11~4_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X21_Y14_N14
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\PROGRAM_COUNTER|q_aux\(15) & (((!\Add5~9\)))) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux10~4_combout\ & (!\Add5~9\)) # (!\PROGRAM_MEMORY|Mux10~4_combout\ & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY(((!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux10~4_combout\)) # (!\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux10~4_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X19_Y14_N28
\offset_aux[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[5]~5_combout\ = (\branch_aux~1_combout\ & (\Add4~10_combout\ & (!\INSTR_DECODER|Mux22~5_combout\))) # (!\branch_aux~1_combout\ & (((\INSTR_DECODER|Mux22~5_combout\ & \Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \branch_aux~1_combout\,
	datac => \INSTR_DECODER|Mux22~5_combout\,
	datad => \Add5~10_combout\,
	combout => \offset_aux[5]~5_combout\);

-- Location: LCCOMB_X19_Y15_N6
\PROGRAM_COUNTER|q_aux[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[3]~22_combout\ = (\offset_aux[3]~7_combout\ & ((\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux[2]~21\ & VCC)) # (!\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux[2]~21\)))) # (!\offset_aux[3]~7_combout\ & 
-- ((\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux[2]~21\)) # (!\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux[2]~21\) # (GND)))))
-- \PROGRAM_COUNTER|q_aux[3]~23\ = CARRY((\offset_aux[3]~7_combout\ & (!\PROGRAM_COUNTER|q_aux\(3) & !\PROGRAM_COUNTER|q_aux[2]~21\)) # (!\offset_aux[3]~7_combout\ & ((!\PROGRAM_COUNTER|q_aux[2]~21\) # (!\PROGRAM_COUNTER|q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset_aux[3]~7_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[2]~21\,
	combout => \PROGRAM_COUNTER|q_aux[3]~22_combout\,
	cout => \PROGRAM_COUNTER|q_aux[3]~23\);

-- Location: LCCOMB_X19_Y15_N8
\PROGRAM_COUNTER|q_aux[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[4]~24_combout\ = ((\offset_aux[4]~6_combout\ $ (\PROGRAM_COUNTER|q_aux\(4) $ (!\PROGRAM_COUNTER|q_aux[3]~23\)))) # (GND)
-- \PROGRAM_COUNTER|q_aux[4]~25\ = CARRY((\offset_aux[4]~6_combout\ & ((\PROGRAM_COUNTER|q_aux\(4)) # (!\PROGRAM_COUNTER|q_aux[3]~23\))) # (!\offset_aux[4]~6_combout\ & (\PROGRAM_COUNTER|q_aux\(4) & !\PROGRAM_COUNTER|q_aux[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset_aux[4]~6_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[3]~23\,
	combout => \PROGRAM_COUNTER|q_aux[4]~24_combout\,
	cout => \PROGRAM_COUNTER|q_aux[4]~25\);

-- Location: LCCOMB_X19_Y15_N10
\PROGRAM_COUNTER|q_aux[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[5]~26_combout\ = (\offset_aux[5]~5_combout\ & ((\PROGRAM_COUNTER|q_aux\(5) & (\PROGRAM_COUNTER|q_aux[4]~25\ & VCC)) # (!\PROGRAM_COUNTER|q_aux\(5) & (!\PROGRAM_COUNTER|q_aux[4]~25\)))) # (!\offset_aux[5]~5_combout\ & 
-- ((\PROGRAM_COUNTER|q_aux\(5) & (!\PROGRAM_COUNTER|q_aux[4]~25\)) # (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux[4]~25\) # (GND)))))
-- \PROGRAM_COUNTER|q_aux[5]~27\ = CARRY((\offset_aux[5]~5_combout\ & (!\PROGRAM_COUNTER|q_aux\(5) & !\PROGRAM_COUNTER|q_aux[4]~25\)) # (!\offset_aux[5]~5_combout\ & ((!\PROGRAM_COUNTER|q_aux[4]~25\) # (!\PROGRAM_COUNTER|q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset_aux[5]~5_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[4]~25\,
	combout => \PROGRAM_COUNTER|q_aux[5]~26_combout\,
	cout => \PROGRAM_COUNTER|q_aux[5]~27\);

-- Location: LCCOMB_X22_Y15_N2
\PROGRAM_COUNTER|q_aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[5]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[5]~26_combout\,
	combout => \PROGRAM_COUNTER|q_aux[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (\Add2~3\ $ (GND))) # (!\PROGRAM_COUNTER|q_aux\(3) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\PROGRAM_COUNTER|q_aux\(3) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X18_Y14_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\PROGRAM_COUNTER|q_aux\(4) & (!\Add2~5\)) # (!\PROGRAM_COUNTER|q_aux\(4) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\PROGRAM_COUNTER|q_aux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X18_Y14_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & (\Add2~7\ $ (GND))) # (!\PROGRAM_COUNTER|q_aux\(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\PROGRAM_COUNTER|q_aux\(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X14_Y14_N14
\STACK|ram~106feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~106feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~8_combout\,
	combout => \STACK|ram~106feeder_combout\);

-- Location: FF_X14_Y14_N15
\STACK|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~106feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~106_q\);

-- Location: FF_X14_Y14_N1
\STACK|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~90_q\);

-- Location: LCCOMB_X13_Y14_N24
\STACK|ram~138feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~138feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \STACK|ram~138feeder_combout\);

-- Location: FF_X13_Y14_N25
\STACK|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~138feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~138_q\);

-- Location: FF_X13_Y14_N19
\STACK|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~122_q\);

-- Location: LCCOMB_X13_Y14_N18
\STACK|ram~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~419_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~122_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~138_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~138_q\,
	datac => \STACK|ram~122_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~419_combout\);

-- Location: LCCOMB_X14_Y14_N0
\STACK|ram~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~420_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~419_combout\ & (\STACK|ram~106_q\)) # (!\STACK|ram~419_combout\ & ((\STACK|ram~90_q\))))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~106_q\,
	datac => \STACK|ram~90_q\,
	datad => \STACK|ram~419_combout\,
	combout => \STACK|ram~420_combout\);

-- Location: FF_X18_Y14_N9
\STACK|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~234_q\);

-- Location: FF_X13_Y13_N27
\STACK|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~218_q\);

-- Location: LCCOMB_X12_Y14_N14
\STACK|ram~266feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~266feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \STACK|ram~266feeder_combout\);

-- Location: FF_X12_Y14_N15
\STACK|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~266feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~266_q\);

-- Location: FF_X12_Y13_N13
\STACK|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~250_q\);

-- Location: LCCOMB_X12_Y13_N12
\STACK|ram~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~426_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~250_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~266_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~266_q\,
	datac => \STACK|ram~250_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~426_combout\);

-- Location: LCCOMB_X13_Y13_N26
\STACK|ram~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~427_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~426_combout\ & (\STACK|ram~234_q\)) # (!\STACK|ram~426_combout\ & ((\STACK|ram~218_q\))))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~426_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~234_q\,
	datab => \a_aux[1]~2_combout\,
	datac => \STACK|ram~218_q\,
	datad => \STACK|ram~426_combout\,
	combout => \STACK|ram~427_combout\);

-- Location: LCCOMB_X17_Y15_N18
\STACK|ram~74feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~74feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \STACK|ram~74feeder_combout\);

-- Location: FF_X17_Y15_N19
\STACK|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~74feeder_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~74_q\);

-- Location: FF_X17_Y15_N9
\STACK|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~42_q\);

-- Location: LCCOMB_X16_Y15_N26
\STACK|ram~26feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~26feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \STACK|ram~26feeder_combout\);

-- Location: FF_X16_Y15_N27
\STACK|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~26feeder_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~26_q\);

-- Location: FF_X16_Y15_N21
\STACK|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~58_q\);

-- Location: LCCOMB_X16_Y15_N20
\STACK|ram~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~423_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~26_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~58_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~26_q\,
	datac => \STACK|ram~58_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~423_combout\);

-- Location: LCCOMB_X17_Y15_N8
\STACK|ram~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~424_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~423_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~423_combout\ & ((\STACK|ram~42_q\))) # (!\STACK|ram~423_combout\ & (\STACK|ram~74_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~74_q\,
	datac => \STACK|ram~42_q\,
	datad => \STACK|ram~423_combout\,
	combout => \STACK|ram~424_combout\);

-- Location: LCCOMB_X14_Y13_N26
\STACK|ram~202feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~202feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \STACK|ram~202feeder_combout\);

-- Location: FF_X14_Y13_N27
\STACK|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~202feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~202_q\);

-- Location: FF_X14_Y13_N5
\STACK|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~170_q\);

-- Location: LCCOMB_X13_Y13_N28
\STACK|ram~154feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~154feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \STACK|ram~154feeder_combout\);

-- Location: FF_X13_Y13_N29
\STACK|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~154feeder_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~154_q\);

-- Location: FF_X12_Y13_N3
\STACK|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	sload => VCC,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~186_q\);

-- Location: LCCOMB_X12_Y13_N2
\STACK|ram~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~421_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~154_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~186_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~154_q\,
	datac => \STACK|ram~186_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~421_combout\);

-- Location: LCCOMB_X14_Y13_N4
\STACK|ram~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~422_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~421_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~421_combout\ & ((\STACK|ram~170_q\))) # (!\STACK|ram~421_combout\ & (\STACK|ram~202_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~202_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~170_q\,
	datad => \STACK|ram~421_combout\,
	combout => \STACK|ram~422_combout\);

-- Location: LCCOMB_X14_Y15_N10
\STACK|ram~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~425_combout\ = (\a_aux[2]~0_combout\ & (\a_aux[3]~1_combout\)) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & ((\STACK|ram~422_combout\))) # (!\a_aux[3]~1_combout\ & (\STACK|ram~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~424_combout\,
	datad => \STACK|ram~422_combout\,
	combout => \STACK|ram~425_combout\);

-- Location: LCCOMB_X14_Y15_N4
\STACK|ram~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~428_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~425_combout\ & ((\STACK|ram~427_combout\))) # (!\STACK|ram~425_combout\ & (\STACK|ram~420_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~425_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~420_combout\,
	datac => \STACK|ram~427_combout\,
	datad => \STACK|ram~425_combout\,
	combout => \STACK|ram~428_combout\);

-- Location: FF_X22_Y15_N3
\PROGRAM_COUNTER|q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[5]~feeder_combout\,
	asdata => \STACK|ram~428_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(5));

-- Location: LCCOMB_X22_Y14_N14
\PROGRAM_MEMORY|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux11~2_combout\ = (\PROGRAM_COUNTER|q_aux\(1) & ((\PROGRAM_COUNTER|q_aux\(2)) # ((!\PROGRAM_COUNTER|q_aux\(0))))) # (!\PROGRAM_COUNTER|q_aux\(1) & ((\PROGRAM_COUNTER|q_aux\(0) $ (\PROGRAM_COUNTER|q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux11~2_combout\);

-- Location: LCCOMB_X22_Y14_N20
\PROGRAM_MEMORY|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux11~1_combout\ = (!\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux\(2)) # (\PROGRAM_COUNTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y14_N28
\PROGRAM_MEMORY|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux11~3_combout\ = (\PROGRAM_COUNTER|q_aux\(4) & (((\PROGRAM_MEMORY|Mux11~1_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(4) & (!\PROGRAM_COUNTER|q_aux\(5) & (!\PROGRAM_MEMORY|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux11~2_combout\,
	datad => \PROGRAM_MEMORY|Mux11~1_combout\,
	combout => \PROGRAM_MEMORY|Mux11~3_combout\);

-- Location: LCCOMB_X21_Y12_N0
\PROGRAM_MEMORY|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux11~0_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(1) $ (!\PROGRAM_COUNTER|q_aux\(2))) # (!\PROGRAM_MEMORY|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(5),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_MEMORY|Mux13~0_combout\,
	combout => \PROGRAM_MEMORY|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y13_N20
\PROGRAM_MEMORY|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux11~4_combout\ = ((\PROGRAM_MEMORY|Mux11~3_combout\) # (\PROGRAM_MEMORY|Mux11~0_combout\)) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux11~3_combout\,
	datad => \PROGRAM_MEMORY|Mux11~0_combout\,
	combout => \PROGRAM_MEMORY|Mux11~4_combout\);

-- Location: LCCOMB_X19_Y14_N22
\offset_aux[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[4]~6_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & (\Add5~8_combout\))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & ((\Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add5~8_combout\,
	datad => \Add4~8_combout\,
	combout => \offset_aux[4]~6_combout\);

-- Location: LCCOMB_X22_Y13_N4
\PROGRAM_COUNTER|q_aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[4]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[4]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[4]~24_combout\,
	combout => \PROGRAM_COUNTER|q_aux[4]~feeder_combout\);

-- Location: FF_X18_Y14_N7
\STACK|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~233_q\);

-- Location: FF_X14_Y14_N31
\STACK|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~105_q\);

-- Location: LCCOMB_X17_Y12_N6
\STACK|ram~169feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~169feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \STACK|ram~169feeder_combout\);

-- Location: FF_X17_Y12_N7
\STACK|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~169feeder_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~169_q\);

-- Location: FF_X16_Y14_N29
\STACK|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~41_q\);

-- Location: LCCOMB_X16_Y14_N28
\STACK|ram~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~466_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~169_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~169_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~41_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~466_combout\);

-- Location: LCCOMB_X14_Y14_N30
\STACK|ram~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~467_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~466_combout\ & (\STACK|ram~233_q\)) # (!\STACK|ram~466_combout\ & ((\STACK|ram~105_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~233_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~105_q\,
	datad => \STACK|ram~466_combout\,
	combout => \STACK|ram~467_combout\);

-- Location: LCCOMB_X16_Y12_N28
\STACK|ram~121feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~121feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~6_combout\,
	combout => \STACK|ram~121feeder_combout\);

-- Location: FF_X16_Y12_N29
\STACK|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~121feeder_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~121_q\);

-- Location: FF_X19_Y12_N5
\STACK|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~57_q\);

-- Location: LCCOMB_X19_Y12_N4
\STACK|ram~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~463_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~121_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~57_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~121_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~57_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~463_combout\);

-- Location: LCCOMB_X18_Y12_N28
\STACK|ram~185feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~185feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \STACK|ram~185feeder_combout\);

-- Location: FF_X18_Y12_N29
\STACK|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~185feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~185_q\);

-- Location: FF_X18_Y12_N7
\STACK|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~249_q\);

-- Location: LCCOMB_X18_Y12_N6
\STACK|ram~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~464_combout\ = (\STACK|ram~463_combout\ & (((\STACK|ram~249_q\) # (!\a_aux[3]~1_combout\)))) # (!\STACK|ram~463_combout\ & (\STACK|ram~185_q\ & ((\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~463_combout\,
	datab => \STACK|ram~185_q\,
	datac => \STACK|ram~249_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~464_combout\);

-- Location: LCCOMB_X14_Y12_N26
\STACK|ram~217feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~217feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \STACK|ram~217feeder_combout\);

-- Location: FF_X14_Y12_N27
\STACK|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~217feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~217_q\);

-- Location: FF_X14_Y12_N13
\STACK|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~153_q\);

-- Location: LCCOMB_X13_Y12_N20
\STACK|ram~89feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~89feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \STACK|ram~89feeder_combout\);

-- Location: FF_X13_Y12_N21
\STACK|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~89feeder_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~89_q\);

-- Location: FF_X13_Y12_N15
\STACK|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~25_q\);

-- Location: LCCOMB_X13_Y12_N14
\STACK|ram~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~461_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~89_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~25_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~89_q\,
	datac => \STACK|ram~25_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~461_combout\);

-- Location: LCCOMB_X14_Y12_N12
\STACK|ram~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~462_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~461_combout\ & (\STACK|ram~217_q\)) # (!\STACK|ram~461_combout\ & ((\STACK|ram~153_q\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~461_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~217_q\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~153_q\,
	datad => \STACK|ram~461_combout\,
	combout => \STACK|ram~462_combout\);

-- Location: LCCOMB_X17_Y12_N0
\STACK|ram~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~465_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & ((\STACK|ram~462_combout\))) # (!\a_aux[1]~2_combout\ & (\STACK|ram~464_combout\)))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~464_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \STACK|ram~462_combout\,
	combout => \STACK|ram~465_combout\);

-- Location: FF_X17_Y13_N31
\STACK|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~137_q\);

-- Location: LCCOMB_X14_Y13_N14
\STACK|ram~201feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~201feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \STACK|ram~201feeder_combout\);

-- Location: FF_X14_Y13_N15
\STACK|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~201feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~201_q\);

-- Location: FF_X18_Y13_N29
\STACK|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~73_q\);

-- Location: LCCOMB_X18_Y13_N28
\STACK|ram~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~459_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~201_q\) # ((\a_aux[2]~0_combout\)))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~73_q\ & !\a_aux[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~201_q\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~73_q\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~459_combout\);

-- Location: FF_X18_Y13_N3
\STACK|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	sload => VCC,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~265_q\);

-- Location: LCCOMB_X18_Y13_N2
\STACK|ram~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~460_combout\ = (\STACK|ram~459_combout\ & (((\STACK|ram~265_q\) # (!\a_aux[2]~0_combout\)))) # (!\STACK|ram~459_combout\ & (\STACK|ram~137_q\ & ((\a_aux[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~137_q\,
	datab => \STACK|ram~459_combout\,
	datac => \STACK|ram~265_q\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~460_combout\);

-- Location: LCCOMB_X18_Y13_N24
\STACK|ram~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~468_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~465_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~465_combout\ & (\STACK|ram~467_combout\)) # (!\STACK|ram~465_combout\ & ((\STACK|ram~460_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~467_combout\,
	datac => \STACK|ram~465_combout\,
	datad => \STACK|ram~460_combout\,
	combout => \STACK|ram~468_combout\);

-- Location: FF_X22_Y13_N5
\PROGRAM_COUNTER|q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[4]~feeder_combout\,
	asdata => \STACK|ram~468_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(4));

-- Location: LCCOMB_X22_Y16_N8
\PROGRAM_MEMORY|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux9~6_combout\ = (\PROGRAM_COUNTER|q_aux\(2)) # ((\PROGRAM_COUNTER|q_aux\(1) & ((!\PROGRAM_COUNTER|q_aux\(0)) # (!\PROGRAM_COUNTER|q_aux\(3)))) # (!\PROGRAM_COUNTER|q_aux\(1) & ((\PROGRAM_COUNTER|q_aux\(3)) # 
-- (\PROGRAM_COUNTER|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(3),
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \PROGRAM_MEMORY|Mux9~6_combout\);

-- Location: LCCOMB_X22_Y16_N10
\PROGRAM_MEMORY|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux9~5_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & (\PROGRAM_COUNTER|q_aux\(2) & ((\PROGRAM_COUNTER|q_aux\(1))))) # (!\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(2) $ (\PROGRAM_COUNTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \PROGRAM_MEMORY|Mux9~5_combout\);

-- Location: LCCOMB_X22_Y16_N2
\PROGRAM_MEMORY|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux9~7_combout\ = (\PROGRAM_COUNTER|q_aux\(4) & (((\PROGRAM_MEMORY|Mux9~5_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(4) & (!\PROGRAM_COUNTER|q_aux\(5) & (!\PROGRAM_MEMORY|Mux9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux9~6_combout\,
	datad => \PROGRAM_MEMORY|Mux9~5_combout\,
	combout => \PROGRAM_MEMORY|Mux9~7_combout\);

-- Location: LCCOMB_X23_Y16_N16
\PROGRAM_MEMORY|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux9~10_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & (((\PROGRAM_COUNTER|q_aux\(1) & \PROGRAM_COUNTER|q_aux\(2))) # (!\PROGRAM_MEMORY|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(5),
	datab => \PROGRAM_COUNTER|q_aux\(1),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_MEMORY|Mux13~0_combout\,
	combout => \PROGRAM_MEMORY|Mux9~10_combout\);

-- Location: LCCOMB_X23_Y13_N22
\PROGRAM_MEMORY|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux9~8_combout\ = (\PROGRAM_MEMORY|Mux9~7_combout\) # ((\PROGRAM_MEMORY|Mux9~10_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux9~7_combout\,
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux9~10_combout\,
	combout => \PROGRAM_MEMORY|Mux9~8_combout\);

-- Location: LCCOMB_X19_Y14_N20
\offset_aux[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[3]~7_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & ((\Add5~6_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & (\Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add4~6_combout\,
	datad => \Add5~6_combout\,
	combout => \offset_aux[3]~7_combout\);

-- Location: LCCOMB_X21_Y16_N28
\PROGRAM_COUNTER|q_aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[3]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[3]~22_combout\,
	combout => \PROGRAM_COUNTER|q_aux[3]~feeder_combout\);

-- Location: LCCOMB_X14_Y13_N20
\STACK|ram~168feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~168feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \STACK|ram~168feeder_combout\);

-- Location: FF_X14_Y13_N21
\STACK|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~168feeder_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~168_q\);

-- Location: FF_X13_Y13_N5
\STACK|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~152_q\);

-- Location: LCCOMB_X14_Y13_N30
\STACK|ram~200feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~200feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \STACK|ram~200feeder_combout\);

-- Location: FF_X14_Y13_N31
\STACK|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~200feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~200_q\);

-- Location: FF_X12_Y13_N23
\STACK|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~184_q\);

-- Location: LCCOMB_X12_Y13_N22
\STACK|ram~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~409_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~184_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~200_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~200_q\,
	datac => \STACK|ram~184_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~409_combout\);

-- Location: LCCOMB_X13_Y13_N4
\STACK|ram~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~410_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~409_combout\ & (\STACK|ram~168_q\)) # (!\STACK|ram~409_combout\ & ((\STACK|ram~152_q\))))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~409_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~168_q\,
	datab => \a_aux[1]~2_combout\,
	datac => \STACK|ram~152_q\,
	datad => \STACK|ram~409_combout\,
	combout => \STACK|ram~410_combout\);

-- Location: FF_X18_Y14_N5
\STACK|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~232_q\);

-- Location: FF_X14_Y15_N27
\STACK|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~264_q\);

-- Location: LCCOMB_X13_Y13_N18
\STACK|ram~216feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~216feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \STACK|ram~216feeder_combout\);

-- Location: FF_X13_Y13_N19
\STACK|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~216feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~216_q\);

-- Location: FF_X12_Y13_N21
\STACK|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~248_q\);

-- Location: LCCOMB_X12_Y13_N20
\STACK|ram~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~416_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~216_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~248_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~216_q\,
	datac => \STACK|ram~248_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~416_combout\);

-- Location: LCCOMB_X14_Y15_N26
\STACK|ram~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~417_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~416_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~416_combout\ & (\STACK|ram~232_q\)) # (!\STACK|ram~416_combout\ & ((\STACK|ram~264_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~232_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~264_q\,
	datad => \STACK|ram~416_combout\,
	combout => \STACK|ram~417_combout\);

-- Location: LCCOMB_X17_Y14_N26
\STACK|ram~136feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~136feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \STACK|ram~136feeder_combout\);

-- Location: FF_X17_Y14_N27
\STACK|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~136feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~136_q\);

-- Location: FF_X14_Y14_N11
\STACK|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~104_q\);

-- Location: LCCOMB_X14_Y15_N30
\STACK|ram~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~88feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \STACK|ram~88feeder_combout\);

-- Location: FF_X14_Y15_N31
\STACK|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~88feeder_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~88_q\);

-- Location: FF_X13_Y14_N3
\STACK|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~120_q\);

-- Location: LCCOMB_X13_Y14_N2
\STACK|ram~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~411_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~88_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~120_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~88_q\,
	datac => \STACK|ram~120_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~411_combout\);

-- Location: LCCOMB_X14_Y14_N10
\STACK|ram~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~412_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~411_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~411_combout\ & ((\STACK|ram~104_q\))) # (!\STACK|ram~411_combout\ & (\STACK|ram~136_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~136_q\,
	datac => \STACK|ram~104_q\,
	datad => \STACK|ram~411_combout\,
	combout => \STACK|ram~412_combout\);

-- Location: LCCOMB_X16_Y14_N26
\STACK|ram~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~72feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \STACK|ram~72feeder_combout\);

-- Location: FF_X16_Y14_N27
\STACK|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~72feeder_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~72_q\);

-- Location: FF_X16_Y15_N5
\STACK|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~56_q\);

-- Location: LCCOMB_X16_Y15_N4
\STACK|ram~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~413_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~56_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~72_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~72_q\,
	datac => \STACK|ram~56_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~413_combout\);

-- Location: FF_X17_Y15_N5
\STACK|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~40_q\);

-- Location: LCCOMB_X16_Y15_N2
\STACK|ram~24feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~24feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \STACK|ram~24feeder_combout\);

-- Location: FF_X16_Y15_N3
\STACK|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~24feeder_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~24_q\);

-- Location: LCCOMB_X17_Y15_N4
\STACK|ram~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~414_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~413_combout\ & (\STACK|ram~40_q\)) # (!\STACK|ram~413_combout\ & ((\STACK|ram~24_q\))))) # (!\a_aux[1]~2_combout\ & (\STACK|ram~413_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~413_combout\,
	datac => \STACK|ram~40_q\,
	datad => \STACK|ram~24_q\,
	combout => \STACK|ram~414_combout\);

-- Location: LCCOMB_X14_Y15_N20
\STACK|ram~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~415_combout\ = (\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\) # ((\STACK|ram~412_combout\)))) # (!\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & ((\STACK|ram~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~412_combout\,
	datad => \STACK|ram~414_combout\,
	combout => \STACK|ram~415_combout\);

-- Location: LCCOMB_X14_Y15_N0
\STACK|ram~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~418_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~415_combout\ & ((\STACK|ram~417_combout\))) # (!\STACK|ram~415_combout\ & (\STACK|ram~410_combout\)))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~410_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~417_combout\,
	datad => \STACK|ram~415_combout\,
	combout => \STACK|ram~418_combout\);

-- Location: FF_X21_Y16_N29
\PROGRAM_COUNTER|q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[3]~feeder_combout\,
	asdata => \STACK|ram~418_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(3));

-- Location: LCCOMB_X22_Y15_N4
\PROGRAM_MEMORY|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~6_combout\ = (\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(0) & ((!\PROGRAM_COUNTER|q_aux\(4)) # (!\PROGRAM_COUNTER|q_aux\(2))))) # (!\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(4) $ (((\PROGRAM_COUNTER|q_aux\(2) & 
-- \PROGRAM_COUNTER|q_aux\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(2),
	datac => \PROGRAM_COUNTER|q_aux\(0),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux2~6_combout\);

-- Location: LCCOMB_X21_Y15_N18
\PROGRAM_MEMORY|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~4_combout\ = (\PROGRAM_COUNTER|q_aux\(0) & (!\PROGRAM_COUNTER|q_aux\(4) & ((\PROGRAM_COUNTER|q_aux\(2)) # (!\PROGRAM_COUNTER|q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(1),
	combout => \PROGRAM_MEMORY|Mux2~4_combout\);

-- Location: LCCOMB_X22_Y15_N18
\PROGRAM_MEMORY|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~5_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(5) & ((!\PROGRAM_MEMORY|Mux2~4_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(5) & (\PROGRAM_MEMORY|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(3),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux2~3_combout\,
	datad => \PROGRAM_MEMORY|Mux2~4_combout\,
	combout => \PROGRAM_MEMORY|Mux2~5_combout\);

-- Location: LCCOMB_X22_Y15_N14
\PROGRAM_MEMORY|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~7_combout\ = (\PROGRAM_MEMORY|Mux2~5_combout\) # ((!\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(5) & \PROGRAM_MEMORY|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(3),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux2~6_combout\,
	datad => \PROGRAM_MEMORY|Mux2~5_combout\,
	combout => \PROGRAM_MEMORY|Mux2~7_combout\);

-- Location: LCCOMB_X22_Y15_N6
\PROGRAM_MEMORY|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~8_combout\ = (\PROGRAM_MEMORY|Mux2~2_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & \PROGRAM_MEMORY|Mux2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~7_combout\,
	combout => \PROGRAM_MEMORY|Mux2~8_combout\);

-- Location: LCCOMB_X22_Y13_N30
\PROGRAM_MEMORY|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux10~3_combout\ = (\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux10~2_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux10~2_combout\,
	combout => \PROGRAM_MEMORY|Mux10~3_combout\);

-- Location: LCCOMB_X21_Y16_N8
\PROGRAM_MEMORY|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux4~0_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux\(2) & (!\PROGRAM_COUNTER|q_aux\(0))) # (!\PROGRAM_COUNTER|q_aux\(2) & ((\PROGRAM_COUNTER|q_aux\(4)))))) # (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(0) $ 
-- (((\PROGRAM_COUNTER|q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y16_N18
\PROGRAM_MEMORY|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux4~1_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(0) & ((!\PROGRAM_COUNTER|q_aux\(4))))) # (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(2) $ (((\PROGRAM_COUNTER|q_aux\(0) & \PROGRAM_COUNTER|q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(0),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(2),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y16_N24
\PROGRAM_MEMORY|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux4~2_combout\ = (\PROGRAM_COUNTER|q_aux\(1) & ((\PROGRAM_COUNTER|q_aux\(5)) # ((!\PROGRAM_MEMORY|Mux4~0_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(1) & (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_MEMORY|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(1),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux4~0_combout\,
	datad => \PROGRAM_MEMORY|Mux4~1_combout\,
	combout => \PROGRAM_MEMORY|Mux4~2_combout\);

-- Location: LCCOMB_X21_Y16_N6
\PROGRAM_MEMORY|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux4~3_combout\ = (\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_MEMORY|Mux4~2_combout\ & (!\PROGRAM_MEMORY|Mux13~5_combout\)) # (!\PROGRAM_MEMORY|Mux4~2_combout\ & ((\PROGRAM_MEMORY|Mux13~1_combout\))))) # (!\PROGRAM_COUNTER|q_aux\(5) & 
-- (((\PROGRAM_MEMORY|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux13~5_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux13~1_combout\,
	datad => \PROGRAM_MEMORY|Mux4~2_combout\,
	combout => \PROGRAM_MEMORY|Mux4~3_combout\);

-- Location: LCCOMB_X22_Y12_N8
\INSTR_DECODER|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal0~2_combout\ = (\PROGRAM_MEMORY|Mux7~2_combout\ & (\PROGRAM_MEMORY|Mux2~2_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux7~2_combout\,
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux4~3_combout\,
	combout => \INSTR_DECODER|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y16_N22
\PROGRAM_MEMORY|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux6~3_combout\ = (\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(3) $ (((!\PROGRAM_COUNTER|q_aux\(0)) # (!\PROGRAM_COUNTER|q_aux\(2)))))) # (!\PROGRAM_COUNTER|q_aux\(1) & (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(2) $ 
-- (\PROGRAM_COUNTER|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(3),
	combout => \PROGRAM_MEMORY|Mux6~3_combout\);

-- Location: LCCOMB_X22_Y16_N16
\PROGRAM_MEMORY|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux6~4_combout\ = (\PROGRAM_COUNTER|q_aux\(2) & (!\PROGRAM_COUNTER|q_aux\(1) & (\PROGRAM_COUNTER|q_aux\(3) $ (\PROGRAM_COUNTER|q_aux\(0))))) # (!\PROGRAM_COUNTER|q_aux\(2) & (\PROGRAM_COUNTER|q_aux\(3) & ((\PROGRAM_COUNTER|q_aux\(1)) # 
-- (!\PROGRAM_COUNTER|q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(3),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(0),
	combout => \PROGRAM_MEMORY|Mux6~4_combout\);

-- Location: LCCOMB_X22_Y16_N14
\PROGRAM_MEMORY|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux6~5_combout\ = (\PROGRAM_COUNTER|q_aux\(4) & (((\PROGRAM_MEMORY|Mux6~3_combout\)))) # (!\PROGRAM_COUNTER|q_aux\(4) & (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_MEMORY|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(4),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux6~3_combout\,
	datad => \PROGRAM_MEMORY|Mux6~4_combout\,
	combout => \PROGRAM_MEMORY|Mux6~5_combout\);

-- Location: LCCOMB_X23_Y13_N12
\PROGRAM_MEMORY|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux6~6_combout\ = ((\PROGRAM_MEMORY|Mux15~2_combout\) # (\PROGRAM_MEMORY|Mux6~5_combout\)) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux15~2_combout\,
	datad => \PROGRAM_MEMORY|Mux6~5_combout\,
	combout => \PROGRAM_MEMORY|Mux6~6_combout\);

-- Location: LCCOMB_X22_Y14_N26
\PROGRAM_MEMORY|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux5~1_combout\ = (\PROGRAM_COUNTER|q_aux\(1) & ((\PROGRAM_COUNTER|q_aux\(3) & ((!\PROGRAM_COUNTER|q_aux\(4)))) # (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(0) & \PROGRAM_COUNTER|q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(3),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y16_N20
\PROGRAM_MEMORY|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux5~2_combout\ = (\PROGRAM_COUNTER|q_aux\(3) & (!\PROGRAM_COUNTER|q_aux\(0) & ((!\PROGRAM_COUNTER|q_aux\(4))))) # (!\PROGRAM_COUNTER|q_aux\(3) & (\PROGRAM_COUNTER|q_aux\(4) $ (((\PROGRAM_COUNTER|q_aux\(0) & 
-- !\PROGRAM_COUNTER|q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(3),
	datab => \PROGRAM_COUNTER|q_aux\(0),
	datac => \PROGRAM_COUNTER|q_aux\(1),
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y14_N16
\PROGRAM_MEMORY|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux5~3_combout\ = (!\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(2) & ((!\PROGRAM_MEMORY|Mux5~2_combout\))) # (!\PROGRAM_COUNTER|q_aux\(2) & (!\PROGRAM_MEMORY|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(2),
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux5~1_combout\,
	datad => \PROGRAM_MEMORY|Mux5~2_combout\,
	combout => \PROGRAM_MEMORY|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y14_N18
\PROGRAM_MEMORY|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux5~4_combout\ = (\PROGRAM_MEMORY|Mux2~2_combout\ & ((\PROGRAM_MEMORY|Mux5~3_combout\) # ((\PROGRAM_COUNTER|q_aux\(5) & \PROGRAM_MEMORY|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux5~0_combout\,
	datad => \PROGRAM_MEMORY|Mux5~3_combout\,
	combout => \PROGRAM_MEMORY|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y12_N10
\INSTR_DECODER|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal0~3_combout\ = (!\PROGRAM_MEMORY|Mux6~6_combout\ & (\PROGRAM_MEMORY|Mux5~4_combout\ & (!\PROGRAM_MEMORY|Mux11~4_combout\ & !\PROGRAM_MEMORY|Mux9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux6~6_combout\,
	datab => \PROGRAM_MEMORY|Mux5~4_combout\,
	datac => \PROGRAM_MEMORY|Mux11~4_combout\,
	datad => \PROGRAM_MEMORY|Mux9~8_combout\,
	combout => \INSTR_DECODER|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y12_N24
\INSTR_DECODER|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal0~4_combout\ = (!\PROGRAM_MEMORY|Mux14~4_combout\ & (!\PROGRAM_MEMORY|Mux8~6_combout\ & (\INSTR_DECODER|Equal0~2_combout\ & \INSTR_DECODER|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux14~4_combout\,
	datab => \PROGRAM_MEMORY|Mux8~6_combout\,
	datac => \INSTR_DECODER|Equal0~2_combout\,
	datad => \INSTR_DECODER|Equal0~3_combout\,
	combout => \INSTR_DECODER|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y12_N2
\INSTR_DECODER|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal0~5_combout\ = (!\PROGRAM_MEMORY|Mux10~3_combout\ & (!\PROGRAM_MEMORY|Mux13~7_combout\ & (\INSTR_DECODER|s1~0_combout\ & \INSTR_DECODER|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux10~3_combout\,
	datab => \PROGRAM_MEMORY|Mux13~7_combout\,
	datac => \INSTR_DECODER|s1~0_combout\,
	datad => \INSTR_DECODER|Equal0~4_combout\,
	combout => \INSTR_DECODER|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y12_N16
\INSTR_DECODER|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux19~0_combout\ = (\PROGRAM_MEMORY|Mux2~8_combout\ & (((!\INSTR_DECODER|Equal0~5_combout\ & !\PROGRAM_MEMORY|Mux0~4_combout\)) # (!\PROGRAM_MEMORY|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \INSTR_DECODER|Equal0~5_combout\,
	datac => \PROGRAM_MEMORY|Mux2~8_combout\,
	datad => \PROGRAM_MEMORY|Mux0~4_combout\,
	combout => \INSTR_DECODER|Mux19~0_combout\);

-- Location: LCCOMB_X28_Y14_N4
\INSTR_DECODER|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux18~0_combout\ = (\PROGRAM_COUNTER|q_aux\(15)) # ((!\PROGRAM_MEMORY|Mux5~4_combout\ & ((\PROGRAM_MEMORY|Mux4~3_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux5~4_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux4~3_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \INSTR_DECODER|Mux18~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\PROGRAM_MEMORY|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~10_combout\ = (\PROGRAM_MEMORY|Mux2~2_combout\ & \PROGRAM_MEMORY|Mux2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux2~7_combout\,
	combout => \PROGRAM_MEMORY|Mux2~10_combout\);

-- Location: LCCOMB_X28_Y14_N10
\INSTR_DECODER|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux5~3_combout\ = (\PROGRAM_MEMORY|Mux3~3_combout\ & (!\PROGRAM_MEMORY|Mux0~3_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (!\PROGRAM_MEMORY|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~10_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux0~3_combout\,
	combout => \INSTR_DECODER|Mux5~3_combout\);

-- Location: LCCOMB_X28_Y14_N28
\INSTR_DECODER|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux19~1_combout\ = (\PROGRAM_MEMORY|Mux1~2_combout\ & ((\INSTR_DECODER|Mux19~0_combout\) # ((!\INSTR_DECODER|Mux18~0_combout\ & \INSTR_DECODER|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~2_combout\,
	datab => \INSTR_DECODER|Mux19~0_combout\,
	datac => \INSTR_DECODER|Mux18~0_combout\,
	datad => \INSTR_DECODER|Mux5~3_combout\,
	combout => \INSTR_DECODER|Mux19~1_combout\);

-- Location: LCCOMB_X21_Y13_N26
\PROGRAM_MEMORY|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux1~3_combout\ = (\PROGRAM_MEMORY|Mux1~1_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux1~1_combout\,
	combout => \PROGRAM_MEMORY|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y13_N6
\INSTR_DECODER|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal1~2_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux14~4_combout\ $ (((\PROGRAM_MEMORY|Mux10~2_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux14~4_combout\,
	datad => \PROGRAM_MEMORY|Mux10~2_combout\,
	combout => \INSTR_DECODER|Equal1~2_combout\);

-- Location: LCCOMB_X23_Y13_N6
\INSTR_DECODER|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal1~0_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux6~6_combout\ $ (((!\PROGRAM_MEMORY|Mux2~2_combout\) # (!\PROGRAM_MEMORY|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux7~2_combout\,
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux6~6_combout\,
	combout => \INSTR_DECODER|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y13_N20
\INSTR_DECODER|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal1~1_combout\ = (!\INSTR_DECODER|Equal1~0_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux9~8_combout\ $ (!\PROGRAM_MEMORY|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Equal1~0_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux9~8_combout\,
	datad => \PROGRAM_MEMORY|Mux13~7_combout\,
	combout => \INSTR_DECODER|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y14_N12
\INSTR_DECODER|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal1~3_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux12~2_combout\ $ (\PROGRAM_MEMORY|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux12~2_combout\,
	datad => \PROGRAM_MEMORY|Mux8~6_combout\,
	combout => \INSTR_DECODER|Equal1~3_combout\);

-- Location: LCCOMB_X22_Y13_N12
\INSTR_DECODER|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal1~4_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux11~4_combout\ $ (\PROGRAM_MEMORY|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux11~4_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux15~5_combout\,
	combout => \INSTR_DECODER|Equal1~4_combout\);

-- Location: LCCOMB_X23_Y13_N2
\INSTR_DECODER|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal1~5_combout\ = (!\INSTR_DECODER|Equal1~2_combout\ & (\INSTR_DECODER|Equal1~1_combout\ & (!\INSTR_DECODER|Equal1~3_combout\ & !\INSTR_DECODER|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Equal1~2_combout\,
	datab => \INSTR_DECODER|Equal1~1_combout\,
	datac => \INSTR_DECODER|Equal1~3_combout\,
	datad => \INSTR_DECODER|Equal1~4_combout\,
	combout => \INSTR_DECODER|Equal1~5_combout\);

-- Location: LCCOMB_X28_Y14_N24
\PROGRAM_MEMORY|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux5~5_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & \PROGRAM_MEMORY|Mux5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux5~4_combout\,
	combout => \PROGRAM_MEMORY|Mux5~5_combout\);

-- Location: LCCOMB_X24_Y11_N20
\INSTR_DECODER|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux15~0_combout\ = (\PROGRAM_MEMORY|Mux2~8_combout\ & (\INSTR_DECODER|Equal1~5_combout\ & ((!\INSTR_DECODER|Equal0~5_combout\)))) # (!\PROGRAM_MEMORY|Mux2~8_combout\ & (((!\PROGRAM_MEMORY|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~8_combout\,
	datab => \INSTR_DECODER|Equal1~5_combout\,
	datac => \PROGRAM_MEMORY|Mux5~5_combout\,
	datad => \INSTR_DECODER|Equal0~5_combout\,
	combout => \INSTR_DECODER|Mux15~0_combout\);

-- Location: LCCOMB_X24_Y11_N18
\INSTR_DECODER|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux15~1_combout\ = (\PROGRAM_MEMORY|Mux1~3_combout\ & (\PROGRAM_MEMORY|Mux0~4_combout\)) # (!\PROGRAM_MEMORY|Mux1~3_combout\ & ((\PROGRAM_MEMORY|Mux0~4_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & 
-- (\PROGRAM_MEMORY|Mux3~3_combout\ & \INSTR_DECODER|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~3_combout\,
	datab => \PROGRAM_MEMORY|Mux0~4_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \INSTR_DECODER|Mux15~0_combout\,
	combout => \INSTR_DECODER|Mux15~1_combout\);

-- Location: LCCOMB_X24_Y11_N26
\INSTR_DECODER|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux0~6_combout\ = (\PROGRAM_MEMORY|Mux3~2_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux2~2_combout\ & \INSTR_DECODER|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \INSTR_DECODER|Equal1~5_combout\,
	combout => \INSTR_DECODER|Mux0~6_combout\);

-- Location: LCCOMB_X22_Y13_N2
\INSTR_DECODER|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal0~0_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (!\PROGRAM_MEMORY|Mux13~6_combout\ & \PROGRAM_MEMORY|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux13~6_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \INSTR_DECODER|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\INSTR_DECODER|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Equal0~1_combout\ = (!\PROGRAM_MEMORY|Mux12~2_combout\ & (!\PROGRAM_MEMORY|Mux15~5_combout\ & (!\PROGRAM_MEMORY|Mux14~4_combout\ & \INSTR_DECODER|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux12~2_combout\,
	datab => \PROGRAM_MEMORY|Mux15~5_combout\,
	datac => \PROGRAM_MEMORY|Mux14~4_combout\,
	datad => \INSTR_DECODER|Equal0~0_combout\,
	combout => \INSTR_DECODER|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y13_N4
\INSTR_DECODER|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux0~2_combout\ = (\PROGRAM_MEMORY|Mux2~8_combout\ & (!\INSTR_DECODER|Equal0~1_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\))) # (!\PROGRAM_MEMORY|Mux2~8_combout\ & (((\PROGRAM_MEMORY|Mux5~5_combout\) # (!\PROGRAM_MEMORY|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~8_combout\,
	datab => \INSTR_DECODER|Equal0~1_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \PROGRAM_MEMORY|Mux5~5_combout\,
	combout => \INSTR_DECODER|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y11_N16
\INSTR_DECODER|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux0~3_combout\ = (\INSTR_DECODER|Mux0~2_combout\) # ((\PROGRAM_MEMORY|Mux2~8_combout\ & (!\INSTR_DECODER|Equal0~5_combout\ & \INSTR_DECODER|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~8_combout\,
	datab => \INSTR_DECODER|Equal0~5_combout\,
	datac => \INSTR_DECODER|Mux0~6_combout\,
	datad => \INSTR_DECODER|Mux0~2_combout\,
	combout => \INSTR_DECODER|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y11_N22
\INSTR_DECODER|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux16~0_combout\ = (\PROGRAM_MEMORY|Mux1~2_combout\ & (\INSTR_DECODER|Mux0~3_combout\ & (\PROGRAM_MEMORY|Mux3~3_combout\ $ (\PROGRAM_MEMORY|Mux0~4_combout\)))) # (!\PROGRAM_MEMORY|Mux1~2_combout\ & (((\PROGRAM_MEMORY|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~2_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \INSTR_DECODER|Mux0~3_combout\,
	combout => \INSTR_DECODER|Mux16~0_combout\);

-- Location: LCCOMB_X28_Y14_N6
\INSTR_DECODER|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux17~2_combout\ = (\PROGRAM_MEMORY|Mux5~4_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux4~3_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux5~4_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux4~3_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \INSTR_DECODER|Mux17~2_combout\);

-- Location: LCCOMB_X28_Y14_N20
\INSTR_DECODER|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux17~3_combout\ = (\PROGRAM_MEMORY|Mux3~3_combout\ & (!\PROGRAM_MEMORY|Mux2~8_combout\ & ((\INSTR_DECODER|Mux17~2_combout\)))) # (!\PROGRAM_MEMORY|Mux3~3_combout\ & (((\PROGRAM_MEMORY|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~8_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_MEMORY|Mux2~10_combout\,
	datad => \INSTR_DECODER|Mux17~2_combout\,
	combout => \INSTR_DECODER|Mux17~3_combout\);

-- Location: LCCOMB_X19_Y14_N14
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Add4~11\ & (((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux6~6_combout\)))) # (!\Add4~11\ & ((((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux6~6_combout\)))))
-- \Add4~13\ = CARRY((!\Add4~11\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux6~6_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X19_Y14_N16
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add4~13\ $ (((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux6~6_combout\,
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X21_Y14_N16
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\Add5~11\ & (((\PROGRAM_MEMORY|Mux9~8_combout\) # (\PROGRAM_COUNTER|q_aux\(15))))) # (!\Add5~11\ & ((((\PROGRAM_MEMORY|Mux9~8_combout\) # (\PROGRAM_COUNTER|q_aux\(15))))))
-- \Add5~13\ = CARRY((!\Add5~11\ & ((\PROGRAM_MEMORY|Mux9~8_combout\) # (\PROGRAM_COUNTER|q_aux\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux9~8_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X21_Y14_N18
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\PROGRAM_MEMORY|Mux8~6_combout\ & (((!\Add5~13\)))) # (!\PROGRAM_MEMORY|Mux8~6_combout\ & ((\PROGRAM_COUNTER|q_aux\(15) & (!\Add5~13\)) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\Add5~13\) # (GND)))))
-- \Add5~15\ = CARRY(((!\PROGRAM_MEMORY|Mux8~6_combout\ & !\PROGRAM_COUNTER|q_aux\(15))) # (!\Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux8~6_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X21_Y14_N20
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\Add5~15\ & (((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux7~3_combout\)))) # (!\Add5~15\ & ((((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux7~3_combout\)))))
-- \Add5~17\ = CARRY((!\Add5~15\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux7~3_combout\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X21_Y14_N22
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\PROGRAM_COUNTER|q_aux\(15) & (((!\Add5~17\)))) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux6~6_combout\ & (!\Add5~17\)) # (!\PROGRAM_MEMORY|Mux6~6_combout\ & ((\Add5~17\) # (GND)))))
-- \Add5~19\ = CARRY(((!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux6~6_combout\)) # (!\Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux6~6_combout\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X21_Y14_N24
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\Add5~19\ & (((\PROGRAM_COUNTER|q_aux\(15)) # (!\PROGRAM_MEMORY|Mux5~4_combout\)))) # (!\Add5~19\ & ((((\PROGRAM_COUNTER|q_aux\(15)) # (!\PROGRAM_MEMORY|Mux5~4_combout\)))))
-- \Add5~21\ = CARRY((!\Add5~19\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (!\PROGRAM_MEMORY|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux5~4_combout\,
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X19_Y16_N4
\offset_aux[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[10]~0_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & ((\Add5~20_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & (\Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add4~14_combout\,
	datad => \Add5~20_combout\,
	combout => \offset_aux[10]~0_combout\);

-- Location: LCCOMB_X19_Y14_N30
\offset_aux[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[9]~1_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & (\Add5~18_combout\))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & ((\Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add5~18_combout\,
	datad => \Add4~14_combout\,
	combout => \offset_aux[9]~1_combout\);

-- Location: LCCOMB_X19_Y14_N0
\offset_aux[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[8]~2_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & (\Add5~16_combout\))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & ((\Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add5~16_combout\,
	datad => \Add4~14_combout\,
	combout => \offset_aux[8]~2_combout\);

-- Location: LCCOMB_X19_Y16_N22
\offset_aux[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[7]~3_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (((\Add5~14_combout\ & !\branch_aux~1_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\Add4~14_combout\ & ((\branch_aux~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \Add4~14_combout\,
	datac => \Add5~14_combout\,
	datad => \branch_aux~1_combout\,
	combout => \offset_aux[7]~3_combout\);

-- Location: LCCOMB_X19_Y14_N18
\offset_aux[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[6]~4_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & ((\Add5~12_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & (\Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add4~12_combout\,
	datad => \Add5~12_combout\,
	combout => \offset_aux[6]~4_combout\);

-- Location: LCCOMB_X19_Y15_N12
\PROGRAM_COUNTER|q_aux[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[6]~28_combout\ = ((\PROGRAM_COUNTER|q_aux\(6) $ (\offset_aux[6]~4_combout\ $ (!\PROGRAM_COUNTER|q_aux[5]~27\)))) # (GND)
-- \PROGRAM_COUNTER|q_aux[6]~29\ = CARRY((\PROGRAM_COUNTER|q_aux\(6) & ((\offset_aux[6]~4_combout\) # (!\PROGRAM_COUNTER|q_aux[5]~27\))) # (!\PROGRAM_COUNTER|q_aux\(6) & (\offset_aux[6]~4_combout\ & !\PROGRAM_COUNTER|q_aux[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(6),
	datab => \offset_aux[6]~4_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[5]~27\,
	combout => \PROGRAM_COUNTER|q_aux[6]~28_combout\,
	cout => \PROGRAM_COUNTER|q_aux[6]~29\);

-- Location: LCCOMB_X21_Y15_N4
\PROGRAM_COUNTER|q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[6]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[6]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux[6]~28_combout\,
	combout => \PROGRAM_COUNTER|q_aux[6]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\PROGRAM_COUNTER|q_aux\(6) & (!\Add2~9\)) # (!\PROGRAM_COUNTER|q_aux\(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\PROGRAM_COUNTER|q_aux\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X16_Y12_N12
\STACK|ram~123feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~123feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	combout => \STACK|ram~123feeder_combout\);

-- Location: FF_X16_Y12_N13
\STACK|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~123feeder_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~123_q\);

-- Location: FF_X12_Y12_N27
\STACK|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~251_q\);

-- Location: LCCOMB_X12_Y12_N24
\STACK|ram~187feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~187feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	combout => \STACK|ram~187feeder_combout\);

-- Location: FF_X12_Y12_N25
\STACK|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~187feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~187_q\);

-- Location: FF_X16_Y12_N19
\STACK|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~59_q\);

-- Location: LCCOMB_X16_Y12_N18
\STACK|ram~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~333_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~187_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~187_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~59_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~333_combout\);

-- Location: LCCOMB_X12_Y12_N26
\STACK|ram~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~334_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~333_combout\ & ((\STACK|ram~251_q\))) # (!\STACK|ram~333_combout\ & (\STACK|ram~123_q\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~123_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~251_q\,
	datad => \STACK|ram~333_combout\,
	combout => \STACK|ram~334_combout\);

-- Location: LCCOMB_X12_Y14_N24
\STACK|ram~267feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~267feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	combout => \STACK|ram~267feeder_combout\);

-- Location: FF_X12_Y14_N25
\STACK|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~267feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~267_q\);

-- Location: FF_X12_Y14_N31
\STACK|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~203_q\);

-- Location: LCCOMB_X17_Y14_N16
\STACK|ram~139feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~139feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~10_combout\,
	combout => \STACK|ram~139feeder_combout\);

-- Location: FF_X17_Y14_N17
\STACK|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~139feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~139_q\);

-- Location: FF_X16_Y14_N25
\STACK|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~75_q\);

-- Location: LCCOMB_X16_Y14_N24
\STACK|ram~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~331_combout\ = (\a_aux[3]~1_combout\ & (((\a_aux[2]~0_combout\)))) # (!\a_aux[3]~1_combout\ & ((\a_aux[2]~0_combout\ & (\STACK|ram~139_q\)) # (!\a_aux[2]~0_combout\ & ((\STACK|ram~75_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK|ram~139_q\,
	datac => \STACK|ram~75_q\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~331_combout\);

-- Location: LCCOMB_X12_Y14_N30
\STACK|ram~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~332_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~331_combout\ & (\STACK|ram~267_q\)) # (!\STACK|ram~331_combout\ & ((\STACK|ram~203_q\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK|ram~267_q\,
	datac => \STACK|ram~203_q\,
	datad => \STACK|ram~331_combout\,
	combout => \STACK|ram~332_combout\);

-- Location: LCCOMB_X12_Y12_N4
\STACK|ram~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~335_combout\ = (\a_aux[1]~2_combout\ & (!\STACK_POINTER|q_aux\(0))) # (!\a_aux[1]~2_combout\ & ((\STACK_POINTER|q_aux\(0) & (\STACK|ram~334_combout\)) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~332_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~334_combout\,
	datad => \STACK|ram~332_combout\,
	combout => \STACK|ram~335_combout\);

-- Location: LCCOMB_X14_Y12_N30
\STACK|ram~219feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~219feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~10_combout\,
	combout => \STACK|ram~219feeder_combout\);

-- Location: FF_X14_Y12_N31
\STACK|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~219feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~219_q\);

-- Location: FF_X13_Y12_N25
\STACK|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~91_q\);

-- Location: LCCOMB_X14_Y12_N28
\STACK|ram~155feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~155feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~10_combout\,
	combout => \STACK|ram~155feeder_combout\);

-- Location: FF_X14_Y12_N29
\STACK|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~155feeder_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~155_q\);

-- Location: FF_X13_Y12_N3
\STACK|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~27_q\);

-- Location: LCCOMB_X13_Y12_N2
\STACK|ram~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~329_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~155_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~27_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~155_q\,
	datac => \STACK|ram~27_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~329_combout\);

-- Location: LCCOMB_X13_Y12_N24
\STACK|ram~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~330_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~329_combout\ & (\STACK|ram~219_q\)) # (!\STACK|ram~329_combout\ & ((\STACK|ram~91_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~219_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~91_q\,
	datad => \STACK|ram~329_combout\,
	combout => \STACK|ram~330_combout\);

-- Location: FF_X18_Y14_N11
\STACK|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~235_q\);

-- Location: LCCOMB_X17_Y14_N2
\STACK|ram~107feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~107feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~10_combout\,
	combout => \STACK|ram~107feeder_combout\);

-- Location: FF_X17_Y14_N3
\STACK|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~107feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~107_q\);

-- Location: FF_X16_Y14_N3
\STACK|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~43_q\);

-- Location: LCCOMB_X16_Y14_N2
\STACK|ram~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~336_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~107_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~43_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~107_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~43_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~336_combout\);

-- Location: FF_X17_Y12_N19
\STACK|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~171_q\);

-- Location: LCCOMB_X17_Y12_N18
\STACK|ram~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~337_combout\ = (\STACK|ram~336_combout\ & ((\STACK|ram~235_q\) # ((!\a_aux[3]~1_combout\)))) # (!\STACK|ram~336_combout\ & (((\STACK|ram~171_q\ & \a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~235_q\,
	datab => \STACK|ram~336_combout\,
	datac => \STACK|ram~171_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~337_combout\);

-- Location: LCCOMB_X17_Y12_N28
\STACK|ram~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~338_combout\ = (\STACK|ram~335_combout\ & (((\STACK|ram~337_combout\) # (!\a_aux[1]~2_combout\)))) # (!\STACK|ram~335_combout\ & (\STACK|ram~330_combout\ & (\a_aux[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~335_combout\,
	datab => \STACK|ram~330_combout\,
	datac => \a_aux[1]~2_combout\,
	datad => \STACK|ram~337_combout\,
	combout => \STACK|ram~338_combout\);

-- Location: FF_X21_Y15_N5
\PROGRAM_COUNTER|q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[6]~feeder_combout\,
	asdata => \STACK|ram~338_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(6));

-- Location: LCCOMB_X19_Y15_N14
\PROGRAM_COUNTER|q_aux[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[7]~30_combout\ = (\offset_aux[7]~3_combout\ & ((\PROGRAM_COUNTER|q_aux\(7) & (\PROGRAM_COUNTER|q_aux[6]~29\ & VCC)) # (!\PROGRAM_COUNTER|q_aux\(7) & (!\PROGRAM_COUNTER|q_aux[6]~29\)))) # (!\offset_aux[7]~3_combout\ & 
-- ((\PROGRAM_COUNTER|q_aux\(7) & (!\PROGRAM_COUNTER|q_aux[6]~29\)) # (!\PROGRAM_COUNTER|q_aux\(7) & ((\PROGRAM_COUNTER|q_aux[6]~29\) # (GND)))))
-- \PROGRAM_COUNTER|q_aux[7]~31\ = CARRY((\offset_aux[7]~3_combout\ & (!\PROGRAM_COUNTER|q_aux\(7) & !\PROGRAM_COUNTER|q_aux[6]~29\)) # (!\offset_aux[7]~3_combout\ & ((!\PROGRAM_COUNTER|q_aux[6]~29\) # (!\PROGRAM_COUNTER|q_aux\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \offset_aux[7]~3_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(7),
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[6]~29\,
	combout => \PROGRAM_COUNTER|q_aux[7]~30_combout\,
	cout => \PROGRAM_COUNTER|q_aux[7]~31\);

-- Location: LCCOMB_X21_Y15_N30
\PROGRAM_COUNTER|q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[7]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[7]~30_combout\,
	combout => \PROGRAM_COUNTER|q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\PROGRAM_COUNTER|q_aux\(7) & (\Add2~11\ $ (GND))) # (!\PROGRAM_COUNTER|q_aux\(7) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\PROGRAM_COUNTER|q_aux\(7) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X12_Y14_N26
\STACK|ram~204feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~204feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \STACK|ram~204feeder_combout\);

-- Location: FF_X12_Y14_N27
\STACK|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~204feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~204_q\);

-- Location: FF_X12_Y13_N17
\STACK|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~188_q\);

-- Location: LCCOMB_X12_Y13_N16
\STACK|ram~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~339_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~188_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~204_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~204_q\,
	datac => \STACK|ram~188_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~339_combout\);

-- Location: LCCOMB_X14_Y13_N8
\STACK|ram~172feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~172feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~12_combout\,
	combout => \STACK|ram~172feeder_combout\);

-- Location: FF_X14_Y13_N9
\STACK|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~172feeder_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~172_q\);

-- Location: FF_X13_Y13_N21
\STACK|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~156_q\);

-- Location: LCCOMB_X13_Y13_N20
\STACK|ram~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~340_combout\ = (\STACK|ram~339_combout\ & ((\STACK|ram~172_q\) # ((!\a_aux[1]~2_combout\)))) # (!\STACK|ram~339_combout\ & (((\STACK|ram~156_q\ & \a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~339_combout\,
	datab => \STACK|ram~172_q\,
	datac => \STACK|ram~156_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~340_combout\);

-- Location: LCCOMB_X17_Y14_N12
\STACK|ram~140feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~140feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \STACK|ram~140feeder_combout\);

-- Location: FF_X17_Y14_N13
\STACK|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~140feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~140_q\);

-- Location: FF_X17_Y14_N31
\STACK|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~108_q\);

-- Location: LCCOMB_X14_Y14_N24
\STACK|ram~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~92feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \STACK|ram~92feeder_combout\);

-- Location: FF_X14_Y14_N25
\STACK|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~92feeder_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~92_q\);

-- Location: FF_X13_Y14_N7
\STACK|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~124_q\);

-- Location: LCCOMB_X13_Y14_N6
\STACK|ram~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~341_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~92_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~124_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~92_q\,
	datac => \STACK|ram~124_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~341_combout\);

-- Location: LCCOMB_X17_Y14_N30
\STACK|ram~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~342_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~341_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~341_combout\ & ((\STACK|ram~108_q\))) # (!\STACK|ram~341_combout\ & (\STACK|ram~140_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~140_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~108_q\,
	datad => \STACK|ram~341_combout\,
	combout => \STACK|ram~342_combout\);

-- Location: LCCOMB_X16_Y15_N16
\STACK|ram~28feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~28feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \STACK|ram~28feeder_combout\);

-- Location: FF_X16_Y15_N17
\STACK|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~28feeder_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~28_q\);

-- Location: FF_X17_Y15_N23
\STACK|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~44_q\);

-- Location: LCCOMB_X17_Y15_N16
\STACK|ram~76feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~76feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \STACK|ram~76feeder_combout\);

-- Location: FF_X17_Y15_N17
\STACK|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~76feeder_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~76_q\);

-- Location: FF_X16_Y15_N15
\STACK|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~60_q\);

-- Location: LCCOMB_X16_Y15_N14
\STACK|ram~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~343_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~60_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~76_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~76_q\,
	datac => \STACK|ram~60_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~343_combout\);

-- Location: LCCOMB_X17_Y15_N22
\STACK|ram~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~344_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~343_combout\ & ((\STACK|ram~44_q\))) # (!\STACK|ram~343_combout\ & (\STACK|ram~28_q\)))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~28_q\,
	datac => \STACK|ram~44_q\,
	datad => \STACK|ram~343_combout\,
	combout => \STACK|ram~344_combout\);

-- Location: LCCOMB_X17_Y13_N8
\STACK|ram~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~345_combout\ = (\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\) # ((\STACK|ram~342_combout\)))) # (!\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & ((\STACK|ram~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~342_combout\,
	datad => \STACK|ram~344_combout\,
	combout => \STACK|ram~345_combout\);

-- Location: FF_X18_Y14_N13
\STACK|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~236_q\);

-- Location: FF_X17_Y13_N19
\STACK|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~268_q\);

-- Location: LCCOMB_X13_Y13_N10
\STACK|ram~220feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~220feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \STACK|ram~220feeder_combout\);

-- Location: FF_X13_Y13_N11
\STACK|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~220feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~220_q\);

-- Location: FF_X16_Y13_N25
\STACK|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~252_q\);

-- Location: LCCOMB_X16_Y13_N24
\STACK|ram~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~346_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~220_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~252_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~220_q\,
	datac => \STACK|ram~252_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~346_combout\);

-- Location: LCCOMB_X17_Y13_N18
\STACK|ram~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~347_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~346_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~346_combout\ & (\STACK|ram~236_q\)) # (!\STACK|ram~346_combout\ & ((\STACK|ram~268_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~236_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~268_q\,
	datad => \STACK|ram~346_combout\,
	combout => \STACK|ram~347_combout\);

-- Location: LCCOMB_X17_Y13_N24
\STACK|ram~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~348_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~345_combout\ & ((\STACK|ram~347_combout\))) # (!\STACK|ram~345_combout\ & (\STACK|ram~340_combout\)))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~340_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~345_combout\,
	datad => \STACK|ram~347_combout\,
	combout => \STACK|ram~348_combout\);

-- Location: FF_X21_Y15_N31
\PROGRAM_COUNTER|q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[7]~feeder_combout\,
	asdata => \STACK|ram~348_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(7));

-- Location: LCCOMB_X19_Y15_N16
\PROGRAM_COUNTER|q_aux[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[8]~32_combout\ = ((\PROGRAM_COUNTER|q_aux\(8) $ (\offset_aux[8]~2_combout\ $ (!\PROGRAM_COUNTER|q_aux[7]~31\)))) # (GND)
-- \PROGRAM_COUNTER|q_aux[8]~33\ = CARRY((\PROGRAM_COUNTER|q_aux\(8) & ((\offset_aux[8]~2_combout\) # (!\PROGRAM_COUNTER|q_aux[7]~31\))) # (!\PROGRAM_COUNTER|q_aux\(8) & (\offset_aux[8]~2_combout\ & !\PROGRAM_COUNTER|q_aux[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(8),
	datab => \offset_aux[8]~2_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[7]~31\,
	combout => \PROGRAM_COUNTER|q_aux[8]~32_combout\,
	cout => \PROGRAM_COUNTER|q_aux[8]~33\);

-- Location: LCCOMB_X21_Y15_N12
\PROGRAM_COUNTER|q_aux[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[8]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[8]~32_combout\,
	combout => \PROGRAM_COUNTER|q_aux[8]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\PROGRAM_COUNTER|q_aux\(8) & (!\Add2~13\)) # (!\PROGRAM_COUNTER|q_aux\(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\PROGRAM_COUNTER|q_aux\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X12_Y14_N18
\STACK|ram~269feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~269feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \STACK|ram~269feeder_combout\);

-- Location: FF_X12_Y14_N19
\STACK|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~269feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~269_q\);

-- Location: LCCOMB_X12_Y14_N16
\STACK|ram~205feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~205feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \STACK|ram~205feeder_combout\);

-- Location: FF_X12_Y14_N17
\STACK|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~205feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~205_q\);

-- Location: FF_X16_Y14_N5
\STACK|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~77_q\);

-- Location: LCCOMB_X16_Y14_N4
\STACK|ram~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~349_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~205_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~77_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~205_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~77_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~349_combout\);

-- Location: FF_X17_Y14_N1
\STACK|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~141_q\);

-- Location: LCCOMB_X17_Y14_N0
\STACK|ram~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~350_combout\ = (\STACK|ram~349_combout\ & ((\STACK|ram~269_q\) # ((!\a_aux[2]~0_combout\)))) # (!\STACK|ram~349_combout\ & (((\STACK|ram~141_q\ & \a_aux[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~269_q\,
	datab => \STACK|ram~349_combout\,
	datac => \STACK|ram~141_q\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~350_combout\);

-- Location: FF_X18_Y14_N15
\STACK|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~237_q\);

-- Location: FF_X17_Y14_N15
\STACK|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~109_q\);

-- Location: LCCOMB_X17_Y12_N24
\STACK|ram~173feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~173feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \STACK|ram~173feeder_combout\);

-- Location: FF_X17_Y12_N25
\STACK|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~173feeder_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~173_q\);

-- Location: FF_X16_Y14_N11
\STACK|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~45_q\);

-- Location: LCCOMB_X16_Y14_N10
\STACK|ram~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~356_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~173_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~173_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~45_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~356_combout\);

-- Location: LCCOMB_X17_Y14_N14
\STACK|ram~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~357_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~356_combout\ & (\STACK|ram~237_q\)) # (!\STACK|ram~356_combout\ & ((\STACK|ram~109_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~237_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~109_q\,
	datad => \STACK|ram~356_combout\,
	combout => \STACK|ram~357_combout\);

-- Location: LCCOMB_X16_Y13_N26
\STACK|ram~189feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~189feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	combout => \STACK|ram~189feeder_combout\);

-- Location: FF_X16_Y13_N27
\STACK|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~189feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~189_q\);

-- Location: LCCOMB_X16_Y12_N8
\STACK|ram~125feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~125feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \STACK|ram~125feeder_combout\);

-- Location: FF_X16_Y12_N9
\STACK|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~125feeder_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~125_q\);

-- Location: FF_X19_Y12_N11
\STACK|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~61_q\);

-- Location: LCCOMB_X19_Y12_N10
\STACK|ram~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~353_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~125_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~61_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~125_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~61_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~353_combout\);

-- Location: FF_X16_Y13_N13
\STACK|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~253_q\);

-- Location: LCCOMB_X16_Y13_N12
\STACK|ram~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~354_combout\ = (\STACK|ram~353_combout\ & (((\STACK|ram~253_q\) # (!\a_aux[3]~1_combout\)))) # (!\STACK|ram~353_combout\ & (\STACK|ram~189_q\ & ((\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~189_q\,
	datab => \STACK|ram~353_combout\,
	datac => \STACK|ram~253_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~354_combout\);

-- Location: LCCOMB_X17_Y12_N26
\STACK|ram~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~93feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \STACK|ram~93feeder_combout\);

-- Location: FF_X17_Y12_N27
\STACK|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~93feeder_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~93_q\);

-- Location: FF_X13_Y12_N13
\STACK|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~29_q\);

-- Location: LCCOMB_X13_Y12_N12
\STACK|ram~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~351_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~93_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~29_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~93_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~29_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~351_combout\);

-- Location: LCCOMB_X14_Y12_N14
\STACK|ram~221feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~221feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	combout => \STACK|ram~221feeder_combout\);

-- Location: FF_X14_Y12_N15
\STACK|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~221feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~221_q\);

-- Location: FF_X14_Y12_N21
\STACK|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~157_q\);

-- Location: LCCOMB_X14_Y12_N20
\STACK|ram~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~352_combout\ = (\STACK|ram~351_combout\ & ((\STACK|ram~221_q\) # ((!\a_aux[3]~1_combout\)))) # (!\STACK|ram~351_combout\ & (((\STACK|ram~157_q\ & \a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~351_combout\,
	datab => \STACK|ram~221_q\,
	datac => \STACK|ram~157_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~352_combout\);

-- Location: LCCOMB_X21_Y15_N20
\STACK|ram~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~355_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & ((\STACK|ram~352_combout\))) # (!\a_aux[1]~2_combout\ & (\STACK|ram~354_combout\)))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~354_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \a_aux[1]~2_combout\,
	datad => \STACK|ram~352_combout\,
	combout => \STACK|ram~355_combout\);

-- Location: LCCOMB_X21_Y15_N26
\STACK|ram~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~358_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~355_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~355_combout\ & ((\STACK|ram~357_combout\))) # (!\STACK|ram~355_combout\ & (\STACK|ram~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~350_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~357_combout\,
	datad => \STACK|ram~355_combout\,
	combout => \STACK|ram~358_combout\);

-- Location: FF_X21_Y15_N13
\PROGRAM_COUNTER|q_aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[8]~feeder_combout\,
	asdata => \STACK|ram~358_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(8));

-- Location: LCCOMB_X19_Y15_N18
\PROGRAM_COUNTER|q_aux[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[9]~34_combout\ = (\PROGRAM_COUNTER|q_aux\(9) & ((\offset_aux[9]~1_combout\ & (\PROGRAM_COUNTER|q_aux[8]~33\ & VCC)) # (!\offset_aux[9]~1_combout\ & (!\PROGRAM_COUNTER|q_aux[8]~33\)))) # (!\PROGRAM_COUNTER|q_aux\(9) & 
-- ((\offset_aux[9]~1_combout\ & (!\PROGRAM_COUNTER|q_aux[8]~33\)) # (!\offset_aux[9]~1_combout\ & ((\PROGRAM_COUNTER|q_aux[8]~33\) # (GND)))))
-- \PROGRAM_COUNTER|q_aux[9]~35\ = CARRY((\PROGRAM_COUNTER|q_aux\(9) & (!\offset_aux[9]~1_combout\ & !\PROGRAM_COUNTER|q_aux[8]~33\)) # (!\PROGRAM_COUNTER|q_aux\(9) & ((!\PROGRAM_COUNTER|q_aux[8]~33\) # (!\offset_aux[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(9),
	datab => \offset_aux[9]~1_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[8]~33\,
	combout => \PROGRAM_COUNTER|q_aux[9]~34_combout\,
	cout => \PROGRAM_COUNTER|q_aux[9]~35\);

-- Location: LCCOMB_X21_Y15_N10
\PROGRAM_COUNTER|q_aux[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[9]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[9]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[9]~34_combout\,
	combout => \PROGRAM_COUNTER|q_aux[9]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\PROGRAM_COUNTER|q_aux\(9) & (\Add2~15\ $ (GND))) # (!\PROGRAM_COUNTER|q_aux\(9) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\PROGRAM_COUNTER|q_aux\(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X14_Y14_N20
\STACK|ram~110feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~110feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	combout => \STACK|ram~110feeder_combout\);

-- Location: FF_X14_Y14_N21
\STACK|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~110feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~110_q\);

-- Location: FF_X14_Y14_N7
\STACK|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~94_q\);

-- Location: LCCOMB_X13_Y14_N4
\STACK|ram~142feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~142feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	combout => \STACK|ram~142feeder_combout\);

-- Location: FF_X13_Y14_N5
\STACK|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~142feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~142_q\);

-- Location: FF_X13_Y14_N15
\STACK|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~126_q\);

-- Location: LCCOMB_X13_Y14_N14
\STACK|ram~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~359_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~126_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~142_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~142_q\,
	datac => \STACK|ram~126_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~359_combout\);

-- Location: LCCOMB_X14_Y14_N6
\STACK|ram~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~360_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~359_combout\ & (\STACK|ram~110_q\)) # (!\STACK|ram~359_combout\ & ((\STACK|ram~94_q\))))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~110_q\,
	datac => \STACK|ram~94_q\,
	datad => \STACK|ram~359_combout\,
	combout => \STACK|ram~360_combout\);

-- Location: LCCOMB_X17_Y15_N24
\STACK|ram~78feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~78feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	combout => \STACK|ram~78feeder_combout\);

-- Location: FF_X17_Y15_N25
\STACK|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~78feeder_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~78_q\);

-- Location: FF_X17_Y15_N3
\STACK|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~46_q\);

-- Location: LCCOMB_X16_Y15_N24
\STACK|ram~30feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~30feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	combout => \STACK|ram~30feeder_combout\);

-- Location: FF_X16_Y15_N25
\STACK|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~30feeder_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~30_q\);

-- Location: FF_X16_Y15_N11
\STACK|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~62_q\);

-- Location: LCCOMB_X16_Y15_N10
\STACK|ram~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~363_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~30_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~62_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~30_q\,
	datac => \STACK|ram~62_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~363_combout\);

-- Location: LCCOMB_X17_Y15_N2
\STACK|ram~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~364_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~363_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~363_combout\ & ((\STACK|ram~46_q\))) # (!\STACK|ram~363_combout\ & (\STACK|ram~78_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~78_q\,
	datac => \STACK|ram~46_q\,
	datad => \STACK|ram~363_combout\,
	combout => \STACK|ram~364_combout\);

-- Location: LCCOMB_X14_Y13_N2
\STACK|ram~206feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~206feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	combout => \STACK|ram~206feeder_combout\);

-- Location: FF_X14_Y13_N3
\STACK|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~206feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~206_q\);

-- Location: FF_X14_Y13_N17
\STACK|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~174_q\);

-- Location: LCCOMB_X12_Y13_N26
\STACK|ram~190feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~190feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~16_combout\,
	combout => \STACK|ram~190feeder_combout\);

-- Location: FF_X12_Y13_N27
\STACK|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~190feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~190_q\);

-- Location: FF_X13_Y13_N9
\STACK|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~158_q\);

-- Location: LCCOMB_X13_Y13_N8
\STACK|ram~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~361_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & ((\STACK|ram~158_q\))) # (!\a_aux[1]~2_combout\ & (\STACK|ram~190_q\)))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~190_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~158_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~361_combout\);

-- Location: LCCOMB_X14_Y13_N16
\STACK|ram~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~362_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~361_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~361_combout\ & ((\STACK|ram~174_q\))) # (!\STACK|ram~361_combout\ & (\STACK|ram~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~206_q\,
	datac => \STACK|ram~174_q\,
	datad => \STACK|ram~361_combout\,
	combout => \STACK|ram~362_combout\);

-- Location: LCCOMB_X17_Y15_N20
\STACK|ram~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~365_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & ((\STACK|ram~362_combout\))) # (!\a_aux[3]~1_combout\ & (\STACK|ram~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~364_combout\,
	datac => \a_aux[3]~1_combout\,
	datad => \STACK|ram~362_combout\,
	combout => \STACK|ram~365_combout\);

-- Location: LCCOMB_X12_Y14_N4
\STACK|ram~270feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~270feeder_combout\ = \Add2~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~16_combout\,
	combout => \STACK|ram~270feeder_combout\);

-- Location: FF_X12_Y14_N5
\STACK|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~270feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~270_q\);

-- Location: FF_X12_Y13_N9
\STACK|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~254_q\);

-- Location: LCCOMB_X12_Y13_N8
\STACK|ram~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~366_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~254_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~270_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~270_q\,
	datac => \STACK|ram~254_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~366_combout\);

-- Location: FF_X18_Y14_N17
\STACK|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~238_q\);

-- Location: FF_X13_Y13_N3
\STACK|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~16_combout\,
	sload => VCC,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~222_q\);

-- Location: LCCOMB_X13_Y13_N2
\STACK|ram~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~367_combout\ = (\STACK|ram~366_combout\ & ((\STACK|ram~238_q\) # ((!\a_aux[1]~2_combout\)))) # (!\STACK|ram~366_combout\ & (((\STACK|ram~222_q\ & \a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~366_combout\,
	datab => \STACK|ram~238_q\,
	datac => \STACK|ram~222_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~367_combout\);

-- Location: LCCOMB_X21_Y15_N8
\STACK|ram~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~368_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~365_combout\ & ((\STACK|ram~367_combout\))) # (!\STACK|ram~365_combout\ & (\STACK|ram~360_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~360_combout\,
	datac => \STACK|ram~365_combout\,
	datad => \STACK|ram~367_combout\,
	combout => \STACK|ram~368_combout\);

-- Location: FF_X21_Y15_N11
\PROGRAM_COUNTER|q_aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[9]~feeder_combout\,
	asdata => \STACK|ram~368_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(9));

-- Location: LCCOMB_X19_Y15_N20
\PROGRAM_COUNTER|q_aux[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[10]~36_combout\ = ((\PROGRAM_COUNTER|q_aux\(10) $ (\offset_aux[10]~0_combout\ $ (!\PROGRAM_COUNTER|q_aux[9]~35\)))) # (GND)
-- \PROGRAM_COUNTER|q_aux[10]~37\ = CARRY((\PROGRAM_COUNTER|q_aux\(10) & ((\offset_aux[10]~0_combout\) # (!\PROGRAM_COUNTER|q_aux[9]~35\))) # (!\PROGRAM_COUNTER|q_aux\(10) & (\offset_aux[10]~0_combout\ & !\PROGRAM_COUNTER|q_aux[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(10),
	datab => \offset_aux[10]~0_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[9]~35\,
	combout => \PROGRAM_COUNTER|q_aux[10]~36_combout\,
	cout => \PROGRAM_COUNTER|q_aux[10]~37\);

-- Location: LCCOMB_X22_Y15_N24
\PROGRAM_COUNTER|q_aux[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[10]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[10]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[10]~36_combout\,
	combout => \PROGRAM_COUNTER|q_aux[10]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\PROGRAM_COUNTER|q_aux\(10) & (!\Add2~17\)) # (!\PROGRAM_COUNTER|q_aux\(10) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\PROGRAM_COUNTER|q_aux\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X14_Y12_N24
\STACK|ram~159feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~159feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	combout => \STACK|ram~159feeder_combout\);

-- Location: FF_X14_Y12_N25
\STACK|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~159feeder_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~159_q\);

-- Location: FF_X13_Y12_N31
\STACK|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~31_q\);

-- Location: LCCOMB_X13_Y12_N30
\STACK|ram~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~309_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~159_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~159_q\,
	datac => \STACK|ram~31_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~309_combout\);

-- Location: FF_X13_Y12_N17
\STACK|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~95_q\);

-- Location: LCCOMB_X14_Y12_N6
\STACK|ram~223feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~223feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	combout => \STACK|ram~223feeder_combout\);

-- Location: FF_X14_Y12_N7
\STACK|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~223feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~223_q\);

-- Location: LCCOMB_X13_Y12_N16
\STACK|ram~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~310_combout\ = (\STACK|ram~309_combout\ & (((\STACK|ram~223_q\)) # (!\a_aux[2]~0_combout\))) # (!\STACK|ram~309_combout\ & (\a_aux[2]~0_combout\ & (\STACK|ram~95_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~309_combout\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~95_q\,
	datad => \STACK|ram~223_q\,
	combout => \STACK|ram~310_combout\);

-- Location: FF_X18_Y14_N19
\STACK|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~239_q\);

-- Location: FF_X17_Y12_N13
\STACK|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~175_q\);

-- Location: LCCOMB_X17_Y14_N18
\STACK|ram~111feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~111feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~18_combout\,
	combout => \STACK|ram~111feeder_combout\);

-- Location: FF_X17_Y14_N19
\STACK|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~111feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~111_q\);

-- Location: FF_X16_Y14_N19
\STACK|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~47_q\);

-- Location: LCCOMB_X16_Y14_N18
\STACK|ram~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~316_combout\ = (\a_aux[3]~1_combout\ & (((\a_aux[2]~0_combout\)))) # (!\a_aux[3]~1_combout\ & ((\a_aux[2]~0_combout\ & (\STACK|ram~111_q\)) # (!\a_aux[2]~0_combout\ & ((\STACK|ram~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK|ram~111_q\,
	datac => \STACK|ram~47_q\,
	datad => \a_aux[2]~0_combout\,
	combout => \STACK|ram~316_combout\);

-- Location: LCCOMB_X17_Y12_N12
\STACK|ram~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~317_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~316_combout\ & (\STACK|ram~239_q\)) # (!\STACK|ram~316_combout\ & ((\STACK|ram~175_q\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~239_q\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~175_q\,
	datad => \STACK|ram~316_combout\,
	combout => \STACK|ram~317_combout\);

-- Location: LCCOMB_X16_Y12_N24
\STACK|ram~127feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~127feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	combout => \STACK|ram~127feeder_combout\);

-- Location: FF_X16_Y12_N25
\STACK|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~127feeder_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~127_q\);

-- Location: FF_X12_Y12_N23
\STACK|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~255_q\);

-- Location: LCCOMB_X12_Y12_N16
\STACK|ram~191feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~191feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	combout => \STACK|ram~191feeder_combout\);

-- Location: FF_X12_Y12_N17
\STACK|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~191feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~191_q\);

-- Location: FF_X16_Y12_N11
\STACK|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~63_q\);

-- Location: LCCOMB_X16_Y12_N10
\STACK|ram~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~313_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~191_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~63_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~191_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~63_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~313_combout\);

-- Location: LCCOMB_X12_Y12_N22
\STACK|ram~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~314_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~313_combout\ & ((\STACK|ram~255_q\))) # (!\STACK|ram~313_combout\ & (\STACK|ram~127_q\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~127_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~255_q\,
	datad => \STACK|ram~313_combout\,
	combout => \STACK|ram~314_combout\);

-- Location: LCCOMB_X12_Y14_N2
\STACK|ram~271feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~271feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	combout => \STACK|ram~271feeder_combout\);

-- Location: FF_X12_Y14_N3
\STACK|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~271feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~271_q\);

-- Location: FF_X12_Y14_N13
\STACK|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~207_q\);

-- Location: LCCOMB_X17_Y14_N4
\STACK|ram~143feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~143feeder_combout\ = \Add2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~18_combout\,
	combout => \STACK|ram~143feeder_combout\);

-- Location: FF_X17_Y14_N5
\STACK|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~143feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~143_q\);

-- Location: FF_X16_Y14_N17
\STACK|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~18_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~79_q\);

-- Location: LCCOMB_X16_Y14_N16
\STACK|ram~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~311_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~143_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~79_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~143_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~79_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~311_combout\);

-- Location: LCCOMB_X12_Y14_N12
\STACK|ram~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~312_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~311_combout\ & (\STACK|ram~271_q\)) # (!\STACK|ram~311_combout\ & ((\STACK|ram~207_q\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK|ram~271_q\,
	datac => \STACK|ram~207_q\,
	datad => \STACK|ram~311_combout\,
	combout => \STACK|ram~312_combout\);

-- Location: LCCOMB_X12_Y12_N28
\STACK|ram~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~315_combout\ = (\a_aux[1]~2_combout\ & (!\STACK_POINTER|q_aux\(0))) # (!\a_aux[1]~2_combout\ & ((\STACK_POINTER|q_aux\(0) & (\STACK|ram~314_combout\)) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~312_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~314_combout\,
	datad => \STACK|ram~312_combout\,
	combout => \STACK|ram~315_combout\);

-- Location: LCCOMB_X12_Y12_N10
\STACK|ram~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~318_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~315_combout\ & ((\STACK|ram~317_combout\))) # (!\STACK|ram~315_combout\ & (\STACK|ram~310_combout\)))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~310_combout\,
	datac => \STACK|ram~317_combout\,
	datad => \STACK|ram~315_combout\,
	combout => \STACK|ram~318_combout\);

-- Location: FF_X22_Y15_N25
\PROGRAM_COUNTER|q_aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[10]~feeder_combout\,
	asdata => \STACK|ram~318_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(10));

-- Location: LCCOMB_X19_Y15_N22
\PROGRAM_COUNTER|q_aux[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[11]~38_combout\ = (\PROGRAM_COUNTER|q_aux\(11) & ((\offset_aux[11]~11_combout\ & (\PROGRAM_COUNTER|q_aux[10]~37\ & VCC)) # (!\offset_aux[11]~11_combout\ & (!\PROGRAM_COUNTER|q_aux[10]~37\)))) # (!\PROGRAM_COUNTER|q_aux\(11) & 
-- ((\offset_aux[11]~11_combout\ & (!\PROGRAM_COUNTER|q_aux[10]~37\)) # (!\offset_aux[11]~11_combout\ & ((\PROGRAM_COUNTER|q_aux[10]~37\) # (GND)))))
-- \PROGRAM_COUNTER|q_aux[11]~39\ = CARRY((\PROGRAM_COUNTER|q_aux\(11) & (!\offset_aux[11]~11_combout\ & !\PROGRAM_COUNTER|q_aux[10]~37\)) # (!\PROGRAM_COUNTER|q_aux\(11) & ((!\PROGRAM_COUNTER|q_aux[10]~37\) # (!\offset_aux[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(11),
	datab => \offset_aux[11]~11_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[10]~37\,
	combout => \PROGRAM_COUNTER|q_aux[11]~38_combout\,
	cout => \PROGRAM_COUNTER|q_aux[11]~39\);

-- Location: LCCOMB_X19_Y15_N24
\PROGRAM_COUNTER|q_aux[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[12]~40_combout\ = ((\PROGRAM_COUNTER|q_aux\(12) $ (\offset_aux[15]~12_combout\ $ (!\PROGRAM_COUNTER|q_aux[11]~39\)))) # (GND)
-- \PROGRAM_COUNTER|q_aux[12]~41\ = CARRY((\PROGRAM_COUNTER|q_aux\(12) & ((\offset_aux[15]~12_combout\) # (!\PROGRAM_COUNTER|q_aux[11]~39\))) # (!\PROGRAM_COUNTER|q_aux\(12) & (\offset_aux[15]~12_combout\ & !\PROGRAM_COUNTER|q_aux[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(12),
	datab => \offset_aux[15]~12_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[11]~39\,
	combout => \PROGRAM_COUNTER|q_aux[12]~40_combout\,
	cout => \PROGRAM_COUNTER|q_aux[12]~41\);

-- Location: LCCOMB_X22_Y15_N22
\PROGRAM_COUNTER|q_aux[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[12]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[12]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[12]~40_combout\,
	combout => \PROGRAM_COUNTER|q_aux[12]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\PROGRAM_COUNTER|q_aux\(11) & (\Add2~19\ $ (GND))) # (!\PROGRAM_COUNTER|q_aux\(11) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\PROGRAM_COUNTER|q_aux\(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X18_Y14_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\PROGRAM_COUNTER|q_aux\(12) & (!\Add2~21\)) # (!\PROGRAM_COUNTER|q_aux\(12) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\PROGRAM_COUNTER|q_aux\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X18_Y14_N23
\STACK|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~241_q\);

-- Location: FF_X14_Y14_N9
\STACK|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~113_q\);

-- Location: LCCOMB_X17_Y12_N10
\STACK|ram~177feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~177feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~22_combout\,
	combout => \STACK|ram~177feeder_combout\);

-- Location: FF_X17_Y12_N11
\STACK|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~177feeder_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~177_q\);

-- Location: FF_X16_Y14_N31
\STACK|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~49_q\);

-- Location: LCCOMB_X16_Y14_N30
\STACK|ram~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~386_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~177_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~177_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~49_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~386_combout\);

-- Location: LCCOMB_X14_Y14_N8
\STACK|ram~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~387_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~386_combout\ & (\STACK|ram~241_q\)) # (!\STACK|ram~386_combout\ & ((\STACK|ram~113_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~241_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~113_q\,
	datad => \STACK|ram~386_combout\,
	combout => \STACK|ram~387_combout\);

-- Location: LCCOMB_X12_Y14_N28
\STACK|ram~273feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~273feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~22_combout\,
	combout => \STACK|ram~273feeder_combout\);

-- Location: FF_X12_Y14_N29
\STACK|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~273feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~273_q\);

-- Location: FF_X13_Y14_N27
\STACK|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~145_q\);

-- Location: LCCOMB_X12_Y14_N10
\STACK|ram~209feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~209feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~22_combout\,
	combout => \STACK|ram~209feeder_combout\);

-- Location: FF_X12_Y14_N11
\STACK|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~209feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~209_q\);

-- Location: FF_X16_Y14_N9
\STACK|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~81_q\);

-- Location: LCCOMB_X16_Y14_N8
\STACK|ram~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~379_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~209_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~209_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~81_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~379_combout\);

-- Location: LCCOMB_X13_Y14_N26
\STACK|ram~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~380_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~379_combout\ & (\STACK|ram~273_q\)) # (!\STACK|ram~379_combout\ & ((\STACK|ram~145_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~273_q\,
	datac => \STACK|ram~145_q\,
	datad => \STACK|ram~379_combout\,
	combout => \STACK|ram~380_combout\);

-- Location: LCCOMB_X17_Y12_N16
\STACK|ram~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~97feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~22_combout\,
	combout => \STACK|ram~97feeder_combout\);

-- Location: FF_X17_Y12_N17
\STACK|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~97feeder_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~97_q\);

-- Location: FF_X13_Y12_N11
\STACK|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~33_q\);

-- Location: LCCOMB_X13_Y12_N10
\STACK|ram~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~381_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~97_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~33_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~97_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~33_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~381_combout\);

-- Location: LCCOMB_X14_Y12_N18
\STACK|ram~225feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~225feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~22_combout\,
	combout => \STACK|ram~225feeder_combout\);

-- Location: FF_X14_Y12_N19
\STACK|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~225feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~225_q\);

-- Location: FF_X14_Y12_N9
\STACK|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~161_q\);

-- Location: LCCOMB_X14_Y12_N8
\STACK|ram~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~382_combout\ = (\STACK|ram~381_combout\ & ((\STACK|ram~225_q\) # ((!\a_aux[3]~1_combout\)))) # (!\STACK|ram~381_combout\ & (((\STACK|ram~161_q\ & \a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~381_combout\,
	datab => \STACK|ram~225_q\,
	datac => \STACK|ram~161_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~382_combout\);

-- Location: LCCOMB_X16_Y12_N6
\STACK|ram~129feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~129feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~22_combout\,
	combout => \STACK|ram~129feeder_combout\);

-- Location: FF_X16_Y12_N7
\STACK|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~129feeder_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~129_q\);

-- Location: FF_X16_Y12_N21
\STACK|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~65_q\);

-- Location: LCCOMB_X16_Y12_N20
\STACK|ram~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~383_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~129_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~65_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~129_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~65_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~383_combout\);

-- Location: LCCOMB_X18_Y12_N0
\STACK|ram~193feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~193feeder_combout\ = \Add2~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~22_combout\,
	combout => \STACK|ram~193feeder_combout\);

-- Location: FF_X18_Y12_N1
\STACK|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~193feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~193_q\);

-- Location: FF_X18_Y12_N3
\STACK|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~22_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~257_q\);

-- Location: LCCOMB_X18_Y12_N2
\STACK|ram~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~384_combout\ = (\STACK|ram~383_combout\ & (((\STACK|ram~257_q\) # (!\a_aux[3]~1_combout\)))) # (!\STACK|ram~383_combout\ & (\STACK|ram~193_q\ & ((\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~383_combout\,
	datab => \STACK|ram~193_q\,
	datac => \STACK|ram~257_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~384_combout\);

-- Location: LCCOMB_X14_Y14_N2
\STACK|ram~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~385_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~382_combout\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~384_combout\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~382_combout\,
	datac => \a_aux[1]~2_combout\,
	datad => \STACK|ram~384_combout\,
	combout => \STACK|ram~385_combout\);

-- Location: LCCOMB_X14_Y14_N22
\STACK|ram~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~388_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~385_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~385_combout\ & (\STACK|ram~387_combout\)) # (!\STACK|ram~385_combout\ & ((\STACK|ram~380_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~387_combout\,
	datac => \STACK|ram~380_combout\,
	datad => \STACK|ram~385_combout\,
	combout => \STACK|ram~388_combout\);

-- Location: FF_X22_Y15_N23
\PROGRAM_COUNTER|q_aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[12]~feeder_combout\,
	asdata => \STACK|ram~388_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(12));

-- Location: LCCOMB_X19_Y15_N26
\PROGRAM_COUNTER|q_aux[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[13]~42_combout\ = (\PROGRAM_COUNTER|q_aux\(13) & ((\offset_aux[15]~12_combout\ & (\PROGRAM_COUNTER|q_aux[12]~41\ & VCC)) # (!\offset_aux[15]~12_combout\ & (!\PROGRAM_COUNTER|q_aux[12]~41\)))) # (!\PROGRAM_COUNTER|q_aux\(13) & 
-- ((\offset_aux[15]~12_combout\ & (!\PROGRAM_COUNTER|q_aux[12]~41\)) # (!\offset_aux[15]~12_combout\ & ((\PROGRAM_COUNTER|q_aux[12]~41\) # (GND)))))
-- \PROGRAM_COUNTER|q_aux[13]~43\ = CARRY((\PROGRAM_COUNTER|q_aux\(13) & (!\offset_aux[15]~12_combout\ & !\PROGRAM_COUNTER|q_aux[12]~41\)) # (!\PROGRAM_COUNTER|q_aux\(13) & ((!\PROGRAM_COUNTER|q_aux[12]~41\) # (!\offset_aux[15]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(13),
	datab => \offset_aux[15]~12_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[12]~41\,
	combout => \PROGRAM_COUNTER|q_aux[13]~42_combout\,
	cout => \PROGRAM_COUNTER|q_aux[13]~43\);

-- Location: LCCOMB_X22_Y15_N0
\PROGRAM_COUNTER|q_aux[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[13]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[13]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[13]~42_combout\,
	combout => \PROGRAM_COUNTER|q_aux[13]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\PROGRAM_COUNTER|q_aux\(13) & (\Add2~23\ $ (GND))) # (!\PROGRAM_COUNTER|q_aux\(13) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\PROGRAM_COUNTER|q_aux\(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X14_Y14_N26
\STACK|ram~114feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~114feeder_combout\ = \Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	combout => \STACK|ram~114feeder_combout\);

-- Location: FF_X14_Y14_N27
\STACK|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~114feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~114_q\);

-- Location: FF_X14_Y14_N5
\STACK|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~98_q\);

-- Location: LCCOMB_X13_Y14_N0
\STACK|ram~146feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~146feeder_combout\ = \Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	combout => \STACK|ram~146feeder_combout\);

-- Location: FF_X13_Y14_N1
\STACK|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~146feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~146_q\);

-- Location: FF_X13_Y14_N31
\STACK|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~130_q\);

-- Location: LCCOMB_X13_Y14_N30
\STACK|ram~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~389_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~130_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~146_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~146_q\,
	datac => \STACK|ram~130_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~389_combout\);

-- Location: LCCOMB_X14_Y14_N4
\STACK|ram~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~390_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~389_combout\ & (\STACK|ram~114_q\)) # (!\STACK|ram~389_combout\ & ((\STACK|ram~98_q\))))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~114_q\,
	datac => \STACK|ram~98_q\,
	datad => \STACK|ram~389_combout\,
	combout => \STACK|ram~390_combout\);

-- Location: FF_X18_Y14_N25
\STACK|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~242_q\);

-- Location: LCCOMB_X17_Y13_N2
\STACK|ram~274feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~274feeder_combout\ = \Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~24_combout\,
	combout => \STACK|ram~274feeder_combout\);

-- Location: FF_X17_Y13_N3
\STACK|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~274feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~274_q\);

-- Location: FF_X12_Y13_N29
\STACK|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~258_q\);

-- Location: LCCOMB_X12_Y13_N28
\STACK|ram~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~396_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~258_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~274_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~274_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~258_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~396_combout\);

-- Location: FF_X13_Y13_N15
\STACK|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~226_q\);

-- Location: LCCOMB_X13_Y13_N14
\STACK|ram~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~397_combout\ = (\STACK|ram~396_combout\ & ((\STACK|ram~242_q\) # ((!\a_aux[1]~2_combout\)))) # (!\STACK|ram~396_combout\ & (((\STACK|ram~226_q\ & \a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~242_q\,
	datab => \STACK|ram~396_combout\,
	datac => \STACK|ram~226_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~397_combout\);

-- Location: LCCOMB_X17_Y15_N14
\STACK|ram~82feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~82feeder_combout\ = \Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	combout => \STACK|ram~82feeder_combout\);

-- Location: FF_X17_Y15_N15
\STACK|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~82feeder_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~82_q\);

-- Location: FF_X17_Y15_N29
\STACK|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~50_q\);

-- Location: FF_X16_Y15_N1
\STACK|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~34_q\);

-- Location: FF_X16_Y15_N13
\STACK|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~66_q\);

-- Location: LCCOMB_X16_Y15_N12
\STACK|ram~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~393_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~34_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~66_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~34_q\,
	datac => \STACK|ram~66_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~393_combout\);

-- Location: LCCOMB_X17_Y15_N28
\STACK|ram~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~394_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~393_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~393_combout\ & ((\STACK|ram~50_q\))) # (!\STACK|ram~393_combout\ & (\STACK|ram~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~82_q\,
	datac => \STACK|ram~50_q\,
	datad => \STACK|ram~393_combout\,
	combout => \STACK|ram~394_combout\);

-- Location: LCCOMB_X14_Y13_N22
\STACK|ram~210feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~210feeder_combout\ = \Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	combout => \STACK|ram~210feeder_combout\);

-- Location: FF_X14_Y13_N23
\STACK|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~210feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~210_q\);

-- Location: FF_X14_Y13_N1
\STACK|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~178_q\);

-- Location: LCCOMB_X13_Y13_N0
\STACK|ram~162feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~162feeder_combout\ = \Add2~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	combout => \STACK|ram~162feeder_combout\);

-- Location: FF_X13_Y13_N1
\STACK|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~162feeder_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~162_q\);

-- Location: FF_X12_Y13_N19
\STACK|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~24_combout\,
	sload => VCC,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~194_q\);

-- Location: LCCOMB_X12_Y13_N18
\STACK|ram~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~391_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~162_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~194_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~162_q\,
	datac => \STACK|ram~194_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~391_combout\);

-- Location: LCCOMB_X14_Y13_N0
\STACK|ram~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~392_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~391_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~391_combout\ & ((\STACK|ram~178_q\))) # (!\STACK|ram~391_combout\ & (\STACK|ram~210_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~210_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~178_q\,
	datad => \STACK|ram~391_combout\,
	combout => \STACK|ram~392_combout\);

-- Location: LCCOMB_X14_Y15_N2
\STACK|ram~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~395_combout\ = (\a_aux[2]~0_combout\ & (\a_aux[3]~1_combout\)) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & ((\STACK|ram~392_combout\))) # (!\a_aux[3]~1_combout\ & (\STACK|ram~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~394_combout\,
	datad => \STACK|ram~392_combout\,
	combout => \STACK|ram~395_combout\);

-- Location: LCCOMB_X14_Y15_N8
\STACK|ram~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~398_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~395_combout\ & ((\STACK|ram~397_combout\))) # (!\STACK|ram~395_combout\ & (\STACK|ram~390_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~390_combout\,
	datac => \STACK|ram~397_combout\,
	datad => \STACK|ram~395_combout\,
	combout => \STACK|ram~398_combout\);

-- Location: FF_X22_Y15_N1
\PROGRAM_COUNTER|q_aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[13]~feeder_combout\,
	asdata => \STACK|ram~398_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(13));

-- Location: LCCOMB_X19_Y15_N28
\PROGRAM_COUNTER|q_aux[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[14]~44_combout\ = ((\PROGRAM_COUNTER|q_aux\(14) $ (\offset_aux[15]~12_combout\ $ (!\PROGRAM_COUNTER|q_aux[13]~43\)))) # (GND)
-- \PROGRAM_COUNTER|q_aux[14]~45\ = CARRY((\PROGRAM_COUNTER|q_aux\(14) & ((\offset_aux[15]~12_combout\) # (!\PROGRAM_COUNTER|q_aux[13]~43\))) # (!\PROGRAM_COUNTER|q_aux\(14) & (\offset_aux[15]~12_combout\ & !\PROGRAM_COUNTER|q_aux[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(14),
	datab => \offset_aux[15]~12_combout\,
	datad => VCC,
	cin => \PROGRAM_COUNTER|q_aux[13]~43\,
	combout => \PROGRAM_COUNTER|q_aux[14]~44_combout\,
	cout => \PROGRAM_COUNTER|q_aux[14]~45\);

-- Location: LCCOMB_X22_Y15_N12
\PROGRAM_COUNTER|q_aux[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[14]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[14]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[14]~44_combout\,
	combout => \PROGRAM_COUNTER|q_aux[14]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\PROGRAM_COUNTER|q_aux\(14) & (!\Add2~25\)) # (!\PROGRAM_COUNTER|q_aux\(14) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\PROGRAM_COUNTER|q_aux\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X14_Y12_N22
\STACK|ram~227feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~227feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	combout => \STACK|ram~227feeder_combout\);

-- Location: FF_X14_Y12_N23
\STACK|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~227feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~227_q\);

-- Location: FF_X13_Y12_N23
\STACK|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~99_q\);

-- Location: LCCOMB_X14_Y12_N0
\STACK|ram~163feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~163feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	combout => \STACK|ram~163feeder_combout\);

-- Location: FF_X14_Y12_N1
\STACK|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~163feeder_combout\,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~163_q\);

-- Location: FF_X13_Y12_N29
\STACK|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~35_q\);

-- Location: LCCOMB_X13_Y12_N28
\STACK|ram~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~369_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~163_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~35_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~163_q\,
	datac => \STACK|ram~35_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~369_combout\);

-- Location: LCCOMB_X13_Y12_N22
\STACK|ram~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~370_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~369_combout\ & (\STACK|ram~227_q\)) # (!\STACK|ram~369_combout\ & ((\STACK|ram~99_q\))))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \STACK|ram~227_q\,
	datac => \STACK|ram~99_q\,
	datad => \STACK|ram~369_combout\,
	combout => \STACK|ram~370_combout\);

-- Location: LCCOMB_X17_Y14_N8
\STACK|ram~115feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~115feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	combout => \STACK|ram~115feeder_combout\);

-- Location: FF_X17_Y14_N9
\STACK|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~115feeder_combout\,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~115_q\);

-- Location: FF_X16_Y14_N15
\STACK|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~51_q\);

-- Location: LCCOMB_X16_Y14_N14
\STACK|ram~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~376_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~115_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~51_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~115_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~51_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~376_combout\);

-- Location: FF_X18_Y14_N27
\STACK|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~243_q\);

-- Location: FF_X17_Y12_N23
\STACK|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~179_q\);

-- Location: LCCOMB_X17_Y12_N22
\STACK|ram~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~377_combout\ = (\STACK|ram~376_combout\ & ((\STACK|ram~243_q\) # ((!\a_aux[3]~1_combout\)))) # (!\STACK|ram~376_combout\ & (((\STACK|ram~179_q\ & \a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~376_combout\,
	datab => \STACK|ram~243_q\,
	datac => \STACK|ram~179_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~377_combout\);

-- Location: LCCOMB_X16_Y12_N30
\STACK|ram~131feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~131feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	combout => \STACK|ram~131feeder_combout\);

-- Location: FF_X16_Y12_N31
\STACK|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~131feeder_combout\,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~131_q\);

-- Location: FF_X12_Y12_N9
\STACK|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~259_q\);

-- Location: LCCOMB_X12_Y12_N14
\STACK|ram~195feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~195feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	combout => \STACK|ram~195feeder_combout\);

-- Location: FF_X12_Y12_N15
\STACK|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~195feeder_combout\,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~195_q\);

-- Location: FF_X16_Y12_N17
\STACK|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~67_q\);

-- Location: LCCOMB_X16_Y12_N16
\STACK|ram~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~373_combout\ = (\a_aux[2]~0_combout\ & (((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\ & (\STACK|ram~195_q\)) # (!\a_aux[3]~1_combout\ & ((\STACK|ram~67_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~195_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~67_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~373_combout\);

-- Location: LCCOMB_X12_Y12_N8
\STACK|ram~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~374_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~373_combout\ & ((\STACK|ram~259_q\))) # (!\STACK|ram~373_combout\ & (\STACK|ram~131_q\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~131_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~259_q\,
	datad => \STACK|ram~373_combout\,
	combout => \STACK|ram~374_combout\);

-- Location: LCCOMB_X12_Y14_N0
\STACK|ram~275feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~275feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~26_combout\,
	combout => \STACK|ram~275feeder_combout\);

-- Location: FF_X12_Y14_N1
\STACK|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~275feeder_combout\,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~275_q\);

-- Location: FF_X12_Y14_N7
\STACK|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~211_q\);

-- Location: LCCOMB_X13_Y14_N20
\STACK|ram~147feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~147feeder_combout\ = \Add2~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~26_combout\,
	combout => \STACK|ram~147feeder_combout\);

-- Location: FF_X13_Y14_N21
\STACK|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~147feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~147_q\);

-- Location: FF_X16_Y14_N13
\STACK|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~26_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~83_q\);

-- Location: LCCOMB_X16_Y14_N12
\STACK|ram~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~371_combout\ = (\a_aux[2]~0_combout\ & ((\STACK|ram~147_q\) # ((\a_aux[3]~1_combout\)))) # (!\a_aux[2]~0_combout\ & (((\STACK|ram~83_q\ & !\a_aux[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~147_q\,
	datab => \a_aux[2]~0_combout\,
	datac => \STACK|ram~83_q\,
	datad => \a_aux[3]~1_combout\,
	combout => \STACK|ram~371_combout\);

-- Location: LCCOMB_X12_Y14_N6
\STACK|ram~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~372_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~371_combout\ & (\STACK|ram~275_q\)) # (!\STACK|ram~371_combout\ & ((\STACK|ram~211_q\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[3]~1_combout\,
	datab => \STACK|ram~275_q\,
	datac => \STACK|ram~211_q\,
	datad => \STACK|ram~371_combout\,
	combout => \STACK|ram~372_combout\);

-- Location: LCCOMB_X12_Y12_N18
\STACK|ram~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~375_combout\ = (\a_aux[1]~2_combout\ & (!\STACK_POINTER|q_aux\(0))) # (!\a_aux[1]~2_combout\ & ((\STACK_POINTER|q_aux\(0) & (\STACK|ram~374_combout\)) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~372_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~374_combout\,
	datad => \STACK|ram~372_combout\,
	combout => \STACK|ram~375_combout\);

-- Location: LCCOMB_X12_Y12_N20
\STACK|ram~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~378_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~375_combout\ & ((\STACK|ram~377_combout\))) # (!\STACK|ram~375_combout\ & (\STACK|ram~370_combout\)))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~370_combout\,
	datac => \STACK|ram~377_combout\,
	datad => \STACK|ram~375_combout\,
	combout => \STACK|ram~378_combout\);

-- Location: FF_X22_Y15_N13
\PROGRAM_COUNTER|q_aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[14]~feeder_combout\,
	asdata => \STACK|ram~378_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(14));

-- Location: LCCOMB_X21_Y15_N24
\PROGRAM_MEMORY|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~0_combout\ = (!\PROGRAM_COUNTER|q_aux\(8) & (!\PROGRAM_COUNTER|q_aux\(6) & (!\PROGRAM_COUNTER|q_aux\(7) & !\PROGRAM_COUNTER|q_aux\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(8),
	datab => \PROGRAM_COUNTER|q_aux\(6),
	datac => \PROGRAM_COUNTER|q_aux\(7),
	datad => \PROGRAM_COUNTER|q_aux\(9),
	combout => \PROGRAM_MEMORY|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\PROGRAM_MEMORY|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~9_combout\ = (!\PROGRAM_COUNTER|q_aux\(13) & (!\PROGRAM_COUNTER|q_aux\(12) & (!\PROGRAM_COUNTER|q_aux\(11) & !\PROGRAM_COUNTER|q_aux\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(13),
	datab => \PROGRAM_COUNTER|q_aux\(12),
	datac => \PROGRAM_COUNTER|q_aux\(11),
	datad => \PROGRAM_COUNTER|q_aux\(10),
	combout => \PROGRAM_MEMORY|Mux2~9_combout\);

-- Location: LCCOMB_X21_Y13_N10
\INSTR_DECODER|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~4_combout\ = (!\PROGRAM_COUNTER|q_aux\(14) & (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux2~0_combout\ & \PROGRAM_MEMORY|Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(14),
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~0_combout\,
	datad => \PROGRAM_MEMORY|Mux2~9_combout\,
	combout => \INSTR_DECODER|Mux12~4_combout\);

-- Location: LCCOMB_X21_Y13_N28
\INSTR_DECODER|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux17~0_combout\ = (!\PROGRAM_MEMORY|Mux3~2_combout\ & ((\PROGRAM_MEMORY|Mux0~2_combout\) # ((\PROGRAM_COUNTER|q_aux\(5) & !\PROGRAM_MEMORY|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(5),
	datab => \PROGRAM_MEMORY|Mux5~0_combout\,
	datac => \PROGRAM_MEMORY|Mux3~2_combout\,
	datad => \PROGRAM_MEMORY|Mux0~2_combout\,
	combout => \INSTR_DECODER|Mux17~0_combout\);

-- Location: LCCOMB_X28_Y14_N16
\INSTR_DECODER|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux17~1_combout\ = ((\INSTR_DECODER|Mux17~0_combout\) # ((\PROGRAM_MEMORY|Mux3~3_combout\ & \INSTR_DECODER|Mux22~4_combout\))) # (!\INSTR_DECODER|Mux12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~4_combout\,
	datab => \INSTR_DECODER|Mux17~0_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \INSTR_DECODER|Mux22~4_combout\,
	combout => \INSTR_DECODER|Mux17~1_combout\);

-- Location: LCCOMB_X28_Y14_N30
\INSTR_DECODER|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux17~4_combout\ = (\INSTR_DECODER|Mux17~1_combout\) # ((!\PROGRAM_MEMORY|Mux1~3_combout\ & (\INSTR_DECODER|Mux17~3_combout\ & !\PROGRAM_MEMORY|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~3_combout\,
	datab => \INSTR_DECODER|Mux17~3_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \INSTR_DECODER|Mux17~1_combout\,
	combout => \INSTR_DECODER|Mux17~4_combout\);

-- Location: LCCOMB_X19_Y12_N8
\INSTR_DECODER|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux5~5_combout\ = (\PROGRAM_MEMORY|Mux3~3_combout\ & (!\PROGRAM_MEMORY|Mux0~3_combout\ & ((!\PROGRAM_MEMORY|Mux2~8_combout\) # (!\PROGRAM_COUNTER|q_aux\(15))))) # (!\PROGRAM_MEMORY|Mux3~3_combout\ & (((\PROGRAM_MEMORY|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux0~3_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \PROGRAM_MEMORY|Mux2~8_combout\,
	combout => \INSTR_DECODER|Mux5~5_combout\);

-- Location: LCCOMB_X19_Y12_N14
\INSTR_DECODER|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux5~2_combout\ = (\PROGRAM_MEMORY|Mux1~2_combout\ & (\INSTR_DECODER|Mux5~5_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \INSTR_DECODER|Mux5~5_combout\,
	datad => \PROGRAM_MEMORY|Mux7~3_combout\,
	combout => \INSTR_DECODER|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y12_N12
\PROGRAM_MEMORY|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux9~9_combout\ = (\PROGRAM_MEMORY|Mux9~7_combout\) # ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux9~10_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux9~7_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux9~10_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \PROGRAM_MEMORY|Mux9~9_combout\);

-- Location: LCCOMB_X22_Y12_N22
\INSTR_DECODER|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux7~0_combout\ = (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\PROGRAM_MEMORY|Mux2~2_combout\ & (\PROGRAM_MEMORY|Mux1~2_combout\ & \PROGRAM_MEMORY|Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \PROGRAM_MEMORY|Mux2~2_combout\,
	datac => \PROGRAM_MEMORY|Mux1~2_combout\,
	datad => \PROGRAM_MEMORY|Mux2~7_combout\,
	combout => \INSTR_DECODER|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y12_N4
\INSTR_DECODER|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux1~5_combout\ = (\PROGRAM_MEMORY|Mux1~2_combout\ & (\PROGRAM_MEMORY|Mux3~3_combout\ $ (((!\PROGRAM_COUNTER|q_aux\(15) & \PROGRAM_MEMORY|Mux2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux3~3_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux1~2_combout\,
	datad => \PROGRAM_MEMORY|Mux2~10_combout\,
	combout => \INSTR_DECODER|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y12_N18
\INSTR_DECODER|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux1~6_combout\ = (\INSTR_DECODER|Mux1~5_combout\) # ((\PROGRAM_MEMORY|Mux2~8_combout\ & (\PROGRAM_MEMORY|Mux1~2_combout\ & !\INSTR_DECODER|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~8_combout\,
	datab => \PROGRAM_MEMORY|Mux1~2_combout\,
	datac => \INSTR_DECODER|Mux1~5_combout\,
	datad => \INSTR_DECODER|Equal0~5_combout\,
	combout => \INSTR_DECODER|Mux1~6_combout\);

-- Location: LCCOMB_X22_Y12_N20
\INSTR_DECODER|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux7~1_combout\ = (\PROGRAM_MEMORY|Mux9~9_combout\ & ((\PROGRAM_MEMORY|Mux0~4_combout\ & (\INSTR_DECODER|Mux7~0_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & ((\INSTR_DECODER|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux9~9_combout\,
	datab => \PROGRAM_MEMORY|Mux0~4_combout\,
	datac => \INSTR_DECODER|Mux7~0_combout\,
	datad => \INSTR_DECODER|Mux1~6_combout\,
	combout => \INSTR_DECODER|Mux7~1_combout\);

-- Location: LCCOMB_X28_Y14_N18
\INSTR_DECODER|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~7_combout\ = (\PROGRAM_MEMORY|Mux1~2_combout\ & (\PROGRAM_MEMORY|Mux3~3_combout\ & (!\PROGRAM_MEMORY|Mux0~4_combout\ & !\PROGRAM_MEMORY|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~2_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \PROGRAM_MEMORY|Mux2~8_combout\,
	combout => \INSTR_DECODER|Mux12~7_combout\);

-- Location: LCCOMB_X28_Y14_N22
\INSTR_DECODER|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux18~1_combout\ = (!\INSTR_DECODER|Mux12~7_combout\) # (!\INSTR_DECODER|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTR_DECODER|Mux18~0_combout\,
	datad => \INSTR_DECODER|Mux12~7_combout\,
	combout => \INSTR_DECODER|Mux18~1_combout\);

-- Location: LCCOMB_X25_Y15_N30
\PROGRAM_MEMORY|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux4~4_combout\ = (\PROGRAM_MEMORY|Mux4~3_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux4~3_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \PROGRAM_MEMORY|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y14_N10
\INSTR_DECODER|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux11~0_combout\ = (\PROGRAM_MEMORY|Mux0~4_combout\ & (((\PROGRAM_MEMORY|Mux8~3_combout\) # (\PROGRAM_MEMORY|Mux8~5_combout\)))) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & (\PROGRAM_MEMORY|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux0~4_combout\,
	datab => \PROGRAM_MEMORY|Mux12~1_combout\,
	datac => \PROGRAM_MEMORY|Mux8~3_combout\,
	datad => \PROGRAM_MEMORY|Mux8~5_combout\,
	combout => \INSTR_DECODER|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\INSTR_DECODER|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~0_combout\ = (\PROGRAM_MEMORY|Mux2~2_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux2~7_combout\) # (\PROGRAM_MEMORY|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~7_combout\,
	datad => \PROGRAM_MEMORY|Mux3~2_combout\,
	combout => \INSTR_DECODER|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y13_N14
\INSTR_DECODER|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux1~3_combout\ = (!\PROGRAM_MEMORY|Mux6~6_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & (!\PROGRAM_MEMORY|Mux9~8_combout\ & \PROGRAM_MEMORY|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux6~6_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux9~8_combout\,
	datad => \PROGRAM_MEMORY|Mux5~4_combout\,
	combout => \INSTR_DECODER|Mux1~3_combout\);

-- Location: LCCOMB_X23_Y13_N28
\INSTR_DECODER|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux1~2_combout\ = (!\PROGRAM_MEMORY|Mux4~3_combout\ & (\PROGRAM_MEMORY|Mux7~2_combout\ & (!\PROGRAM_MEMORY|Mux8~6_combout\ & !\PROGRAM_MEMORY|Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux4~3_combout\,
	datab => \PROGRAM_MEMORY|Mux7~2_combout\,
	datac => \PROGRAM_MEMORY|Mux8~6_combout\,
	datad => \PROGRAM_MEMORY|Mux11~4_combout\,
	combout => \INSTR_DECODER|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y13_N4
\INSTR_DECODER|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux1~4_combout\ = ((\PROGRAM_MEMORY|Mux10~3_combout\) # ((!\INSTR_DECODER|Mux1~2_combout\) # (!\INSTR_DECODER|Mux1~3_combout\))) # (!\PROGRAM_MEMORY|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~2_combout\,
	datab => \PROGRAM_MEMORY|Mux10~3_combout\,
	datac => \INSTR_DECODER|Mux1~3_combout\,
	datad => \INSTR_DECODER|Mux1~2_combout\,
	combout => \INSTR_DECODER|Mux1~4_combout\);

-- Location: LCCOMB_X23_Y13_N24
\INSTR_DECODER|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~1_combout\ = (\INSTR_DECODER|Equal1~5_combout\) # ((\INSTR_DECODER|Equal0~1_combout\ & !\INSTR_DECODER|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Equal0~1_combout\,
	datac => \INSTR_DECODER|Mux1~4_combout\,
	datad => \INSTR_DECODER|Equal1~5_combout\,
	combout => \INSTR_DECODER|Mux12~1_combout\);

-- Location: LCCOMB_X23_Y13_N10
\INSTR_DECODER|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~2_combout\ = (\PROGRAM_MEMORY|Mux3~3_combout\ & ((!\INSTR_DECODER|Mux12~1_combout\) # (!\PROGRAM_MEMORY|Mux2~8_combout\))) # (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\PROGRAM_MEMORY|Mux2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_MEMORY|Mux2~8_combout\,
	datad => \INSTR_DECODER|Mux12~1_combout\,
	combout => \INSTR_DECODER|Mux12~2_combout\);

-- Location: LCCOMB_X23_Y13_N16
\INSTR_DECODER|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~3_combout\ = (\PROGRAM_MEMORY|Mux1~2_combout\ & ((\PROGRAM_MEMORY|Mux0~4_combout\ & (!\INSTR_DECODER|Mux12~0_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & ((\INSTR_DECODER|Mux12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux0~4_combout\,
	datab => \PROGRAM_MEMORY|Mux1~2_combout\,
	datac => \INSTR_DECODER|Mux12~0_combout\,
	datad => \INSTR_DECODER|Mux12~2_combout\,
	combout => \INSTR_DECODER|Mux12~3_combout\);

-- Location: LCCOMB_X23_Y13_N0
\INSTR_DECODER|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux11~1_combout\ = (\INSTR_DECODER|Mux12~3_combout\ & ((\PROGRAM_MEMORY|Mux8~1_combout\) # ((\INSTR_DECODER|Mux11~0_combout\) # (!\INSTR_DECODER|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux8~1_combout\,
	datab => \INSTR_DECODER|Mux12~4_combout\,
	datac => \INSTR_DECODER|Mux11~0_combout\,
	datad => \INSTR_DECODER|Mux12~3_combout\,
	combout => \INSTR_DECODER|Mux11~1_combout\);

-- Location: LCCOMB_X23_Y16_N12
\INSTR_DECODER|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~5_combout\ = ((\PROGRAM_MEMORY|Mux0~4_combout\ & ((\PROGRAM_MEMORY|Mux9~7_combout\) # (\PROGRAM_MEMORY|Mux9~10_combout\)))) # (!\INSTR_DECODER|Mux12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~4_combout\,
	datab => \PROGRAM_MEMORY|Mux9~7_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \PROGRAM_MEMORY|Mux9~10_combout\,
	combout => \INSTR_DECODER|Mux12~5_combout\);

-- Location: LCCOMB_X23_Y13_N26
\INSTR_DECODER|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux12~6_combout\ = (\INSTR_DECODER|Mux12~3_combout\ & ((\INSTR_DECODER|Mux12~5_combout\) # ((!\PROGRAM_MEMORY|Mux0~4_combout\ & \PROGRAM_MEMORY|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux0~4_combout\,
	datab => \PROGRAM_MEMORY|Mux13~6_combout\,
	datac => \INSTR_DECODER|Mux12~5_combout\,
	datad => \INSTR_DECODER|Mux12~3_combout\,
	combout => \INSTR_DECODER|Mux12~6_combout\);

-- Location: LCCOMB_X21_Y12_N26
\PROGRAM_MEMORY|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux11~5_combout\ = (\PROGRAM_MEMORY|Mux11~3_combout\) # ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux11~0_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux11~3_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux11~0_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \PROGRAM_MEMORY|Mux11~5_combout\);

-- Location: LCCOMB_X21_Y12_N12
\INSTR_DECODER|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux1~7_combout\ = (\PROGRAM_MEMORY|Mux0~4_combout\ & ((\PROGRAM_MEMORY|Mux1~3_combout\) # ((!\PROGRAM_MEMORY|Mux3~3_combout\)))) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & (((\INSTR_DECODER|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~3_combout\,
	datab => \PROGRAM_MEMORY|Mux0~4_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \INSTR_DECODER|Mux1~6_combout\,
	combout => \INSTR_DECODER|Mux1~7_combout\);

-- Location: LCCOMB_X21_Y12_N22
\INSTR_DECODER|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux4~0_combout\ = (\PROGRAM_MEMORY|Mux11~5_combout\ & \INSTR_DECODER|Mux1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_MEMORY|Mux11~5_combout\,
	datad => \INSTR_DECODER|Mux1~7_combout\,
	combout => \INSTR_DECODER|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y12_N20
\INSTR_DECODER|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux2~0_combout\ = (\PROGRAM_MEMORY|Mux9~9_combout\ & \INSTR_DECODER|Mux1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_MEMORY|Mux9~9_combout\,
	datad => \INSTR_DECODER|Mux1~7_combout\,
	combout => \INSTR_DECODER|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\INSTR_DECODER|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux3~2_combout\ = (\INSTR_DECODER|Mux1~7_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux10~2_combout\) # (!\PROGRAM_MEMORY|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux1~7_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux10~2_combout\,
	datad => \PROGRAM_MEMORY|Mux2~2_combout\,
	combout => \INSTR_DECODER|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y12_N24
\INSTR_DECODER|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux1~8_combout\ = (\INSTR_DECODER|Mux1~7_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux8~6_combout\,
	datad => \INSTR_DECODER|Mux1~7_combout\,
	combout => \INSTR_DECODER|Mux1~8_combout\);

-- Location: LCCOMB_X21_Y12_N18
\REGE|DECODIFICADOR|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~12_combout\ = (\INSTR_DECODER|Mux4~0_combout\ & (!\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & \INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~12_combout\);

-- Location: LCCOMB_X21_Y13_N8
\INSTR_DECODER|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux5~4_combout\ = (!\PROGRAM_MEMORY|Mux1~1_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux2~2_combout\ & !\PROGRAM_MEMORY|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~1_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux7~2_combout\,
	combout => \INSTR_DECODER|Mux5~4_combout\);

-- Location: LCCOMB_X28_Y12_N2
\INSTR_DECODER|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux0~4_combout\ = (\PROGRAM_MEMORY|Mux0~4_combout\ & (((!\PROGRAM_MEMORY|Mux3~3_combout\ & !\PROGRAM_MEMORY|Mux2~8_combout\)) # (!\PROGRAM_MEMORY|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~2_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_MEMORY|Mux2~8_combout\,
	datad => \PROGRAM_MEMORY|Mux0~4_combout\,
	combout => \INSTR_DECODER|Mux0~4_combout\);

-- Location: LCCOMB_X28_Y12_N4
\INSTR_DECODER|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux0~5_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & ((\PROGRAM_MEMORY|Mux3~3_combout\ & ((!\PROGRAM_MEMORY|Mux0~3_combout\))) # (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\PROGRAM_MEMORY|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~10_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux0~3_combout\,
	combout => \INSTR_DECODER|Mux0~5_combout\);

-- Location: LCCOMB_X28_Y14_N12
\INSTR_DECODER|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux23~3_combout\ = (\PROGRAM_MEMORY|Mux3~3_combout\ & ((\PROGRAM_MEMORY|Mux1~2_combout\ & ((!\PROGRAM_MEMORY|Mux0~3_combout\))) # (!\PROGRAM_MEMORY|Mux1~2_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \PROGRAM_MEMORY|Mux0~3_combout\,
	combout => \INSTR_DECODER|Mux23~3_combout\);

-- Location: LCCOMB_X28_Y14_N2
\INSTR_DECODER|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux23~2_combout\ = (\PROGRAM_MEMORY|Mux0~4_combout\ & (\INSTR_DECODER|s1~1_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\))) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & (((!\INSTR_DECODER|Equal0~5_combout\) # (!\PROGRAM_MEMORY|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux0~4_combout\,
	datab => \INSTR_DECODER|s1~1_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \INSTR_DECODER|Equal0~5_combout\,
	combout => \INSTR_DECODER|Mux23~2_combout\);

-- Location: LCCOMB_X28_Y14_N14
\INSTR_DECODER|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux23~4_combout\ = (\INSTR_DECODER|Mux23~3_combout\ & (((\INSTR_DECODER|Mux23~5_combout\ & \INSTR_DECODER|Mux23~2_combout\)) # (!\PROGRAM_MEMORY|Mux2~8_combout\))) # (!\INSTR_DECODER|Mux23~3_combout\ & (((\INSTR_DECODER|Mux23~5_combout\ & 
-- \INSTR_DECODER|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux23~3_combout\,
	datab => \PROGRAM_MEMORY|Mux2~8_combout\,
	datac => \INSTR_DECODER|Mux23~5_combout\,
	datad => \INSTR_DECODER|Mux23~2_combout\,
	combout => \INSTR_DECODER|Mux23~4_combout\);

-- Location: LCCOMB_X28_Y12_N16
\REGE|DECODIFICADOR|O[15]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[15]~37_combout\ = (!\INSTR_DECODER|Mux0~4_combout\ & (\INSTR_DECODER|Mux23~4_combout\ & ((!\INSTR_DECODER|Mux0~5_combout\) # (!\INSTR_DECODER|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux5~4_combout\,
	datab => \INSTR_DECODER|Mux0~4_combout\,
	datac => \INSTR_DECODER|Mux0~5_combout\,
	datad => \INSTR_DECODER|Mux23~4_combout\,
	combout => \REGE|DECODIFICADOR|O[15]~37_combout\);

-- Location: LCCOMB_X24_Y9_N22
\REGE|DECODIFICADOR|O[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[11]~23_combout\ = (\REGE|DECODIFICADOR|Decoder0~12_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~12_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[11]~23_combout\);

-- Location: FF_X24_Y11_N9
\REGE|GEN_REG:11:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X28_Y13_N6
\REGE|DECODIFICADOR|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~4_combout\ = (\INSTR_DECODER|Mux4~0_combout\ & (\INSTR_DECODER|Mux1~8_combout\ & (!\INSTR_DECODER|Mux2~0_combout\ & !\INSTR_DECODER|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux1~8_combout\,
	datac => \INSTR_DECODER|Mux2~0_combout\,
	datad => \INSTR_DECODER|Mux3~2_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y13_N24
\REGE|DECODIFICADOR|O[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[9]~21_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~4_combout\,
	combout => \REGE|DECODIFICADOR|O[9]~21_combout\);

-- Location: FF_X24_Y13_N13
\REGE|GEN_REG:9:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X28_Y11_N10
\REGE|GEN_REG:10:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:10:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:10:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X28_Y12_N6
\REGE|DECODIFICADOR|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~1_combout\ = (!\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & (!\INSTR_DECODER|Mux4~0_combout\ & \INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux2~0_combout\,
	datab => \INSTR_DECODER|Mux3~2_combout\,
	datac => \INSTR_DECODER|Mux4~0_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~1_combout\);

-- Location: LCCOMB_X24_Y10_N28
\REGE|DECODIFICADOR|O[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[10]~20_combout\ = (\REGE|DECODIFICADOR|Decoder0~1_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~1_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[10]~20_combout\);

-- Location: FF_X28_Y11_N11
\REGE|GEN_REG:10:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:10:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X28_Y12_N26
\REGE|DECODIFICADOR|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~9_combout\ = (!\INSTR_DECODER|Mux4~0_combout\ & (\INSTR_DECODER|Mux1~8_combout\ & (!\INSTR_DECODER|Mux3~2_combout\ & !\INSTR_DECODER|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux1~8_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux2~0_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~9_combout\);

-- Location: LCCOMB_X28_Y13_N10
\REGE|DECODIFICADOR|O[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[8]~22_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~9_combout\,
	combout => \REGE|DECODIFICADOR|O[8]~22_combout\);

-- Location: FF_X24_Y13_N3
\REGE|GEN_REG:8:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y13_N2
\PROGRAM_MEMORY|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux14~5_combout\ = (\PROGRAM_MEMORY|Mux14~3_combout\) # ((\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(4)) # (\PROGRAM_COUNTER|q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(5),
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_COUNTER|q_aux\(3),
	datad => \PROGRAM_MEMORY|Mux14~3_combout\,
	combout => \PROGRAM_MEMORY|Mux14~5_combout\);

-- Location: LCCOMB_X21_Y13_N4
\INSTR_DECODER|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux13~0_combout\ = ((\PROGRAM_MEMORY|Mux0~4_combout\ & (\PROGRAM_MEMORY|Mux10~2_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & ((\PROGRAM_MEMORY|Mux14~5_combout\)))) # (!\INSTR_DECODER|Mux12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~4_combout\,
	datab => \PROGRAM_MEMORY|Mux10~2_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \PROGRAM_MEMORY|Mux14~5_combout\,
	combout => \INSTR_DECODER|Mux13~0_combout\);

-- Location: LCCOMB_X23_Y13_N18
\INSTR_DECODER|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux13~1_combout\ = (\INSTR_DECODER|Mux13~0_combout\ & \INSTR_DECODER|Mux12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTR_DECODER|Mux13~0_combout\,
	datad => \INSTR_DECODER|Mux12~3_combout\,
	combout => \INSTR_DECODER|Mux13~1_combout\);

-- Location: LCCOMB_X22_Y13_N10
\PROGRAM_MEMORY|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux15~6_combout\ = (\PROGRAM_MEMORY|Mux15~4_combout\) # ((\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(4)) # (!\PROGRAM_MEMORY|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux15~4_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(5),
	datac => \PROGRAM_MEMORY|Mux6~2_combout\,
	datad => \PROGRAM_COUNTER|q_aux\(4),
	combout => \PROGRAM_MEMORY|Mux15~6_combout\);

-- Location: LCCOMB_X23_Y13_N8
\INSTR_DECODER|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux14~0_combout\ = ((\PROGRAM_MEMORY|Mux0~4_combout\ & ((\PROGRAM_MEMORY|Mux11~0_combout\) # (\PROGRAM_MEMORY|Mux11~3_combout\)))) # (!\INSTR_DECODER|Mux12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux11~0_combout\,
	datab => \INSTR_DECODER|Mux12~4_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \PROGRAM_MEMORY|Mux11~3_combout\,
	combout => \INSTR_DECODER|Mux14~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
\INSTR_DECODER|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux14~1_combout\ = (\INSTR_DECODER|Mux12~3_combout\ & ((\INSTR_DECODER|Mux14~0_combout\) # ((\PROGRAM_MEMORY|Mux15~6_combout\ & !\PROGRAM_MEMORY|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux15~6_combout\,
	datab => \INSTR_DECODER|Mux14~0_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \INSTR_DECODER|Mux12~3_combout\,
	combout => \INSTR_DECODER|Mux14~1_combout\);

-- Location: LCCOMB_X25_Y15_N8
\REGE|MUX_R|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~12_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(7)) # ((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (((\REGE|GEN_REG:8:REG_INST|Q_aux\(7) & 
-- !\INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:10:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:8:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux0~12_combout\);

-- Location: LCCOMB_X25_Y15_N26
\REGE|MUX_R|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~13_combout\ = (\REGE|MUX_R|Mux0~12_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(7)) # ((!\INSTR_DECODER|Mux14~1_combout\)))) # (!\REGE|MUX_R|Mux0~12_combout\ & (((\REGE|GEN_REG:9:REG_INST|Q_aux\(7) & \INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:11:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:9:REG_INST|Q_aux\(7),
	datac => \REGE|MUX_R|Mux0~12_combout\,
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux0~13_combout\);

-- Location: LCCOMB_X21_Y12_N2
\REGE|DECODIFICADOR|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~14_combout\ = (\INSTR_DECODER|Mux4~0_combout\ & (!\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & !\INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~14_combout\);

-- Location: LCCOMB_X25_Y9_N12
\REGE|DECODIFICADOR|O[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[3]~31_combout\ = (\REGE|DECODIFICADOR|Decoder0~14_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~14_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[3]~31_combout\);

-- Location: FF_X25_Y9_N13
\REGE|GEN_REG:3:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y12_N30
\REGE|DECODIFICADOR|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~2_combout\ = (!\INSTR_DECODER|Mux4~0_combout\ & (!\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & !\INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y15_N14
\REGE|DECODIFICADOR|O[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[2]~28_combout\ = (\REGE|DECODIFICADOR|Decoder0~2_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~2_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[2]~28_combout\);

-- Location: FF_X23_Y15_N15
\REGE|GEN_REG:2:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X23_Y15_N2
\REGE|DECODIFICADOR|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~10_combout\ = (!\INSTR_DECODER|Mux1~8_combout\ & (!\INSTR_DECODER|Mux2~0_combout\ & (!\INSTR_DECODER|Mux3~2_combout\ & !\INSTR_DECODER|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux1~8_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux4~0_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~10_combout\);

-- Location: LCCOMB_X23_Y15_N24
\REGE|DECODIFICADOR|O[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[0]~30_combout\ = (\REGE|DECODIFICADOR|Decoder0~10_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~10_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[0]~30_combout\);

-- Location: FF_X23_Y15_N25
\REGE|GEN_REG:0:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X26_Y15_N2
\REGE|MUX_R|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~14_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(7)) # ((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (((\REGE|GEN_REG:0:REG_INST|Q_aux\(7) & 
-- !\INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:2:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:0:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux0~14_combout\);

-- Location: LCCOMB_X25_Y15_N14
\REGE|DECODIFICADOR|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~6_combout\ = (!\INSTR_DECODER|Mux3~2_combout\ & (\INSTR_DECODER|Mux4~0_combout\ & (!\INSTR_DECODER|Mux1~8_combout\ & !\INSTR_DECODER|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux3~2_combout\,
	datab => \INSTR_DECODER|Mux4~0_combout\,
	datac => \INSTR_DECODER|Mux1~8_combout\,
	datad => \INSTR_DECODER|Mux2~0_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~6_combout\);

-- Location: LCCOMB_X25_Y15_N2
\REGE|DECODIFICADOR|O[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[1]~29_combout\ = (\REGE|DECODIFICADOR|Decoder0~6_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~6_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[1]~29_combout\);

-- Location: FF_X25_Y15_N25
\REGE|GEN_REG:1:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X26_Y15_N16
\REGE|MUX_R|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~15_combout\ = (\REGE|MUX_R|Mux0~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(7)) # ((!\INSTR_DECODER|Mux14~1_combout\)))) # (!\REGE|MUX_R|Mux0~14_combout\ & (((\REGE|GEN_REG:1:REG_INST|Q_aux\(7) & \INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:3:REG_INST|Q_aux\(7),
	datab => \REGE|MUX_R|Mux0~14_combout\,
	datac => \REGE|GEN_REG:1:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux0~15_combout\);

-- Location: LCCOMB_X26_Y15_N30
\REGE|MUX_R|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~16_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\) # ((\REGE|MUX_R|Mux0~13_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & (!\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|MUX_R|Mux0~13_combout\,
	datad => \REGE|MUX_R|Mux0~15_combout\,
	combout => \REGE|MUX_R|Mux0~16_combout\);

-- Location: LCCOMB_X21_Y12_N4
\REGE|DECODIFICADOR|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~15_combout\ = (\INSTR_DECODER|Mux4~0_combout\ & (\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & \INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~15_combout\);

-- Location: LCCOMB_X21_Y10_N14
\REGE|DECODIFICADOR|O[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[15]~35_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~15_combout\,
	combout => \REGE|DECODIFICADOR|O[15]~35_combout\);

-- Location: FF_X24_Y11_N15
\REGE|GEN_REG:15:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X23_Y15_N10
\REGE|DECODIFICADOR|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~7_combout\ = (\INSTR_DECODER|Mux1~8_combout\ & (\INSTR_DECODER|Mux2~0_combout\ & (!\INSTR_DECODER|Mux3~2_combout\ & \INSTR_DECODER|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux1~8_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux4~0_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~7_combout\);

-- Location: LCCOMB_X24_Y9_N10
\REGE|DECODIFICADOR|O[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[13]~32_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~7_combout\,
	combout => \REGE|DECODIFICADOR|O[13]~32_combout\);

-- Location: FF_X24_Y9_N23
\REGE|GEN_REG:13:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y12_N28
\REGE|DECODIFICADOR|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~11_combout\ = (!\INSTR_DECODER|Mux4~0_combout\ & (\INSTR_DECODER|Mux2~0_combout\ & (!\INSTR_DECODER|Mux3~2_combout\ & \INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~11_combout\);

-- Location: LCCOMB_X23_Y9_N12
\REGE|DECODIFICADOR|O[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[12]~34_combout\ = (\REGE|DECODIFICADOR|Decoder0~11_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~11_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[12]~34_combout\);

-- Location: FF_X23_Y9_N13
\REGE|GEN_REG:12:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X26_Y11_N24
\REGE|MUX_R|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~17_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(7))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:12:REG_INST|Q_aux\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:12:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux0~17_combout\);

-- Location: LCCOMB_X26_Y15_N0
\REGE|MUX_R|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~18_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux0~17_combout\ & ((\REGE|GEN_REG:15:REG_INST|Q_aux\(7)))) # (!\REGE|MUX_R|Mux0~17_combout\ & (\REGE|GEN_REG:14:REG_INST|Q_aux\(7))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:14:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:15:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \REGE|MUX_R|Mux0~17_combout\,
	combout => \REGE|MUX_R|Mux0~18_combout\);

-- Location: LCCOMB_X26_Y11_N16
\REGE|GEN_REG:6:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:6:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:6:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X28_Y12_N28
\REGE|DECODIFICADOR|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~0_combout\ = (\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & (!\INSTR_DECODER|Mux4~0_combout\ & !\INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux2~0_combout\,
	datab => \INSTR_DECODER|Mux3~2_combout\,
	datac => \INSTR_DECODER|Mux4~0_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~0_combout\);

-- Location: LCCOMB_X26_Y9_N30
\REGE|DECODIFICADOR|O[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[6]~25_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~0_combout\,
	combout => \REGE|DECODIFICADOR|O[6]~25_combout\);

-- Location: FF_X26_Y11_N17
\REGE|GEN_REG:6:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:6:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X26_Y15_N14
\REGE|GEN_REG:7:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:7:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:7:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X21_Y12_N14
\REGE|DECODIFICADOR|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~13_combout\ = (\INSTR_DECODER|Mux4~0_combout\ & (\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & !\INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux4~0_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~13_combout\);

-- Location: LCCOMB_X26_Y9_N12
\REGE|DECODIFICADOR|O[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[7]~27_combout\ = (\REGE|DECODIFICADOR|Decoder0~13_combout\ & \REGE|DECODIFICADOR|O[15]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|DECODIFICADOR|Decoder0~13_combout\,
	datad => \REGE|DECODIFICADOR|O[15]~37_combout\,
	combout => \REGE|DECODIFICADOR|O[7]~27_combout\);

-- Location: FF_X26_Y15_N15
\REGE|GEN_REG:7:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:7:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X25_Y15_N16
\REGE|DECODIFICADOR|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~5_combout\ = (!\INSTR_DECODER|Mux3~2_combout\ & (\INSTR_DECODER|Mux4~0_combout\ & (!\INSTR_DECODER|Mux1~8_combout\ & \INSTR_DECODER|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux3~2_combout\,
	datab => \INSTR_DECODER|Mux4~0_combout\,
	datac => \INSTR_DECODER|Mux1~8_combout\,
	datad => \INSTR_DECODER|Mux2~0_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~5_combout\);

-- Location: LCCOMB_X26_Y11_N26
\REGE|DECODIFICADOR|O[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[5]~24_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~5_combout\,
	combout => \REGE|DECODIFICADOR|O[5]~24_combout\);

-- Location: FF_X26_Y11_N27
\REGE|GEN_REG:5:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X23_Y15_N0
\REGE|DECODIFICADOR|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~8_combout\ = (!\INSTR_DECODER|Mux1~8_combout\ & (\INSTR_DECODER|Mux2~0_combout\ & (!\INSTR_DECODER|Mux3~2_combout\ & !\INSTR_DECODER|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux1~8_combout\,
	datab => \INSTR_DECODER|Mux2~0_combout\,
	datac => \INSTR_DECODER|Mux3~2_combout\,
	datad => \INSTR_DECODER|Mux4~0_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~8_combout\);

-- Location: LCCOMB_X26_Y13_N14
\REGE|DECODIFICADOR|O[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[4]~26_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~8_combout\,
	combout => \REGE|DECODIFICADOR|O[4]~26_combout\);

-- Location: FF_X26_Y13_N15
\REGE|GEN_REG:4:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X26_Y15_N4
\REGE|MUX_R|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~10_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:5:REG_INST|Q_aux\(7))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:4:REG_INST|Q_aux\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:5:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:4:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux0~10_combout\);

-- Location: LCCOMB_X26_Y15_N24
\REGE|MUX_R|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~11_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux0~10_combout\ & ((\REGE|GEN_REG:7:REG_INST|Q_aux\(7)))) # (!\REGE|MUX_R|Mux0~10_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(7))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:6:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:7:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \REGE|MUX_R|Mux0~10_combout\,
	combout => \REGE|MUX_R|Mux0~11_combout\);

-- Location: LCCOMB_X26_Y15_N22
\REGE|MUX_R|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~19_combout\ = (\REGE|MUX_R|Mux0~16_combout\ & ((\REGE|MUX_R|Mux0~18_combout\) # ((!\INSTR_DECODER|Mux12~6_combout\)))) # (!\REGE|MUX_R|Mux0~16_combout\ & (((\INSTR_DECODER|Mux12~6_combout\ & \REGE|MUX_R|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux0~16_combout\,
	datab => \REGE|MUX_R|Mux0~18_combout\,
	datac => \INSTR_DECODER|Mux12~6_combout\,
	datad => \REGE|MUX_R|Mux0~11_combout\,
	combout => \REGE|MUX_R|Mux0~19_combout\);

-- Location: LCCOMB_X24_Y15_N6
\REGE|GEN_REG:28:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:28:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:28:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X28_Y12_N14
\REGE|DECODIFICADOR|O[31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[31]~36_combout\ = (\INSTR_DECODER|Mux23~4_combout\ & ((\INSTR_DECODER|Mux0~4_combout\) # ((\INSTR_DECODER|Mux5~4_combout\ & \INSTR_DECODER|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux5~4_combout\,
	datab => \INSTR_DECODER|Mux0~4_combout\,
	datac => \INSTR_DECODER|Mux0~5_combout\,
	datad => \INSTR_DECODER|Mux23~4_combout\,
	combout => \REGE|DECODIFICADOR|O[31]~36_combout\);

-- Location: LCCOMB_X24_Y15_N4
\REGE|DECODIFICADOR|O[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[28]~15_combout\ = (\REGE|DECODIFICADOR|Decoder0~11_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|DECODIFICADOR|Decoder0~11_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[28]~15_combout\);

-- Location: FF_X24_Y15_N7
\REGE|GEN_REG:28:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:28:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X24_Y15_N24
\REGE|DECODIFICADOR|O[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[24]~13_combout\ = (\REGE|DECODIFICADOR|O[31]~36_combout\ & \REGE|DECODIFICADOR|Decoder0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|O[31]~36_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~9_combout\,
	combout => \REGE|DECODIFICADOR|O[24]~13_combout\);

-- Location: FF_X24_Y15_N5
\REGE|GEN_REG:24:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X24_Y15_N28
\REGE|DECODIFICADOR|O[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[20]~12_combout\ = (\REGE|DECODIFICADOR|Decoder0~8_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|Decoder0~8_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[20]~12_combout\);

-- Location: FF_X25_Y11_N17
\REGE|GEN_REG:20:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X24_Y11_N14
\REGE|DECODIFICADOR|O[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[16]~14_combout\ = (\REGE|DECODIFICADOR|Decoder0~10_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|DECODIFICADOR|Decoder0~10_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[16]~14_combout\);

-- Location: FF_X25_Y11_N3
\REGE|GEN_REG:16:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X25_Y11_N2
\REGE|MUX_R|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~4_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(7)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:16:REG_INST|Q_aux\(7) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:20:REG_INST|Q_aux\(7),
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux0~4_combout\);

-- Location: LCCOMB_X26_Y15_N26
\REGE|MUX_R|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~5_combout\ = (\REGE|MUX_R|Mux0~4_combout\ & ((\REGE|GEN_REG:28:REG_INST|Q_aux\(7)) # ((!\INSTR_DECODER|Mux11~1_combout\)))) # (!\REGE|MUX_R|Mux0~4_combout\ & (((\REGE|GEN_REG:24:REG_INST|Q_aux\(7) & \INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:28:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:24:REG_INST|Q_aux\(7),
	datac => \REGE|MUX_R|Mux0~4_combout\,
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux0~5_combout\);

-- Location: LCCOMB_X28_Y11_N4
\REGE|GEN_REG:30:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:30:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:30:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X28_Y12_N18
\REGE|DECODIFICADOR|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|Decoder0~3_combout\ = (\INSTR_DECODER|Mux2~0_combout\ & (\INSTR_DECODER|Mux3~2_combout\ & (!\INSTR_DECODER|Mux4~0_combout\ & \INSTR_DECODER|Mux1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux2~0_combout\,
	datab => \INSTR_DECODER|Mux3~2_combout\,
	datac => \INSTR_DECODER|Mux4~0_combout\,
	datad => \INSTR_DECODER|Mux1~8_combout\,
	combout => \REGE|DECODIFICADOR|Decoder0~3_combout\);

-- Location: LCCOMB_X28_Y12_N24
\REGE|DECODIFICADOR|O[30]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[30]~7_combout\ = (\REGE|DECODIFICADOR|O[31]~36_combout\ & \REGE|DECODIFICADOR|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|O[31]~36_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~3_combout\,
	combout => \REGE|DECODIFICADOR|O[30]~7_combout\);

-- Location: FF_X28_Y11_N5
\REGE|GEN_REG:30:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:30:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X28_Y12_N8
\REGE|DECODIFICADOR|O[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[26]~5_combout\ = (\REGE|DECODIFICADOR|O[31]~36_combout\ & \REGE|DECODIFICADOR|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|O[31]~36_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~1_combout\,
	combout => \REGE|DECODIFICADOR|O[26]~5_combout\);

-- Location: FF_X28_Y12_N9
\REGE|GEN_REG:26:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X28_Y12_N12
\REGE|DECODIFICADOR|O[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[18]~6_combout\ = (\REGE|DECODIFICADOR|O[31]~36_combout\ & \REGE|DECODIFICADOR|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|O[31]~36_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~2_combout\,
	combout => \REGE|DECODIFICADOR|O[18]~6_combout\);

-- Location: FF_X28_Y12_N11
\REGE|GEN_REG:18:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X23_Y12_N8
\REGE|DECODIFICADOR|O[22]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[22]~4_combout\ = (\REGE|DECODIFICADOR|Decoder0~0_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|DECODIFICADOR|Decoder0~0_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[22]~4_combout\);

-- Location: FF_X23_Y12_N9
\REGE|GEN_REG:22:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X26_Y15_N10
\REGE|MUX_R|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~2_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\) # (\REGE|GEN_REG:22:REG_INST|Q_aux\(7))))) # (!\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:18:REG_INST|Q_aux\(7) & 
-- (!\INSTR_DECODER|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:18:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \INSTR_DECODER|Mux11~1_combout\,
	datad => \REGE|GEN_REG:22:REG_INST|Q_aux\(7),
	combout => \REGE|MUX_R|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y15_N20
\REGE|MUX_R|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~3_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux0~2_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(7))) # (!\REGE|MUX_R|Mux0~2_combout\ & ((\REGE|GEN_REG:26:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(7),
	datac => \REGE|GEN_REG:26:REG_INST|Q_aux\(7),
	datad => \REGE|MUX_R|Mux0~2_combout\,
	combout => \REGE|MUX_R|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y15_N8
\REGE|MUX_R|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~6_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (\INSTR_DECODER|Mux13~1_combout\)) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux0~3_combout\))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (\REGE|MUX_R|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|MUX_R|Mux0~5_combout\,
	datad => \REGE|MUX_R|Mux0~3_combout\,
	combout => \REGE|MUX_R|Mux0~6_combout\);

-- Location: LCCOMB_X23_Y11_N6
\REGE|DECODIFICADOR|O[29]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[29]~11_combout\ = (\REGE|DECODIFICADOR|Decoder0~7_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|DECODIFICADOR|Decoder0~7_combout\,
	datab => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[29]~11_combout\);

-- Location: FF_X23_Y11_N7
\REGE|GEN_REG:29:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X23_Y11_N8
\REGE|DECODIFICADOR|O[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[21]~9_combout\ = (\REGE|DECODIFICADOR|Decoder0~5_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~5_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[21]~9_combout\);

-- Location: FF_X23_Y11_N9
\REGE|GEN_REG:21:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y11_N6
\REGE|GEN_REG:17:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:17:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:17:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X25_Y15_N24
\REGE|DECODIFICADOR|O[17]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[17]~10_combout\ = (\REGE|DECODIFICADOR|Decoder0~6_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~6_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[17]~10_combout\);

-- Location: FF_X21_Y11_N7
\REGE|GEN_REG:17:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:17:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y11_N0
\REGE|GEN_REG:25:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:25:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:25:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X26_Y11_N4
\REGE|DECODIFICADOR|O[25]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[25]~8_combout\ = (\REGE|DECODIFICADOR|O[31]~36_combout\ & \REGE|DECODIFICADOR|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|O[31]~36_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~4_combout\,
	combout => \REGE|DECODIFICADOR|O[25]~8_combout\);

-- Location: FF_X21_Y11_N1
\REGE|GEN_REG:25:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:25:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y11_N28
\REGE|MUX_R|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(7)))) # (!\INSTR_DECODER|Mux11~1_combout\ 
-- & (\REGE|GEN_REG:17:REG_INST|Q_aux\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:25:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux12~6_combout\,
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\REGE|MUX_R|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux0~0_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(7))) # (!\REGE|MUX_R|Mux0~0_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:29:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:21:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux12~6_combout\,
	datad => \REGE|MUX_R|Mux0~0_combout\,
	combout => \REGE|MUX_R|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y12_N16
\REGE|DECODIFICADOR|O[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[23]~17_combout\ = (\REGE|DECODIFICADOR|Decoder0~13_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|Decoder0~13_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[23]~17_combout\);

-- Location: FF_X23_Y10_N5
\REGE|GEN_REG:23:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y10_N20
\REGE|DECODIFICADOR|O[31]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[31]~19_combout\ = (\REGE|DECODIFICADOR|Decoder0~15_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~15_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[31]~19_combout\);

-- Location: FF_X23_Y10_N19
\REGE|GEN_REG:31:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y12_N8
\REGE|DECODIFICADOR|O[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[27]~16_combout\ = (\REGE|DECODIFICADOR|Decoder0~12_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|Decoder0~12_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[27]~16_combout\);

-- Location: FF_X22_Y10_N29
\REGE|GEN_REG:27:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X21_Y10_N10
\REGE|DECODIFICADOR|O[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[19]~18_combout\ = (\REGE|DECODIFICADOR|Decoder0~14_combout\ & \REGE|DECODIFICADOR|O[31]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGE|DECODIFICADOR|Decoder0~14_combout\,
	datad => \REGE|DECODIFICADOR|O[31]~36_combout\,
	combout => \REGE|DECODIFICADOR|O[19]~18_combout\);

-- Location: FF_X22_Y10_N23
\REGE|GEN_REG:19:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[7]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X22_Y10_N22
\REGE|MUX_R|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~7_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(7))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:19:REG_INST|Q_aux\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux0~7_combout\);

-- Location: LCCOMB_X23_Y10_N18
\REGE|MUX_R|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~8_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux0~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(7)))) # (!\REGE|MUX_R|Mux0~7_combout\ & (\REGE|GEN_REG:23:REG_INST|Q_aux\(7))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:23:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(7),
	datad => \REGE|MUX_R|Mux0~7_combout\,
	combout => \REGE|MUX_R|Mux0~8_combout\);

-- Location: LCCOMB_X26_Y15_N6
\REGE|MUX_R|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~9_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux0~6_combout\ & ((\REGE|MUX_R|Mux0~8_combout\))) # (!\REGE|MUX_R|Mux0~6_combout\ & (\REGE|MUX_R|Mux0~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (\REGE|MUX_R|Mux0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|MUX_R|Mux0~6_combout\,
	datac => \REGE|MUX_R|Mux0~1_combout\,
	datad => \REGE|MUX_R|Mux0~8_combout\,
	combout => \REGE|MUX_R|Mux0~9_combout\);

-- Location: LCCOMB_X26_Y15_N28
\REGE|MUX_R|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux0~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux0~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux0~19_combout\,
	datad => \REGE|MUX_R|Mux0~9_combout\,
	combout => \REGE|MUX_R|Mux0~20_combout\);

-- Location: LCCOMB_X26_Y15_N12
\dato_I_aux[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[7]~14_combout\ = (\INSTR_DECODER|Mux18~1_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux4~4_combout\)))) # (!\INSTR_DECODER|Mux18~1_combout\ & (((\REGE|MUX_R|Mux0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \INSTR_DECODER|Mux18~1_combout\,
	datac => \PROGRAM_MEMORY|Mux4~4_combout\,
	datad => \REGE|MUX_R|Mux0~20_combout\,
	combout => \dato_I_aux[7]~14_combout\);

-- Location: LCCOMB_X24_Y11_N8
\dato_I_aux[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[7]~15_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (\INSTR_DECODER|Mux18~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\)))) # (!\INSTR_DECODER|Mux19~1_combout\ & (((\dato_I_aux[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux19~1_combout\,
	datab => \INSTR_DECODER|Mux18~1_combout\,
	datac => \dato_I_aux[7]~14_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\,
	combout => \dato_I_aux[7]~15_combout\);

-- Location: LCCOMB_X23_Y9_N26
\REGE|GEN_REG:14:REG_INST|Q_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:14:REG_INST|Q_aux[7]~feeder_combout\ = \dato_I_aux[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[7]~15_combout\,
	combout => \REGE|GEN_REG:14:REG_INST|Q_aux[7]~feeder_combout\);

-- Location: LCCOMB_X23_Y9_N18
\REGE|DECODIFICADOR|O[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|DECODIFICADOR|O[14]~33_combout\ = (\REGE|DECODIFICADOR|O[15]~37_combout\ & \REGE|DECODIFICADOR|Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGE|DECODIFICADOR|O[15]~37_combout\,
	datad => \REGE|DECODIFICADOR|Decoder0~3_combout\,
	combout => \REGE|DECODIFICADOR|O[14]~33_combout\);

-- Location: FF_X23_Y9_N27
\REGE|GEN_REG:14:REG_INST|Q_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:14:REG_INST|Q_aux[7]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(7));

-- Location: LCCOMB_X22_Y12_N28
\INSTR_DECODER|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux8~0_combout\ = (\PROGRAM_MEMORY|Mux10~3_combout\ & ((\PROGRAM_MEMORY|Mux0~4_combout\ & (\INSTR_DECODER|Mux7~0_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & ((\INSTR_DECODER|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux10~3_combout\,
	datab => \PROGRAM_MEMORY|Mux0~4_combout\,
	datac => \INSTR_DECODER|Mux7~0_combout\,
	datad => \INSTR_DECODER|Mux1~6_combout\,
	combout => \INSTR_DECODER|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y12_N6
\INSTR_DECODER|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux9~0_combout\ = (\PROGRAM_MEMORY|Mux11~5_combout\ & ((\PROGRAM_MEMORY|Mux0~4_combout\ & (\INSTR_DECODER|Mux7~0_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & ((\INSTR_DECODER|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux11~5_combout\,
	datab => \PROGRAM_MEMORY|Mux0~4_combout\,
	datac => \INSTR_DECODER|Mux7~0_combout\,
	datad => \INSTR_DECODER|Mux1~6_combout\,
	combout => \INSTR_DECODER|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y9_N0
\REGE|MUX_D|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~17_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:13:REG_INST|Q_aux\(7)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|GEN_REG:12:REG_INST|Q_aux\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:12:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:13:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux0~17_combout\);

-- Location: LCCOMB_X23_Y9_N30
\REGE|MUX_D|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~18_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux0~17_combout\ & ((\REGE|GEN_REG:15:REG_INST|Q_aux\(7)))) # (!\REGE|MUX_D|Mux0~17_combout\ & (\REGE|GEN_REG:14:REG_INST|Q_aux\(7))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:14:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:15:REG_INST|Q_aux\(7),
	datad => \REGE|MUX_D|Mux0~17_combout\,
	combout => \REGE|MUX_D|Mux0~18_combout\);

-- Location: LCCOMB_X21_Y14_N0
\PROGRAM_MEMORY|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux8~7_combout\ = (\PROGRAM_MEMORY|Mux8~6_combout\) # (\PROGRAM_COUNTER|q_aux\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROGRAM_MEMORY|Mux8~6_combout\,
	datad => \PROGRAM_COUNTER|q_aux\(15),
	combout => \PROGRAM_MEMORY|Mux8~7_combout\);

-- Location: LCCOMB_X22_Y12_N14
\INSTR_DECODER|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux6~0_combout\ = (\PROGRAM_MEMORY|Mux8~7_combout\ & ((\PROGRAM_MEMORY|Mux0~4_combout\ & (\INSTR_DECODER|Mux7~0_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & ((\INSTR_DECODER|Mux1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux0~4_combout\,
	datab => \PROGRAM_MEMORY|Mux8~7_combout\,
	datac => \INSTR_DECODER|Mux7~0_combout\,
	datad => \INSTR_DECODER|Mux1~6_combout\,
	combout => \INSTR_DECODER|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\REGE|MUX_D|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~12_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:10:REG_INST|Q_aux\(7))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- ((\REGE|GEN_REG:8:REG_INST|Q_aux\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:10:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:8:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux0~12_combout\);

-- Location: LCCOMB_X24_Y13_N12
\REGE|MUX_D|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux0~12_combout\ & (\REGE|GEN_REG:11:REG_INST|Q_aux\(7))) # (!\REGE|MUX_D|Mux0~12_combout\ & ((\REGE|GEN_REG:9:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:11:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:9:REG_INST|Q_aux\(7),
	datad => \REGE|MUX_D|Mux0~12_combout\,
	combout => \REGE|MUX_D|Mux0~13_combout\);

-- Location: LCCOMB_X26_Y11_N28
\REGE|MUX_D|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~14_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(7)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|GEN_REG:0:REG_INST|Q_aux\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:0:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux0~14_combout\);

-- Location: LCCOMB_X26_Y11_N18
\REGE|MUX_D|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~15_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux0~14_combout\ & (\REGE|GEN_REG:3:REG_INST|Q_aux\(7))) # (!\REGE|MUX_D|Mux0~14_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:3:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:1:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \REGE|MUX_D|Mux0~14_combout\,
	combout => \REGE|MUX_D|Mux0~15_combout\);

-- Location: LCCOMB_X25_Y11_N4
\REGE|MUX_D|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~16_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\) # ((\REGE|MUX_D|Mux0~13_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & (!\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|MUX_D|Mux0~13_combout\,
	datad => \REGE|MUX_D|Mux0~15_combout\,
	combout => \REGE|MUX_D|Mux0~16_combout\);

-- Location: LCCOMB_X26_Y11_N20
\REGE|MUX_D|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~10_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(7)) # ((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:4:REG_INST|Q_aux\(7) & !\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:5:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:4:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux0~10_combout\);

-- Location: LCCOMB_X26_Y11_N6
\REGE|MUX_D|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~11_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux0~10_combout\ & (\REGE|GEN_REG:7:REG_INST|Q_aux\(7))) # (!\REGE|MUX_D|Mux0~10_combout\ & ((\REGE|GEN_REG:6:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:7:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:6:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \REGE|MUX_D|Mux0~10_combout\,
	combout => \REGE|MUX_D|Mux0~11_combout\);

-- Location: LCCOMB_X25_Y11_N26
\REGE|MUX_D|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~19_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux0~16_combout\ & (\REGE|MUX_D|Mux0~18_combout\)) # (!\REGE|MUX_D|Mux0~16_combout\ & ((\REGE|MUX_D|Mux0~11_combout\))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|MUX_D|Mux0~18_combout\,
	datac => \REGE|MUX_D|Mux0~16_combout\,
	datad => \REGE|MUX_D|Mux0~11_combout\,
	combout => \REGE|MUX_D|Mux0~19_combout\);

-- Location: LCCOMB_X21_Y11_N12
\REGE|MUX_D|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~0_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\REGE|GEN_REG:25:REG_INST|Q_aux\(7)) # (\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & (\REGE|GEN_REG:17:REG_INST|Q_aux\(7) & ((!\INSTR_DECODER|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:25:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux6~0_combout\,
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\REGE|MUX_D|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~1_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux0~0_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(7))) # (!\REGE|MUX_D|Mux0~0_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:29:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(7),
	datad => \REGE|MUX_D|Mux0~0_combout\,
	combout => \REGE|MUX_D|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y10_N28
\REGE|MUX_D|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~7_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\REGE|GEN_REG:27:REG_INST|Q_aux\(7)) # (\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & (\REGE|GEN_REG:19:REG_INST|Q_aux\(7) & ((!\INSTR_DECODER|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:19:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux0~7_combout\);

-- Location: LCCOMB_X23_Y10_N4
\REGE|MUX_D|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~8_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux0~7_combout\ & (\REGE|GEN_REG:31:REG_INST|Q_aux\(7))) # (!\REGE|MUX_D|Mux0~7_combout\ & ((\REGE|GEN_REG:23:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:31:REG_INST|Q_aux\(7),
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(7),
	datad => \REGE|MUX_D|Mux0~7_combout\,
	combout => \REGE|MUX_D|Mux0~8_combout\);

-- Location: LCCOMB_X25_Y11_N16
\REGE|MUX_D|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~4_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(7)))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (\REGE|GEN_REG:16:REG_INST|Q_aux\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:16:REG_INST|Q_aux\(7),
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y15_N26
\REGE|MUX_D|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~5_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux0~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(7))) # (!\REGE|MUX_D|Mux0~4_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:28:REG_INST|Q_aux\(7),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:24:REG_INST|Q_aux\(7),
	datad => \REGE|MUX_D|Mux0~4_combout\,
	combout => \REGE|MUX_D|Mux0~5_combout\);

-- Location: LCCOMB_X28_Y12_N10
\REGE|MUX_D|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~2_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & (\REGE|GEN_REG:22:REG_INST|Q_aux\(7))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:22:REG_INST|Q_aux\(7),
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(7),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y12_N20
\REGE|MUX_D|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux0~2_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(7))) # (!\REGE|MUX_D|Mux0~2_combout\ & ((\REGE|GEN_REG:26:REG_INST|Q_aux\(7)))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:30:REG_INST|Q_aux\(7),
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(7),
	datac => \INSTR_DECODER|Mux6~0_combout\,
	datad => \REGE|MUX_D|Mux0~2_combout\,
	combout => \REGE|MUX_D|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y15_N0
\REGE|MUX_D|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~6_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\) # ((\REGE|MUX_D|Mux0~3_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (!\INSTR_DECODER|Mux9~0_combout\ & (\REGE|MUX_D|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux0~5_combout\,
	datad => \REGE|MUX_D|Mux0~3_combout\,
	combout => \REGE|MUX_D|Mux0~6_combout\);

-- Location: LCCOMB_X24_Y15_N14
\REGE|MUX_D|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~9_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux0~6_combout\ & ((\REGE|MUX_D|Mux0~8_combout\))) # (!\REGE|MUX_D|Mux0~6_combout\ & (\REGE|MUX_D|Mux0~1_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|MUX_D|Mux0~1_combout\,
	datac => \REGE|MUX_D|Mux0~8_combout\,
	datad => \REGE|MUX_D|Mux0~6_combout\,
	combout => \REGE|MUX_D|Mux0~9_combout\);

-- Location: LCCOMB_X25_Y11_N20
\REGE|MUX_D|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux0~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux0~9_combout\))) # (!\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux0~19_combout\,
	datad => \REGE|MUX_D|Mux0~9_combout\,
	combout => \REGE|MUX_D|Mux0~20_combout\);

-- Location: FF_X22_Y11_N17
\REGE|GEN_REG:25:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(6));

-- Location: FF_X23_Y11_N27
\REGE|GEN_REG:29:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(6));

-- Location: FF_X22_Y11_N7
\REGE|GEN_REG:17:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(6));

-- Location: FF_X23_Y11_N25
\REGE|GEN_REG:21:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X23_Y11_N24
\REGE|MUX_R|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~2_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:21:REG_INST|Q_aux\(6)) # (\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:17:REG_INST|Q_aux\(6) & 
-- ((!\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:17:REG_INST|Q_aux\(6),
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y11_N26
\REGE|MUX_R|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~3_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux1~2_combout\ & ((\REGE|GEN_REG:29:REG_INST|Q_aux\(6)))) # (!\REGE|MUX_R|Mux1~2_combout\ & (\REGE|GEN_REG:25:REG_INST|Q_aux\(6))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:25:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:29:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_R|Mux1~2_combout\,
	combout => \REGE|MUX_R|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y15_N16
\REGE|GEN_REG:28:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:28:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:28:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X24_Y15_N17
\REGE|GEN_REG:28:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:28:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(6));

-- Location: FF_X25_Y11_N25
\REGE|GEN_REG:20:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(6));

-- Location: FF_X25_Y11_N11
\REGE|GEN_REG:16:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X24_Y15_N20
\REGE|GEN_REG:24:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:24:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:24:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X24_Y15_N21
\REGE|GEN_REG:24:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:24:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X24_Y15_N2
\REGE|MUX_R|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~4_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (((\REGE|GEN_REG:24:REG_INST|Q_aux\(6)) # (\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:16:REG_INST|Q_aux\(6) & 
-- ((!\INSTR_DECODER|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:16:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:24:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux1~4_combout\);

-- Location: LCCOMB_X24_Y15_N10
\REGE|MUX_R|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~5_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux1~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(6))) # (!\REGE|MUX_R|Mux1~4_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:28:REG_INST|Q_aux\(6),
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_R|Mux1~4_combout\,
	combout => \REGE|MUX_R|Mux1~5_combout\);

-- Location: LCCOMB_X24_Y15_N8
\REGE|MUX_R|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~6_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (\INSTR_DECODER|Mux14~1_combout\)) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|MUX_R|Mux1~3_combout\)) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|MUX_R|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux1~3_combout\,
	datad => \REGE|MUX_R|Mux1~5_combout\,
	combout => \REGE|MUX_R|Mux1~6_combout\);

-- Location: LCCOMB_X23_Y12_N2
\REGE|GEN_REG:30:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:30:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:30:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X23_Y12_N3
\REGE|GEN_REG:30:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:30:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(6));

-- Location: FF_X23_Y12_N17
\REGE|GEN_REG:22:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X23_Y16_N26
\REGE|GEN_REG:26:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:26:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:26:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X23_Y16_N27
\REGE|GEN_REG:26:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:26:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X23_Y16_N0
\REGE|GEN_REG:18:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:18:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:18:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X23_Y16_N1
\REGE|GEN_REG:18:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:18:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X23_Y16_N10
\REGE|MUX_R|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(6))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:26:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\REGE|MUX_R|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux1~0_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(6))) # (!\REGE|MUX_R|Mux1~0_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:30:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_R|Mux1~0_combout\,
	combout => \REGE|MUX_R|Mux1~1_combout\);

-- Location: FF_X22_Y10_N1
\REGE|GEN_REG:27:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(6));

-- Location: FF_X23_Y10_N27
\REGE|GEN_REG:31:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(6));

-- Location: FF_X22_Y10_N27
\REGE|GEN_REG:19:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X23_Y10_N28
\REGE|MUX_R|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~7_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:23:REG_INST|Q_aux\(6)) # (\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:19:REG_INST|Q_aux\(6) & 
-- ((!\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:19:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux1~7_combout\);

-- Location: LCCOMB_X23_Y10_N26
\REGE|MUX_R|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~8_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux1~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(6)))) # (!\REGE|MUX_R|Mux1~7_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(6))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_R|Mux1~7_combout\,
	combout => \REGE|MUX_R|Mux1~8_combout\);

-- Location: LCCOMB_X24_Y15_N30
\REGE|MUX_R|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~9_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux1~6_combout\ & ((\REGE|MUX_R|Mux1~8_combout\))) # (!\REGE|MUX_R|Mux1~6_combout\ & (\REGE|MUX_R|Mux1~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (\REGE|MUX_R|Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|MUX_R|Mux1~6_combout\,
	datac => \REGE|MUX_R|Mux1~1_combout\,
	datad => \REGE|MUX_R|Mux1~8_combout\,
	combout => \REGE|MUX_R|Mux1~9_combout\);

-- Location: FF_X24_Y13_N23
\REGE|GEN_REG:8:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(6));

-- Location: FF_X24_Y13_N5
\REGE|GEN_REG:9:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X24_Y13_N4
\REGE|MUX_R|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~10_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\REGE|GEN_REG:9:REG_INST|Q_aux\(6)) # (\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:8:REG_INST|Q_aux\(6) & 
-- ((!\INSTR_DECODER|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:8:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:9:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux1~10_combout\);

-- Location: FF_X24_Y10_N5
\REGE|GEN_REG:11:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X24_Y10_N22
\REGE|GEN_REG:10:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:10:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:10:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X24_Y10_N23
\REGE|GEN_REG:10:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:10:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X24_Y10_N4
\REGE|MUX_R|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~11_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux1~10_combout\ & (\REGE|GEN_REG:11:REG_INST|Q_aux\(6))) # (!\REGE|MUX_R|Mux1~10_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (\REGE|MUX_R|Mux1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|MUX_R|Mux1~10_combout\,
	datac => \REGE|GEN_REG:11:REG_INST|Q_aux\(6),
	datad => \REGE|GEN_REG:10:REG_INST|Q_aux\(6),
	combout => \REGE|MUX_R|Mux1~11_combout\);

-- Location: FF_X24_Y11_N31
\REGE|GEN_REG:15:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(6));

-- Location: FF_X24_Y9_N11
\REGE|GEN_REG:13:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X24_Y9_N20
\REGE|GEN_REG:12:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:12:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:12:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X24_Y9_N21
\REGE|GEN_REG:12:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:12:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(6));

-- Location: FF_X23_Y9_N17
\REGE|GEN_REG:14:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X23_Y9_N16
\REGE|MUX_R|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~17_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:14:REG_INST|Q_aux\(6)))) # (!\INSTR_DECODER|Mux13~1_combout\ 
-- & (\REGE|GEN_REG:12:REG_INST|Q_aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:12:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:14:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux1~17_combout\);

-- Location: LCCOMB_X23_Y14_N16
\REGE|MUX_R|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~18_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux1~17_combout\ & (\REGE|GEN_REG:15:REG_INST|Q_aux\(6))) # (!\REGE|MUX_R|Mux1~17_combout\ & ((\REGE|GEN_REG:13:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:15:REG_INST|Q_aux\(6),
	datac => \REGE|GEN_REG:13:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_R|Mux1~17_combout\,
	combout => \REGE|MUX_R|Mux1~18_combout\);

-- Location: LCCOMB_X25_Y15_N22
\REGE|GEN_REG:3:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:3:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:3:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X25_Y15_N23
\REGE|GEN_REG:3:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:3:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(6));

-- Location: FF_X23_Y15_N27
\REGE|GEN_REG:2:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X25_Y15_N10
\REGE|GEN_REG:1:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:1:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:1:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X25_Y15_N11
\REGE|GEN_REG:1:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:1:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X23_Y15_N4
\REGE|GEN_REG:0:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:0:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:0:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X23_Y15_N5
\REGE|GEN_REG:0:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:0:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X25_Y15_N28
\REGE|MUX_R|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~14_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:1:REG_INST|Q_aux\(6))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:0:REG_INST|Q_aux\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:1:REG_INST|Q_aux\(6),
	datab => \REGE|GEN_REG:0:REG_INST|Q_aux\(6),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux1~14_combout\);

-- Location: LCCOMB_X25_Y15_N4
\REGE|MUX_R|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~15_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux1~14_combout\ & (\REGE|GEN_REG:3:REG_INST|Q_aux\(6))) # (!\REGE|MUX_R|Mux1~14_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:3:REG_INST|Q_aux\(6),
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(6),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \REGE|MUX_R|Mux1~14_combout\,
	combout => \REGE|MUX_R|Mux1~15_combout\);

-- Location: LCCOMB_X26_Y13_N26
\REGE|GEN_REG:5:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:5:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:5:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X26_Y13_N27
\REGE|GEN_REG:5:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:5:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(6));

-- Location: FF_X26_Y9_N5
\REGE|GEN_REG:7:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X26_Y13_N4
\REGE|GEN_REG:4:REG_INST|Q_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:4:REG_INST|Q_aux[6]~feeder_combout\ = \dato_I_aux[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[6]~13_combout\,
	combout => \REGE|GEN_REG:4:REG_INST|Q_aux[6]~feeder_combout\);

-- Location: FF_X26_Y13_N5
\REGE|GEN_REG:4:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:4:REG_INST|Q_aux[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(6));

-- Location: FF_X26_Y9_N19
\REGE|GEN_REG:6:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X26_Y9_N18
\REGE|MUX_R|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~12_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:6:REG_INST|Q_aux\(6)))) # (!\INSTR_DECODER|Mux13~1_combout\ 
-- & (\REGE|GEN_REG:4:REG_INST|Q_aux\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:4:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:6:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux1~12_combout\);

-- Location: LCCOMB_X26_Y9_N4
\REGE|MUX_R|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~13_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux1~12_combout\ & ((\REGE|GEN_REG:7:REG_INST|Q_aux\(6)))) # (!\REGE|MUX_R|Mux1~12_combout\ & (\REGE|GEN_REG:5:REG_INST|Q_aux\(6))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:5:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:7:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_R|Mux1~12_combout\,
	combout => \REGE|MUX_R|Mux1~13_combout\);

-- Location: LCCOMB_X25_Y15_N18
\REGE|MUX_R|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~16_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (\INSTR_DECODER|Mux12~6_combout\)) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux1~13_combout\))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (\REGE|MUX_R|Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|MUX_R|Mux1~15_combout\,
	datad => \REGE|MUX_R|Mux1~13_combout\,
	combout => \REGE|MUX_R|Mux1~16_combout\);

-- Location: LCCOMB_X24_Y14_N20
\REGE|MUX_R|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~19_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux1~16_combout\ & ((\REGE|MUX_R|Mux1~18_combout\))) # (!\REGE|MUX_R|Mux1~16_combout\ & (\REGE|MUX_R|Mux1~11_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux1~11_combout\,
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|MUX_R|Mux1~18_combout\,
	datad => \REGE|MUX_R|Mux1~16_combout\,
	combout => \REGE|MUX_R|Mux1~19_combout\);

-- Location: LCCOMB_X24_Y14_N14
\REGE|MUX_R|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux1~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux1~9_combout\)) # (!\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux1~9_combout\,
	datad => \REGE|MUX_R|Mux1~19_combout\,
	combout => \REGE|MUX_R|Mux1~20_combout\);

-- Location: LCCOMB_X24_Y11_N10
\dato_I_aux[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[6]~12_combout\ = (!\INSTR_DECODER|Mux19~1_combout\ & ((\INSTR_DECODER|Mux18~1_combout\ & (!\PROGRAM_MEMORY|Mux5~5_combout\)) # (!\INSTR_DECODER|Mux18~1_combout\ & ((\REGE|MUX_R|Mux1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux19~1_combout\,
	datab => \INSTR_DECODER|Mux18~1_combout\,
	datac => \PROGRAM_MEMORY|Mux5~5_combout\,
	datad => \REGE|MUX_R|Mux1~20_combout\,
	combout => \dato_I_aux[6]~12_combout\);

-- Location: FF_X26_Y9_N31
\REGE|GEN_REG:6:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(5));

-- Location: FF_X26_Y9_N13
\REGE|GEN_REG:7:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X26_Y13_N0
\REGE|GEN_REG:5:REG_INST|Q_aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:5:REG_INST|Q_aux[5]~feeder_combout\ = \dato_I_aux[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[5]~11_combout\,
	combout => \REGE|GEN_REG:5:REG_INST|Q_aux[5]~feeder_combout\);

-- Location: FF_X26_Y13_N1
\REGE|GEN_REG:5:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:5:REG_INST|Q_aux[5]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(5));

-- Location: FF_X26_Y13_N23
\REGE|GEN_REG:4:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X26_Y13_N22
\REGE|MUX_R|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~10_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(5)) # ((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & (((\REGE|GEN_REG:4:REG_INST|Q_aux\(5) & 
-- !\INSTR_DECODER|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:4:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux2~10_combout\);

-- Location: LCCOMB_X26_Y13_N24
\REGE|MUX_R|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~11_combout\ = (\REGE|MUX_R|Mux2~10_combout\ & (((\REGE|GEN_REG:7:REG_INST|Q_aux\(5)) # (!\INSTR_DECODER|Mux13~1_combout\)))) # (!\REGE|MUX_R|Mux2~10_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(5) & ((\INSTR_DECODER|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:6:REG_INST|Q_aux\(5),
	datab => \REGE|GEN_REG:7:REG_INST|Q_aux\(5),
	datac => \REGE|MUX_R|Mux2~10_combout\,
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux2~11_combout\);

-- Location: LCCOMB_X25_Y13_N14
\REGE|GEN_REG:15:REG_INST|Q_aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:15:REG_INST|Q_aux[5]~feeder_combout\ = \dato_I_aux[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[5]~11_combout\,
	combout => \REGE|GEN_REG:15:REG_INST|Q_aux[5]~feeder_combout\);

-- Location: FF_X25_Y13_N15
\REGE|GEN_REG:15:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:15:REG_INST|Q_aux[5]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(5));

-- Location: FF_X24_Y9_N29
\REGE|GEN_REG:13:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(5));

-- Location: FF_X23_Y9_N5
\REGE|GEN_REG:12:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X23_Y9_N4
\REGE|MUX_R|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~17_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(5))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:12:REG_INST|Q_aux\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux2~17_combout\);

-- Location: FF_X23_Y9_N19
\REGE|GEN_REG:14:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X23_Y9_N10
\REGE|MUX_R|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~18_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux2~17_combout\ & (\REGE|GEN_REG:15:REG_INST|Q_aux\(5))) # (!\REGE|MUX_R|Mux2~17_combout\ & ((\REGE|GEN_REG:14:REG_INST|Q_aux\(5)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:15:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|MUX_R|Mux2~17_combout\,
	datad => \REGE|GEN_REG:14:REG_INST|Q_aux\(5),
	combout => \REGE|MUX_R|Mux2~18_combout\);

-- Location: FF_X24_Y10_N21
\REGE|GEN_REG:11:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(5));

-- Location: FF_X24_Y13_N29
\REGE|GEN_REG:9:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(5));

-- Location: FF_X24_Y10_N11
\REGE|GEN_REG:10:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(5));

-- Location: FF_X24_Y13_N11
\REGE|GEN_REG:8:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X24_Y13_N10
\REGE|MUX_R|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~12_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(5)) # ((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (((\REGE|GEN_REG:8:REG_INST|Q_aux\(5) & 
-- !\INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:10:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:8:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux2~12_combout\);

-- Location: LCCOMB_X24_Y13_N28
\REGE|MUX_R|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~13_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux2~12_combout\ & (\REGE|GEN_REG:11:REG_INST|Q_aux\(5))) # (!\REGE|MUX_R|Mux2~12_combout\ & ((\REGE|GEN_REG:9:REG_INST|Q_aux\(5)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:11:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:9:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_R|Mux2~12_combout\,
	combout => \REGE|MUX_R|Mux2~13_combout\);

-- Location: FF_X25_Y15_N21
\REGE|GEN_REG:3:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(5));

-- Location: FF_X25_Y15_N3
\REGE|GEN_REG:1:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X23_Y15_N8
\REGE|GEN_REG:2:REG_INST|Q_aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:2:REG_INST|Q_aux[5]~feeder_combout\ = \dato_I_aux[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[5]~11_combout\,
	combout => \REGE|GEN_REG:2:REG_INST|Q_aux[5]~feeder_combout\);

-- Location: FF_X23_Y15_N9
\REGE|GEN_REG:2:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:2:REG_INST|Q_aux[5]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(5));

-- Location: FF_X23_Y15_N23
\REGE|GEN_REG:0:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X23_Y15_N22
\REGE|MUX_R|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~14_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(5)) # ((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (((\REGE|GEN_REG:0:REG_INST|Q_aux\(5) & 
-- !\INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:0:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux2~14_combout\);

-- Location: LCCOMB_X23_Y15_N28
\REGE|MUX_R|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~15_combout\ = (\REGE|MUX_R|Mux2~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(5)) # ((!\INSTR_DECODER|Mux14~1_combout\)))) # (!\REGE|MUX_R|Mux2~14_combout\ & (((\REGE|GEN_REG:1:REG_INST|Q_aux\(5) & \INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:3:REG_INST|Q_aux\(5),
	datab => \REGE|GEN_REG:1:REG_INST|Q_aux\(5),
	datac => \REGE|MUX_R|Mux2~14_combout\,
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux2~15_combout\);

-- Location: LCCOMB_X24_Y13_N24
\REGE|MUX_R|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~16_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux2~13_combout\) # ((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & (((!\INSTR_DECODER|Mux12~6_combout\ & \REGE|MUX_R|Mux2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|MUX_R|Mux2~13_combout\,
	datac => \INSTR_DECODER|Mux12~6_combout\,
	datad => \REGE|MUX_R|Mux2~15_combout\,
	combout => \REGE|MUX_R|Mux2~16_combout\);

-- Location: LCCOMB_X24_Y13_N6
\REGE|MUX_R|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~19_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux2~16_combout\ & ((\REGE|MUX_R|Mux2~18_combout\))) # (!\REGE|MUX_R|Mux2~16_combout\ & (\REGE|MUX_R|Mux2~11_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|MUX_R|Mux2~11_combout\,
	datac => \REGE|MUX_R|Mux2~18_combout\,
	datad => \REGE|MUX_R|Mux2~16_combout\,
	combout => \REGE|MUX_R|Mux2~19_combout\);

-- Location: FF_X23_Y11_N31
\REGE|GEN_REG:29:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(5));

-- Location: FF_X22_Y11_N25
\REGE|GEN_REG:25:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(5));

-- Location: FF_X22_Y11_N27
\REGE|GEN_REG:17:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X22_Y11_N26
\REGE|MUX_R|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:25:REG_INST|Q_aux\(5))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:17:REG_INST|Q_aux\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:25:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:17:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\REGE|MUX_R|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux2~0_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(5))) # (!\REGE|MUX_R|Mux2~0_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(5)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:29:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_R|Mux2~0_combout\,
	combout => \REGE|MUX_R|Mux2~1_combout\);

-- Location: FF_X23_Y10_N17
\REGE|GEN_REG:23:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(5));

-- Location: FF_X23_Y10_N23
\REGE|GEN_REG:31:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(5));

-- Location: FF_X22_Y10_N13
\REGE|GEN_REG:27:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(5));

-- Location: FF_X22_Y10_N31
\REGE|GEN_REG:19:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X22_Y10_N30
\REGE|MUX_R|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~7_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(5))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:19:REG_INST|Q_aux\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux2~7_combout\);

-- Location: LCCOMB_X23_Y10_N22
\REGE|MUX_R|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~8_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux2~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_R|Mux2~7_combout\ & (\REGE|GEN_REG:23:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:23:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_R|Mux2~7_combout\,
	combout => \REGE|MUX_R|Mux2~8_combout\);

-- Location: LCCOMB_X24_Y16_N12
\REGE|GEN_REG:26:REG_INST|Q_aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:26:REG_INST|Q_aux[5]~feeder_combout\ = \dato_I_aux[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[5]~11_combout\,
	combout => \REGE|GEN_REG:26:REG_INST|Q_aux[5]~feeder_combout\);

-- Location: FF_X24_Y16_N13
\REGE|GEN_REG:26:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:26:REG_INST|Q_aux[5]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(5));

-- Location: FF_X23_Y12_N19
\REGE|GEN_REG:30:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(5));

-- Location: FF_X23_Y12_N13
\REGE|GEN_REG:22:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(5));

-- Location: FF_X24_Y16_N23
\REGE|GEN_REG:18:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X24_Y16_N22
\REGE|MUX_R|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~2_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(5)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:18:REG_INST|Q_aux\(5) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:22:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y16_N8
\REGE|MUX_R|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~3_combout\ = (\REGE|MUX_R|Mux2~2_combout\ & (((\REGE|GEN_REG:30:REG_INST|Q_aux\(5)) # (!\INSTR_DECODER|Mux11~1_combout\)))) # (!\REGE|MUX_R|Mux2~2_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(5) & ((\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:26:REG_INST|Q_aux\(5),
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(5),
	datac => \REGE|MUX_R|Mux2~2_combout\,
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux2~3_combout\);

-- Location: FF_X24_Y15_N25
\REGE|GEN_REG:24:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(5));

-- Location: FF_X24_Y15_N23
\REGE|GEN_REG:28:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(5));

-- Location: FF_X25_Y11_N13
\REGE|GEN_REG:20:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(5));

-- Location: FF_X25_Y11_N7
\REGE|GEN_REG:16:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X25_Y11_N6
\REGE|MUX_R|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~4_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(5)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:16:REG_INST|Q_aux\(5) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:20:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux2~4_combout\);

-- Location: LCCOMB_X24_Y15_N22
\REGE|MUX_R|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~5_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux2~4_combout\ & ((\REGE|GEN_REG:28:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_R|Mux2~4_combout\ & (\REGE|GEN_REG:24:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:24:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:28:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_R|Mux2~4_combout\,
	combout => \REGE|MUX_R|Mux2~5_combout\);

-- Location: LCCOMB_X24_Y16_N10
\REGE|MUX_R|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~6_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (\INSTR_DECODER|Mux13~1_combout\)) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & (\REGE|MUX_R|Mux2~3_combout\)) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- ((\REGE|MUX_R|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|MUX_R|Mux2~3_combout\,
	datad => \REGE|MUX_R|Mux2~5_combout\,
	combout => \REGE|MUX_R|Mux2~6_combout\);

-- Location: LCCOMB_X24_Y16_N20
\REGE|MUX_R|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~9_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux2~6_combout\ & ((\REGE|MUX_R|Mux2~8_combout\))) # (!\REGE|MUX_R|Mux2~6_combout\ & (\REGE|MUX_R|Mux2~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux2~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux2~8_combout\,
	datad => \REGE|MUX_R|Mux2~6_combout\,
	combout => \REGE|MUX_R|Mux2~9_combout\);

-- Location: LCCOMB_X25_Y13_N0
\REGE|MUX_R|Mux2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux2~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux2~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux2~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux2~19_combout\,
	datad => \REGE|MUX_R|Mux2~9_combout\,
	combout => \REGE|MUX_R|Mux2~20_combout\);

-- Location: LCCOMB_X25_Y13_N4
\dato_I_aux[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[5]~10_combout\ = (\INSTR_DECODER|Mux18~1_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux6~6_combout\)))) # (!\INSTR_DECODER|Mux18~1_combout\ & (((\REGE|MUX_R|Mux2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux6~6_combout\,
	datac => \INSTR_DECODER|Mux18~1_combout\,
	datad => \REGE|MUX_R|Mux2~20_combout\,
	combout => \dato_I_aux[5]~10_combout\);

-- Location: LCCOMB_X21_Y10_N24
\REGE|GEN_REG:28:REG_INST|Q_aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:28:REG_INST|Q_aux[4]~feeder_combout\ = \dato_I_aux[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[4]~9_combout\,
	combout => \REGE|GEN_REG:28:REG_INST|Q_aux[4]~feeder_combout\);

-- Location: FF_X21_Y10_N25
\REGE|GEN_REG:28:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:28:REG_INST|Q_aux[4]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(4));

-- Location: FF_X23_Y14_N5
\REGE|GEN_REG:20:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y12_N9
\REGE|GEN_REG:24:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(4));

-- Location: FF_X23_Y14_N7
\REGE|GEN_REG:16:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X23_Y14_N6
\REGE|MUX_R|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~4_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(4)) # ((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & (((\REGE|GEN_REG:16:REG_INST|Q_aux\(4) & 
-- !\INSTR_DECODER|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:24:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux3~4_combout\);

-- Location: LCCOMB_X23_Y14_N4
\REGE|MUX_R|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~5_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux3~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~4_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:28:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_R|Mux3~4_combout\,
	combout => \REGE|MUX_R|Mux3~5_combout\);

-- Location: FF_X23_Y11_N19
\REGE|GEN_REG:29:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(4));

-- Location: FF_X22_Y11_N21
\REGE|GEN_REG:25:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(4));

-- Location: FF_X23_Y11_N29
\REGE|GEN_REG:21:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(4));

-- Location: FF_X22_Y11_N3
\REGE|GEN_REG:17:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X22_Y11_N2
\REGE|MUX_R|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~2_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(4)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:17:REG_INST|Q_aux\(4) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:21:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:17:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux3~2_combout\);

-- Location: LCCOMB_X22_Y11_N20
\REGE|MUX_R|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~3_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux3~2_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~2_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:29:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:25:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_R|Mux3~2_combout\,
	combout => \REGE|MUX_R|Mux3~3_combout\);

-- Location: LCCOMB_X23_Y14_N20
\REGE|MUX_R|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~6_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (\INSTR_DECODER|Mux14~1_combout\)) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux3~3_combout\))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (\REGE|MUX_R|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux3~5_combout\,
	datad => \REGE|MUX_R|Mux3~3_combout\,
	combout => \REGE|MUX_R|Mux3~6_combout\);

-- Location: FF_X23_Y10_N7
\REGE|GEN_REG:31:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(4));

-- Location: FF_X22_Y10_N17
\REGE|GEN_REG:27:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(4));

-- Location: FF_X23_Y10_N21
\REGE|GEN_REG:23:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(4));

-- Location: FF_X22_Y10_N7
\REGE|GEN_REG:19:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X22_Y10_N6
\REGE|MUX_R|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~7_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:23:REG_INST|Q_aux\(4))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- ((\REGE|GEN_REG:19:REG_INST|Q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:23:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux3~7_combout\);

-- Location: LCCOMB_X22_Y10_N16
\REGE|MUX_R|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~8_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux3~7_combout\ & (\REGE|GEN_REG:31:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~7_combout\ & ((\REGE|GEN_REG:27:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:31:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_R|Mux3~7_combout\,
	combout => \REGE|MUX_R|Mux3~8_combout\);

-- Location: LCCOMB_X23_Y12_N6
\REGE|GEN_REG:30:REG_INST|Q_aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:30:REG_INST|Q_aux[4]~feeder_combout\ = \dato_I_aux[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[4]~9_combout\,
	combout => \REGE|GEN_REG:30:REG_INST|Q_aux[4]~feeder_combout\);

-- Location: FF_X23_Y12_N7
\REGE|GEN_REG:30:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:30:REG_INST|Q_aux[4]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y16_N25
\REGE|GEN_REG:26:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y16_N3
\REGE|GEN_REG:18:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X24_Y16_N2
\REGE|MUX_R|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(4))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y12_N4
\REGE|MUX_R|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux3~0_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~0_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_R|Mux3~0_combout\,
	combout => \REGE|MUX_R|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y14_N26
\REGE|MUX_R|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~9_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux3~6_combout\ & (\REGE|MUX_R|Mux3~8_combout\)) # (!\REGE|MUX_R|Mux3~6_combout\ & ((\REGE|MUX_R|Mux3~1_combout\))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (\REGE|MUX_R|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|MUX_R|Mux3~6_combout\,
	datac => \REGE|MUX_R|Mux3~8_combout\,
	datad => \REGE|MUX_R|Mux3~1_combout\,
	combout => \REGE|MUX_R|Mux3~9_combout\);

-- Location: FF_X25_Y10_N1
\REGE|GEN_REG:15:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y9_N25
\REGE|GEN_REG:13:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y9_N7
\REGE|GEN_REG:12:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(4));

-- Location: FF_X23_Y9_N9
\REGE|GEN_REG:14:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X24_Y9_N6
\REGE|MUX_R|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~17_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\) # ((\REGE|GEN_REG:14:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux13~1_combout\ & (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (\REGE|GEN_REG:12:REG_INST|Q_aux\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(4),
	datad => \REGE|GEN_REG:14:REG_INST|Q_aux\(4),
	combout => \REGE|MUX_R|Mux3~17_combout\);

-- Location: LCCOMB_X24_Y9_N24
\REGE|MUX_R|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~18_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux3~17_combout\ & (\REGE|GEN_REG:15:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~17_combout\ & ((\REGE|GEN_REG:13:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:15:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:13:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_R|Mux3~17_combout\,
	combout => \REGE|MUX_R|Mux3~18_combout\);

-- Location: FF_X24_Y10_N27
\REGE|GEN_REG:11:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y10_N29
\REGE|GEN_REG:10:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y13_N17
\REGE|GEN_REG:9:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(4));

-- Location: FF_X24_Y13_N15
\REGE|GEN_REG:8:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X24_Y13_N14
\REGE|MUX_R|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~10_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(4))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:8:REG_INST|Q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:8:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux3~10_combout\);

-- Location: LCCOMB_X24_Y10_N16
\REGE|MUX_R|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~11_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux3~10_combout\ & (\REGE|GEN_REG:11:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~10_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:11:REG_INST|Q_aux\(4),
	datab => \REGE|GEN_REG:10:REG_INST|Q_aux\(4),
	datac => \INSTR_DECODER|Mux13~1_combout\,
	datad => \REGE|MUX_R|Mux3~10_combout\,
	combout => \REGE|MUX_R|Mux3~11_combout\);

-- Location: LCCOMB_X24_Y14_N0
\REGE|GEN_REG:3:REG_INST|Q_aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:3:REG_INST|Q_aux[4]~feeder_combout\ = \dato_I_aux[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[4]~9_combout\,
	combout => \REGE|GEN_REG:3:REG_INST|Q_aux[4]~feeder_combout\);

-- Location: FF_X24_Y14_N1
\REGE|GEN_REG:3:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:3:REG_INST|Q_aux[4]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(4));

-- Location: FF_X23_Y15_N19
\REGE|GEN_REG:2:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(4));

-- Location: FF_X25_Y15_N1
\REGE|GEN_REG:1:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(4));

-- Location: FF_X23_Y15_N21
\REGE|GEN_REG:0:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X23_Y15_N20
\REGE|MUX_R|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~14_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:1:REG_INST|Q_aux\(4))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:0:REG_INST|Q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:1:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:0:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux3~14_combout\);

-- Location: LCCOMB_X23_Y15_N18
\REGE|MUX_R|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~15_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux3~14_combout\ & (\REGE|GEN_REG:3:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~14_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:3:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:2:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_R|Mux3~14_combout\,
	combout => \REGE|MUX_R|Mux3~15_combout\);

-- Location: FF_X26_Y9_N17
\REGE|GEN_REG:7:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(4));

-- Location: FF_X26_Y13_N21
\REGE|GEN_REG:5:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X26_Y9_N14
\REGE|GEN_REG:6:REG_INST|Q_aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:6:REG_INST|Q_aux[4]~feeder_combout\ = \dato_I_aux[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[4]~9_combout\,
	combout => \REGE|GEN_REG:6:REG_INST|Q_aux[4]~feeder_combout\);

-- Location: FF_X26_Y9_N15
\REGE|GEN_REG:6:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:6:REG_INST|Q_aux[4]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(4));

-- Location: FF_X26_Y13_N3
\REGE|GEN_REG:4:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X26_Y13_N2
\REGE|MUX_R|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~12_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(4))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- ((\REGE|GEN_REG:4:REG_INST|Q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:6:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:4:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux3~12_combout\);

-- Location: LCCOMB_X26_Y13_N20
\REGE|MUX_R|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~13_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux3~12_combout\ & (\REGE|GEN_REG:7:REG_INST|Q_aux\(4))) # (!\REGE|MUX_R|Mux3~12_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:7:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:5:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_R|Mux3~12_combout\,
	combout => \REGE|MUX_R|Mux3~13_combout\);

-- Location: LCCOMB_X23_Y15_N30
\REGE|MUX_R|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~16_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux3~13_combout\))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (\REGE|MUX_R|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|MUX_R|Mux3~15_combout\,
	datac => \INSTR_DECODER|Mux12~6_combout\,
	datad => \REGE|MUX_R|Mux3~13_combout\,
	combout => \REGE|MUX_R|Mux3~16_combout\);

-- Location: LCCOMB_X24_Y14_N6
\REGE|MUX_R|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~19_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux3~16_combout\ & (\REGE|MUX_R|Mux3~18_combout\)) # (!\REGE|MUX_R|Mux3~16_combout\ & ((\REGE|MUX_R|Mux3~11_combout\))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|MUX_R|Mux3~18_combout\,
	datac => \REGE|MUX_R|Mux3~11_combout\,
	datad => \REGE|MUX_R|Mux3~16_combout\,
	combout => \REGE|MUX_R|Mux3~19_combout\);

-- Location: LCCOMB_X24_Y14_N24
\REGE|MUX_R|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux3~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux3~9_combout\)) # (!\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux3~9_combout\,
	datad => \REGE|MUX_R|Mux3~19_combout\,
	combout => \REGE|MUX_R|Mux3~20_combout\);

-- Location: LCCOMB_X25_Y10_N20
\dato_I_aux[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[4]~8_combout\ = (\INSTR_DECODER|Mux18~1_combout\ & ((\PROGRAM_MEMORY|Mux7~3_combout\) # ((\PROGRAM_COUNTER|q_aux\(15))))) # (!\INSTR_DECODER|Mux18~1_combout\ & (((\REGE|MUX_R|Mux3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux7~3_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \INSTR_DECODER|Mux18~1_combout\,
	datad => \REGE|MUX_R|Mux3~20_combout\,
	combout => \dato_I_aux[4]~8_combout\);

-- Location: LCCOMB_X23_Y14_N22
\ARITMETHIC_LOGIC_UNIT|F_aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|F_aux~3_combout\ = \REGE|MUX_D|Mux3~20_combout\ $ (((\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux3~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux3~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux3~19_combout\,
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux3~9_combout\,
	datad => \REGE|MUX_D|Mux3~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|F_aux~3_combout\);

-- Location: FF_X26_Y14_N31
\REGE|GEN_REG:15:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X24_Y9_N14
\REGE|GEN_REG:13:REG_INST|Q_aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:13:REG_INST|Q_aux[3]~feeder_combout\ = \dato_I_aux[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[3]~7_combout\,
	combout => \REGE|GEN_REG:13:REG_INST|Q_aux[3]~feeder_combout\);

-- Location: FF_X24_Y9_N15
\REGE|GEN_REG:13:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:13:REG_INST|Q_aux[3]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(3));

-- Location: FF_X23_Y9_N3
\REGE|GEN_REG:12:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X23_Y9_N2
\REGE|MUX_R|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~17_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(3))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:12:REG_INST|Q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux4~17_combout\);

-- Location: LCCOMB_X23_Y9_N24
\REGE|MUX_R|Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~18_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux4~17_combout\ & (\REGE|GEN_REG:15:REG_INST|Q_aux\(3))) # (!\REGE|MUX_R|Mux4~17_combout\ & ((\REGE|GEN_REG:14:REG_INST|Q_aux\(3)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:15:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:14:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_R|Mux4~17_combout\,
	combout => \REGE|MUX_R|Mux4~18_combout\);

-- Location: LCCOMB_X28_Y13_N12
\REGE|GEN_REG:9:REG_INST|Q_aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:9:REG_INST|Q_aux[3]~feeder_combout\ = \dato_I_aux[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[3]~7_combout\,
	combout => \REGE|GEN_REG:9:REG_INST|Q_aux[3]~feeder_combout\);

-- Location: FF_X28_Y13_N13
\REGE|GEN_REG:9:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:9:REG_INST|Q_aux[3]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(3));

-- Location: FF_X24_Y10_N31
\REGE|GEN_REG:11:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(3));

-- Location: FF_X24_Y10_N25
\REGE|GEN_REG:10:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X28_Y13_N14
\REGE|GEN_REG:8:REG_INST|Q_aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:8:REG_INST|Q_aux[3]~feeder_combout\ = \dato_I_aux[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[3]~7_combout\,
	combout => \REGE|GEN_REG:8:REG_INST|Q_aux[3]~feeder_combout\);

-- Location: FF_X28_Y13_N15
\REGE|GEN_REG:8:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:8:REG_INST|Q_aux[3]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X28_Y13_N20
\REGE|MUX_R|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~12_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & (\REGE|GEN_REG:10:REG_INST|Q_aux\(3))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- ((\REGE|GEN_REG:8:REG_INST|Q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:10:REG_INST|Q_aux\(3),
	datab => \REGE|GEN_REG:8:REG_INST|Q_aux\(3),
	datac => \INSTR_DECODER|Mux14~1_combout\,
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux4~12_combout\);

-- Location: LCCOMB_X28_Y13_N30
\REGE|MUX_R|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~13_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux4~12_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_R|Mux4~12_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(3),
	datab => \REGE|GEN_REG:11:REG_INST|Q_aux\(3),
	datac => \INSTR_DECODER|Mux14~1_combout\,
	datad => \REGE|MUX_R|Mux4~12_combout\,
	combout => \REGE|MUX_R|Mux4~13_combout\);

-- Location: FF_X25_Y9_N23
\REGE|GEN_REG:3:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(3));

-- Location: FF_X26_Y12_N19
\REGE|GEN_REG:1:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(3));

-- Location: FF_X25_Y9_N29
\REGE|GEN_REG:2:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(3));

-- Location: FF_X26_Y12_N13
\REGE|GEN_REG:0:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X26_Y12_N12
\REGE|MUX_R|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~14_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & (\REGE|GEN_REG:2:REG_INST|Q_aux\(3))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- ((\REGE|GEN_REG:0:REG_INST|Q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:0:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux4~14_combout\);

-- Location: LCCOMB_X26_Y12_N18
\REGE|MUX_R|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~15_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux4~14_combout\ & (\REGE|GEN_REG:3:REG_INST|Q_aux\(3))) # (!\REGE|MUX_R|Mux4~14_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(3)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:3:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:1:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_R|Mux4~14_combout\,
	combout => \REGE|MUX_R|Mux4~15_combout\);

-- Location: LCCOMB_X26_Y12_N26
\REGE|MUX_R|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~16_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (\INSTR_DECODER|Mux11~1_combout\)) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|MUX_R|Mux4~13_combout\)) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|MUX_R|Mux4~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|MUX_R|Mux4~13_combout\,
	datad => \REGE|MUX_R|Mux4~15_combout\,
	combout => \REGE|MUX_R|Mux4~16_combout\);

-- Location: FF_X26_Y9_N9
\REGE|GEN_REG:7:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(3));

-- Location: FF_X26_Y9_N27
\REGE|GEN_REG:6:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(3));

-- Location: FF_X26_Y13_N29
\REGE|GEN_REG:5:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(3));

-- Location: FF_X26_Y13_N7
\REGE|GEN_REG:4:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X26_Y13_N6
\REGE|MUX_R|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~10_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(3)) # ((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & (((\REGE|GEN_REG:4:REG_INST|Q_aux\(3) & 
-- !\INSTR_DECODER|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:4:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux4~10_combout\);

-- Location: LCCOMB_X26_Y9_N26
\REGE|MUX_R|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~11_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux4~10_combout\ & (\REGE|GEN_REG:7:REG_INST|Q_aux\(3))) # (!\REGE|MUX_R|Mux4~10_combout\ & ((\REGE|GEN_REG:6:REG_INST|Q_aux\(3)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:7:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:6:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_R|Mux4~10_combout\,
	combout => \REGE|MUX_R|Mux4~11_combout\);

-- Location: LCCOMB_X26_Y12_N4
\REGE|MUX_R|Mux4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~19_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux4~16_combout\ & (\REGE|MUX_R|Mux4~18_combout\)) # (!\REGE|MUX_R|Mux4~16_combout\ & ((\REGE|MUX_R|Mux4~11_combout\))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|MUX_R|Mux4~18_combout\,
	datac => \REGE|MUX_R|Mux4~16_combout\,
	datad => \REGE|MUX_R|Mux4~11_combout\,
	combout => \REGE|MUX_R|Mux4~19_combout\);

-- Location: FF_X23_Y11_N15
\REGE|GEN_REG:29:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(3));

-- Location: FF_X23_Y11_N5
\REGE|GEN_REG:21:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(3));

-- Location: FF_X22_Y11_N9
\REGE|GEN_REG:25:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(3));

-- Location: FF_X22_Y11_N31
\REGE|GEN_REG:17:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X22_Y11_N30
\REGE|MUX_R|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:25:REG_INST|Q_aux\(3))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:17:REG_INST|Q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:25:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:17:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y11_N4
\REGE|MUX_R|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux4~0_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(3))) # (!\REGE|MUX_R|Mux4~0_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(3)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:29:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_R|Mux4~0_combout\,
	combout => \REGE|MUX_R|Mux4~1_combout\);

-- Location: FF_X23_Y10_N15
\REGE|GEN_REG:31:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(3));

-- Location: FF_X23_Y10_N25
\REGE|GEN_REG:23:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(3));

-- Location: FF_X22_Y10_N9
\REGE|GEN_REG:27:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(3));

-- Location: FF_X22_Y10_N11
\REGE|GEN_REG:19:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X22_Y10_N10
\REGE|MUX_R|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~7_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(3))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:19:REG_INST|Q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y10_N24
\REGE|MUX_R|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~8_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux4~7_combout\ & (\REGE|GEN_REG:31:REG_INST|Q_aux\(3))) # (!\REGE|MUX_R|Mux4~7_combout\ & ((\REGE|GEN_REG:23:REG_INST|Q_aux\(3)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:31:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_R|Mux4~7_combout\,
	combout => \REGE|MUX_R|Mux4~8_combout\);

-- Location: FF_X23_Y12_N27
\REGE|GEN_REG:30:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(3));

-- Location: FF_X24_Y16_N17
\REGE|GEN_REG:26:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(3));

-- Location: FF_X23_Y12_N21
\REGE|GEN_REG:22:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(3));

-- Location: FF_X24_Y16_N7
\REGE|GEN_REG:18:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X24_Y16_N6
\REGE|MUX_R|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~2_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(3)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:18:REG_INST|Q_aux\(3) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:22:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y16_N16
\REGE|MUX_R|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~3_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux4~2_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(3))) # (!\REGE|MUX_R|Mux4~2_combout\ & ((\REGE|GEN_REG:26:REG_INST|Q_aux\(3)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:26:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_R|Mux4~2_combout\,
	combout => \REGE|MUX_R|Mux4~3_combout\);

-- Location: FF_X24_Y15_N19
\REGE|GEN_REG:28:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(3));

-- Location: FF_X24_Y15_N13
\REGE|GEN_REG:24:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(3));

-- Location: FF_X23_Y14_N29
\REGE|GEN_REG:20:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(3));

-- Location: FF_X23_Y14_N15
\REGE|GEN_REG:16:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X23_Y14_N14
\REGE|MUX_R|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~4_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:20:REG_INST|Q_aux\(3))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- ((\REGE|GEN_REG:16:REG_INST|Q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:20:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux4~4_combout\);

-- Location: LCCOMB_X24_Y15_N12
\REGE|MUX_R|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~5_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux4~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(3))) # (!\REGE|MUX_R|Mux4~4_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(3)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:28:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:24:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_R|Mux4~4_combout\,
	combout => \REGE|MUX_R|Mux4~5_combout\);

-- Location: LCCOMB_X26_Y12_N10
\REGE|MUX_R|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~6_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (\INSTR_DECODER|Mux13~1_combout\)) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & (\REGE|MUX_R|Mux4~3_combout\)) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- ((\REGE|MUX_R|Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|MUX_R|Mux4~3_combout\,
	datad => \REGE|MUX_R|Mux4~5_combout\,
	combout => \REGE|MUX_R|Mux4~6_combout\);

-- Location: LCCOMB_X26_Y12_N0
\REGE|MUX_R|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~9_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux4~6_combout\ & ((\REGE|MUX_R|Mux4~8_combout\))) # (!\REGE|MUX_R|Mux4~6_combout\ & (\REGE|MUX_R|Mux4~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux4~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux4~8_combout\,
	datad => \REGE|MUX_R|Mux4~6_combout\,
	combout => \REGE|MUX_R|Mux4~9_combout\);

-- Location: LCCOMB_X26_Y14_N0
\REGE|MUX_R|Mux4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux4~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux4~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux4~19_combout\,
	datad => \REGE|MUX_R|Mux4~9_combout\,
	combout => \REGE|MUX_R|Mux4~20_combout\);

-- Location: LCCOMB_X26_Y14_N26
\dato_I_aux[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[3]~6_combout\ = (\INSTR_DECODER|Mux18~1_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux12~2_combout\)))) # (!\INSTR_DECODER|Mux18~1_combout\ & (((\REGE|MUX_R|Mux4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \INSTR_DECODER|Mux18~1_combout\,
	datac => \PROGRAM_MEMORY|Mux12~2_combout\,
	datad => \REGE|MUX_R|Mux4~20_combout\,
	combout => \dato_I_aux[3]~6_combout\);

-- Location: LCCOMB_X26_Y12_N14
\ARITMETHIC_LOGIC_UNIT|F_aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|F_aux~2_combout\ = \REGE|MUX_D|Mux4~20_combout\ $ (((\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux4~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux4~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux10~4_combout\,
	datab => \REGE|MUX_D|Mux4~20_combout\,
	datac => \REGE|MUX_R|Mux4~19_combout\,
	datad => \REGE|MUX_R|Mux4~9_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|F_aux~2_combout\);

-- Location: FF_X24_Y10_N19
\REGE|GEN_REG:11:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(2));

-- Location: FF_X24_Y10_N9
\REGE|GEN_REG:10:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(2));

-- Location: FF_X24_Y13_N9
\REGE|GEN_REG:9:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(2));

-- Location: FF_X24_Y13_N31
\REGE|GEN_REG:8:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X24_Y13_N30
\REGE|MUX_R|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~10_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(2))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:8:REG_INST|Q_aux\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:8:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux5~10_combout\);

-- Location: LCCOMB_X24_Y10_N8
\REGE|MUX_R|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~11_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux5~10_combout\ & (\REGE|GEN_REG:11:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~10_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:11:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:10:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_R|Mux5~10_combout\,
	combout => \REGE|MUX_R|Mux5~11_combout\);

-- Location: FF_X25_Y10_N15
\REGE|GEN_REG:15:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(2));

-- Location: FF_X24_Y9_N27
\REGE|GEN_REG:13:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(2));

-- Location: FF_X24_Y9_N1
\REGE|GEN_REG:12:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X23_Y9_N14
\REGE|GEN_REG:14:REG_INST|Q_aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:14:REG_INST|Q_aux[2]~feeder_combout\ = \dato_I_aux[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[2]~5_combout\,
	combout => \REGE|GEN_REG:14:REG_INST|Q_aux[2]~feeder_combout\);

-- Location: FF_X23_Y9_N15
\REGE|GEN_REG:14:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:14:REG_INST|Q_aux[2]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X24_Y9_N0
\REGE|MUX_R|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~17_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\) # ((\REGE|GEN_REG:14:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux13~1_combout\ & (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (\REGE|GEN_REG:12:REG_INST|Q_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(2),
	datad => \REGE|GEN_REG:14:REG_INST|Q_aux\(2),
	combout => \REGE|MUX_R|Mux5~17_combout\);

-- Location: LCCOMB_X24_Y9_N26
\REGE|MUX_R|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~18_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux5~17_combout\ & (\REGE|GEN_REG:15:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~17_combout\ & ((\REGE|GEN_REG:13:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:15:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:13:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_R|Mux5~17_combout\,
	combout => \REGE|MUX_R|Mux5~18_combout\);

-- Location: FF_X26_Y9_N3
\REGE|GEN_REG:7:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X26_Y10_N0
\REGE|GEN_REG:5:REG_INST|Q_aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:5:REG_INST|Q_aux[2]~feeder_combout\ = \dato_I_aux[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[2]~5_combout\,
	combout => \REGE|GEN_REG:5:REG_INST|Q_aux[2]~feeder_combout\);

-- Location: FF_X26_Y10_N1
\REGE|GEN_REG:5:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:5:REG_INST|Q_aux[2]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(2));

-- Location: FF_X26_Y9_N25
\REGE|GEN_REG:6:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(2));

-- Location: FF_X26_Y10_N19
\REGE|GEN_REG:4:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X26_Y10_N18
\REGE|MUX_R|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~12_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(2))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- ((\REGE|GEN_REG:4:REG_INST|Q_aux\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:6:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:4:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux5~12_combout\);

-- Location: LCCOMB_X26_Y10_N4
\REGE|MUX_R|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~13_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux5~12_combout\ & (\REGE|GEN_REG:7:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~12_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:7:REG_INST|Q_aux\(2),
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(2),
	datac => \INSTR_DECODER|Mux14~1_combout\,
	datad => \REGE|MUX_R|Mux5~12_combout\,
	combout => \REGE|MUX_R|Mux5~13_combout\);

-- Location: FF_X25_Y9_N15
\REGE|GEN_REG:3:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X25_Y9_N20
\REGE|GEN_REG:2:REG_INST|Q_aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:2:REG_INST|Q_aux[2]~feeder_combout\ = \dato_I_aux[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[2]~5_combout\,
	combout => \REGE|GEN_REG:2:REG_INST|Q_aux[2]~feeder_combout\);

-- Location: FF_X25_Y9_N21
\REGE|GEN_REG:2:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:2:REG_INST|Q_aux[2]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(2));

-- Location: FF_X26_Y12_N23
\REGE|GEN_REG:1:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(2));

-- Location: FF_X26_Y12_N9
\REGE|GEN_REG:0:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X26_Y12_N8
\REGE|MUX_R|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~14_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(2)) # ((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & (((\REGE|GEN_REG:0:REG_INST|Q_aux\(2) & 
-- !\INSTR_DECODER|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:1:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:0:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux5~14_combout\);

-- Location: LCCOMB_X26_Y9_N0
\REGE|MUX_R|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~15_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux5~14_combout\ & (\REGE|GEN_REG:3:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~14_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:3:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:2:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_R|Mux5~14_combout\,
	combout => \REGE|MUX_R|Mux5~15_combout\);

-- Location: LCCOMB_X26_Y10_N2
\REGE|MUX_R|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~16_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (\INSTR_DECODER|Mux12~6_combout\)) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & (\REGE|MUX_R|Mux5~13_combout\)) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- ((\REGE|MUX_R|Mux5~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|MUX_R|Mux5~13_combout\,
	datad => \REGE|MUX_R|Mux5~15_combout\,
	combout => \REGE|MUX_R|Mux5~16_combout\);

-- Location: LCCOMB_X26_Y10_N20
\REGE|MUX_R|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~19_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux5~16_combout\ & ((\REGE|MUX_R|Mux5~18_combout\))) # (!\REGE|MUX_R|Mux5~16_combout\ & (\REGE|MUX_R|Mux5~11_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|MUX_R|Mux5~11_combout\,
	datac => \REGE|MUX_R|Mux5~18_combout\,
	datad => \REGE|MUX_R|Mux5~16_combout\,
	combout => \REGE|MUX_R|Mux5~19_combout\);

-- Location: FF_X23_Y10_N31
\REGE|GEN_REG:31:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(2));

-- Location: FF_X23_Y10_N1
\REGE|GEN_REG:23:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(2));

-- Location: FF_X22_Y10_N19
\REGE|GEN_REG:19:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X22_Y10_N18
\REGE|MUX_R|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~7_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:23:REG_INST|Q_aux\(2)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:19:REG_INST|Q_aux\(2) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:23:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux5~7_combout\);

-- Location: LCCOMB_X22_Y10_N4
\REGE|MUX_R|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~8_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux5~7_combout\ & (\REGE|GEN_REG:31:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~7_combout\ & ((\REGE|GEN_REG:27:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:31:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_R|Mux5~7_combout\,
	combout => \REGE|MUX_R|Mux5~8_combout\);

-- Location: FF_X24_Y12_N23
\REGE|GEN_REG:28:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(2));

-- Location: FF_X23_Y14_N9
\REGE|GEN_REG:20:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X24_Y12_N12
\REGE|GEN_REG:24:REG_INST|Q_aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:24:REG_INST|Q_aux[2]~feeder_combout\ = \dato_I_aux[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[2]~5_combout\,
	combout => \REGE|GEN_REG:24:REG_INST|Q_aux[2]~feeder_combout\);

-- Location: FF_X24_Y12_N13
\REGE|GEN_REG:24:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:24:REG_INST|Q_aux[2]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(2));

-- Location: FF_X23_Y14_N3
\REGE|GEN_REG:16:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X23_Y14_N2
\REGE|MUX_R|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~4_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(2)) # ((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & (((\REGE|GEN_REG:16:REG_INST|Q_aux\(2) & 
-- !\INSTR_DECODER|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:24:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y14_N8
\REGE|MUX_R|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~5_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux5~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~4_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:28:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_R|Mux5~4_combout\,
	combout => \REGE|MUX_R|Mux5~5_combout\);

-- Location: FF_X23_Y11_N23
\REGE|GEN_REG:29:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(2));

-- Location: FF_X22_Y11_N29
\REGE|GEN_REG:25:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(2));

-- Location: FF_X23_Y11_N21
\REGE|GEN_REG:21:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(2));

-- Location: FF_X22_Y11_N11
\REGE|GEN_REG:17:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X22_Y11_N10
\REGE|MUX_R|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~2_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(2)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:17:REG_INST|Q_aux\(2) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:21:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:17:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y11_N28
\REGE|MUX_R|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~3_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux5~2_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~2_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:29:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:25:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_R|Mux5~2_combout\,
	combout => \REGE|MUX_R|Mux5~3_combout\);

-- Location: LCCOMB_X26_Y10_N8
\REGE|MUX_R|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~6_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (\INSTR_DECODER|Mux14~1_combout\)) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux5~3_combout\))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (\REGE|MUX_R|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux5~5_combout\,
	datad => \REGE|MUX_R|Mux5~3_combout\,
	combout => \REGE|MUX_R|Mux5~6_combout\);

-- Location: FF_X23_Y12_N23
\REGE|GEN_REG:30:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(2));

-- Location: FF_X23_Y12_N29
\REGE|GEN_REG:22:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X24_Y16_N0
\REGE|GEN_REG:26:REG_INST|Q_aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:26:REG_INST|Q_aux[2]~feeder_combout\ = \dato_I_aux[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[2]~5_combout\,
	combout => \REGE|GEN_REG:26:REG_INST|Q_aux[2]~feeder_combout\);

-- Location: FF_X24_Y16_N1
\REGE|GEN_REG:26:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:26:REG_INST|Q_aux[2]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(2));

-- Location: FF_X24_Y16_N27
\REGE|GEN_REG:18:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X24_Y16_N26
\REGE|MUX_R|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(2))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y12_N28
\REGE|MUX_R|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux5~0_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(2))) # (!\REGE|MUX_R|Mux5~0_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_R|Mux5~0_combout\,
	combout => \REGE|MUX_R|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y10_N6
\REGE|MUX_R|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~9_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux5~6_combout\ & (\REGE|MUX_R|Mux5~8_combout\)) # (!\REGE|MUX_R|Mux5~6_combout\ & ((\REGE|MUX_R|Mux5~1_combout\))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux5~8_combout\,
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|MUX_R|Mux5~6_combout\,
	datad => \REGE|MUX_R|Mux5~1_combout\,
	combout => \REGE|MUX_R|Mux5~9_combout\);

-- Location: LCCOMB_X26_Y14_N6
\REGE|MUX_R|Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux5~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux5~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux5~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux5~19_combout\,
	datad => \REGE|MUX_R|Mux5~9_combout\,
	combout => \REGE|MUX_R|Mux5~20_combout\);

-- Location: LCCOMB_X25_Y10_N16
\dato_I_aux[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[2]~4_combout\ = (\INSTR_DECODER|Mux18~1_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux13~7_combout\)))) # (!\INSTR_DECODER|Mux18~1_combout\ & (((\REGE|MUX_R|Mux5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux18~1_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux13~7_combout\,
	datad => \REGE|MUX_R|Mux5~20_combout\,
	combout => \dato_I_aux[2]~4_combout\);

-- Location: LCCOMB_X26_Y10_N26
\ARITMETHIC_LOGIC_UNIT|F_aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|F_aux~1_combout\ = \REGE|MUX_D|Mux5~20_combout\ $ (((\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux5~9_combout\)) # (!\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux5~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux5~9_combout\,
	datab => \REGE|MUX_R|Mux5~19_combout\,
	datac => \INSTR_DECODER|Mux10~4_combout\,
	datad => \REGE|MUX_D|Mux5~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|F_aux~1_combout\);

-- Location: FF_X23_Y12_N15
\REGE|GEN_REG:30:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(1));

-- Location: FF_X24_Y16_N5
\REGE|GEN_REG:26:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(1));

-- Location: FF_X23_Y12_N25
\REGE|GEN_REG:22:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(1));

-- Location: FF_X24_Y16_N19
\REGE|GEN_REG:18:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X24_Y16_N18
\REGE|MUX_R|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~2_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:22:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|GEN_REG:22:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux6~2_combout\);

-- Location: LCCOMB_X24_Y16_N4
\REGE|MUX_R|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~3_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux6~2_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(1))) # (!\REGE|MUX_R|Mux6~2_combout\ & ((\REGE|GEN_REG:26:REG_INST|Q_aux\(1)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:26:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_R|Mux6~2_combout\,
	combout => \REGE|MUX_R|Mux6~3_combout\);

-- Location: FF_X24_Y12_N27
\REGE|GEN_REG:28:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(1));

-- Location: FF_X24_Y12_N21
\REGE|GEN_REG:24:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(1));

-- Location: FF_X23_Y14_N13
\REGE|GEN_REG:20:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(1));

-- Location: FF_X23_Y14_N19
\REGE|GEN_REG:16:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X23_Y14_N18
\REGE|MUX_R|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~4_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:20:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- ((\REGE|GEN_REG:16:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:20:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux6~4_combout\);

-- Location: LCCOMB_X24_Y12_N20
\REGE|MUX_R|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~5_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux6~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(1))) # (!\REGE|MUX_R|Mux6~4_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(1)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:28:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:24:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_R|Mux6~4_combout\,
	combout => \REGE|MUX_R|Mux6~5_combout\);

-- Location: LCCOMB_X25_Y12_N12
\REGE|MUX_R|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~6_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\) # ((\REGE|MUX_R|Mux6~3_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (!\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux6~3_combout\,
	datad => \REGE|MUX_R|Mux6~5_combout\,
	combout => \REGE|MUX_R|Mux6~6_combout\);

-- Location: FF_X23_Y11_N11
\REGE|GEN_REG:29:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(1));

-- Location: FF_X23_Y11_N1
\REGE|GEN_REG:21:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(1));

-- Location: FF_X22_Y11_N13
\REGE|GEN_REG:25:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(1));

-- Location: FF_X22_Y11_N23
\REGE|GEN_REG:17:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X22_Y11_N22
\REGE|MUX_R|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:25:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:17:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:25:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:17:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y11_N0
\REGE|MUX_R|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux6~0_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(1))) # (!\REGE|MUX_R|Mux6~0_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(1)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:29:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_R|Mux6~0_combout\,
	combout => \REGE|MUX_R|Mux6~1_combout\);

-- Location: FF_X23_Y10_N11
\REGE|GEN_REG:31:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(1));

-- Location: FF_X22_Y10_N21
\REGE|GEN_REG:27:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(1));

-- Location: FF_X22_Y10_N15
\REGE|GEN_REG:19:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X22_Y10_N14
\REGE|MUX_R|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~7_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:19:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux6~7_combout\);

-- Location: LCCOMB_X23_Y10_N8
\REGE|MUX_R|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~8_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux6~7_combout\ & (\REGE|GEN_REG:31:REG_INST|Q_aux\(1))) # (!\REGE|MUX_R|Mux6~7_combout\ & ((\REGE|GEN_REG:23:REG_INST|Q_aux\(1)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:31:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_R|Mux6~7_combout\,
	combout => \REGE|MUX_R|Mux6~8_combout\);

-- Location: LCCOMB_X25_Y12_N30
\REGE|MUX_R|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~9_combout\ = (\REGE|MUX_R|Mux6~6_combout\ & (((\REGE|MUX_R|Mux6~8_combout\)) # (!\INSTR_DECODER|Mux14~1_combout\))) # (!\REGE|MUX_R|Mux6~6_combout\ & (\INSTR_DECODER|Mux14~1_combout\ & (\REGE|MUX_R|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux6~6_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux6~1_combout\,
	datad => \REGE|MUX_R|Mux6~8_combout\,
	combout => \REGE|MUX_R|Mux6~9_combout\);

-- Location: FF_X24_Y11_N25
\REGE|GEN_REG:15:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(1));

-- Location: FF_X23_Y9_N23
\REGE|GEN_REG:14:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X24_Y9_N12
\REGE|GEN_REG:13:REG_INST|Q_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:13:REG_INST|Q_aux[1]~feeder_combout\ = \dato_I_aux[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[1]~3_combout\,
	combout => \REGE|GEN_REG:13:REG_INST|Q_aux[1]~feeder_combout\);

-- Location: FF_X24_Y9_N13
\REGE|GEN_REG:13:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:13:REG_INST|Q_aux[1]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(1));

-- Location: FF_X23_Y9_N21
\REGE|GEN_REG:12:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X23_Y9_N20
\REGE|MUX_R|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~17_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:12:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux6~17_combout\);

-- Location: LCCOMB_X23_Y9_N22
\REGE|MUX_R|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~18_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux6~17_combout\ & (\REGE|GEN_REG:15:REG_INST|Q_aux\(1))) # (!\REGE|MUX_R|Mux6~17_combout\ & ((\REGE|GEN_REG:14:REG_INST|Q_aux\(1)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:15:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:14:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_R|Mux6~17_combout\,
	combout => \REGE|MUX_R|Mux6~18_combout\);

-- Location: FF_X25_Y9_N27
\REGE|GEN_REG:3:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(1));

-- Location: FF_X26_Y12_N21
\REGE|GEN_REG:1:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(1));

-- Location: FF_X25_Y9_N17
\REGE|GEN_REG:2:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X26_Y12_N30
\REGE|GEN_REG:0:REG_INST|Q_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:0:REG_INST|Q_aux[1]~feeder_combout\ = \dato_I_aux[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[1]~3_combout\,
	combout => \REGE|GEN_REG:0:REG_INST|Q_aux[1]~feeder_combout\);

-- Location: FF_X26_Y12_N31
\REGE|GEN_REG:0:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:0:REG_INST|Q_aux[1]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X26_Y12_N24
\REGE|MUX_R|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~14_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & (((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & ((\INSTR_DECODER|Mux13~1_combout\ & (\REGE|GEN_REG:2:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- ((\REGE|GEN_REG:0:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:0:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux6~14_combout\);

-- Location: LCCOMB_X26_Y12_N20
\REGE|MUX_R|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~15_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux6~14_combout\ & (\REGE|GEN_REG:3:REG_INST|Q_aux\(1))) # (!\REGE|MUX_R|Mux6~14_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(1)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux14~1_combout\,
	datab => \REGE|GEN_REG:3:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:1:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_R|Mux6~14_combout\,
	combout => \REGE|MUX_R|Mux6~15_combout\);

-- Location: LCCOMB_X28_Y13_N28
\REGE|GEN_REG:9:REG_INST|Q_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:9:REG_INST|Q_aux[1]~feeder_combout\ = \dato_I_aux[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[1]~3_combout\,
	combout => \REGE|GEN_REG:9:REG_INST|Q_aux[1]~feeder_combout\);

-- Location: FF_X28_Y13_N29
\REGE|GEN_REG:9:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:9:REG_INST|Q_aux[1]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(1));

-- Location: FF_X24_Y10_N3
\REGE|GEN_REG:11:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(1));

-- Location: FF_X24_Y10_N1
\REGE|GEN_REG:10:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X28_Y13_N18
\REGE|GEN_REG:8:REG_INST|Q_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:8:REG_INST|Q_aux[1]~feeder_combout\ = \dato_I_aux[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[1]~3_combout\,
	combout => \REGE|GEN_REG:8:REG_INST|Q_aux[1]~feeder_combout\);

-- Location: FF_X28_Y13_N19
\REGE|GEN_REG:8:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:8:REG_INST|Q_aux[1]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X28_Y13_N16
\REGE|MUX_R|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~12_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(1)) # ((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (((\REGE|GEN_REG:8:REG_INST|Q_aux\(1) & 
-- !\INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:10:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:8:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux6~12_combout\);

-- Location: LCCOMB_X28_Y13_N22
\REGE|MUX_R|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~13_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux6~12_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_R|Mux6~12_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(1),
	datab => \REGE|GEN_REG:11:REG_INST|Q_aux\(1),
	datac => \INSTR_DECODER|Mux14~1_combout\,
	datad => \REGE|MUX_R|Mux6~12_combout\,
	combout => \REGE|MUX_R|Mux6~13_combout\);

-- Location: LCCOMB_X25_Y12_N4
\REGE|MUX_R|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~16_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\) # ((\REGE|MUX_R|Mux6~13_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & (!\INSTR_DECODER|Mux12~6_combout\ & (\REGE|MUX_R|Mux6~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|MUX_R|Mux6~15_combout\,
	datad => \REGE|MUX_R|Mux6~13_combout\,
	combout => \REGE|MUX_R|Mux6~16_combout\);

-- Location: FF_X26_Y9_N11
\REGE|GEN_REG:7:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(1));

-- Location: FF_X26_Y9_N21
\REGE|GEN_REG:6:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(1));

-- Location: FF_X26_Y10_N13
\REGE|GEN_REG:5:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(1));

-- Location: FF_X26_Y10_N23
\REGE|GEN_REG:4:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X26_Y10_N22
\REGE|MUX_R|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~10_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:5:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:4:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:5:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:4:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux6~10_combout\);

-- Location: LCCOMB_X26_Y9_N20
\REGE|MUX_R|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~11_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux6~10_combout\ & (\REGE|GEN_REG:7:REG_INST|Q_aux\(1))) # (!\REGE|MUX_R|Mux6~10_combout\ & ((\REGE|GEN_REG:6:REG_INST|Q_aux\(1)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:7:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:6:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_R|Mux6~10_combout\,
	combout => \REGE|MUX_R|Mux6~11_combout\);

-- Location: LCCOMB_X25_Y12_N14
\REGE|MUX_R|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~19_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux6~16_combout\ & (\REGE|MUX_R|Mux6~18_combout\)) # (!\REGE|MUX_R|Mux6~16_combout\ & ((\REGE|MUX_R|Mux6~11_combout\))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux6~18_combout\,
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|MUX_R|Mux6~16_combout\,
	datad => \REGE|MUX_R|Mux6~11_combout\,
	combout => \REGE|MUX_R|Mux6~19_combout\);

-- Location: LCCOMB_X26_Y14_N4
\REGE|MUX_R|Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux6~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux6~9_combout\)) # (!\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux6~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux6~9_combout\,
	datad => \REGE|MUX_R|Mux6~19_combout\,
	combout => \REGE|MUX_R|Mux6~20_combout\);

-- Location: LCCOMB_X26_Y14_N28
\dato_I_aux[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[1]~2_combout\ = (\INSTR_DECODER|Mux18~1_combout\ & ((\PROGRAM_COUNTER|q_aux\(15)) # ((\PROGRAM_MEMORY|Mux14~4_combout\)))) # (!\INSTR_DECODER|Mux18~1_combout\ & (((\REGE|MUX_R|Mux6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(15),
	datab => \PROGRAM_MEMORY|Mux14~4_combout\,
	datac => \REGE|MUX_R|Mux6~20_combout\,
	datad => \INSTR_DECODER|Mux18~1_combout\,
	combout => \dato_I_aux[1]~2_combout\);

-- Location: LCCOMB_X25_Y14_N10
\ARITMETHIC_LOGIC_UNIT|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~0_combout\ = (\REGE|MUX_D|Mux7~20_combout\ & (\REGE|MUX_R|Mux7~20_combout\ $ (VCC))) # (!\REGE|MUX_D|Mux7~20_combout\ & (\REGE|MUX_R|Mux7~20_combout\ & VCC))
-- \ARITMETHIC_LOGIC_UNIT|Add0~1\ = CARRY((\REGE|MUX_D|Mux7~20_combout\ & \REGE|MUX_R|Mux7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux7~20_combout\,
	datab => \REGE|MUX_R|Mux7~20_combout\,
	datad => VCC,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~0_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add0~1\);

-- Location: LCCOMB_X26_Y11_N30
\ARITMETHIC_LOGIC_UNIT|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux8~0_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\REGE|MUX_D|Mux6~20_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\REGE|MUX_R|Mux7~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux15~1_combout\,
	datac => \REGE|MUX_D|Mux6~20_combout\,
	datad => \REGE|MUX_R|Mux7~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y10_N30
\ARITMETHIC_LOGIC_UNIT|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux8~1_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux8~0_combout\))) # (!\INSTR_DECODER|Mux16~0_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add0~0_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux8~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux8~1_combout\);

-- Location: LCCOMB_X26_Y14_N10
\ARITMETHIC_LOGIC_UNIT|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~0_combout\ = (\REGE|MUX_R|Mux7~20_combout\ & (\REGE|MUX_D|Mux7~20_combout\ $ (VCC))) # (!\REGE|MUX_R|Mux7~20_combout\ & ((\REGE|MUX_D|Mux7~20_combout\) # (GND)))
-- \ARITMETHIC_LOGIC_UNIT|Add1~1\ = CARRY((\REGE|MUX_D|Mux7~20_combout\) # (!\REGE|MUX_R|Mux7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux7~20_combout\,
	datab => \REGE|MUX_D|Mux7~20_combout\,
	datad => VCC,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~0_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add1~1\);

-- Location: LCCOMB_X25_Y10_N28
\ARITMETHIC_LOGIC_UNIT|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux8~2_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (!\INSTR_DECODER|Mux16~0_combout\ & ((!\REGE|MUX_D|Mux7~20_combout\)))) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\INSTR_DECODER|Mux16~0_combout\ & ((\REGE|MUX_D|Mux7~20_combout\))) 
-- # (!\INSTR_DECODER|Mux16~0_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux15~1_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add1~0_combout\,
	datad => \REGE|MUX_D|Mux7~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux8~2_combout\);

-- Location: LCCOMB_X25_Y10_N26
\ARITMETHIC_LOGIC_UNIT|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux8~3_combout\ = (\ARITMETHIC_LOGIC_UNIT|Mux8~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux8~2_combout\) # (\INSTR_DECODER|Mux17~4_combout\ $ (!\INSTR_DECODER|Mux16~0_combout\)))) # (!\ARITMETHIC_LOGIC_UNIT|Mux8~1_combout\ & 
-- (\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux8~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux8~2_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux8~3_combout\);

-- Location: LCCOMB_X24_Y10_N14
\dato_I_aux[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[0]~0_combout\ = (\INSTR_DECODER|Mux18~1_combout\ & ((\PROGRAM_MEMORY|Mux15~5_combout\) # ((\PROGRAM_COUNTER|q_aux\(15))))) # (!\INSTR_DECODER|Mux18~1_combout\ & (((\REGE|MUX_R|Mux7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux18~1_combout\,
	datab => \PROGRAM_MEMORY|Mux15~5_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \REGE|MUX_R|Mux7~20_combout\,
	combout => \dato_I_aux[0]~0_combout\);

-- Location: LCCOMB_X25_Y10_N8
\dato_I_aux[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[0]~1_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (\INSTR_DECODER|Mux18~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux8~3_combout\))) # (!\INSTR_DECODER|Mux19~1_combout\ & (((\dato_I_aux[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux18~1_combout\,
	datab => \INSTR_DECODER|Mux19~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux8~3_combout\,
	datad => \dato_I_aux[0]~0_combout\,
	combout => \dato_I_aux[0]~1_combout\);

-- Location: FF_X22_Y11_N1
\REGE|GEN_REG:25:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[25]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:25:REG_INST|Q_aux\(0));

-- Location: FF_X23_Y11_N3
\REGE|GEN_REG:29:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[29]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:29:REG_INST|Q_aux\(0));

-- Location: FF_X22_Y11_N19
\REGE|GEN_REG:17:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:17:REG_INST|Q_aux\(0));

-- Location: FF_X23_Y11_N13
\REGE|GEN_REG:21:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X23_Y11_N12
\REGE|MUX_D|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~2_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(0)))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (\REGE|GEN_REG:17:REG_INST|Q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y11_N2
\REGE|MUX_D|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux7~2_combout\ & ((\REGE|GEN_REG:29:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~2_combout\ & (\REGE|GEN_REG:25:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:25:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:29:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~2_combout\,
	combout => \REGE|MUX_D|Mux7~3_combout\);

-- Location: FF_X23_Y14_N25
\REGE|GEN_REG:20:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:20:REG_INST|Q_aux\(0));

-- Location: FF_X24_Y12_N3
\REGE|GEN_REG:28:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:28:REG_INST|Q_aux\(0));

-- Location: FF_X23_Y14_N11
\REGE|GEN_REG:16:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:16:REG_INST|Q_aux\(0));

-- Location: FF_X24_Y12_N17
\REGE|GEN_REG:24:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:24:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X24_Y12_N16
\REGE|MUX_D|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~4_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(0)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:16:REG_INST|Q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:16:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:24:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux7~4_combout\);

-- Location: LCCOMB_X24_Y12_N2
\REGE|MUX_D|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~5_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux7~4_combout\ & ((\REGE|GEN_REG:28:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~4_combout\ & (\REGE|GEN_REG:20:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:20:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:28:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~4_combout\,
	combout => \REGE|MUX_D|Mux7~5_combout\);

-- Location: LCCOMB_X24_Y12_N14
\REGE|MUX_D|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~6_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (\INSTR_DECODER|Mux9~0_combout\)) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & (\REGE|MUX_D|Mux7~3_combout\)) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- ((\REGE|MUX_D|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux7~3_combout\,
	datad => \REGE|MUX_D|Mux7~5_combout\,
	combout => \REGE|MUX_D|Mux7~6_combout\);

-- Location: FF_X22_Y10_N25
\REGE|GEN_REG:27:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(0));

-- Location: FF_X23_Y10_N3
\REGE|GEN_REG:31:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:31:REG_INST|Q_aux\(0));

-- Location: FF_X23_Y10_N13
\REGE|GEN_REG:23:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(0));

-- Location: FF_X22_Y10_N3
\REGE|GEN_REG:19:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:19:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X23_Y10_N12
\REGE|MUX_D|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~7_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\) # ((\REGE|GEN_REG:23:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux7~1_combout\ & (!\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:19:REG_INST|Q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(0),
	datad => \REGE|GEN_REG:19:REG_INST|Q_aux\(0),
	combout => \REGE|MUX_D|Mux7~7_combout\);

-- Location: LCCOMB_X23_Y10_N2
\REGE|MUX_D|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~8_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux7~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~7_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~7_combout\,
	combout => \REGE|MUX_D|Mux7~8_combout\);

-- Location: FF_X23_Y12_N1
\REGE|GEN_REG:22:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(0));

-- Location: FF_X23_Y12_N31
\REGE|GEN_REG:30:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[30]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:30:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X24_Y16_N28
\REGE|GEN_REG:26:REG_INST|Q_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:26:REG_INST|Q_aux[0]~feeder_combout\ = \dato_I_aux[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dato_I_aux[0]~1_combout\,
	combout => \REGE|GEN_REG:26:REG_INST|Q_aux[0]~feeder_combout\);

-- Location: FF_X24_Y16_N29
\REGE|GEN_REG:26:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:26:REG_INST|Q_aux[0]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:26:REG_INST|Q_aux\(0));

-- Location: FF_X24_Y16_N31
\REGE|GEN_REG:18:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[18]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:18:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X23_Y16_N30
\REGE|MUX_D|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~0_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:26:REG_INST|Q_aux\(0)) # ((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & (((\REGE|GEN_REG:18:REG_INST|Q_aux\(0) & !\INSTR_DECODER|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y12_N30
\REGE|MUX_D|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~1_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux7~0_combout\ & ((\REGE|GEN_REG:30:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~0_combout\ & (\REGE|GEN_REG:22:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:22:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:30:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~0_combout\,
	combout => \REGE|MUX_D|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y12_N0
\REGE|MUX_D|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~9_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux7~6_combout\ & (\REGE|MUX_D|Mux7~8_combout\)) # (!\REGE|MUX_D|Mux7~6_combout\ & ((\REGE|MUX_D|Mux7~1_combout\))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|MUX_D|Mux7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|MUX_D|Mux7~6_combout\,
	datac => \REGE|MUX_D|Mux7~8_combout\,
	datad => \REGE|MUX_D|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux7~9_combout\);

-- Location: FF_X24_Y9_N17
\REGE|GEN_REG:13:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[13]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:13:REG_INST|Q_aux\(0));

-- Location: FF_X25_Y10_N9
\REGE|GEN_REG:15:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:15:REG_INST|Q_aux\(0));

-- Location: FF_X24_Y9_N31
\REGE|GEN_REG:12:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:12:REG_INST|Q_aux\(0));

-- Location: FF_X23_Y9_N29
\REGE|GEN_REG:14:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X23_Y9_N28
\REGE|MUX_D|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~17_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|GEN_REG:14:REG_INST|Q_aux\(0)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|GEN_REG:12:REG_INST|Q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:12:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:14:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux7~17_combout\);

-- Location: LCCOMB_X24_Y12_N24
\REGE|MUX_D|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~18_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux7~17_combout\ & ((\REGE|GEN_REG:15:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~17_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:15:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~17_combout\,
	combout => \REGE|MUX_D|Mux7~18_combout\);

-- Location: FF_X24_Y10_N13
\REGE|GEN_REG:10:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:10:REG_INST|Q_aux\(0));

-- Location: FF_X24_Y10_N7
\REGE|GEN_REG:11:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:11:REG_INST|Q_aux\(0));

-- Location: FF_X24_Y13_N27
\REGE|GEN_REG:8:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:8:REG_INST|Q_aux\(0));

-- Location: FF_X24_Y13_N21
\REGE|GEN_REG:9:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:9:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X24_Y13_N20
\REGE|MUX_D|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~10_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:9:REG_INST|Q_aux\(0)) # (\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (\REGE|GEN_REG:8:REG_INST|Q_aux\(0) & ((!\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:8:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:9:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux7~10_combout\);

-- Location: LCCOMB_X24_Y10_N6
\REGE|MUX_D|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~11_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux7~10_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~10_combout\ & (\REGE|GEN_REG:10:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:10:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:11:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~10_combout\,
	combout => \REGE|MUX_D|Mux7~11_combout\);

-- Location: FF_X26_Y10_N17
\REGE|GEN_REG:5:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:5:REG_INST|Q_aux\(0));

-- Location: FF_X26_Y9_N23
\REGE|GEN_REG:7:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:7:REG_INST|Q_aux\(0));

-- Location: FF_X26_Y10_N11
\REGE|GEN_REG:4:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:4:REG_INST|Q_aux\(0));

-- Location: FF_X26_Y9_N29
\REGE|GEN_REG:6:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:6:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X26_Y9_N28
\REGE|MUX_D|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~12_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\REGE|GEN_REG:6:REG_INST|Q_aux\(0)) # (\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:4:REG_INST|Q_aux\(0) & ((!\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:4:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:6:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux7~12_combout\);

-- Location: LCCOMB_X26_Y9_N22
\REGE|MUX_D|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux7~12_combout\ & ((\REGE|GEN_REG:7:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~12_combout\ & (\REGE|GEN_REG:5:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:7:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~12_combout\,
	combout => \REGE|MUX_D|Mux7~13_combout\);

-- Location: LCCOMB_X25_Y12_N24
\REGE|GEN_REG:2:REG_INST|Q_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:2:REG_INST|Q_aux[0]~feeder_combout\ = \dato_I_aux[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[0]~1_combout\,
	combout => \REGE|GEN_REG:2:REG_INST|Q_aux[0]~feeder_combout\);

-- Location: FF_X25_Y12_N25
\REGE|GEN_REG:2:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:2:REG_INST|Q_aux[0]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:2:REG_INST|Q_aux\(0));

-- Location: FF_X25_Y15_N7
\REGE|GEN_REG:3:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:3:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X25_Y12_N18
\REGE|GEN_REG:0:REG_INST|Q_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|GEN_REG:0:REG_INST|Q_aux[0]~feeder_combout\ = \dato_I_aux[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dato_I_aux[0]~1_combout\,
	combout => \REGE|GEN_REG:0:REG_INST|Q_aux[0]~feeder_combout\);

-- Location: FF_X25_Y12_N19
\REGE|GEN_REG:0:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|GEN_REG:0:REG_INST|Q_aux[0]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \REGE|DECODIFICADOR|O[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:0:REG_INST|Q_aux\(0));

-- Location: FF_X25_Y15_N13
\REGE|GEN_REG:1:REG_INST|Q_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[0]~1_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:1:REG_INST|Q_aux\(0));

-- Location: LCCOMB_X25_Y15_N12
\REGE|MUX_D|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~14_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(0)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|GEN_REG:0:REG_INST|Q_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:0:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:1:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux7~14_combout\);

-- Location: LCCOMB_X25_Y15_N6
\REGE|MUX_D|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~15_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux7~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(0)))) # (!\REGE|MUX_D|Mux7~14_combout\ & (\REGE|GEN_REG:2:REG_INST|Q_aux\(0))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:2:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:3:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_D|Mux7~14_combout\,
	combout => \REGE|MUX_D|Mux7~15_combout\);

-- Location: LCCOMB_X24_Y12_N18
\REGE|MUX_D|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~16_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (\INSTR_DECODER|Mux7~1_combout\)) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & (\REGE|MUX_D|Mux7~13_combout\)) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- ((\REGE|MUX_D|Mux7~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|MUX_D|Mux7~13_combout\,
	datad => \REGE|MUX_D|Mux7~15_combout\,
	combout => \REGE|MUX_D|Mux7~16_combout\);

-- Location: LCCOMB_X24_Y12_N30
\REGE|MUX_D|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~19_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux7~16_combout\ & (\REGE|MUX_D|Mux7~18_combout\)) # (!\REGE|MUX_D|Mux7~16_combout\ & ((\REGE|MUX_D|Mux7~11_combout\))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|MUX_D|Mux7~18_combout\,
	datac => \REGE|MUX_D|Mux7~11_combout\,
	datad => \REGE|MUX_D|Mux7~16_combout\,
	combout => \REGE|MUX_D|Mux7~19_combout\);

-- Location: LCCOMB_X25_Y12_N20
\REGE|MUX_D|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux7~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux7~9_combout\)) # (!\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux7~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux7~9_combout\,
	datad => \REGE|MUX_D|Mux7~19_combout\,
	combout => \REGE|MUX_D|Mux7~20_combout\);

-- Location: LCCOMB_X25_Y12_N6
\ARITMETHIC_LOGIC_UNIT|F_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|F_aux~0_combout\ = \REGE|MUX_D|Mux6~20_combout\ $ (((\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux6~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux6~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux6~19_combout\,
	datab => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux6~9_combout\,
	datad => \REGE|MUX_D|Mux6~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|F_aux~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\ARITMETHIC_LOGIC_UNIT|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux7~0_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & (((\INSTR_DECODER|Mux16~0_combout\)))) # (!\INSTR_DECODER|Mux17~4_combout\ & ((\INSTR_DECODER|Mux16~0_combout\ & (\REGE|MUX_D|Mux7~20_combout\)) # 
-- (!\INSTR_DECODER|Mux16~0_combout\ & ((\ARITMETHIC_LOGIC_UNIT|F_aux~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_D|Mux7~20_combout\,
	datac => \INSTR_DECODER|Mux16~0_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|F_aux~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\ARITMETHIC_LOGIC_UNIT|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux7~1_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux7~0_combout\ & ((\REGE|MUX_D|Mux5~20_combout\))) # (!\ARITMETHIC_LOGIC_UNIT|Mux7~0_combout\ & (!\REGE|MUX_D|Mux6~20_combout\)))) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_D|Mux6~20_combout\,
	datac => \REGE|MUX_D|Mux5~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux7~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y14_N12
\ARITMETHIC_LOGIC_UNIT|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~2_combout\ = (\REGE|MUX_D|Mux6~20_combout\ & ((\REGE|MUX_R|Mux6~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add1~1\)) # (!\REGE|MUX_R|Mux6~20_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add1~1\ & VCC)))) # (!\REGE|MUX_D|Mux6~20_combout\ & 
-- ((\REGE|MUX_R|Mux6~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add1~1\) # (GND))) # (!\REGE|MUX_R|Mux6~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add1~1\))))
-- \ARITMETHIC_LOGIC_UNIT|Add1~3\ = CARRY((\REGE|MUX_D|Mux6~20_combout\ & (\REGE|MUX_R|Mux6~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add1~1\)) # (!\REGE|MUX_D|Mux6~20_combout\ & ((\REGE|MUX_R|Mux6~20_combout\) # (!\ARITMETHIC_LOGIC_UNIT|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux6~20_combout\,
	datab => \REGE|MUX_R|Mux6~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add1~1\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~2_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add1~3\);

-- Location: LCCOMB_X25_Y14_N12
\ARITMETHIC_LOGIC_UNIT|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~2_combout\ = (\REGE|MUX_R|Mux6~20_combout\ & ((\REGE|MUX_D|Mux6~20_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add0~1\ & VCC)) # (!\REGE|MUX_D|Mux6~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add0~1\)))) # (!\REGE|MUX_R|Mux6~20_combout\ & 
-- ((\REGE|MUX_D|Mux6~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add0~1\)) # (!\REGE|MUX_D|Mux6~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add0~1\) # (GND)))))
-- \ARITMETHIC_LOGIC_UNIT|Add0~3\ = CARRY((\REGE|MUX_R|Mux6~20_combout\ & (!\REGE|MUX_D|Mux6~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add0~1\)) # (!\REGE|MUX_R|Mux6~20_combout\ & ((!\ARITMETHIC_LOGIC_UNIT|Add0~1\) # (!\REGE|MUX_D|Mux6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux6~20_combout\,
	datab => \REGE|MUX_D|Mux6~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add0~1\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~2_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add0~3\);

-- Location: LCCOMB_X25_Y14_N2
\ARITMETHIC_LOGIC_UNIT|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux7~2_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & (\INSTR_DECODER|Mux17~4_combout\)) # (!\INSTR_DECODER|Mux16~0_combout\ & ((\INSTR_DECODER|Mux17~4_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add1~2_combout\)) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \INSTR_DECODER|Mux17~4_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add1~2_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Add0~2_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y14_N4
\ARITMETHIC_LOGIC_UNIT|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux7~3_combout\ = (\REGE|MUX_R|Mux6~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux7~2_combout\) # ((\INSTR_DECODER|Mux16~0_combout\ & \REGE|MUX_D|Mux6~20_combout\)))) # (!\REGE|MUX_R|Mux6~20_combout\ & 
-- (\ARITMETHIC_LOGIC_UNIT|Mux7~2_combout\ & ((\REGE|MUX_D|Mux6~20_combout\) # (!\INSTR_DECODER|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux6~20_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \REGE|MUX_D|Mux6~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux7~2_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux7~3_combout\);

-- Location: LCCOMB_X24_Y11_N0
\ARITMETHIC_LOGIC_UNIT|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux7~4_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux7~1_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux7~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux7~3_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux7~4_combout\);

-- Location: LCCOMB_X24_Y11_N24
\dato_I_aux[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[1]~3_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (\INSTR_DECODER|Mux18~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux7~4_combout\)))) # (!\INSTR_DECODER|Mux19~1_combout\ & (((\dato_I_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux19~1_combout\,
	datab => \INSTR_DECODER|Mux18~1_combout\,
	datac => \dato_I_aux[1]~2_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux7~4_combout\,
	combout => \dato_I_aux[1]~3_combout\);

-- Location: FF_X23_Y10_N9
\REGE|GEN_REG:23:REG_INST|Q_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[1]~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(1));

-- Location: LCCOMB_X22_Y10_N20
\REGE|MUX_D|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~7_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:27:REG_INST|Q_aux\(1)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:19:REG_INST|Q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:19:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux6~7_combout\);

-- Location: LCCOMB_X23_Y10_N10
\REGE|MUX_D|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~8_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux6~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_D|Mux6~7_combout\ & (\REGE|GEN_REG:23:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:23:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_D|Mux6~7_combout\,
	combout => \REGE|MUX_D|Mux6~8_combout\);

-- Location: LCCOMB_X23_Y14_N12
\REGE|MUX_D|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~4_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(1)))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (\REGE|GEN_REG:16:REG_INST|Q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:16:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux6~4_combout\);

-- Location: LCCOMB_X24_Y12_N26
\REGE|MUX_D|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~5_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux6~4_combout\ & ((\REGE|GEN_REG:28:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_D|Mux6~4_combout\ & (\REGE|GEN_REG:24:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:24:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:28:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_D|Mux6~4_combout\,
	combout => \REGE|MUX_D|Mux6~5_combout\);

-- Location: LCCOMB_X23_Y12_N24
\REGE|MUX_D|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~2_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\REGE|GEN_REG:22:REG_INST|Q_aux\(1)) # (\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (\REGE|GEN_REG:18:REG_INST|Q_aux\(1) & ((!\INSTR_DECODER|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:18:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y12_N14
\REGE|MUX_D|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux6~2_combout\ & ((\REGE|GEN_REG:30:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_D|Mux6~2_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:30:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_D|Mux6~2_combout\,
	combout => \REGE|MUX_D|Mux6~3_combout\);

-- Location: LCCOMB_X24_Y12_N4
\REGE|MUX_D|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~6_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\) # ((\REGE|MUX_D|Mux6~3_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (!\INSTR_DECODER|Mux9~0_combout\ & (\REGE|MUX_D|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux6~5_combout\,
	datad => \REGE|MUX_D|Mux6~3_combout\,
	combout => \REGE|MUX_D|Mux6~6_combout\);

-- Location: LCCOMB_X22_Y11_N12
\REGE|MUX_D|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~0_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(1)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:17:REG_INST|Q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:25:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\REGE|MUX_D|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~1_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux6~0_combout\ & ((\REGE|GEN_REG:29:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_D|Mux6~0_combout\ & (\REGE|GEN_REG:21:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:21:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:29:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_D|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y12_N6
\REGE|MUX_D|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~9_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux6~6_combout\ & (\REGE|MUX_D|Mux6~8_combout\)) # (!\REGE|MUX_D|Mux6~6_combout\ & ((\REGE|MUX_D|Mux6~1_combout\))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|MUX_D|Mux6~8_combout\,
	datac => \REGE|MUX_D|Mux6~6_combout\,
	datad => \REGE|MUX_D|Mux6~1_combout\,
	combout => \REGE|MUX_D|Mux6~9_combout\);

-- Location: LCCOMB_X24_Y9_N8
\REGE|MUX_D|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~17_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(1))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- ((\REGE|GEN_REG:12:REG_INST|Q_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux6~17_combout\);

-- Location: LCCOMB_X24_Y9_N18
\REGE|MUX_D|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~18_combout\ = (\REGE|MUX_D|Mux6~17_combout\ & ((\REGE|GEN_REG:15:REG_INST|Q_aux\(1)) # ((!\INSTR_DECODER|Mux8~0_combout\)))) # (!\REGE|MUX_D|Mux6~17_combout\ & (((\REGE|GEN_REG:14:REG_INST|Q_aux\(1) & \INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:15:REG_INST|Q_aux\(1),
	datab => \REGE|GEN_REG:14:REG_INST|Q_aux\(1),
	datac => \REGE|MUX_D|Mux6~17_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux6~18_combout\);

-- Location: LCCOMB_X26_Y10_N12
\REGE|MUX_D|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~10_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(1)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|GEN_REG:4:REG_INST|Q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:4:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:5:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux6~10_combout\);

-- Location: LCCOMB_X26_Y9_N10
\REGE|MUX_D|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~11_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux6~10_combout\ & ((\REGE|GEN_REG:7:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_D|Mux6~10_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:6:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:7:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_D|Mux6~10_combout\,
	combout => \REGE|MUX_D|Mux6~11_combout\);

-- Location: LCCOMB_X25_Y9_N16
\REGE|MUX_D|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~14_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\REGE|GEN_REG:2:REG_INST|Q_aux\(1)) # (\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:0:REG_INST|Q_aux\(1) & ((!\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:0:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:2:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux6~14_combout\);

-- Location: LCCOMB_X25_Y9_N26
\REGE|MUX_D|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~15_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux6~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_D|Mux6~14_combout\ & (\REGE|GEN_REG:1:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:1:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:3:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_D|Mux6~14_combout\,
	combout => \REGE|MUX_D|Mux6~15_combout\);

-- Location: LCCOMB_X24_Y10_N0
\REGE|MUX_D|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~12_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(1)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|GEN_REG:8:REG_INST|Q_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:8:REG_INST|Q_aux\(1),
	datac => \REGE|GEN_REG:10:REG_INST|Q_aux\(1),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux6~12_combout\);

-- Location: LCCOMB_X24_Y10_N2
\REGE|MUX_D|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux6~12_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(1)))) # (!\REGE|MUX_D|Mux6~12_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(1))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(1),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:11:REG_INST|Q_aux\(1),
	datad => \REGE|MUX_D|Mux6~12_combout\,
	combout => \REGE|MUX_D|Mux6~13_combout\);

-- Location: LCCOMB_X25_Y9_N6
\REGE|MUX_D|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~16_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (\INSTR_DECODER|Mux6~0_combout\)) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux6~13_combout\))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|MUX_D|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|MUX_D|Mux6~15_combout\,
	datad => \REGE|MUX_D|Mux6~13_combout\,
	combout => \REGE|MUX_D|Mux6~16_combout\);

-- Location: LCCOMB_X25_Y12_N2
\REGE|MUX_D|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~19_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux6~16_combout\ & (\REGE|MUX_D|Mux6~18_combout\)) # (!\REGE|MUX_D|Mux6~16_combout\ & ((\REGE|MUX_D|Mux6~11_combout\))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux6~18_combout\,
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|MUX_D|Mux6~11_combout\,
	datad => \REGE|MUX_D|Mux6~16_combout\,
	combout => \REGE|MUX_D|Mux6~19_combout\);

-- Location: LCCOMB_X25_Y12_N0
\REGE|MUX_D|Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux6~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux6~9_combout\)) # (!\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux6~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux6~9_combout\,
	datad => \REGE|MUX_D|Mux6~19_combout\,
	combout => \REGE|MUX_D|Mux6~20_combout\);

-- Location: LCCOMB_X26_Y10_N28
\ARITMETHIC_LOGIC_UNIT|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux6~0_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & ((\INSTR_DECODER|Mux17~4_combout\) # ((\REGE|MUX_D|Mux6~20_combout\)))) # (!\INSTR_DECODER|Mux16~0_combout\ & (!\INSTR_DECODER|Mux17~4_combout\ & 
-- (\ARITMETHIC_LOGIC_UNIT|F_aux~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \INSTR_DECODER|Mux17~4_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|F_aux~1_combout\,
	datad => \REGE|MUX_D|Mux6~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y10_N30
\ARITMETHIC_LOGIC_UNIT|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux6~1_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux6~0_combout\ & (\REGE|MUX_D|Mux4~20_combout\)) # (!\ARITMETHIC_LOGIC_UNIT|Mux6~0_combout\ & ((!\REGE|MUX_D|Mux5~20_combout\))))) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux4~20_combout\,
	datab => \REGE|MUX_D|Mux5~20_combout\,
	datac => \INSTR_DECODER|Mux17~4_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux6~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y14_N14
\ARITMETHIC_LOGIC_UNIT|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~4_combout\ = ((\REGE|MUX_R|Mux5~20_combout\ $ (\REGE|MUX_D|Mux5~20_combout\ $ (\ARITMETHIC_LOGIC_UNIT|Add1~3\)))) # (GND)
-- \ARITMETHIC_LOGIC_UNIT|Add1~5\ = CARRY((\REGE|MUX_R|Mux5~20_combout\ & (\REGE|MUX_D|Mux5~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add1~3\)) # (!\REGE|MUX_R|Mux5~20_combout\ & ((\REGE|MUX_D|Mux5~20_combout\) # (!\ARITMETHIC_LOGIC_UNIT|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux5~20_combout\,
	datab => \REGE|MUX_D|Mux5~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add1~3\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~4_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add1~5\);

-- Location: LCCOMB_X25_Y14_N14
\ARITMETHIC_LOGIC_UNIT|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~4_combout\ = ((\REGE|MUX_R|Mux5~20_combout\ $ (\REGE|MUX_D|Mux5~20_combout\ $ (!\ARITMETHIC_LOGIC_UNIT|Add0~3\)))) # (GND)
-- \ARITMETHIC_LOGIC_UNIT|Add0~5\ = CARRY((\REGE|MUX_R|Mux5~20_combout\ & ((\REGE|MUX_D|Mux5~20_combout\) # (!\ARITMETHIC_LOGIC_UNIT|Add0~3\))) # (!\REGE|MUX_R|Mux5~20_combout\ & (\REGE|MUX_D|Mux5~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux5~20_combout\,
	datab => \REGE|MUX_D|Mux5~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add0~3\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~4_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add0~5\);

-- Location: LCCOMB_X25_Y10_N2
\ARITMETHIC_LOGIC_UNIT|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux6~2_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\INSTR_DECODER|Mux16~0_combout\) # ((\ARITMETHIC_LOGIC_UNIT|Add1~4_combout\)))) # (!\INSTR_DECODER|Mux17~4_combout\ & (!\INSTR_DECODER|Mux16~0_combout\ & 
-- ((\ARITMETHIC_LOGIC_UNIT|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add1~4_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Add0~4_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux6~2_combout\);

-- Location: LCCOMB_X25_Y10_N12
\ARITMETHIC_LOGIC_UNIT|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux6~3_combout\ = (\REGE|MUX_R|Mux5~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux6~2_combout\) # ((\REGE|MUX_D|Mux5~20_combout\ & \INSTR_DECODER|Mux16~0_combout\)))) # (!\REGE|MUX_R|Mux5~20_combout\ & 
-- (\ARITMETHIC_LOGIC_UNIT|Mux6~2_combout\ & ((\REGE|MUX_D|Mux5~20_combout\) # (!\INSTR_DECODER|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux5~20_combout\,
	datab => \REGE|MUX_D|Mux5~20_combout\,
	datac => \INSTR_DECODER|Mux16~0_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux6~2_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux6~3_combout\);

-- Location: LCCOMB_X25_Y10_N10
\ARITMETHIC_LOGIC_UNIT|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux6~4_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux6~1_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux6~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux6~3_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux6~4_combout\);

-- Location: LCCOMB_X25_Y10_N14
\dato_I_aux[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[2]~5_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (\INSTR_DECODER|Mux18~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux6~4_combout\)))) # (!\INSTR_DECODER|Mux19~1_combout\ & (((\dato_I_aux[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux18~1_combout\,
	datab => \dato_I_aux[2]~4_combout\,
	datac => \INSTR_DECODER|Mux19~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux6~4_combout\,
	combout => \dato_I_aux[2]~5_combout\);

-- Location: FF_X22_Y10_N5
\REGE|GEN_REG:27:REG_INST|Q_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[2]~5_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[27]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:27:REG_INST|Q_aux\(2));

-- Location: LCCOMB_X23_Y10_N0
\REGE|MUX_D|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~7_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\) # ((\REGE|GEN_REG:23:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux7~1_combout\ & (!\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:19:REG_INST|Q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(2),
	datad => \REGE|GEN_REG:19:REG_INST|Q_aux\(2),
	combout => \REGE|MUX_D|Mux5~7_combout\);

-- Location: LCCOMB_X23_Y10_N30
\REGE|MUX_D|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~8_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux5~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(2)))) # (!\REGE|MUX_D|Mux5~7_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_D|Mux5~7_combout\,
	combout => \REGE|MUX_D|Mux5~8_combout\);

-- Location: LCCOMB_X23_Y16_N24
\REGE|MUX_D|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~0_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(2))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:26:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\REGE|MUX_D|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~1_combout\ = (\REGE|MUX_D|Mux5~0_combout\ & (((\REGE|GEN_REG:30:REG_INST|Q_aux\(2))) # (!\INSTR_DECODER|Mux7~1_combout\))) # (!\REGE|MUX_D|Mux5~0_combout\ & (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux5~0_combout\,
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:30:REG_INST|Q_aux\(2),
	datad => \REGE|GEN_REG:22:REG_INST|Q_aux\(2),
	combout => \REGE|MUX_D|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y12_N28
\REGE|MUX_D|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~4_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(2)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:16:REG_INST|Q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:16:REG_INST|Q_aux\(2),
	datab => \REGE|GEN_REG:24:REG_INST|Q_aux\(2),
	datac => \INSTR_DECODER|Mux7~1_combout\,
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux5~4_combout\);

-- Location: LCCOMB_X24_Y12_N22
\REGE|MUX_D|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~5_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux5~4_combout\ & ((\REGE|GEN_REG:28:REG_INST|Q_aux\(2)))) # (!\REGE|MUX_D|Mux5~4_combout\ & (\REGE|GEN_REG:20:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:20:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:28:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_D|Mux5~4_combout\,
	combout => \REGE|MUX_D|Mux5~5_combout\);

-- Location: LCCOMB_X23_Y11_N20
\REGE|MUX_D|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~2_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(2)))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (\REGE|GEN_REG:17:REG_INST|Q_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y11_N22
\REGE|MUX_D|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux5~2_combout\ & ((\REGE|GEN_REG:29:REG_INST|Q_aux\(2)))) # (!\REGE|MUX_D|Mux5~2_combout\ & (\REGE|GEN_REG:25:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:25:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:29:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_D|Mux5~2_combout\,
	combout => \REGE|MUX_D|Mux5~3_combout\);

-- Location: LCCOMB_X24_Y12_N10
\REGE|MUX_D|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~6_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (\INSTR_DECODER|Mux9~0_combout\)) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux5~3_combout\))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|MUX_D|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux5~5_combout\,
	datad => \REGE|MUX_D|Mux5~3_combout\,
	combout => \REGE|MUX_D|Mux5~6_combout\);

-- Location: LCCOMB_X26_Y10_N14
\REGE|MUX_D|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~9_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux5~6_combout\ & (\REGE|MUX_D|Mux5~8_combout\)) # (!\REGE|MUX_D|Mux5~6_combout\ & ((\REGE|MUX_D|Mux5~1_combout\))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux5~8_combout\,
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|MUX_D|Mux5~1_combout\,
	datad => \REGE|MUX_D|Mux5~6_combout\,
	combout => \REGE|MUX_D|Mux5~9_combout\);

-- Location: LCCOMB_X25_Y9_N2
\REGE|MUX_D|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~17_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\REGE|GEN_REG:14:REG_INST|Q_aux\(2)) # (\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:12:REG_INST|Q_aux\(2) & 
-- ((!\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:12:REG_INST|Q_aux\(2),
	datab => \REGE|GEN_REG:14:REG_INST|Q_aux\(2),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux5~17_combout\);

-- Location: LCCOMB_X25_Y9_N4
\REGE|MUX_D|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~18_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux5~17_combout\ & (\REGE|GEN_REG:15:REG_INST|Q_aux\(2))) # (!\REGE|MUX_D|Mux5~17_combout\ & ((\REGE|GEN_REG:13:REG_INST|Q_aux\(2)))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:15:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:13:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_D|Mux5~17_combout\,
	combout => \REGE|MUX_D|Mux5~18_combout\);

-- Location: LCCOMB_X24_Y13_N8
\REGE|MUX_D|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~10_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:9:REG_INST|Q_aux\(2)) # (\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (\REGE|GEN_REG:8:REG_INST|Q_aux\(2) & ((!\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:8:REG_INST|Q_aux\(2),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:9:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux5~10_combout\);

-- Location: LCCOMB_X24_Y10_N18
\REGE|MUX_D|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~11_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux5~10_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(2)))) # (!\REGE|MUX_D|Mux5~10_combout\ & (\REGE|GEN_REG:10:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:10:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:11:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_D|Mux5~10_combout\,
	combout => \REGE|MUX_D|Mux5~11_combout\);

-- Location: LCCOMB_X26_Y12_N22
\REGE|MUX_D|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~14_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:1:REG_INST|Q_aux\(2)) # (\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (\REGE|GEN_REG:0:REG_INST|Q_aux\(2) & ((!\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:0:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:1:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux5~14_combout\);

-- Location: LCCOMB_X25_Y9_N14
\REGE|MUX_D|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~15_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux5~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(2)))) # (!\REGE|MUX_D|Mux5~14_combout\ & (\REGE|GEN_REG:2:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:3:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_D|Mux5~14_combout\,
	combout => \REGE|MUX_D|Mux5~15_combout\);

-- Location: LCCOMB_X26_Y9_N24
\REGE|MUX_D|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~12_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\REGE|GEN_REG:6:REG_INST|Q_aux\(2)) # (\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:4:REG_INST|Q_aux\(2) & ((!\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:4:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:6:REG_INST|Q_aux\(2),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux5~12_combout\);

-- Location: LCCOMB_X26_Y9_N2
\REGE|MUX_D|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux5~12_combout\ & ((\REGE|GEN_REG:7:REG_INST|Q_aux\(2)))) # (!\REGE|MUX_D|Mux5~12_combout\ & (\REGE|GEN_REG:5:REG_INST|Q_aux\(2))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(2),
	datac => \REGE|GEN_REG:7:REG_INST|Q_aux\(2),
	datad => \REGE|MUX_D|Mux5~12_combout\,
	combout => \REGE|MUX_D|Mux5~13_combout\);

-- Location: LCCOMB_X25_Y9_N24
\REGE|MUX_D|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~16_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\) # ((\REGE|MUX_D|Mux5~13_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (!\INSTR_DECODER|Mux6~0_combout\ & (\REGE|MUX_D|Mux5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|MUX_D|Mux5~15_combout\,
	datad => \REGE|MUX_D|Mux5~13_combout\,
	combout => \REGE|MUX_D|Mux5~16_combout\);

-- Location: LCCOMB_X25_Y9_N18
\REGE|MUX_D|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~19_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux5~16_combout\ & (\REGE|MUX_D|Mux5~18_combout\)) # (!\REGE|MUX_D|Mux5~16_combout\ & ((\REGE|MUX_D|Mux5~11_combout\))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|MUX_D|Mux5~18_combout\,
	datac => \REGE|MUX_D|Mux5~11_combout\,
	datad => \REGE|MUX_D|Mux5~16_combout\,
	combout => \REGE|MUX_D|Mux5~19_combout\);

-- Location: LCCOMB_X26_Y10_N24
\REGE|MUX_D|Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux5~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux5~9_combout\)) # (!\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux5~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux5~9_combout\,
	datad => \REGE|MUX_D|Mux5~19_combout\,
	combout => \REGE|MUX_D|Mux5~20_combout\);

-- Location: LCCOMB_X26_Y12_N28
\ARITMETHIC_LOGIC_UNIT|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux5~0_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & ((\INSTR_DECODER|Mux17~4_combout\) # ((\REGE|MUX_D|Mux5~20_combout\)))) # (!\INSTR_DECODER|Mux16~0_combout\ & (!\INSTR_DECODER|Mux17~4_combout\ & 
-- (\ARITMETHIC_LOGIC_UNIT|F_aux~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \INSTR_DECODER|Mux17~4_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|F_aux~2_combout\,
	datad => \REGE|MUX_D|Mux5~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y12_N6
\ARITMETHIC_LOGIC_UNIT|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux5~1_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux5~0_combout\ & ((\REGE|MUX_D|Mux3~20_combout\))) # (!\ARITMETHIC_LOGIC_UNIT|Mux5~0_combout\ & (!\REGE|MUX_D|Mux4~20_combout\)))) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_D|Mux4~20_combout\,
	datac => \REGE|MUX_D|Mux3~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux5~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y14_N16
\ARITMETHIC_LOGIC_UNIT|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~6_combout\ = (\REGE|MUX_D|Mux4~20_combout\ & ((\REGE|MUX_R|Mux4~20_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add0~5\ & VCC)) # (!\REGE|MUX_R|Mux4~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add0~5\)))) # (!\REGE|MUX_D|Mux4~20_combout\ & 
-- ((\REGE|MUX_R|Mux4~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add0~5\)) # (!\REGE|MUX_R|Mux4~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add0~5\) # (GND)))))
-- \ARITMETHIC_LOGIC_UNIT|Add0~7\ = CARRY((\REGE|MUX_D|Mux4~20_combout\ & (!\REGE|MUX_R|Mux4~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add0~5\)) # (!\REGE|MUX_D|Mux4~20_combout\ & ((!\ARITMETHIC_LOGIC_UNIT|Add0~5\) # (!\REGE|MUX_R|Mux4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux4~20_combout\,
	datab => \REGE|MUX_R|Mux4~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add0~5\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~6_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add0~7\);

-- Location: LCCOMB_X26_Y14_N16
\ARITMETHIC_LOGIC_UNIT|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~6_combout\ = (\REGE|MUX_D|Mux4~20_combout\ & ((\REGE|MUX_R|Mux4~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add1~5\)) # (!\REGE|MUX_R|Mux4~20_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add1~5\ & VCC)))) # (!\REGE|MUX_D|Mux4~20_combout\ & 
-- ((\REGE|MUX_R|Mux4~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add1~5\) # (GND))) # (!\REGE|MUX_R|Mux4~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add1~5\))))
-- \ARITMETHIC_LOGIC_UNIT|Add1~7\ = CARRY((\REGE|MUX_D|Mux4~20_combout\ & (\REGE|MUX_R|Mux4~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add1~5\)) # (!\REGE|MUX_D|Mux4~20_combout\ & ((\REGE|MUX_R|Mux4~20_combout\) # (!\ARITMETHIC_LOGIC_UNIT|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux4~20_combout\,
	datab => \REGE|MUX_R|Mux4~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add1~5\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~6_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add1~7\);

-- Location: LCCOMB_X25_Y14_N6
\ARITMETHIC_LOGIC_UNIT|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux5~2_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & (((\INSTR_DECODER|Mux16~0_combout\) # (\ARITMETHIC_LOGIC_UNIT|Add1~6_combout\)))) # (!\INSTR_DECODER|Mux17~4_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add0~6_combout\ & 
-- (!\INSTR_DECODER|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \ARITMETHIC_LOGIC_UNIT|Add0~6_combout\,
	datac => \INSTR_DECODER|Mux16~0_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Add1~6_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux5~2_combout\);

-- Location: LCCOMB_X25_Y14_N28
\ARITMETHIC_LOGIC_UNIT|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux5~3_combout\ = (\REGE|MUX_D|Mux4~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux5~2_combout\) # ((\INSTR_DECODER|Mux16~0_combout\ & \REGE|MUX_R|Mux4~20_combout\)))) # (!\REGE|MUX_D|Mux4~20_combout\ & 
-- (\ARITMETHIC_LOGIC_UNIT|Mux5~2_combout\ & ((\REGE|MUX_R|Mux4~20_combout\) # (!\INSTR_DECODER|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux4~20_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \REGE|MUX_R|Mux4~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux5~2_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux5~3_combout\);

-- Location: LCCOMB_X25_Y14_N30
\ARITMETHIC_LOGIC_UNIT|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux5~4_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux5~1_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux5~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux5~3_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux5~4_combout\);

-- Location: LCCOMB_X26_Y14_N30
\dato_I_aux[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[3]~7_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (((\INSTR_DECODER|Mux18~1_combout\ & \ARITMETHIC_LOGIC_UNIT|Mux5~4_combout\)))) # (!\INSTR_DECODER|Mux19~1_combout\ & (\dato_I_aux[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato_I_aux[3]~6_combout\,
	datab => \INSTR_DECODER|Mux18~1_combout\,
	datac => \INSTR_DECODER|Mux19~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux5~4_combout\,
	combout => \dato_I_aux[3]~7_combout\);

-- Location: FF_X23_Y9_N25
\REGE|GEN_REG:14:REG_INST|Q_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[3]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[14]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:14:REG_INST|Q_aux\(3));

-- Location: LCCOMB_X25_Y9_N30
\REGE|MUX_D|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~17_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(3))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- ((\REGE|GEN_REG:12:REG_INST|Q_aux\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(3),
	datab => \REGE|GEN_REG:12:REG_INST|Q_aux\(3),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux4~17_combout\);

-- Location: LCCOMB_X25_Y9_N8
\REGE|MUX_D|Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~18_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux4~17_combout\ & ((\REGE|GEN_REG:15:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~17_combout\ & (\REGE|GEN_REG:14:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:14:REG_INST|Q_aux\(3),
	datab => \REGE|GEN_REG:15:REG_INST|Q_aux\(3),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \REGE|MUX_D|Mux4~17_combout\,
	combout => \REGE|MUX_D|Mux4~18_combout\);

-- Location: LCCOMB_X26_Y13_N28
\REGE|MUX_D|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~10_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(3)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|GEN_REG:4:REG_INST|Q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:4:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:5:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux4~10_combout\);

-- Location: LCCOMB_X26_Y9_N8
\REGE|MUX_D|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~11_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux4~10_combout\ & ((\REGE|GEN_REG:7:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~10_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:6:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:7:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_D|Mux4~10_combout\,
	combout => \REGE|MUX_D|Mux4~11_combout\);

-- Location: LCCOMB_X25_Y9_N28
\REGE|MUX_D|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~14_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\REGE|GEN_REG:2:REG_INST|Q_aux\(3)) # (\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:0:REG_INST|Q_aux\(3) & ((!\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:0:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:2:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux4~14_combout\);

-- Location: LCCOMB_X25_Y9_N22
\REGE|MUX_D|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~15_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux4~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~14_combout\ & (\REGE|GEN_REG:1:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:1:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:3:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_D|Mux4~14_combout\,
	combout => \REGE|MUX_D|Mux4~15_combout\);

-- Location: LCCOMB_X24_Y10_N24
\REGE|MUX_D|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~12_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(3)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|GEN_REG:8:REG_INST|Q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:8:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:10:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux4~12_combout\);

-- Location: LCCOMB_X24_Y10_N30
\REGE|MUX_D|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux4~12_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~12_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:9:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:11:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_D|Mux4~12_combout\,
	combout => \REGE|MUX_D|Mux4~13_combout\);

-- Location: LCCOMB_X25_Y9_N0
\REGE|MUX_D|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~16_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (\INSTR_DECODER|Mux6~0_combout\)) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux4~13_combout\))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|MUX_D|Mux4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|MUX_D|Mux4~15_combout\,
	datad => \REGE|MUX_D|Mux4~13_combout\,
	combout => \REGE|MUX_D|Mux4~16_combout\);

-- Location: LCCOMB_X25_Y9_N10
\REGE|MUX_D|Mux4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~19_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux4~16_combout\ & (\REGE|MUX_D|Mux4~18_combout\)) # (!\REGE|MUX_D|Mux4~16_combout\ & ((\REGE|MUX_D|Mux4~11_combout\))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|MUX_D|Mux4~18_combout\,
	datac => \REGE|MUX_D|Mux4~11_combout\,
	datad => \REGE|MUX_D|Mux4~16_combout\,
	combout => \REGE|MUX_D|Mux4~19_combout\);

-- Location: LCCOMB_X22_Y10_N8
\REGE|MUX_D|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~7_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:27:REG_INST|Q_aux\(3)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:19:REG_INST|Q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:19:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y10_N14
\REGE|MUX_D|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~8_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux4~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~7_combout\ & (\REGE|GEN_REG:23:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:23:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_D|Mux4~7_combout\,
	combout => \REGE|MUX_D|Mux4~8_combout\);

-- Location: LCCOMB_X22_Y11_N8
\REGE|MUX_D|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~0_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(3)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:17:REG_INST|Q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:25:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y11_N14
\REGE|MUX_D|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~1_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux4~0_combout\ & ((\REGE|GEN_REG:29:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~0_combout\ & (\REGE|GEN_REG:21:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:21:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:29:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_D|Mux4~0_combout\,
	combout => \REGE|MUX_D|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y12_N20
\REGE|MUX_D|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~2_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(3)))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (\REGE|GEN_REG:18:REG_INST|Q_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:18:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y12_N26
\REGE|MUX_D|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux4~2_combout\ & ((\REGE|GEN_REG:30:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~2_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:30:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_D|Mux4~2_combout\,
	combout => \REGE|MUX_D|Mux4~3_combout\);

-- Location: LCCOMB_X23_Y14_N28
\REGE|MUX_D|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~4_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\REGE|GEN_REG:20:REG_INST|Q_aux\(3)) # (\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (\REGE|GEN_REG:16:REG_INST|Q_aux\(3) & ((!\INSTR_DECODER|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:16:REG_INST|Q_aux\(3),
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(3),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux4~4_combout\);

-- Location: LCCOMB_X24_Y15_N18
\REGE|MUX_D|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~5_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux4~4_combout\ & ((\REGE|GEN_REG:28:REG_INST|Q_aux\(3)))) # (!\REGE|MUX_D|Mux4~4_combout\ & (\REGE|GEN_REG:24:REG_INST|Q_aux\(3))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:24:REG_INST|Q_aux\(3),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:28:REG_INST|Q_aux\(3),
	datad => \REGE|MUX_D|Mux4~4_combout\,
	combout => \REGE|MUX_D|Mux4~5_combout\);

-- Location: LCCOMB_X23_Y12_N10
\REGE|MUX_D|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~6_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\) # ((\REGE|MUX_D|Mux4~3_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (!\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux4~3_combout\,
	datad => \REGE|MUX_D|Mux4~5_combout\,
	combout => \REGE|MUX_D|Mux4~6_combout\);

-- Location: LCCOMB_X26_Y12_N2
\REGE|MUX_D|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~9_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux4~6_combout\ & (\REGE|MUX_D|Mux4~8_combout\)) # (!\REGE|MUX_D|Mux4~6_combout\ & ((\REGE|MUX_D|Mux4~1_combout\))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux4~8_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux4~1_combout\,
	datad => \REGE|MUX_D|Mux4~6_combout\,
	combout => \REGE|MUX_D|Mux4~9_combout\);

-- Location: LCCOMB_X26_Y12_N16
\REGE|MUX_D|Mux4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux4~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux4~9_combout\))) # (!\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux4~19_combout\,
	datad => \REGE|MUX_D|Mux4~9_combout\,
	combout => \REGE|MUX_D|Mux4~20_combout\);

-- Location: LCCOMB_X23_Y14_N0
\ARITMETHIC_LOGIC_UNIT|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux4~0_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & (\INSTR_DECODER|Mux16~0_combout\)) # (!\INSTR_DECODER|Mux17~4_combout\ & ((\INSTR_DECODER|Mux16~0_combout\ & ((\REGE|MUX_D|Mux4~20_combout\))) # (!\INSTR_DECODER|Mux16~0_combout\ 
-- & (\ARITMETHIC_LOGIC_UNIT|F_aux~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|F_aux~3_combout\,
	datad => \REGE|MUX_D|Mux4~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y14_N30
\ARITMETHIC_LOGIC_UNIT|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux4~1_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux4~0_combout\ & ((\REGE|MUX_D|Mux2~20_combout\))) # (!\ARITMETHIC_LOGIC_UNIT|Mux4~0_combout\ & (!\REGE|MUX_D|Mux3~20_combout\)))) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_D|Mux3~20_combout\,
	datac => \REGE|MUX_D|Mux2~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux4~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y14_N22
\ARITMETHIC_LOGIC_UNIT|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux4~2_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\REGE|MUX_R|Mux3~20_combout\) # ((\REGE|MUX_D|Mux3~20_combout\) # (!\INSTR_DECODER|Mux16~0_combout\)))) # (!\INSTR_DECODER|Mux17~4_combout\ & (\REGE|MUX_R|Mux3~20_combout\ & 
-- (\INSTR_DECODER|Mux16~0_combout\ & \REGE|MUX_D|Mux3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_R|Mux3~20_combout\,
	datac => \INSTR_DECODER|Mux16~0_combout\,
	datad => \REGE|MUX_D|Mux3~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux4~2_combout\);

-- Location: LCCOMB_X26_Y14_N18
\ARITMETHIC_LOGIC_UNIT|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~8_combout\ = ((\REGE|MUX_D|Mux3~20_combout\ $ (\REGE|MUX_R|Mux3~20_combout\ $ (\ARITMETHIC_LOGIC_UNIT|Add1~7\)))) # (GND)
-- \ARITMETHIC_LOGIC_UNIT|Add1~9\ = CARRY((\REGE|MUX_D|Mux3~20_combout\ & ((!\ARITMETHIC_LOGIC_UNIT|Add1~7\) # (!\REGE|MUX_R|Mux3~20_combout\))) # (!\REGE|MUX_D|Mux3~20_combout\ & (!\REGE|MUX_R|Mux3~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux3~20_combout\,
	datab => \REGE|MUX_R|Mux3~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add1~7\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~8_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add1~9\);

-- Location: LCCOMB_X25_Y14_N18
\ARITMETHIC_LOGIC_UNIT|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~8_combout\ = ((\REGE|MUX_D|Mux3~20_combout\ $ (\REGE|MUX_R|Mux3~20_combout\ $ (!\ARITMETHIC_LOGIC_UNIT|Add0~7\)))) # (GND)
-- \ARITMETHIC_LOGIC_UNIT|Add0~9\ = CARRY((\REGE|MUX_D|Mux3~20_combout\ & ((\REGE|MUX_R|Mux3~20_combout\) # (!\ARITMETHIC_LOGIC_UNIT|Add0~7\))) # (!\REGE|MUX_D|Mux3~20_combout\ & (\REGE|MUX_R|Mux3~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux3~20_combout\,
	datab => \REGE|MUX_R|Mux3~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add0~7\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~8_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add0~9\);

-- Location: LCCOMB_X24_Y14_N4
\ARITMETHIC_LOGIC_UNIT|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux4~3_combout\ = (\ARITMETHIC_LOGIC_UNIT|Mux4~2_combout\ & ((\INSTR_DECODER|Mux16~0_combout\) # ((\ARITMETHIC_LOGIC_UNIT|Add1~8_combout\)))) # (!\ARITMETHIC_LOGIC_UNIT|Mux4~2_combout\ & (!\INSTR_DECODER|Mux16~0_combout\ & 
-- ((\ARITMETHIC_LOGIC_UNIT|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ARITMETHIC_LOGIC_UNIT|Mux4~2_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add1~8_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Add0~8_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux4~3_combout\);

-- Location: LCCOMB_X25_Y10_N6
\ARITMETHIC_LOGIC_UNIT|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux4~4_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux4~1_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux4~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux4~3_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux4~4_combout\);

-- Location: LCCOMB_X25_Y10_N0
\dato_I_aux[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[4]~9_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (\INSTR_DECODER|Mux18~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux4~4_combout\)))) # (!\INSTR_DECODER|Mux19~1_combout\ & (((\dato_I_aux[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux18~1_combout\,
	datab => \dato_I_aux[4]~8_combout\,
	datac => \INSTR_DECODER|Mux19~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux4~4_combout\,
	combout => \dato_I_aux[4]~9_combout\);

-- Location: FF_X23_Y12_N5
\REGE|GEN_REG:22:REG_INST|Q_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[4]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:22:REG_INST|Q_aux\(4));

-- Location: LCCOMB_X24_Y16_N24
\REGE|MUX_D|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~0_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (\INSTR_DECODER|Mux6~0_combout\)) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(4))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:26:REG_INST|Q_aux\(4),
	datad => \REGE|GEN_REG:18:REG_INST|Q_aux\(4),
	combout => \REGE|MUX_D|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y16_N14
\REGE|MUX_D|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~1_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux3~0_combout\ & ((\REGE|GEN_REG:30:REG_INST|Q_aux\(4)))) # (!\REGE|MUX_D|Mux3~0_combout\ & (\REGE|GEN_REG:22:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:22:REG_INST|Q_aux\(4),
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(4),
	datac => \INSTR_DECODER|Mux7~1_combout\,
	datad => \REGE|MUX_D|Mux3~0_combout\,
	combout => \REGE|MUX_D|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y10_N20
\REGE|MUX_D|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~7_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\) # ((\REGE|GEN_REG:23:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux7~1_combout\ & (!\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:19:REG_INST|Q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(4),
	datad => \REGE|GEN_REG:19:REG_INST|Q_aux\(4),
	combout => \REGE|MUX_D|Mux3~7_combout\);

-- Location: LCCOMB_X23_Y10_N6
\REGE|MUX_D|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~8_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux3~7_combout\ & ((\REGE|GEN_REG:31:REG_INST|Q_aux\(4)))) # (!\REGE|MUX_D|Mux3~7_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:27:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:31:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_D|Mux3~7_combout\,
	combout => \REGE|MUX_D|Mux3~8_combout\);

-- Location: LCCOMB_X24_Y12_N8
\REGE|MUX_D|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~4_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(4)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:16:REG_INST|Q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:16:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:24:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux3~4_combout\);

-- Location: LCCOMB_X21_Y14_N2
\REGE|MUX_D|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~5_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux3~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(4))) # (!\REGE|MUX_D|Mux3~4_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(4)))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:28:REG_INST|Q_aux\(4),
	datab => \REGE|GEN_REG:20:REG_INST|Q_aux\(4),
	datac => \INSTR_DECODER|Mux7~1_combout\,
	datad => \REGE|MUX_D|Mux3~4_combout\,
	combout => \REGE|MUX_D|Mux3~5_combout\);

-- Location: LCCOMB_X23_Y11_N28
\REGE|MUX_D|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~2_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(4)))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (\REGE|GEN_REG:17:REG_INST|Q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:21:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux3~2_combout\);

-- Location: LCCOMB_X23_Y11_N18
\REGE|MUX_D|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux3~2_combout\ & ((\REGE|GEN_REG:29:REG_INST|Q_aux\(4)))) # (!\REGE|MUX_D|Mux3~2_combout\ & (\REGE|GEN_REG:25:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:25:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:29:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_D|Mux3~2_combout\,
	combout => \REGE|MUX_D|Mux3~3_combout\);

-- Location: LCCOMB_X24_Y14_N2
\REGE|MUX_D|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~6_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\) # ((\REGE|MUX_D|Mux3~3_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (!\INSTR_DECODER|Mux8~0_combout\ & (\REGE|MUX_D|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|MUX_D|Mux3~5_combout\,
	datad => \REGE|MUX_D|Mux3~3_combout\,
	combout => \REGE|MUX_D|Mux3~6_combout\);

-- Location: LCCOMB_X24_Y14_N8
\REGE|MUX_D|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~9_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux3~6_combout\ & ((\REGE|MUX_D|Mux3~8_combout\))) # (!\REGE|MUX_D|Mux3~6_combout\ & (\REGE|MUX_D|Mux3~1_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|MUX_D|Mux3~1_combout\,
	datac => \REGE|MUX_D|Mux3~8_combout\,
	datad => \REGE|MUX_D|Mux3~6_combout\,
	combout => \REGE|MUX_D|Mux3~9_combout\);

-- Location: LCCOMB_X23_Y9_N8
\REGE|MUX_D|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~17_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|GEN_REG:14:REG_INST|Q_aux\(4)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|GEN_REG:12:REG_INST|Q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:12:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:14:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux3~17_combout\);

-- Location: LCCOMB_X23_Y9_N6
\REGE|MUX_D|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~18_combout\ = (\REGE|MUX_D|Mux3~17_combout\ & (((\REGE|GEN_REG:15:REG_INST|Q_aux\(4)) # (!\INSTR_DECODER|Mux9~0_combout\)))) # (!\REGE|MUX_D|Mux3~17_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(4) & ((\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(4),
	datab => \REGE|MUX_D|Mux3~17_combout\,
	datac => \REGE|GEN_REG:15:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux3~18_combout\);

-- Location: LCCOMB_X24_Y13_N16
\REGE|MUX_D|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~10_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:9:REG_INST|Q_aux\(4)) # (\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (\REGE|GEN_REG:8:REG_INST|Q_aux\(4) & ((!\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:8:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:9:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux3~10_combout\);

-- Location: LCCOMB_X24_Y10_N26
\REGE|MUX_D|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~11_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux3~10_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(4)))) # (!\REGE|MUX_D|Mux3~10_combout\ & (\REGE|GEN_REG:10:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|GEN_REG:10:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:11:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_D|Mux3~10_combout\,
	combout => \REGE|MUX_D|Mux3~11_combout\);

-- Location: LCCOMB_X25_Y15_N0
\REGE|MUX_D|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~14_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(4)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|GEN_REG:0:REG_INST|Q_aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:0:REG_INST|Q_aux\(4),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:1:REG_INST|Q_aux\(4),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux3~14_combout\);

-- Location: LCCOMB_X24_Y14_N26
\REGE|MUX_D|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~15_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux3~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(4)))) # (!\REGE|MUX_D|Mux3~14_combout\ & (\REGE|GEN_REG:2:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:2:REG_INST|Q_aux\(4),
	datab => \REGE|GEN_REG:3:REG_INST|Q_aux\(4),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \REGE|MUX_D|Mux3~14_combout\,
	combout => \REGE|MUX_D|Mux3~15_combout\);

-- Location: LCCOMB_X26_Y9_N6
\REGE|MUX_D|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~12_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\REGE|GEN_REG:6:REG_INST|Q_aux\(4)) # (\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:4:REG_INST|Q_aux\(4) & ((!\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:4:REG_INST|Q_aux\(4),
	datab => \REGE|GEN_REG:6:REG_INST|Q_aux\(4),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux3~12_combout\);

-- Location: LCCOMB_X26_Y9_N16
\REGE|MUX_D|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux3~12_combout\ & ((\REGE|GEN_REG:7:REG_INST|Q_aux\(4)))) # (!\REGE|MUX_D|Mux3~12_combout\ & (\REGE|GEN_REG:5:REG_INST|Q_aux\(4))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(4),
	datac => \REGE|GEN_REG:7:REG_INST|Q_aux\(4),
	datad => \REGE|MUX_D|Mux3~12_combout\,
	combout => \REGE|MUX_D|Mux3~13_combout\);

-- Location: LCCOMB_X24_Y14_N28
\REGE|MUX_D|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~16_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\) # ((\REGE|MUX_D|Mux3~13_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (!\INSTR_DECODER|Mux6~0_combout\ & (\REGE|MUX_D|Mux3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|MUX_D|Mux3~15_combout\,
	datad => \REGE|MUX_D|Mux3~13_combout\,
	combout => \REGE|MUX_D|Mux3~16_combout\);

-- Location: LCCOMB_X24_Y14_N18
\REGE|MUX_D|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~19_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux3~16_combout\ & (\REGE|MUX_D|Mux3~18_combout\)) # (!\REGE|MUX_D|Mux3~16_combout\ & ((\REGE|MUX_D|Mux3~11_combout\))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux3~18_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|MUX_D|Mux3~11_combout\,
	datad => \REGE|MUX_D|Mux3~16_combout\,
	combout => \REGE|MUX_D|Mux3~19_combout\);

-- Location: LCCOMB_X24_Y14_N16
\REGE|MUX_D|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux3~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux3~9_combout\)) # (!\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux3~9_combout\,
	datad => \REGE|MUX_D|Mux3~19_combout\,
	combout => \REGE|MUX_D|Mux3~20_combout\);

-- Location: LCCOMB_X24_Y13_N0
\ARITMETHIC_LOGIC_UNIT|F_aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|F_aux~4_combout\ = \REGE|MUX_D|Mux2~20_combout\ $ (((\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux2~9_combout\))) # (!\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux2~19_combout\,
	datab => \REGE|MUX_D|Mux2~20_combout\,
	datac => \INSTR_DECODER|Mux10~4_combout\,
	datad => \REGE|MUX_R|Mux2~9_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|F_aux~4_combout\);

-- Location: LCCOMB_X24_Y13_N18
\ARITMETHIC_LOGIC_UNIT|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux3~0_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & (\INSTR_DECODER|Mux16~0_combout\)) # (!\INSTR_DECODER|Mux17~4_combout\ & ((\INSTR_DECODER|Mux16~0_combout\ & (\REGE|MUX_D|Mux3~20_combout\)) # (!\INSTR_DECODER|Mux16~0_combout\ & 
-- ((\ARITMETHIC_LOGIC_UNIT|F_aux~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \REGE|MUX_D|Mux3~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|F_aux~4_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y13_N8
\ARITMETHIC_LOGIC_UNIT|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux3~1_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux3~0_combout\ & (\REGE|MUX_D|Mux1~20_combout\)) # (!\ARITMETHIC_LOGIC_UNIT|Mux3~0_combout\ & ((!\REGE|MUX_D|Mux2~20_combout\))))) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_D|Mux1~20_combout\,
	datac => \REGE|MUX_D|Mux2~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux3~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux3~1_combout\);

-- Location: LCCOMB_X25_Y14_N20
\ARITMETHIC_LOGIC_UNIT|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~10_combout\ = (\REGE|MUX_D|Mux2~20_combout\ & ((\REGE|MUX_R|Mux2~20_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add0~9\ & VCC)) # (!\REGE|MUX_R|Mux2~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add0~9\)))) # (!\REGE|MUX_D|Mux2~20_combout\ & 
-- ((\REGE|MUX_R|Mux2~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add0~9\)) # (!\REGE|MUX_R|Mux2~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add0~9\) # (GND)))))
-- \ARITMETHIC_LOGIC_UNIT|Add0~11\ = CARRY((\REGE|MUX_D|Mux2~20_combout\ & (!\REGE|MUX_R|Mux2~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add0~9\)) # (!\REGE|MUX_D|Mux2~20_combout\ & ((!\ARITMETHIC_LOGIC_UNIT|Add0~9\) # (!\REGE|MUX_R|Mux2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux2~20_combout\,
	datab => \REGE|MUX_R|Mux2~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add0~9\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~10_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add0~11\);

-- Location: LCCOMB_X26_Y14_N20
\ARITMETHIC_LOGIC_UNIT|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~10_combout\ = (\REGE|MUX_R|Mux2~20_combout\ & ((\REGE|MUX_D|Mux2~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add1~9\)) # (!\REGE|MUX_D|Mux2~20_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add1~9\) # (GND))))) # (!\REGE|MUX_R|Mux2~20_combout\ 
-- & ((\REGE|MUX_D|Mux2~20_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add1~9\ & VCC)) # (!\REGE|MUX_D|Mux2~20_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Add1~9\))))
-- \ARITMETHIC_LOGIC_UNIT|Add1~11\ = CARRY((\REGE|MUX_R|Mux2~20_combout\ & ((!\ARITMETHIC_LOGIC_UNIT|Add1~9\) # (!\REGE|MUX_D|Mux2~20_combout\))) # (!\REGE|MUX_R|Mux2~20_combout\ & (!\REGE|MUX_D|Mux2~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux2~20_combout\,
	datab => \REGE|MUX_D|Mux2~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add1~9\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~10_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add1~11\);

-- Location: LCCOMB_X25_Y13_N2
\ARITMETHIC_LOGIC_UNIT|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux3~2_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & (\INSTR_DECODER|Mux17~4_combout\)) # (!\INSTR_DECODER|Mux16~0_combout\ & ((\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add1~10_combout\))) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \INSTR_DECODER|Mux17~4_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add0~10_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Add1~10_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux3~2_combout\);

-- Location: LCCOMB_X25_Y13_N16
\ARITMETHIC_LOGIC_UNIT|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux3~3_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & ((\REGE|MUX_R|Mux2~20_combout\ & ((\REGE|MUX_D|Mux2~20_combout\) # (\ARITMETHIC_LOGIC_UNIT|Mux3~2_combout\))) # (!\REGE|MUX_R|Mux2~20_combout\ & (\REGE|MUX_D|Mux2~20_combout\ & 
-- \ARITMETHIC_LOGIC_UNIT|Mux3~2_combout\)))) # (!\INSTR_DECODER|Mux16~0_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \REGE|MUX_R|Mux2~20_combout\,
	datac => \REGE|MUX_D|Mux2~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux3~2_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y13_N10
\ARITMETHIC_LOGIC_UNIT|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux3~4_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux3~1_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux3~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux3~3_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux3~4_combout\);

-- Location: LCCOMB_X25_Y13_N6
\dato_I_aux[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[5]~11_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (\INSTR_DECODER|Mux18~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux3~4_combout\)))) # (!\INSTR_DECODER|Mux19~1_combout\ & (((\dato_I_aux[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux18~1_combout\,
	datab => \INSTR_DECODER|Mux19~1_combout\,
	datac => \dato_I_aux[5]~10_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux3~4_combout\,
	combout => \dato_I_aux[5]~11_combout\);

-- Location: FF_X23_Y11_N17
\REGE|GEN_REG:21:REG_INST|Q_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[5]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:21:REG_INST|Q_aux\(5));

-- Location: LCCOMB_X22_Y11_N24
\REGE|MUX_D|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~0_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(5)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:17:REG_INST|Q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:17:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:25:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y11_N30
\REGE|MUX_D|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~1_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux2~0_combout\ & ((\REGE|GEN_REG:29:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_D|Mux2~0_combout\ & (\REGE|GEN_REG:21:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:21:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:29:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_D|Mux2~0_combout\,
	combout => \REGE|MUX_D|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y10_N12
\REGE|MUX_D|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~7_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:27:REG_INST|Q_aux\(5)))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (\REGE|GEN_REG:19:REG_INST|Q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:19:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux2~7_combout\);

-- Location: LCCOMB_X23_Y10_N16
\REGE|MUX_D|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~8_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux2~7_combout\ & (\REGE|GEN_REG:31:REG_INST|Q_aux\(5))) # (!\REGE|MUX_D|Mux2~7_combout\ & ((\REGE|GEN_REG:23:REG_INST|Q_aux\(5)))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:31:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:23:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_D|Mux2~7_combout\,
	combout => \REGE|MUX_D|Mux2~8_combout\);

-- Location: LCCOMB_X23_Y12_N12
\REGE|MUX_D|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~2_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\REGE|GEN_REG:22:REG_INST|Q_aux\(5)) # (\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (\REGE|GEN_REG:18:REG_INST|Q_aux\(5) & ((!\INSTR_DECODER|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:18:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y12_N18
\REGE|MUX_D|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux2~2_combout\ & ((\REGE|GEN_REG:30:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_D|Mux2~2_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:30:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_D|Mux2~2_combout\,
	combout => \REGE|MUX_D|Mux2~3_combout\);

-- Location: LCCOMB_X25_Y11_N12
\REGE|MUX_D|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~4_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & (((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(5)))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (\REGE|GEN_REG:16:REG_INST|Q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:16:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux2~4_combout\);

-- Location: LCCOMB_X26_Y13_N16
\REGE|MUX_D|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~5_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux2~4_combout\ & ((\REGE|GEN_REG:28:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_D|Mux2~4_combout\ & (\REGE|GEN_REG:24:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:24:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:28:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_D|Mux2~4_combout\,
	combout => \REGE|MUX_D|Mux2~5_combout\);

-- Location: LCCOMB_X25_Y13_N12
\REGE|MUX_D|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~6_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\) # ((\REGE|MUX_D|Mux2~3_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & (!\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux2~3_combout\,
	datad => \REGE|MUX_D|Mux2~5_combout\,
	combout => \REGE|MUX_D|Mux2~6_combout\);

-- Location: LCCOMB_X25_Y13_N30
\REGE|MUX_D|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~9_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux2~6_combout\ & ((\REGE|MUX_D|Mux2~8_combout\))) # (!\REGE|MUX_D|Mux2~6_combout\ & (\REGE|MUX_D|Mux2~1_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux2~1_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux2~8_combout\,
	datad => \REGE|MUX_D|Mux2~6_combout\,
	combout => \REGE|MUX_D|Mux2~9_combout\);

-- Location: LCCOMB_X24_Y9_N28
\REGE|MUX_D|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~17_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (((\INSTR_DECODER|Mux9~0_combout\)))) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:13:REG_INST|Q_aux\(5)))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|GEN_REG:12:REG_INST|Q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:12:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:13:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux2~17_combout\);

-- Location: LCCOMB_X25_Y13_N18
\REGE|MUX_D|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~18_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux2~17_combout\ & ((\REGE|GEN_REG:15:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_D|Mux2~17_combout\ & (\REGE|GEN_REG:14:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:14:REG_INST|Q_aux\(5),
	datab => \REGE|GEN_REG:15:REG_INST|Q_aux\(5),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \REGE|MUX_D|Mux2~17_combout\,
	combout => \REGE|MUX_D|Mux2~18_combout\);

-- Location: LCCOMB_X26_Y13_N30
\REGE|MUX_D|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~10_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:5:REG_INST|Q_aux\(5)) # (\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (\REGE|GEN_REG:4:REG_INST|Q_aux\(5) & ((!\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:4:REG_INST|Q_aux\(5),
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(5),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux2~10_combout\);

-- Location: LCCOMB_X26_Y13_N12
\REGE|MUX_D|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~11_combout\ = (\REGE|MUX_D|Mux2~10_combout\ & (((\REGE|GEN_REG:7:REG_INST|Q_aux\(5)) # (!\INSTR_DECODER|Mux8~0_combout\)))) # (!\REGE|MUX_D|Mux2~10_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(5) & ((\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:6:REG_INST|Q_aux\(5),
	datab => \REGE|GEN_REG:7:REG_INST|Q_aux\(5),
	datac => \REGE|MUX_D|Mux2~10_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux2~11_combout\);

-- Location: LCCOMB_X23_Y15_N16
\REGE|MUX_D|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~14_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(5)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|GEN_REG:0:REG_INST|Q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:0:REG_INST|Q_aux\(5),
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(5),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux2~14_combout\);

-- Location: LCCOMB_X25_Y15_N20
\REGE|MUX_D|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~15_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux2~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_D|Mux2~14_combout\ & (\REGE|GEN_REG:1:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:1:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:3:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_D|Mux2~14_combout\,
	combout => \REGE|MUX_D|Mux2~15_combout\);

-- Location: LCCOMB_X24_Y10_N10
\REGE|MUX_D|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~12_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(5)))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (\REGE|GEN_REG:8:REG_INST|Q_aux\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:8:REG_INST|Q_aux\(5),
	datac => \REGE|GEN_REG:10:REG_INST|Q_aux\(5),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux2~12_combout\);

-- Location: LCCOMB_X24_Y10_N20
\REGE|MUX_D|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux2~12_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(5)))) # (!\REGE|MUX_D|Mux2~12_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(5))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(5),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:11:REG_INST|Q_aux\(5),
	datad => \REGE|MUX_D|Mux2~12_combout\,
	combout => \REGE|MUX_D|Mux2~13_combout\);

-- Location: LCCOMB_X25_Y13_N24
\REGE|MUX_D|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~16_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\INSTR_DECODER|Mux7~1_combout\) # ((\REGE|MUX_D|Mux2~13_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & (!\INSTR_DECODER|Mux7~1_combout\ & (\REGE|MUX_D|Mux2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|MUX_D|Mux2~15_combout\,
	datad => \REGE|MUX_D|Mux2~13_combout\,
	combout => \REGE|MUX_D|Mux2~16_combout\);

-- Location: LCCOMB_X25_Y13_N28
\REGE|MUX_D|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~19_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux2~16_combout\ & (\REGE|MUX_D|Mux2~18_combout\)) # (!\REGE|MUX_D|Mux2~16_combout\ & ((\REGE|MUX_D|Mux2~11_combout\))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|MUX_D|Mux2~18_combout\,
	datac => \REGE|MUX_D|Mux2~11_combout\,
	datad => \REGE|MUX_D|Mux2~16_combout\,
	combout => \REGE|MUX_D|Mux2~19_combout\);

-- Location: LCCOMB_X25_Y13_N26
\REGE|MUX_D|Mux2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux2~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux2~9_combout\)) # (!\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux2~9_combout\,
	datad => \REGE|MUX_D|Mux2~19_combout\,
	combout => \REGE|MUX_D|Mux2~20_combout\);

-- Location: LCCOMB_X24_Y14_N30
\ARITMETHIC_LOGIC_UNIT|F_aux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|F_aux~5_combout\ = \REGE|MUX_D|Mux1~20_combout\ $ (((\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux1~9_combout\)) # (!\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux1~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux1~9_combout\,
	datab => \REGE|MUX_R|Mux1~19_combout\,
	datac => \INSTR_DECODER|Mux10~4_combout\,
	datad => \REGE|MUX_D|Mux1~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|F_aux~5_combout\);

-- Location: LCCOMB_X25_Y13_N20
\ARITMETHIC_LOGIC_UNIT|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux2~0_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & ((\INSTR_DECODER|Mux17~4_combout\) # ((\REGE|MUX_D|Mux2~20_combout\)))) # (!\INSTR_DECODER|Mux16~0_combout\ & (!\INSTR_DECODER|Mux17~4_combout\ & 
-- ((\ARITMETHIC_LOGIC_UNIT|F_aux~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \INSTR_DECODER|Mux17~4_combout\,
	datac => \REGE|MUX_D|Mux2~20_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|F_aux~5_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y13_N22
\ARITMETHIC_LOGIC_UNIT|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux2~1_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux2~0_combout\ & (\REGE|MUX_D|Mux0~20_combout\)) # (!\ARITMETHIC_LOGIC_UNIT|Mux2~0_combout\ & ((!\REGE|MUX_D|Mux1~20_combout\))))) # 
-- (!\INSTR_DECODER|Mux17~4_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux0~20_combout\,
	datab => \REGE|MUX_D|Mux1~20_combout\,
	datac => \INSTR_DECODER|Mux17~4_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux2~0_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y14_N12
\ARITMETHIC_LOGIC_UNIT|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux2~2_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\REGE|MUX_R|Mux1~20_combout\) # ((\REGE|MUX_D|Mux1~20_combout\) # (!\INSTR_DECODER|Mux16~0_combout\)))) # (!\INSTR_DECODER|Mux17~4_combout\ & (\REGE|MUX_R|Mux1~20_combout\ & 
-- (\INSTR_DECODER|Mux16~0_combout\ & \REGE|MUX_D|Mux1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_R|Mux1~20_combout\,
	datac => \INSTR_DECODER|Mux16~0_combout\,
	datad => \REGE|MUX_D|Mux1~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y14_N22
\ARITMETHIC_LOGIC_UNIT|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~12_combout\ = ((\REGE|MUX_R|Mux1~20_combout\ $ (\REGE|MUX_D|Mux1~20_combout\ $ (!\ARITMETHIC_LOGIC_UNIT|Add0~11\)))) # (GND)
-- \ARITMETHIC_LOGIC_UNIT|Add0~13\ = CARRY((\REGE|MUX_R|Mux1~20_combout\ & ((\REGE|MUX_D|Mux1~20_combout\) # (!\ARITMETHIC_LOGIC_UNIT|Add0~11\))) # (!\REGE|MUX_R|Mux1~20_combout\ & (\REGE|MUX_D|Mux1~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux1~20_combout\,
	datab => \REGE|MUX_D|Mux1~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add0~11\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~12_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add0~13\);

-- Location: LCCOMB_X26_Y14_N22
\ARITMETHIC_LOGIC_UNIT|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~12_combout\ = ((\REGE|MUX_D|Mux1~20_combout\ $ (\REGE|MUX_R|Mux1~20_combout\ $ (\ARITMETHIC_LOGIC_UNIT|Add1~11\)))) # (GND)
-- \ARITMETHIC_LOGIC_UNIT|Add1~13\ = CARRY((\REGE|MUX_D|Mux1~20_combout\ & ((!\ARITMETHIC_LOGIC_UNIT|Add1~11\) # (!\REGE|MUX_R|Mux1~20_combout\))) # (!\REGE|MUX_D|Mux1~20_combout\ & (!\REGE|MUX_R|Mux1~20_combout\ & !\ARITMETHIC_LOGIC_UNIT|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux1~20_combout\,
	datab => \REGE|MUX_R|Mux1~20_combout\,
	datad => VCC,
	cin => \ARITMETHIC_LOGIC_UNIT|Add1~11\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~12_combout\,
	cout => \ARITMETHIC_LOGIC_UNIT|Add1~13\);

-- Location: LCCOMB_X24_Y11_N12
\ARITMETHIC_LOGIC_UNIT|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux2~3_combout\ = (\ARITMETHIC_LOGIC_UNIT|Mux2~2_combout\ & ((\INSTR_DECODER|Mux16~0_combout\) # ((\ARITMETHIC_LOGIC_UNIT|Add1~12_combout\)))) # (!\ARITMETHIC_LOGIC_UNIT|Mux2~2_combout\ & (!\INSTR_DECODER|Mux16~0_combout\ & 
-- (\ARITMETHIC_LOGIC_UNIT|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ARITMETHIC_LOGIC_UNIT|Mux2~2_combout\,
	datab => \INSTR_DECODER|Mux16~0_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add0~12_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Add1~12_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux2~3_combout\);

-- Location: LCCOMB_X24_Y11_N6
\ARITMETHIC_LOGIC_UNIT|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux2~4_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux2~1_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux2~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux2~3_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux2~4_combout\);

-- Location: LCCOMB_X24_Y11_N30
\dato_I_aux[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dato_I_aux[6]~13_combout\ = (\dato_I_aux[6]~12_combout\) # ((\INSTR_DECODER|Mux18~1_combout\ & (\INSTR_DECODER|Mux19~1_combout\ & \ARITMETHIC_LOGIC_UNIT|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato_I_aux[6]~12_combout\,
	datab => \INSTR_DECODER|Mux18~1_combout\,
	datac => \INSTR_DECODER|Mux19~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux2~4_combout\,
	combout => \dato_I_aux[6]~13_combout\);

-- Location: FF_X23_Y10_N29
\REGE|GEN_REG:23:REG_INST|Q_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dato_I_aux[6]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \REGE|DECODIFICADOR|O[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGE|GEN_REG:23:REG_INST|Q_aux\(6));

-- Location: LCCOMB_X22_Y10_N26
\REGE|MUX_D|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~7_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:23:REG_INST|Q_aux\(6)) # ((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (((\REGE|GEN_REG:19:REG_INST|Q_aux\(6) & !\INSTR_DECODER|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \REGE|GEN_REG:23:REG_INST|Q_aux\(6),
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux1~7_combout\);

-- Location: LCCOMB_X22_Y10_N0
\REGE|MUX_D|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~8_combout\ = (\REGE|MUX_D|Mux1~7_combout\ & (((\REGE|GEN_REG:31:REG_INST|Q_aux\(6))) # (!\INSTR_DECODER|Mux6~0_combout\))) # (!\REGE|MUX_D|Mux1~7_combout\ & (\INSTR_DECODER|Mux6~0_combout\ & (\REGE|GEN_REG:27:REG_INST|Q_aux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_D|Mux1~7_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(6),
	datad => \REGE|GEN_REG:31:REG_INST|Q_aux\(6),
	combout => \REGE|MUX_D|Mux1~8_combout\);

-- Location: LCCOMB_X25_Y11_N10
\REGE|MUX_D|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~4_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(6)) # ((\INSTR_DECODER|Mux7~1_combout\)))) # (!\INSTR_DECODER|Mux6~0_combout\ & (((\REGE|GEN_REG:16:REG_INST|Q_aux\(6) & !\INSTR_DECODER|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|GEN_REG:24:REG_INST|Q_aux\(6),
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux7~1_combout\,
	combout => \REGE|MUX_D|Mux1~4_combout\);

-- Location: LCCOMB_X25_Y11_N24
\REGE|MUX_D|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~5_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux1~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(6))) # (!\REGE|MUX_D|Mux1~4_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:28:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_D|Mux1~4_combout\,
	combout => \REGE|MUX_D|Mux1~5_combout\);

-- Location: LCCOMB_X22_Y11_N6
\REGE|MUX_D|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~2_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(6)) # ((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (((\REGE|GEN_REG:17:REG_INST|Q_aux\(6) & !\INSTR_DECODER|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:21:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:17:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y11_N16
\REGE|MUX_D|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~3_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux1~2_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(6))) # (!\REGE|MUX_D|Mux1~2_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:29:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|GEN_REG:25:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_D|Mux1~2_combout\,
	combout => \REGE|MUX_D|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y11_N4
\REGE|MUX_D|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~6_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & (\INSTR_DECODER|Mux9~0_combout\)) # (!\INSTR_DECODER|Mux8~0_combout\ & ((\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux1~3_combout\))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (\REGE|MUX_D|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|MUX_D|Mux1~5_combout\,
	datad => \REGE|MUX_D|Mux1~3_combout\,
	combout => \REGE|MUX_D|Mux1~6_combout\);

-- Location: LCCOMB_X23_Y16_N22
\REGE|MUX_D|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~0_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & (((\INSTR_DECODER|Mux6~0_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(6))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:26:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux6~0_combout\,
	combout => \REGE|MUX_D|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y12_N16
\REGE|MUX_D|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~1_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\REGE|MUX_D|Mux1~0_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(6))) # (!\REGE|MUX_D|Mux1~0_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux7~1_combout\ & 
-- (((\REGE|MUX_D|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:30:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux7~1_combout\,
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_D|Mux1~0_combout\,
	combout => \REGE|MUX_D|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y11_N14
\REGE|MUX_D|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~9_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux1~6_combout\ & (\REGE|MUX_D|Mux1~8_combout\)) # (!\REGE|MUX_D|Mux1~6_combout\ & ((\REGE|MUX_D|Mux1~1_combout\))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux8~0_combout\,
	datab => \REGE|MUX_D|Mux1~8_combout\,
	datac => \REGE|MUX_D|Mux1~6_combout\,
	datad => \REGE|MUX_D|Mux1~1_combout\,
	combout => \REGE|MUX_D|Mux1~9_combout\);

-- Location: LCCOMB_X24_Y9_N4
\REGE|MUX_D|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~17_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:14:REG_INST|Q_aux\(6))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- ((\REGE|GEN_REG:12:REG_INST|Q_aux\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux9~0_combout\,
	datab => \REGE|GEN_REG:14:REG_INST|Q_aux\(6),
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux1~17_combout\);

-- Location: LCCOMB_X24_Y9_N2
\REGE|MUX_D|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~18_combout\ = (\REGE|MUX_D|Mux1~17_combout\ & (((\REGE|GEN_REG:15:REG_INST|Q_aux\(6)) # (!\INSTR_DECODER|Mux9~0_combout\)))) # (!\REGE|MUX_D|Mux1~17_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(6) & ((\INSTR_DECODER|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:13:REG_INST|Q_aux\(6),
	datab => \REGE|GEN_REG:15:REG_INST|Q_aux\(6),
	datac => \REGE|MUX_D|Mux1~17_combout\,
	datad => \INSTR_DECODER|Mux9~0_combout\,
	combout => \REGE|MUX_D|Mux1~18_combout\);

-- Location: LCCOMB_X24_Y13_N22
\REGE|MUX_D|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~10_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:9:REG_INST|Q_aux\(6)) # ((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:8:REG_INST|Q_aux\(6) & !\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux9~0_combout\,
	datac => \REGE|GEN_REG:8:REG_INST|Q_aux\(6),
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux1~10_combout\);

-- Location: LCCOMB_X26_Y11_N10
\REGE|MUX_D|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~11_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux1~10_combout\ & ((\REGE|GEN_REG:11:REG_INST|Q_aux\(6)))) # (!\REGE|MUX_D|Mux1~10_combout\ & (\REGE|GEN_REG:10:REG_INST|Q_aux\(6))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:10:REG_INST|Q_aux\(6),
	datab => \REGE|GEN_REG:11:REG_INST|Q_aux\(6),
	datac => \INSTR_DECODER|Mux8~0_combout\,
	datad => \REGE|MUX_D|Mux1~10_combout\,
	combout => \REGE|MUX_D|Mux1~11_combout\);

-- Location: LCCOMB_X26_Y13_N10
\REGE|MUX_D|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~12_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & (((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & ((\INSTR_DECODER|Mux8~0_combout\ & (\REGE|GEN_REG:6:REG_INST|Q_aux\(6))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- ((\REGE|GEN_REG:4:REG_INST|Q_aux\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:6:REG_INST|Q_aux\(6),
	datab => \REGE|GEN_REG:4:REG_INST|Q_aux\(6),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux1~12_combout\);

-- Location: LCCOMB_X26_Y13_N8
\REGE|MUX_D|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~13_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|MUX_D|Mux1~12_combout\ & (\REGE|GEN_REG:7:REG_INST|Q_aux\(6))) # (!\REGE|MUX_D|Mux1~12_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux9~0_combout\ & 
-- (((\REGE|MUX_D|Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:7:REG_INST|Q_aux\(6),
	datab => \REGE|GEN_REG:5:REG_INST|Q_aux\(6),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \REGE|MUX_D|Mux1~12_combout\,
	combout => \REGE|MUX_D|Mux1~13_combout\);

-- Location: LCCOMB_X23_Y15_N6
\REGE|MUX_D|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~14_combout\ = (\INSTR_DECODER|Mux9~0_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(6)) # ((\INSTR_DECODER|Mux8~0_combout\)))) # (!\INSTR_DECODER|Mux9~0_combout\ & (((\REGE|GEN_REG:0:REG_INST|Q_aux\(6) & !\INSTR_DECODER|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:1:REG_INST|Q_aux\(6),
	datab => \REGE|GEN_REG:0:REG_INST|Q_aux\(6),
	datac => \INSTR_DECODER|Mux9~0_combout\,
	datad => \INSTR_DECODER|Mux8~0_combout\,
	combout => \REGE|MUX_D|Mux1~14_combout\);

-- Location: LCCOMB_X23_Y15_N26
\REGE|MUX_D|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~15_combout\ = (\INSTR_DECODER|Mux8~0_combout\ & ((\REGE|MUX_D|Mux1~14_combout\ & (\REGE|GEN_REG:3:REG_INST|Q_aux\(6))) # (!\REGE|MUX_D|Mux1~14_combout\ & ((\REGE|GEN_REG:2:REG_INST|Q_aux\(6)))))) # (!\INSTR_DECODER|Mux8~0_combout\ & 
-- (((\REGE|MUX_D|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:3:REG_INST|Q_aux\(6),
	datab => \INSTR_DECODER|Mux8~0_combout\,
	datac => \REGE|GEN_REG:2:REG_INST|Q_aux\(6),
	datad => \REGE|MUX_D|Mux1~14_combout\,
	combout => \REGE|MUX_D|Mux1~15_combout\);

-- Location: LCCOMB_X26_Y13_N18
\REGE|MUX_D|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~16_combout\ = (\INSTR_DECODER|Mux7~1_combout\ & ((\INSTR_DECODER|Mux6~0_combout\) # ((\REGE|MUX_D|Mux1~13_combout\)))) # (!\INSTR_DECODER|Mux7~1_combout\ & (!\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux7~1_combout\,
	datab => \INSTR_DECODER|Mux6~0_combout\,
	datac => \REGE|MUX_D|Mux1~13_combout\,
	datad => \REGE|MUX_D|Mux1~15_combout\,
	combout => \REGE|MUX_D|Mux1~16_combout\);

-- Location: LCCOMB_X25_Y11_N28
\REGE|MUX_D|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~19_combout\ = (\INSTR_DECODER|Mux6~0_combout\ & ((\REGE|MUX_D|Mux1~16_combout\ & (\REGE|MUX_D|Mux1~18_combout\)) # (!\REGE|MUX_D|Mux1~16_combout\ & ((\REGE|MUX_D|Mux1~11_combout\))))) # (!\INSTR_DECODER|Mux6~0_combout\ & 
-- (((\REGE|MUX_D|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux6~0_combout\,
	datab => \REGE|MUX_D|Mux1~18_combout\,
	datac => \REGE|MUX_D|Mux1~11_combout\,
	datad => \REGE|MUX_D|Mux1~16_combout\,
	combout => \REGE|MUX_D|Mux1~19_combout\);

-- Location: LCCOMB_X25_Y11_N22
\REGE|MUX_D|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_D|Mux1~20_combout\ = (\INSTR_DECODER|Mux5~2_combout\ & (\REGE|MUX_D|Mux1~9_combout\)) # (!\INSTR_DECODER|Mux5~2_combout\ & ((\REGE|MUX_D|Mux1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux5~2_combout\,
	datac => \REGE|MUX_D|Mux1~9_combout\,
	datad => \REGE|MUX_D|Mux1~19_combout\,
	combout => \REGE|MUX_D|Mux1~20_combout\);

-- Location: LCCOMB_X25_Y11_N30
\ARITMETHIC_LOGIC_UNIT|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux1~0_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & (((\REGE|MUX_D|Mux1~20_combout\)))) # (!\INSTR_DECODER|Mux16~0_combout\ & (\REGE|MUX_D|Mux0~20_combout\ $ (((\REGE|MUX_R|Mux0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \REGE|MUX_D|Mux0~20_combout\,
	datac => \REGE|MUX_D|Mux1~20_combout\,
	datad => \REGE|MUX_R|Mux0~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y11_N8
\ARITMETHIC_LOGIC_UNIT|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux1~1_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & (!\INSTR_DECODER|Mux16~0_combout\ & ((!\REGE|MUX_D|Mux0~20_combout\)))) # (!\INSTR_DECODER|Mux17~4_combout\ & (((\ARITMETHIC_LOGIC_UNIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \INSTR_DECODER|Mux17~4_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux1~0_combout\,
	datad => \REGE|MUX_D|Mux0~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y11_N14
\ARITMETHIC_LOGIC_UNIT|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux1~2_combout\ = (\INSTR_DECODER|Mux17~4_combout\ & ((\REGE|MUX_D|Mux0~20_combout\) # ((\REGE|MUX_R|Mux0~20_combout\) # (!\INSTR_DECODER|Mux16~0_combout\)))) # (!\INSTR_DECODER|Mux17~4_combout\ & (\REGE|MUX_D|Mux0~20_combout\ & 
-- (\INSTR_DECODER|Mux16~0_combout\ & \REGE|MUX_R|Mux0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux17~4_combout\,
	datab => \REGE|MUX_D|Mux0~20_combout\,
	datac => \INSTR_DECODER|Mux16~0_combout\,
	datad => \REGE|MUX_R|Mux0~20_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux1~2_combout\);

-- Location: LCCOMB_X25_Y14_N24
\ARITMETHIC_LOGIC_UNIT|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add0~14_combout\ = \REGE|MUX_R|Mux0~20_combout\ $ (\ARITMETHIC_LOGIC_UNIT|Add0~13\ $ (\REGE|MUX_D|Mux0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \REGE|MUX_R|Mux0~20_combout\,
	datad => \REGE|MUX_D|Mux0~20_combout\,
	cin => \ARITMETHIC_LOGIC_UNIT|Add0~13\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add0~14_combout\);

-- Location: LCCOMB_X26_Y14_N24
\ARITMETHIC_LOGIC_UNIT|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Add1~14_combout\ = \REGE|MUX_R|Mux0~20_combout\ $ (\ARITMETHIC_LOGIC_UNIT|Add1~13\ $ (!\REGE|MUX_D|Mux0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \REGE|MUX_R|Mux0~20_combout\,
	datad => \REGE|MUX_D|Mux0~20_combout\,
	cin => \ARITMETHIC_LOGIC_UNIT|Add1~13\,
	combout => \ARITMETHIC_LOGIC_UNIT|Add1~14_combout\);

-- Location: LCCOMB_X25_Y11_N0
\ARITMETHIC_LOGIC_UNIT|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux1~3_combout\ = (\INSTR_DECODER|Mux16~0_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux1~2_combout\)) # (!\INSTR_DECODER|Mux16~0_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux1~2_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Add1~14_combout\))) # 
-- (!\ARITMETHIC_LOGIC_UNIT|Mux1~2_combout\ & (\ARITMETHIC_LOGIC_UNIT|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux16~0_combout\,
	datab => \ARITMETHIC_LOGIC_UNIT|Mux1~2_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Add0~14_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Add1~14_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux1~3_combout\);

-- Location: LCCOMB_X25_Y11_N18
\ARITMETHIC_LOGIC_UNIT|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\ = (\INSTR_DECODER|Mux15~1_combout\ & (\ARITMETHIC_LOGIC_UNIT|Mux1~1_combout\)) # (!\INSTR_DECODER|Mux15~1_combout\ & ((\ARITMETHIC_LOGIC_UNIT|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux1~1_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux1~3_combout\,
	combout => \ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\);

-- Location: LCCOMB_X25_Y10_N24
\STATE_REG|q_aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_REG|q_aux~1_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & ((\INSTR_DECODER|Mux15~1_combout\ & ((!\ARITMETHIC_LOGIC_UNIT|Mux2~1_combout\))) # (!\INSTR_DECODER|Mux15~1_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux19~1_combout\,
	datab => \INSTR_DECODER|Mux15~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux2~3_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux2~1_combout\,
	combout => \STATE_REG|q_aux~1_combout\);

-- Location: LCCOMB_X25_Y10_N22
\STATE_REG|q_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_REG|q_aux~0_combout\ = (!\ARITMETHIC_LOGIC_UNIT|Mux6~4_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Mux5~4_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Mux7~4_combout\ & !\ARITMETHIC_LOGIC_UNIT|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ARITMETHIC_LOGIC_UNIT|Mux6~4_combout\,
	datab => \ARITMETHIC_LOGIC_UNIT|Mux5~4_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux7~4_combout\,
	datad => \ARITMETHIC_LOGIC_UNIT|Mux4~4_combout\,
	combout => \STATE_REG|q_aux~0_combout\);

-- Location: LCCOMB_X25_Y10_N18
\STATE_REG|q_aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_REG|q_aux~2_combout\ = (!\ARITMETHIC_LOGIC_UNIT|Mux8~3_combout\ & (\STATE_REG|q_aux~1_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Mux3~4_combout\ & \STATE_REG|q_aux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ARITMETHIC_LOGIC_UNIT|Mux8~3_combout\,
	datab => \STATE_REG|q_aux~1_combout\,
	datac => \ARITMETHIC_LOGIC_UNIT|Mux3~4_combout\,
	datad => \STATE_REG|q_aux~0_combout\,
	combout => \STATE_REG|q_aux~2_combout\);

-- Location: LCCOMB_X25_Y10_N4
\STATE_REG|q_aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE_REG|q_aux~3_combout\ = (\INSTR_DECODER|Mux19~1_combout\ & (!\ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\ & ((\STATE_REG|q_aux~2_combout\)))) # (!\INSTR_DECODER|Mux19~1_combout\ & ((\STATE_REG|q_aux~q\) # ((!\ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\ & 
-- \STATE_REG|q_aux~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux19~1_combout\,
	datab => \ARITMETHIC_LOGIC_UNIT|Mux1~4_combout\,
	datac => \STATE_REG|q_aux~q\,
	datad => \STATE_REG|q_aux~2_combout\,
	combout => \STATE_REG|q_aux~3_combout\);

-- Location: FF_X25_Y10_N5
\STATE_REG|q_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STATE_REG|q_aux~3_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE_REG|q_aux~q\);

-- Location: LCCOMB_X21_Y14_N30
\branch_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_aux~0_combout\ = \STATE_REG|q_aux~q\ $ ((((\PROGRAM_COUNTER|q_aux\(15)) # (\PROGRAM_MEMORY|Mux4~4_combout\)) # (!\PROGRAM_MEMORY|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE_REG|q_aux~q\,
	datab => \PROGRAM_MEMORY|Mux5~4_combout\,
	datac => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux4~4_combout\,
	combout => \branch_aux~0_combout\);

-- Location: LCCOMB_X19_Y14_N24
\branch_aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \branch_aux~1_combout\ = (!\PROGRAM_MEMORY|Mux2~8_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & (\INSTR_DECODER|Mux22~4_combout\ & \branch_aux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~8_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \INSTR_DECODER|Mux22~4_combout\,
	datad => \branch_aux~0_combout\,
	combout => \branch_aux~1_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\PROGRAM_MEMORY|Mux4~4_combout\ & (((!\Add5~21\)))) # (!\PROGRAM_MEMORY|Mux4~4_combout\ & ((\PROGRAM_COUNTER|q_aux\(15) & (!\Add5~21\)) # (!\PROGRAM_COUNTER|q_aux\(15) & ((\Add5~21\) # (GND)))))
-- \Add5~23\ = CARRY(((!\PROGRAM_MEMORY|Mux4~4_combout\ & !\PROGRAM_COUNTER|q_aux\(15))) # (!\Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux4~4_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X19_Y16_N12
\offset_aux[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[11]~11_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & ((\Add5~22_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & (\Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add4~14_combout\,
	datad => \Add5~22_combout\,
	combout => \offset_aux[11]~11_combout\);

-- Location: LCCOMB_X22_Y15_N26
\PROGRAM_COUNTER|q_aux[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[11]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[11]~38_combout\,
	combout => \PROGRAM_COUNTER|q_aux[11]~feeder_combout\);

-- Location: LCCOMB_X13_Y13_N6
\STACK|ram~224feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~224feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~20_combout\,
	combout => \STACK|ram~224feeder_combout\);

-- Location: FF_X13_Y13_N7
\STACK|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~224feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~224_q\);

-- Location: FF_X12_Y13_N7
\STACK|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~256_q\);

-- Location: LCCOMB_X12_Y13_N6
\STACK|ram~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~326_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~224_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~256_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~224_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~256_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~326_combout\);

-- Location: FF_X18_Y13_N27
\STACK|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~272_q\);

-- Location: FF_X18_Y14_N21
\STACK|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~240_q\);

-- Location: LCCOMB_X18_Y13_N26
\STACK|ram~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~327_combout\ = (\STACK_POINTER|q_aux\(0) & (\STACK|ram~326_combout\)) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~326_combout\ & ((\STACK|ram~240_q\))) # (!\STACK|ram~326_combout\ & (\STACK|ram~272_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~326_combout\,
	datac => \STACK|ram~272_q\,
	datad => \STACK|ram~240_q\,
	combout => \STACK|ram~327_combout\);

-- Location: LCCOMB_X16_Y15_N22
\STACK|ram~32feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~32feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~20_combout\,
	combout => \STACK|ram~32feeder_combout\);

-- Location: FF_X16_Y15_N23
\STACK|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~32feeder_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~32_q\);

-- Location: FF_X17_Y15_N7
\STACK|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~48_q\);

-- Location: LCCOMB_X17_Y16_N16
\STACK|ram~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~64feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~20_combout\,
	combout => \STACK|ram~64feeder_combout\);

-- Location: FF_X17_Y16_N17
\STACK|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~64feeder_combout\,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~64_q\);

-- Location: FF_X17_Y15_N1
\STACK|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~80_q\);

-- Location: LCCOMB_X17_Y15_N0
\STACK|ram~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~323_combout\ = (\a_aux[1]~2_combout\ & (((!\STACK_POINTER|q_aux\(0))))) # (!\a_aux[1]~2_combout\ & ((\STACK_POINTER|q_aux\(0) & (\STACK|ram~64_q\)) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~64_q\,
	datac => \STACK|ram~80_q\,
	datad => \STACK_POINTER|q_aux\(0),
	combout => \STACK|ram~323_combout\);

-- Location: LCCOMB_X17_Y15_N6
\STACK|ram~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~324_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~323_combout\ & ((\STACK|ram~48_q\))) # (!\STACK|ram~323_combout\ & (\STACK|ram~32_q\)))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~32_q\,
	datac => \STACK|ram~48_q\,
	datad => \STACK|ram~323_combout\,
	combout => \STACK|ram~324_combout\);

-- Location: LCCOMB_X17_Y14_N24
\STACK|ram~144feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~144feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~20_combout\,
	combout => \STACK|ram~144feeder_combout\);

-- Location: FF_X17_Y14_N25
\STACK|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~144feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~144_q\);

-- Location: FF_X17_Y14_N23
\STACK|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~112_q\);

-- Location: LCCOMB_X14_Y15_N28
\STACK|ram~96feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~96feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~20_combout\,
	combout => \STACK|ram~96feeder_combout\);

-- Location: FF_X14_Y15_N29
\STACK|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~96feeder_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~96_q\);

-- Location: FF_X13_Y14_N29
\STACK|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~128_q\);

-- Location: LCCOMB_X13_Y14_N28
\STACK|ram~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~321_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~96_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~128_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~96_q\,
	datac => \STACK|ram~128_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~321_combout\);

-- Location: LCCOMB_X17_Y14_N22
\STACK|ram~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~322_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~321_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~321_combout\ & ((\STACK|ram~112_q\))) # (!\STACK|ram~321_combout\ & (\STACK|ram~144_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~144_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~112_q\,
	datad => \STACK|ram~321_combout\,
	combout => \STACK|ram~322_combout\);

-- Location: LCCOMB_X18_Y13_N4
\STACK|ram~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~325_combout\ = (\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\) # ((\STACK|ram~322_combout\)))) # (!\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & (\STACK|ram~324_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~324_combout\,
	datad => \STACK|ram~322_combout\,
	combout => \STACK|ram~325_combout\);

-- Location: LCCOMB_X12_Y14_N20
\STACK|ram~208feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~208feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~20_combout\,
	combout => \STACK|ram~208feeder_combout\);

-- Location: FF_X12_Y14_N21
\STACK|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~208feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~208_q\);

-- Location: FF_X12_Y13_N1
\STACK|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~192_q\);

-- Location: LCCOMB_X12_Y13_N0
\STACK|ram~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~319_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~192_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~208_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~208_q\,
	datac => \STACK|ram~192_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~319_combout\);

-- Location: LCCOMB_X18_Y14_N30
\STACK|ram~176feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~176feeder_combout\ = \Add2~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~20_combout\,
	combout => \STACK|ram~176feeder_combout\);

-- Location: FF_X18_Y14_N31
\STACK|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~176feeder_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~176_q\);

-- Location: FF_X13_Y13_N25
\STACK|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~20_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~160_q\);

-- Location: LCCOMB_X13_Y13_N24
\STACK|ram~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~320_combout\ = (\STACK|ram~319_combout\ & ((\STACK|ram~176_q\) # ((!\a_aux[1]~2_combout\)))) # (!\STACK|ram~319_combout\ & (((\STACK|ram~160_q\ & \a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~319_combout\,
	datab => \STACK|ram~176_q\,
	datac => \STACK|ram~160_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~320_combout\);

-- Location: LCCOMB_X18_Y13_N12
\STACK|ram~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~328_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~325_combout\ & (\STACK|ram~327_combout\)) # (!\STACK|ram~325_combout\ & ((\STACK|ram~320_combout\))))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~327_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~325_combout\,
	datad => \STACK|ram~320_combout\,
	combout => \STACK|ram~328_combout\);

-- Location: FF_X22_Y15_N27
\PROGRAM_COUNTER|q_aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[11]~feeder_combout\,
	asdata => \STACK|ram~328_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(11));

-- Location: LCCOMB_X22_Y15_N8
\PROGRAM_MEMORY|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~1_combout\ = (!\PROGRAM_COUNTER|q_aux\(14) & (!\PROGRAM_COUNTER|q_aux\(12) & !\PROGRAM_COUNTER|q_aux\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(14),
	datac => \PROGRAM_COUNTER|q_aux\(12),
	datad => \PROGRAM_COUNTER|q_aux\(13),
	combout => \PROGRAM_MEMORY|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y15_N30
\PROGRAM_MEMORY|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux2~2_combout\ = (!\PROGRAM_COUNTER|q_aux\(11) & (!\PROGRAM_COUNTER|q_aux\(10) & (\PROGRAM_MEMORY|Mux2~1_combout\ & \PROGRAM_MEMORY|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(11),
	datab => \PROGRAM_COUNTER|q_aux\(10),
	datac => \PROGRAM_MEMORY|Mux2~1_combout\,
	datad => \PROGRAM_MEMORY|Mux2~0_combout\,
	combout => \PROGRAM_MEMORY|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y12_N26
\INSTR_DECODER|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux22~5_combout\ = (\PROGRAM_MEMORY|Mux2~2_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux2~7_combout\ & \INSTR_DECODER|Mux22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~2_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~7_combout\,
	datad => \INSTR_DECODER|Mux22~4_combout\,
	combout => \INSTR_DECODER|Mux22~5_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = \Add5~23\ $ (((!\PROGRAM_COUNTER|q_aux\(15) & !\PROGRAM_MEMORY|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => \PROGRAM_MEMORY|Mux4~4_combout\,
	cin => \Add5~23\,
	combout => \Add5~24_combout\);

-- Location: LCCOMB_X19_Y16_N2
\offset_aux[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \offset_aux[15]~12_combout\ = (\INSTR_DECODER|Mux22~5_combout\ & (!\branch_aux~1_combout\ & ((\Add5~24_combout\)))) # (!\INSTR_DECODER|Mux22~5_combout\ & (\branch_aux~1_combout\ & (\Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux22~5_combout\,
	datab => \branch_aux~1_combout\,
	datac => \Add4~14_combout\,
	datad => \Add5~24_combout\,
	combout => \offset_aux[15]~12_combout\);

-- Location: LCCOMB_X19_Y15_N30
\PROGRAM_COUNTER|q_aux[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[15]~46_combout\ = \PROGRAM_COUNTER|q_aux\(15) $ (\PROGRAM_COUNTER|q_aux[14]~45\ $ (\offset_aux[15]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datad => \offset_aux[15]~12_combout\,
	cin => \PROGRAM_COUNTER|q_aux[14]~45\,
	combout => \PROGRAM_COUNTER|q_aux[15]~46_combout\);

-- Location: LCCOMB_X21_Y13_N20
\PROGRAM_COUNTER|q_aux[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|q_aux[15]~feeder_combout\ = \PROGRAM_COUNTER|q_aux[15]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux[15]~46_combout\,
	combout => \PROGRAM_COUNTER|q_aux[15]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = \Add2~27\ $ (!\PROGRAM_COUNTER|q_aux\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|q_aux\(15),
	cin => \Add2~27\,
	combout => \Add2~28_combout\);

-- Location: LCCOMB_X14_Y13_N10
\STACK|ram~212feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~212feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~28_combout\,
	combout => \STACK|ram~212feeder_combout\);

-- Location: FF_X14_Y13_N11
\STACK|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~212feeder_combout\,
	ena => \STACK|ram~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~212_q\);

-- Location: FF_X12_Y13_N15
\STACK|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~494_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~196_q\);

-- Location: LCCOMB_X12_Y13_N14
\STACK|ram~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~399_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~196_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~212_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~212_q\,
	datac => \STACK|ram~196_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~399_combout\);

-- Location: LCCOMB_X14_Y13_N28
\STACK|ram~180feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~180feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~28_combout\,
	combout => \STACK|ram~180feeder_combout\);

-- Location: FF_X14_Y13_N29
\STACK|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~180feeder_combout\,
	ena => \STACK|ram~497_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~180_q\);

-- Location: FF_X13_Y13_N13
\STACK|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~486_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~164_q\);

-- Location: LCCOMB_X13_Y13_N12
\STACK|ram~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~400_combout\ = (\STACK|ram~399_combout\ & ((\STACK|ram~180_q\) # ((!\a_aux[1]~2_combout\)))) # (!\STACK|ram~399_combout\ & (((\STACK|ram~164_q\ & \a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~399_combout\,
	datab => \STACK|ram~180_q\,
	datac => \STACK|ram~164_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~400_combout\);

-- Location: FF_X18_Y14_N29
\STACK|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	ena => \STACK|ram~500_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~244_q\);

-- Location: FF_X17_Y13_N27
\STACK|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~492_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~276_q\);

-- Location: LCCOMB_X13_Y13_N22
\STACK|ram~228feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~228feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~28_combout\,
	combout => \STACK|ram~228feeder_combout\);

-- Location: FF_X13_Y13_N23
\STACK|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~228feeder_combout\,
	ena => \STACK|ram~488_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~228_q\);

-- Location: FF_X12_Y13_N25
\STACK|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~496_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~260_q\);

-- Location: LCCOMB_X12_Y13_N24
\STACK|ram~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~406_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~228_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~260_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~228_q\,
	datac => \STACK|ram~260_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~406_combout\);

-- Location: LCCOMB_X17_Y13_N26
\STACK|ram~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~407_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~406_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~406_combout\ & (\STACK|ram~244_q\)) # (!\STACK|ram~406_combout\ & ((\STACK|ram~276_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~244_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~276_q\,
	datad => \STACK|ram~406_combout\,
	combout => \STACK|ram~407_combout\);

-- Location: LCCOMB_X16_Y15_N30
\STACK|ram~36feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~36feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~28_combout\,
	combout => \STACK|ram~36feeder_combout\);

-- Location: FF_X16_Y15_N31
\STACK|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~36feeder_combout\,
	ena => \STACK|ram~487_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~36_q\);

-- Location: FF_X17_Y15_N31
\STACK|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~499_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~52_q\);

-- Location: LCCOMB_X16_Y14_N0
\STACK|ram~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~84feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~28_combout\,
	combout => \STACK|ram~84feeder_combout\);

-- Location: FF_X16_Y14_N1
\STACK|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~84feeder_combout\,
	ena => \STACK|ram~491_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~84_q\);

-- Location: FF_X16_Y15_N9
\STACK|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~495_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~68_q\);

-- Location: LCCOMB_X16_Y15_N8
\STACK|ram~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~403_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~68_q\ & !\a_aux[1]~2_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~84_q\) # ((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~84_q\,
	datac => \STACK|ram~68_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~403_combout\);

-- Location: LCCOMB_X17_Y15_N30
\STACK|ram~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~404_combout\ = (\a_aux[1]~2_combout\ & ((\STACK|ram~403_combout\ & ((\STACK|ram~52_q\))) # (!\STACK|ram~403_combout\ & (\STACK|ram~36_q\)))) # (!\a_aux[1]~2_combout\ & (((\STACK|ram~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[1]~2_combout\,
	datab => \STACK|ram~36_q\,
	datac => \STACK|ram~52_q\,
	datad => \STACK|ram~403_combout\,
	combout => \STACK|ram~404_combout\);

-- Location: LCCOMB_X17_Y14_N10
\STACK|ram~148feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~148feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~28_combout\,
	combout => \STACK|ram~148feeder_combout\);

-- Location: FF_X17_Y14_N11
\STACK|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~148feeder_combout\,
	ena => \STACK|ram~490_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~148_q\);

-- Location: FF_X17_Y14_N29
\STACK|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~498_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~116_q\);

-- Location: LCCOMB_X14_Y14_N16
\STACK|ram~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~100feeder_combout\ = \Add2~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~28_combout\,
	combout => \STACK|ram~100feeder_combout\);

-- Location: FF_X14_Y14_N17
\STACK|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \STACK|ram~100feeder_combout\,
	ena => \STACK|ram~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~100_q\);

-- Location: FF_X13_Y14_N9
\STACK|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~28_combout\,
	sload => VCC,
	ena => \STACK|ram~493_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|ram~132_q\);

-- Location: LCCOMB_X13_Y14_N8
\STACK|ram~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~401_combout\ = (\STACK_POINTER|q_aux\(0) & ((\a_aux[1]~2_combout\ & (\STACK|ram~100_q\)) # (!\a_aux[1]~2_combout\ & ((\STACK|ram~132_q\))))) # (!\STACK_POINTER|q_aux\(0) & (((\a_aux[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|q_aux\(0),
	datab => \STACK|ram~100_q\,
	datac => \STACK|ram~132_q\,
	datad => \a_aux[1]~2_combout\,
	combout => \STACK|ram~401_combout\);

-- Location: LCCOMB_X17_Y14_N28
\STACK|ram~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~402_combout\ = (\STACK_POINTER|q_aux\(0) & (((\STACK|ram~401_combout\)))) # (!\STACK_POINTER|q_aux\(0) & ((\STACK|ram~401_combout\ & ((\STACK|ram~116_q\))) # (!\STACK|ram~401_combout\ & (\STACK|ram~148_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~148_q\,
	datab => \STACK_POINTER|q_aux\(0),
	datac => \STACK|ram~116_q\,
	datad => \STACK|ram~401_combout\,
	combout => \STACK|ram~402_combout\);

-- Location: LCCOMB_X17_Y13_N16
\STACK|ram~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~405_combout\ = (\a_aux[2]~0_combout\ & ((\a_aux[3]~1_combout\) # ((\STACK|ram~402_combout\)))) # (!\a_aux[2]~0_combout\ & (!\a_aux[3]~1_combout\ & (\STACK|ram~404_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_aux[2]~0_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~404_combout\,
	datad => \STACK|ram~402_combout\,
	combout => \STACK|ram~405_combout\);

-- Location: LCCOMB_X17_Y13_N28
\STACK|ram~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \STACK|ram~408_combout\ = (\a_aux[3]~1_combout\ & ((\STACK|ram~405_combout\ & ((\STACK|ram~407_combout\))) # (!\STACK|ram~405_combout\ & (\STACK|ram~400_combout\)))) # (!\a_aux[3]~1_combout\ & (((\STACK|ram~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|ram~400_combout\,
	datab => \a_aux[3]~1_combout\,
	datac => \STACK|ram~407_combout\,
	datad => \STACK|ram~405_combout\,
	combout => \STACK|ram~408_combout\);

-- Location: FF_X21_Y13_N21
\PROGRAM_COUNTER|q_aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PROGRAM_COUNTER|q_aux[15]~feeder_combout\,
	asdata => \STACK|ram~408_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \INSTR_DECODER|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROGRAM_COUNTER|q_aux\(15));

-- Location: LCCOMB_X21_Y13_N16
\PROGRAM_MEMORY|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux1~2_combout\ = (!\PROGRAM_COUNTER|q_aux\(15) & (\PROGRAM_MEMORY|Mux2~2_combout\ & !\PROGRAM_MEMORY|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux2~2_combout\,
	datad => \PROGRAM_MEMORY|Mux1~1_combout\,
	combout => \PROGRAM_MEMORY|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y11_N4
\INSTR_DECODER|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux10~5_combout\ = (\PROGRAM_MEMORY|Mux6~6_combout\ & (!\PROGRAM_COUNTER|q_aux\(15) & (!\PROGRAM_MEMORY|Mux0~3_combout\ & \PROGRAM_MEMORY|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux6~6_combout\,
	datab => \PROGRAM_COUNTER|q_aux\(15),
	datac => \PROGRAM_MEMORY|Mux0~3_combout\,
	datad => \PROGRAM_MEMORY|Mux2~8_combout\,
	combout => \INSTR_DECODER|Mux10~5_combout\);

-- Location: LCCOMB_X21_Y13_N0
\PROGRAM_MEMORY|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROGRAM_MEMORY|Mux6~7_combout\ = (\PROGRAM_MEMORY|Mux6~5_combout\) # ((\PROGRAM_COUNTER|q_aux\(5) & ((\PROGRAM_COUNTER|q_aux\(4)) # (!\PROGRAM_MEMORY|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|q_aux\(5),
	datab => \PROGRAM_COUNTER|q_aux\(4),
	datac => \PROGRAM_MEMORY|Mux6~5_combout\,
	datad => \PROGRAM_MEMORY|Mux6~2_combout\,
	combout => \PROGRAM_MEMORY|Mux6~7_combout\);

-- Location: LCCOMB_X21_Y13_N22
\INSTR_DECODER|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux10~2_combout\ = ((\PROGRAM_MEMORY|Mux0~4_combout\ & (!\PROGRAM_MEMORY|Mux7~2_combout\)) # (!\PROGRAM_MEMORY|Mux0~4_combout\ & ((\PROGRAM_MEMORY|Mux6~7_combout\)))) # (!\INSTR_DECODER|Mux12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~4_combout\,
	datab => \PROGRAM_MEMORY|Mux7~2_combout\,
	datac => \PROGRAM_MEMORY|Mux0~4_combout\,
	datad => \PROGRAM_MEMORY|Mux6~7_combout\,
	combout => \INSTR_DECODER|Mux10~2_combout\);

-- Location: LCCOMB_X24_Y11_N28
\INSTR_DECODER|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux10~3_combout\ = (!\PROGRAM_MEMORY|Mux2~8_combout\ & (\INSTR_DECODER|Mux10~2_combout\ & (\PROGRAM_MEMORY|Mux0~4_combout\ $ (\PROGRAM_MEMORY|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux2~8_combout\,
	datab => \PROGRAM_MEMORY|Mux0~4_combout\,
	datac => \PROGRAM_MEMORY|Mux3~3_combout\,
	datad => \INSTR_DECODER|Mux10~2_combout\,
	combout => \INSTR_DECODER|Mux10~3_combout\);

-- Location: LCCOMB_X24_Y11_N2
\INSTR_DECODER|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux10~4_combout\ = (\PROGRAM_MEMORY|Mux1~2_combout\ & ((\INSTR_DECODER|Mux10~3_combout\) # ((\INSTR_DECODER|Mux10~5_combout\ & !\INSTR_DECODER|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux1~2_combout\,
	datab => \INSTR_DECODER|Mux10~5_combout\,
	datac => \INSTR_DECODER|Mux0~6_combout\,
	datad => \INSTR_DECODER|Mux10~3_combout\,
	combout => \INSTR_DECODER|Mux10~4_combout\);

-- Location: LCCOMB_X22_Y10_N2
\REGE|MUX_R|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~7_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & (\REGE|GEN_REG:23:REG_INST|Q_aux\(0))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- ((\REGE|GEN_REG:19:REG_INST|Q_aux\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:23:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:19:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux7~7_combout\);

-- Location: LCCOMB_X22_Y10_N24
\REGE|MUX_R|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~8_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux7~7_combout\ & (\REGE|GEN_REG:31:REG_INST|Q_aux\(0))) # (!\REGE|MUX_R|Mux7~7_combout\ & ((\REGE|GEN_REG:27:REG_INST|Q_aux\(0)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:31:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:27:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_R|Mux7~7_combout\,
	combout => \REGE|MUX_R|Mux7~8_combout\);

-- Location: LCCOMB_X22_Y11_N18
\REGE|MUX_R|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~2_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|GEN_REG:21:REG_INST|Q_aux\(0)) # ((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & (((\REGE|GEN_REG:17:REG_INST|Q_aux\(0) & 
-- !\INSTR_DECODER|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:21:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|GEN_REG:17:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux7~2_combout\);

-- Location: LCCOMB_X22_Y11_N0
\REGE|MUX_R|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~3_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux7~2_combout\ & (\REGE|GEN_REG:29:REG_INST|Q_aux\(0))) # (!\REGE|MUX_R|Mux7~2_combout\ & ((\REGE|GEN_REG:25:REG_INST|Q_aux\(0)))))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:29:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:25:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_R|Mux7~2_combout\,
	combout => \REGE|MUX_R|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y14_N10
\REGE|MUX_R|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~4_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|GEN_REG:24:REG_INST|Q_aux\(0)) # ((\INSTR_DECODER|Mux12~6_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & (((\REGE|GEN_REG:16:REG_INST|Q_aux\(0) & 
-- !\INSTR_DECODER|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:24:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|GEN_REG:16:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux12~6_combout\,
	combout => \REGE|MUX_R|Mux7~4_combout\);

-- Location: LCCOMB_X23_Y14_N24
\REGE|MUX_R|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~5_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux7~4_combout\ & (\REGE|GEN_REG:28:REG_INST|Q_aux\(0))) # (!\REGE|MUX_R|Mux7~4_combout\ & ((\REGE|GEN_REG:20:REG_INST|Q_aux\(0)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:28:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:20:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_R|Mux7~4_combout\,
	combout => \REGE|MUX_R|Mux7~5_combout\);

-- Location: LCCOMB_X25_Y14_N26
\REGE|MUX_R|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~6_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (\INSTR_DECODER|Mux14~1_combout\)) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|MUX_R|Mux7~3_combout\)) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|MUX_R|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|MUX_R|Mux7~3_combout\,
	datad => \REGE|MUX_R|Mux7~5_combout\,
	combout => \REGE|MUX_R|Mux7~6_combout\);

-- Location: LCCOMB_X24_Y16_N30
\REGE|MUX_R|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~0_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & (((\INSTR_DECODER|Mux11~1_combout\)))) # (!\INSTR_DECODER|Mux12~6_combout\ & ((\INSTR_DECODER|Mux11~1_combout\ & (\REGE|GEN_REG:26:REG_INST|Q_aux\(0))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- ((\REGE|GEN_REG:18:REG_INST|Q_aux\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:26:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:18:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux11~1_combout\,
	combout => \REGE|MUX_R|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\REGE|MUX_R|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~1_combout\ = (\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux7~0_combout\ & (\REGE|GEN_REG:30:REG_INST|Q_aux\(0))) # (!\REGE|MUX_R|Mux7~0_combout\ & ((\REGE|GEN_REG:22:REG_INST|Q_aux\(0)))))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (((\REGE|MUX_R|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux12~6_combout\,
	datab => \REGE|GEN_REG:30:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:22:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_R|Mux7~0_combout\,
	combout => \REGE|MUX_R|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y14_N8
\REGE|MUX_R|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~9_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux7~6_combout\ & (\REGE|MUX_R|Mux7~8_combout\)) # (!\REGE|MUX_R|Mux7~6_combout\ & ((\REGE|MUX_R|Mux7~1_combout\))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux7~8_combout\,
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|MUX_R|Mux7~6_combout\,
	datad => \REGE|MUX_R|Mux7~1_combout\,
	combout => \REGE|MUX_R|Mux7~9_combout\);

-- Location: LCCOMB_X24_Y13_N26
\REGE|MUX_R|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~10_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & (((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & ((\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:9:REG_INST|Q_aux\(0))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- ((\REGE|GEN_REG:8:REG_INST|Q_aux\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:9:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:8:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux7~10_combout\);

-- Location: LCCOMB_X24_Y10_N12
\REGE|MUX_R|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~11_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|MUX_R|Mux7~10_combout\ & (\REGE|GEN_REG:11:REG_INST|Q_aux\(0))) # (!\REGE|MUX_R|Mux7~10_combout\ & ((\REGE|GEN_REG:10:REG_INST|Q_aux\(0)))))) # (!\INSTR_DECODER|Mux13~1_combout\ & 
-- (((\REGE|MUX_R|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:11:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:10:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_R|Mux7~10_combout\,
	combout => \REGE|MUX_R|Mux7~11_combout\);

-- Location: LCCOMB_X24_Y9_N30
\REGE|MUX_R|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~17_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:14:REG_INST|Q_aux\(0)) # ((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (((\REGE|GEN_REG:12:REG_INST|Q_aux\(0) & 
-- !\INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux13~1_combout\,
	datab => \REGE|GEN_REG:14:REG_INST|Q_aux\(0),
	datac => \REGE|GEN_REG:12:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux7~17_combout\);

-- Location: LCCOMB_X24_Y9_N16
\REGE|MUX_R|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~18_combout\ = (\REGE|MUX_R|Mux7~17_combout\ & (((\REGE|GEN_REG:15:REG_INST|Q_aux\(0))) # (!\INSTR_DECODER|Mux14~1_combout\))) # (!\REGE|MUX_R|Mux7~17_combout\ & (\INSTR_DECODER|Mux14~1_combout\ & (\REGE|GEN_REG:13:REG_INST|Q_aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux7~17_combout\,
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:13:REG_INST|Q_aux\(0),
	datad => \REGE|GEN_REG:15:REG_INST|Q_aux\(0),
	combout => \REGE|MUX_R|Mux7~18_combout\);

-- Location: LCCOMB_X25_Y12_N8
\REGE|MUX_R|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~14_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|GEN_REG:1:REG_INST|Q_aux\(0)) # ((\INSTR_DECODER|Mux13~1_combout\)))) # (!\INSTR_DECODER|Mux14~1_combout\ & (((\REGE|GEN_REG:0:REG_INST|Q_aux\(0) & 
-- !\INSTR_DECODER|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:1:REG_INST|Q_aux\(0),
	datab => \REGE|GEN_REG:0:REG_INST|Q_aux\(0),
	datac => \INSTR_DECODER|Mux14~1_combout\,
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux7~14_combout\);

-- Location: LCCOMB_X25_Y12_N22
\REGE|MUX_R|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~15_combout\ = (\REGE|MUX_R|Mux7~14_combout\ & ((\REGE|GEN_REG:3:REG_INST|Q_aux\(0)) # ((!\INSTR_DECODER|Mux13~1_combout\)))) # (!\REGE|MUX_R|Mux7~14_combout\ & (((\REGE|GEN_REG:2:REG_INST|Q_aux\(0) & \INSTR_DECODER|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:3:REG_INST|Q_aux\(0),
	datab => \REGE|GEN_REG:2:REG_INST|Q_aux\(0),
	datac => \REGE|MUX_R|Mux7~14_combout\,
	datad => \INSTR_DECODER|Mux13~1_combout\,
	combout => \REGE|MUX_R|Mux7~15_combout\);

-- Location: LCCOMB_X26_Y10_N10
\REGE|MUX_R|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~12_combout\ = (\INSTR_DECODER|Mux13~1_combout\ & ((\REGE|GEN_REG:6:REG_INST|Q_aux\(0)) # ((\INSTR_DECODER|Mux14~1_combout\)))) # (!\INSTR_DECODER|Mux13~1_combout\ & (((\REGE|GEN_REG:4:REG_INST|Q_aux\(0) & 
-- !\INSTR_DECODER|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:6:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux13~1_combout\,
	datac => \REGE|GEN_REG:4:REG_INST|Q_aux\(0),
	datad => \INSTR_DECODER|Mux14~1_combout\,
	combout => \REGE|MUX_R|Mux7~12_combout\);

-- Location: LCCOMB_X26_Y10_N16
\REGE|MUX_R|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~13_combout\ = (\INSTR_DECODER|Mux14~1_combout\ & ((\REGE|MUX_R|Mux7~12_combout\ & (\REGE|GEN_REG:7:REG_INST|Q_aux\(0))) # (!\REGE|MUX_R|Mux7~12_combout\ & ((\REGE|GEN_REG:5:REG_INST|Q_aux\(0)))))) # (!\INSTR_DECODER|Mux14~1_combout\ & 
-- (((\REGE|MUX_R|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|GEN_REG:7:REG_INST|Q_aux\(0),
	datab => \INSTR_DECODER|Mux14~1_combout\,
	datac => \REGE|GEN_REG:5:REG_INST|Q_aux\(0),
	datad => \REGE|MUX_R|Mux7~12_combout\,
	combout => \REGE|MUX_R|Mux7~13_combout\);

-- Location: LCCOMB_X25_Y12_N28
\REGE|MUX_R|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~16_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & (\INSTR_DECODER|Mux12~6_combout\)) # (!\INSTR_DECODER|Mux11~1_combout\ & ((\INSTR_DECODER|Mux12~6_combout\ & ((\REGE|MUX_R|Mux7~13_combout\))) # (!\INSTR_DECODER|Mux12~6_combout\ & 
-- (\REGE|MUX_R|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux11~1_combout\,
	datab => \INSTR_DECODER|Mux12~6_combout\,
	datac => \REGE|MUX_R|Mux7~15_combout\,
	datad => \REGE|MUX_R|Mux7~13_combout\,
	combout => \REGE|MUX_R|Mux7~16_combout\);

-- Location: LCCOMB_X25_Y12_N10
\REGE|MUX_R|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~19_combout\ = (\INSTR_DECODER|Mux11~1_combout\ & ((\REGE|MUX_R|Mux7~16_combout\ & ((\REGE|MUX_R|Mux7~18_combout\))) # (!\REGE|MUX_R|Mux7~16_combout\ & (\REGE|MUX_R|Mux7~11_combout\)))) # (!\INSTR_DECODER|Mux11~1_combout\ & 
-- (((\REGE|MUX_R|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGE|MUX_R|Mux7~11_combout\,
	datab => \INSTR_DECODER|Mux11~1_combout\,
	datac => \REGE|MUX_R|Mux7~18_combout\,
	datad => \REGE|MUX_R|Mux7~16_combout\,
	combout => \REGE|MUX_R|Mux7~19_combout\);

-- Location: LCCOMB_X25_Y14_N0
\REGE|MUX_R|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGE|MUX_R|Mux7~20_combout\ = (\INSTR_DECODER|Mux10~4_combout\ & (\REGE|MUX_R|Mux7~9_combout\)) # (!\INSTR_DECODER|Mux10~4_combout\ & ((\REGE|MUX_R|Mux7~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTR_DECODER|Mux10~4_combout\,
	datac => \REGE|MUX_R|Mux7~9_combout\,
	datad => \REGE|MUX_R|Mux7~19_combout\,
	combout => \REGE|MUX_R|Mux7~20_combout\);

-- Location: LCCOMB_X28_Y14_N8
\INSTR_DECODER|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \INSTR_DECODER|Mux24~0_combout\ = (\PROGRAM_MEMORY|Mux0~4_combout\ & (!\PROGRAM_MEMORY|Mux3~3_combout\ & (!\PROGRAM_MEMORY|Mux2~8_combout\ & \PROGRAM_MEMORY|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_MEMORY|Mux0~4_combout\,
	datab => \PROGRAM_MEMORY|Mux3~3_combout\,
	datac => \PROGRAM_MEMORY|Mux2~8_combout\,
	datad => \PROGRAM_MEMORY|Mux1~2_combout\,
	combout => \INSTR_DECODER|Mux24~0_combout\);

-- Location: FF_X25_Y14_N1
\PORT_OUT|O[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux7~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(0));

-- Location: FF_X26_Y14_N5
\PORT_OUT|O[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux6~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(1));

-- Location: FF_X26_Y14_N7
\PORT_OUT|O[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux5~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(2));

-- Location: FF_X26_Y14_N1
\PORT_OUT|O[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux4~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(3));

-- Location: FF_X24_Y14_N25
\PORT_OUT|O[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux3~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(4));

-- Location: FF_X25_Y13_N1
\PORT_OUT|O[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux2~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(5));

-- Location: FF_X24_Y14_N15
\PORT_OUT|O[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux1~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(6));

-- Location: FF_X26_Y15_N29
\PORT_OUT|O[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \REGE|MUX_R|Mux0~20_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \INSTR_DECODER|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PORT_OUT|O\(7));

ww_o(0) <= \o[0]~output_o\;

ww_o(1) <= \o[1]~output_o\;

ww_o(2) <= \o[2]~output_o\;

ww_o(3) <= \o[3]~output_o\;

ww_o(4) <= \o[4]~output_o\;

ww_o(5) <= \o[5]~output_o\;

ww_o(6) <= \o[6]~output_o\;

ww_o(7) <= \o[7]~output_o\;
END structure;


