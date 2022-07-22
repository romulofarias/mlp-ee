-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity counter is
    generic
    (
        MIN_COUNT: natural := 0;
        MAX_COUNT: natural := 7
    );
    port
    (
        clk: in std_logic;
        reset: in std_logic;
        enable: in std_logic;
        --q         : out integer range MIN_COUNT to MAX_COUNT
        HEX0: out std_logic_vector (6 downto 0)
    );
end entity;

architecture rtl of counter is
	component decoder is
    port
	(
		decoder_in: in  STD_LOGIC_VECTOR (2 downto 0);
 		decoder_out: out STD_LOGIC_VECTOR (6 downto 0)
    );
    end component;
    signal q: std_logic_vector (2 downto 0);
begin
    dcode: decoder port map (q, HEX0);
    process (clk)
        variable cnt: integer range MIN_COUNT to MAX_COUNT;
    begin
        if reset = '1' then
            cnt := 0;
        elsif rising_edge(clk) then
            if enable = '1' then
                -- Increment the counter if counting is enabled            
                cnt := cnt + 1;
            end if;
        end if;
        -- Output the current count
        q <= std_logic_vector(to_unsigned(cnt,3));
    end process;
end rtl;
