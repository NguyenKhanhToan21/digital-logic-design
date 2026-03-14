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
-- CREATED		"Sun Oct 26 19:19:33 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALU4bit IS 
	PORT
	(
		S0 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S2 :  IN  STD_LOGIC;
		InputA :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputB :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		LEDG3 :  OUT  STD_LOGIC;
		LEDG2 :  OUT  STD_LOGIC;
		LEDG1 :  OUT  STD_LOGIC;
		LEDG0 :  OUT  STD_LOGIC;
		LEDG5 :  OUT  STD_LOGIC
	);
END ALU4bit;

ARCHITECTURE bdf_type OF ALU4bit IS 

COMPONENT alu1bit
	PORT(CinDecrement : IN STD_LOGIC;
		 CinSub : IN STD_LOGIC;
		 CinIncrement : IN STD_LOGIC;
		 CinAdd : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 DeCarry : OUT STD_LOGIC;
		 SubCarry : OUT STD_LOGIC;
		 InCarry : OUT STD_LOGIC;
		 AddCarry : OUT STD_LOGIC;
		 Output : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mu2to1
	PORT(I0 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 S : IN STD_LOGIC;
		 Y : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	LEDG_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_22 <= '0';
SYNTHESIZED_WIRE_23 <= '1';




b2v_inst1 : alu1bit
PORT MAP(CinDecrement => SYNTHESIZED_WIRE_0,
		 CinSub => SYNTHESIZED_WIRE_1,
		 CinIncrement => SYNTHESIZED_WIRE_2,
		 CinAdd => SYNTHESIZED_WIRE_3,
		 A => InputA(2),
		 B => InputB(2),
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 DeCarry => SYNTHESIZED_WIRE_12,
		 SubCarry => SYNTHESIZED_WIRE_24,
		 InCarry => SYNTHESIZED_WIRE_14,
		 AddCarry => SYNTHESIZED_WIRE_25);


b2v_inst1000 : alu1bit
PORT MAP(CinDecrement => SYNTHESIZED_WIRE_22,
		 CinSub => SYNTHESIZED_WIRE_23,
		 CinIncrement => SYNTHESIZED_WIRE_23,
		 CinAdd => SYNTHESIZED_WIRE_22,
		 A => InputA(0),
		 B => InputB(0),
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 DeCarry => SYNTHESIZED_WIRE_8,
		 SubCarry => SYNTHESIZED_WIRE_9,
		 InCarry => SYNTHESIZED_WIRE_10,
		 AddCarry => SYNTHESIZED_WIRE_11);


b2v_inst2000 : alu1bit
PORT MAP(CinDecrement => SYNTHESIZED_WIRE_8,
		 CinSub => SYNTHESIZED_WIRE_9,
		 CinIncrement => SYNTHESIZED_WIRE_10,
		 CinAdd => SYNTHESIZED_WIRE_11,
		 A => InputA(1),
		 B => InputB(1),
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 DeCarry => SYNTHESIZED_WIRE_0,
		 SubCarry => SYNTHESIZED_WIRE_1,
		 InCarry => SYNTHESIZED_WIRE_2,
		 AddCarry => SYNTHESIZED_WIRE_3);


b2v_inst300 : alu1bit
PORT MAP(CinDecrement => SYNTHESIZED_WIRE_12,
		 CinSub => SYNTHESIZED_WIRE_24,
		 CinIncrement => SYNTHESIZED_WIRE_14,
		 CinAdd => SYNTHESIZED_WIRE_25,
		 A => InputA(3),
		 B => InputB(3),
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 SubCarry => SYNTHESIZED_WIRE_18,
		 AddCarry => SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_25 XOR SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_18 XOR SYNTHESIZED_WIRE_24;


b2v_inst6 : mu2to1
PORT MAP(I0 => SYNTHESIZED_WIRE_20,
		 I1 => SYNTHESIZED_WIRE_21,
		 S => S1,
		 Y => LEDG5);



END bdf_type;