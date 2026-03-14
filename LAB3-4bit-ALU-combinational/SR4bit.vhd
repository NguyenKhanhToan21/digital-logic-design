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
-- CREATED		"Thu Oct 30 19:41:33 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SR4bit IS 
	PORT
	(
		I3 :  IN  STD_LOGIC;
		I2 :  IN  STD_LOGIC;
		I1 :  IN  STD_LOGIC;
		I0 :  IN  STD_LOGIC;
		IR :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		Y3 :  OUT  STD_LOGIC;
		Y2 :  OUT  STD_LOGIC;
		Y1 :  OUT  STD_LOGIC;
		Y0 :  OUT  STD_LOGIC
	);
END SR4bit;

ARCHITECTURE bdf_type OF SR4bit IS 

COMPONENT mux4to1
	PORT(I3 : IN STD_LOGIC;
		 I2 : IN STD_LOGIC;
		 I1 : IN STD_LOGIC;
		 I0 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 Y : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	DFF_inst5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
Y3 <= DFF_inst5;
Y2 <= SYNTHESIZED_WIRE_6;
Y1 <= SYNTHESIZED_WIRE_5;
Y0 <= SYNTHESIZED_WIRE_4;



b2v_inst : mux4to1
PORT MAP(I2 => IR,
		 I1 => I0,
		 I0 => SYNTHESIZED_WIRE_4,
		 S1 => S1,
		 S0 => S0,
		 Y => SYNTHESIZED_WIRE_3);


b2v_inst1 : mux4to1
PORT MAP(I2 => SYNTHESIZED_WIRE_4,
		 I1 => I1,
		 I0 => SYNTHESIZED_WIRE_5,
		 S1 => S1,
		 S0 => S0,
		 Y => SYNTHESIZED_WIRE_2);


b2v_inst2 : mux4to1
PORT MAP(I2 => SYNTHESIZED_WIRE_5,
		 I1 => I2,
		 I0 => SYNTHESIZED_WIRE_6,
		 S1 => S1,
		 S0 => S0,
		 Y => SYNTHESIZED_WIRE_1);


b2v_inst3 : mux4to1
PORT MAP(I2 => SYNTHESIZED_WIRE_6,
		 I1 => I3,
		 I0 => DFF_inst5,
		 S1 => S1,
		 S0 => S0,
		 Y => SYNTHESIZED_WIRE_0);


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	DFF_inst5 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_3;
END IF;
END PROCESS;


END bdf_type;