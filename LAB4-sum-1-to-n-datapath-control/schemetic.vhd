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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Nov 22 15:10:34 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY schemetic IS 
	PORT
	(
		start :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(0 TO 7);
		Output :  OUT  STD_LOGIC_VECTOR(0 TO 7)
	);
END schemetic;

ARCHITECTURE bdf_type OF schemetic IS 

COMPONENT controller
	PORT(start : IN STD_LOGIC;
		 i : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 Select_mux : OUT STD_LOGIC;
		 S : OUT STD_LOGIC;
		 E : OUT STD_LOGIC;
		 D : OUT STD_LOGIC;
		 OE : OUT STD_LOGIC;
		 Load : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lab4
	PORT(Select_mux : IN STD_LOGIC;
		 E : IN STD_LOGIC;
		 D_reg : IN STD_LOGIC;
		 S : IN STD_LOGIC;
		 Load : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 OE : IN STD_LOGIC;
		 B : IN STD_LOGIC_VECTOR(0 TO 7);
		 i : OUT STD_LOGIC;
		 O : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



b2v_inst : controller
PORT MAP(start => start,
		 i => SYNTHESIZED_WIRE_0,
		 CLK => CLK,
		 Select_mux => SYNTHESIZED_WIRE_1,
		 S => SYNTHESIZED_WIRE_4,
		 E => SYNTHESIZED_WIRE_2,
		 D => SYNTHESIZED_WIRE_3,
		 OE => SYNTHESIZED_WIRE_6,
		 Load => SYNTHESIZED_WIRE_5);


b2v_inst1 : lab4
PORT MAP(Select_mux => SYNTHESIZED_WIRE_1,
		 E => SYNTHESIZED_WIRE_2,
		 D_reg => SYNTHESIZED_WIRE_3,
		 S => SYNTHESIZED_WIRE_4,
		 Load => SYNTHESIZED_WIRE_5,
		 CLK => CLK,
		 OE => SYNTHESIZED_WIRE_6,
		 B => Input,
		 i => SYNTHESIZED_WIRE_0,
		 O => Output);


END bdf_type;