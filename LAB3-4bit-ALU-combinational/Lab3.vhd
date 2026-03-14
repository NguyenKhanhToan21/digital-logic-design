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
-- CREATED		"Thu Oct 30 19:40:02 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Lab3 IS 
	PORT
	(
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		InputA :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputB :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		OE :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END Lab3;

ARCHITECTURE bdf_type OF Lab3 IS 

COMPONENT multiplicant
	PORT(I3 : IN STD_LOGIC;
		 I2 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 I0 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 IL : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 Y2 : OUT STD_LOGIC;
		 Y0 : OUT STD_LOGIC;
		 Y3 : OUT STD_LOGIC;
		 Y1 : OUT STD_LOGIC;
		 Y7 : OUT STD_LOGIC;
		 Y5 : OUT STD_LOGIC;
		 Y4 : OUT STD_LOGIC;
		 Y6 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fulladder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mu2to1
	PORT(I0 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 S : IN STD_LOGIC;
		 Y : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sr4bit
	PORT(I3 : IN STD_LOGIC;
		 I2 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 I0 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 IR : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 Y2 : OUT STD_LOGIC;
		 Y0 : OUT STD_LOGIC;
		 Y3 : OUT STD_LOGIC;
		 Y1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	I0 :  STD_LOGIC;
SIGNAL	I1 :  STD_LOGIC;
SIGNAL	I2 :  STD_LOGIC;
SIGNAL	I3 :  STD_LOGIC;
SIGNAL	S :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;


BEGIN 
OE(0) <= SYNTHESIZED_WIRE_2;
OE(1) <= SYNTHESIZED_WIRE_7;
OE(2) <= SYNTHESIZED_WIRE_16;
OE(3) <= SYNTHESIZED_WIRE_4;
SYNTHESIZED_WIRE_0 <= '0';
SYNTHESIZED_WIRE_9 <= '0';
SYNTHESIZED_WIRE_14 <= '0';
SYNTHESIZED_WIRE_18 <= '1';
SYNTHESIZED_WIRE_20 <= '0';
SYNTHESIZED_WIRE_21 <= '0';
SYNTHESIZED_WIRE_22 <= '0';
SYNTHESIZED_WIRE_23 <= '0';




b2v_inst : multiplicant
PORT MAP(I3 => InputA(3),
		 I2 => InputA(2),
		 I1 => InputA(1),
		 I0 => InputA(0),
		 S1 => S1,
		 S0 => S0,
		 IL => SYNTHESIZED_WIRE_0,
		 CLK => CLK,
		 Y2 => SYNTHESIZED_WIRE_15,
		 Y0 => SYNTHESIZED_WIRE_1,
		 Y3 => SYNTHESIZED_WIRE_3,
		 Y1 => SYNTHESIZED_WIRE_6);


b2v_inst10 : fulladder
PORT MAP(A => SYNTHESIZED_WIRE_1,
		 B => SYNTHESIZED_WIRE_2,
		 S => I0,
		 Cout => SYNTHESIZED_WIRE_8);


b2v_inst11 : fulladder
PORT MAP(A => SYNTHESIZED_WIRE_3,
		 B => SYNTHESIZED_WIRE_4,
		 Cin => SYNTHESIZED_WIRE_5,
		 S => I3);


b2v_inst12 : fulladder
PORT MAP(A => SYNTHESIZED_WIRE_6,
		 B => SYNTHESIZED_WIRE_7,
		 Cin => SYNTHESIZED_WIRE_8,
		 S => I1,
		 Cout => SYNTHESIZED_WIRE_17);


b2v_inst1239 : mu2to1
PORT MAP(I0 => SYNTHESIZED_WIRE_9,
		 I1 => I1,
		 S => S,
		 Y => SYNTHESIZED_WIRE_12);


b2v_inst13 : multiplicant
PORT MAP(I3 => SYNTHESIZED_WIRE_10,
		 I2 => SYNTHESIZED_WIRE_11,
		 I1 => SYNTHESIZED_WIRE_12,
		 I0 => SYNTHESIZED_WIRE_13,
		 S1 => S1,
		 S0 => S0,
		 IL => SYNTHESIZED_WIRE_14,
		 CLK => CLK,
		 Y2 => SYNTHESIZED_WIRE_16,
		 Y0 => SYNTHESIZED_WIRE_2,
		 Y3 => SYNTHESIZED_WIRE_4,
		 Y1 => SYNTHESIZED_WIRE_7,
		 Y7 => OE(7),
		 Y5 => OE(5),
		 Y4 => OE(4),
		 Y6 => OE(6));


b2v_inst14 : fulladder
PORT MAP(A => SYNTHESIZED_WIRE_15,
		 B => SYNTHESIZED_WIRE_16,
		 Cin => SYNTHESIZED_WIRE_17,
		 S => I2,
		 Cout => SYNTHESIZED_WIRE_5);


S <= SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_19;



b2v_inst5 : mu2to1
PORT MAP(I0 => SYNTHESIZED_WIRE_20,
		 I1 => I2,
		 S => S,
		 Y => SYNTHESIZED_WIRE_11);





b2v_inst9 : sr4bit
PORT MAP(I3 => InputB(3),
		 I2 => InputB(2),
		 I1 => InputB(1),
		 I0 => InputB(0),
		 S1 => S1,
		 S0 => S0,
		 IR => SYNTHESIZED_WIRE_21,
		 CLK => CLK,
		 Y0 => SYNTHESIZED_WIRE_19);


b2v_inst90 : mu2to1
PORT MAP(I0 => SYNTHESIZED_WIRE_22,
		 I1 => I0,
		 S => S,
		 Y => SYNTHESIZED_WIRE_13);


b2v_inst9123 : mu2to1
PORT MAP(I0 => SYNTHESIZED_WIRE_23,
		 I1 => I3,
		 S => S,
		 Y => SYNTHESIZED_WIRE_10);





END bdf_type;