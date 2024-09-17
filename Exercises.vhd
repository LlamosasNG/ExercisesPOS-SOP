LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exercises IS
	PORT(
		a, b, c, d : IN std_logic;
		outputs : OUT std_logic_vector(7 DOWNTO 0) 
	);
END Exercises;

ARCHITECTURE Practice01 OF Exercises IS

	BEGIN 
		outputs(0) <= NOT (a XOR b);
		outputs(1) <= (a AND (NOT b)) OR c;
		outputs(2) <= ((NOT a) AND b AND (NOT d)) OR (a AND (NOT b) AND (NOT c) AND d) OR ((NOT a) AND c AND d) OR (b AND c AND (NOT d));
		outputs(3) <= ((NOT a) AND (NOT b) AND d) OR (a AND b AND d) OR ((NOT b) AND (NOT c) AND d) OR (a AND (NOT b) AND c AND (NOT d));
		outputs(4) <= ((NOT a) AND (NOT d)) OR (c AND (NOT d)) OR (b AND (NOT d)) OR (a AND (NOT b) AND d);
		outputs(5) <= (a OR b OR (NOT c)) AND (b OR (NOT c) OR d) AND ((NOT a) OR (NOT b) OR (NOT c) OR (NOT d));
		outputs(6) <= (a OR b OR c) AND ((NOT a) OR c OR (NOT d)) AND ((NOT a) OR (NOT b) OR (NOT c));
		outputs(7) <= (a oR b or c) AND (a OR (NOT b) OR (NOT c)) AND ((NOT a) OR b OR (NOT d));
END Practice01;