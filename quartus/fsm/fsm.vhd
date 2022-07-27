-- Quartus II VHDL Template
-- Safe State Machine

library ieee;
use ieee.std_logic_1164.all;

entity fsm is

    port(
        clk: in std_logic;
        input: in std_logic;
        reset: in std_logic;
        output: out std_logic;
        code: out std_logic_vector (8 downto 0)
    );

end entity;

architecture rtl of fsm is

    -- Build an enumerated type for the state machine
    type state_type is (A, B, C, D, E, F, G, H, I);

    -- Register to hold the current state
    signal state: state_type;

    -- Attribute "safe" implements a safe state machine.
    -- This is a state machine that can recover from an
    -- illegal state (by returning to the reset state).
    attribute syn_encoding: string;
    attribute syn_encoding of state_type : type is "safe";

begin

    -- Logic to advance to the next state
    process (clk, reset)
    begin
        if falling_edge(clk) then
            if reset = '0' then
                state <= A;
            else
            case state is
                when A=>
                    if input = '1' then
                        state <= F; 
                    else
                        state <= B;
                    end if;
                when B=>
                    if input = '1' then
                        state <= F;
                    else
                        state <= C;
                    end if;
                when C=>
                    if input = '1' then
                        state <= F;
                    else
                        state <= D;
                    end if;
                when D=>
                    if input = '1' then
                        state <= F;
                    else
                        state <= E;
                    end if;
                when E=>
                    if input = '1' then
                        state <= F;
                    else
                        state <= E;
                    end if;
                when F=>
                    if input = '1' then
                        state <= G;
                    else
                        state <= B;
                    end if;
                when G=>
                    if input = '1' then
                        state <= H;
                    else
                        state <= B;
                    end if;
                when H=>
                    if input = '1' then
                        state <= I;
                    else
                        state <= B;
                    end if;
                when I=>
                    if input = '1' then
                        state <= I;
                    else
                        state <= B;
                    end if;
            end case;
				end if;
        end if;
    end process;

    -- Logic to determine output code
    process (state)
    begin
        case state is
            when A =>
                code <= "000000001";
                output <= '0';
            when B =>
                code <= "000000010";
                output <= '0';
            when C =>
                code <= "000000100";
                output <= '0';
            when D =>
                code <= "000001000";
                output <= '0';
            when E =>
                code <= "000010000";
                output <= '1';
            when F =>
                code <= "000100000";
                output <= '0';
            when G =>
                code <= "001000000";
                output <= '0';
            when H =>
                code <= "010000000";
                output <= '0';
            when I =>
                code <= "100000000";
                output <= '1';
        end case;
    end process;

end rtl;
