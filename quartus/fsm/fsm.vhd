-- Quartus II VHDL Template
-- Safe State Machine

library ieee;
use ieee.std_logic_1164.all;

entity fsm is

    port(
        clk  : in   std_logic;
        input    : in   std_logic;
        reset    : in   std_logic;
        output : out    std_logic
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
        if reset = '1' then
            state <= A; output <= '0';
        elsif (rising_edge(clk)) then
            case state is
                when A=>
                    if input = '1' then
                        state <= F; 
                    else
                        state <= B;
                    end if;
                    output <= '0';
                when B=>
                    if input = '1' then
                        state <= F;
                    else
                        state <= C;
                    end if;
                    output <= '0';
                when C=>
                    if input = '1' then
                        state <= F;
                    else
                        state <= D;
                    end if;
                    output <= '0';
                when D=>
                    if input = '1' then
                        state <= F;
                        output <= '0';
                    else
                        state <= E;
                        output <= '1';
                    end if;
                when E=>
                    if input = '1' then
                        state <= F;
                        output <= '0';
                    else
                        state <= E;
                        output <= '1';
                    end if;
                when F=>
                    if input = '1' then
                        state <= G;
                    else
                        state <= B;
                    end if;
                    output <= '0';
                when G=>
                    if input = '1' then
                        state <= H;
                    else
                        state <= B;
                    end if;
                    output <= '0';
                when H=>
                    if input = '1' then
                        state <= I;
                        output <= '1';
                    else
                        state <= B;
                        output <= '0';
                    end if;
                when I=>
                    if input = '1' then
                        state <= I;
                        output <= '1';
                    else
                        state <= B;
                        output <= '0';
                    end if;
            end case;
        end if;
    end process;

    -- Logic to determine output code
    process (state)
        variable code: string(1 to 9) := "000000000";
    begin
        case state is
            when A =>
                code := "000000001";
            when B =>
                code := "000000010";
            when C =>
                code := "000000100";
            when D =>
                code := "000001000";
            when E =>
                code := "000010000";
            when F =>
                code := "000100000";
            when G =>
                code := "001000000";
            when H =>
                code := "010000000";
            when I =>
                code := "100000000";
        end case;
    end process;

end rtl;
