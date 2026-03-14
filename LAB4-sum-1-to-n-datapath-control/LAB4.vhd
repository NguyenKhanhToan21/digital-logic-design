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
-- CREATED		"Sat Nov 22 15:02:10 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY LAB4 IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		E :  IN  STD_LOGIC;
		D_reg :  IN  STD_LOGIC;
		S :  IN  STD_LOGIC;
		OE :  IN  STD_LOGIC;
		Load :  IN  STD_LOGIC;
		Select_mux :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC_VECTOR(0 TO 7);
		i :  OUT  STD_LOGIC;
		O :  OUT  STD_LOGIC_VECTOR(0 TO 7)
	);
END LAB4;

ARCHITECTURE bdf_type OF LAB4 IS 

COMPONENT adder8bit
	PORT(A : IN STD_LOGIC_VECTOR(0 TO 7);
		 B : IN STD_LOGIC_VECTOR(0 TO 7);
		 S : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;

COMPONENT regcounter
	PORT(E : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 S : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 I : IN STD_LOGIC_VECTOR(0 TO 7);
		 OutCarry : OUT STD_LOGIC;
		 Y : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;

COMPONENT tri8bit
	PORT(D : IN STD_LOGIC;
		 Q : IN STD_LOGIC_VECTOR(0 TO 7);
		 O : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;

COMPONENT nor8bit
	PORT(Y : IN STD_LOGIC_VECTOR(0 TO 7);
		 O : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux8bit
	PORT(S : IN STD_LOGIC;
		 S0 : IN STD_LOGIC_VECTOR(0 TO 7);
		 S1 : IN STD_LOGIC_VECTOR(0 TO 7);
		 O : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;

COMPONENT acc
	PORT(Load : IN STD_LOGIC;
		 IL : IN STD_LOGIC;
		 IR : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 I : IN STD_LOGIC_VECTOR(0 TO 7);
		 Q : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(0 TO 7);


BEGIN 
SYNTHESIZED_WIRE_5 <= "00000000";
SYNTHESIZED_WIRE_11 <= '0';




b2v_inst1 : adder8bit
PORT MAP(A => SYNTHESIZED_WIRE_9,
		 B => SYNTHESIZED_WIRE_10,
		 S => SYNTHESIZED_WIRE_4);



b2v_inst13 : regcounter
PORT MAP(E => E,
		 D => D_reg,
		 S => S,
		 CLK => CLK,
		 I => B,
		 Y => SYNTHESIZED_WIRE_9);


b2v_inst3 : tri8bit
PORT MAP(D => OE,
		 Q => SYNTHESIZED_WIRE_10,
		 O => O);


b2v_inst5 : nor8bit
PORT MAP(Y => SYNTHESIZED_WIRE_9,
		 O => i);


b2v_inst8 : mux8bit
PORT MAP(S => Select_mux,
		 S0 => SYNTHESIZED_WIRE_4,
		 S1 => SYNTHESIZED_WIRE_5,
		 O => SYNTHESIZED_WIRE_8);


b2v_inst9 : acc
PORT MAP(Load => Load,
		 IL => SYNTHESIZED_WIRE_11,
		 IR => SYNTHESIZED_WIRE_11,
		 CLK => CLK,
		 I => SYNTHESIZED_WIRE_8,
		 Q => SYNTHESIZED_WIRE_10);


END bdf_type;