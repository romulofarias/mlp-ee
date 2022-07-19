-- Quartus II VHDL Template
-- Safe State Machine

library ieee;
use ieee.std_logic_1164.all;

entity safe_state_machine is

	port(
		clk	 : in	std_logic;
		input	 : in	std_logic;
		reset	 : in	std_logic;
		output : out	std_logic_vector(1 downto 0)
	);

end entity;

architecture rtl of safe_state_machine is

	-- Build an enumerated type for the state machine
	type state_type is (A, B, C, D, E, F, G, H, I);

	-- Register to hold the current state
	signal state   : state_type;

	-- Attribute "safe" implements a safe state machine.
	-- This is a state machine that can recover from an
	-- illegal state (by returning to the reset state).
	attribute syn_encoding : string;
	attribute syn_encoding of state_type : type is "safe";

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= A;
		elsif (rising_edge(clk)) then
			case state is
				when A=>
					if input = '1' then
						state <= B;
					else
						state <= A;
					end if;
				when B=>
					if input = '1' then
						state <= C;
					else
						state <= B;
					end if;
				when C=>
					if input = '1' then
						state <= A;
					else
						state <= C;
					end if;
			end case;
		end if;
	end process;

	-- Logic to determine output
	process (state)
	begin
		case state is
			when A =>
				output <= "00";
			when B =>
				output <= "01";
			when C =>
				output <= "10";
		end case;
	end process;

end rtl;
