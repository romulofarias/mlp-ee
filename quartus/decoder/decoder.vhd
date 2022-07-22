library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
 port
 ( 
     decoder_in: in  STD_LOGIC_VECTOR (2 downto 0);  
     decoder_out: out STD_LOGIC_VECTOR (6 downto 0)
 );
end decoder;

architecture Behavorial of decoder is
begin
    process(decoder_in)
    begin
        case decoder_in is
            when "000" => decoder_out <= "0000001"; -- 0
            when "001" => decoder_out <= "1001111"; -- 1
            when "010" => decoder_out <= "0010010"; -- 2
            when "011" => decoder_out <= "0000110"; -- 3
            when "100" => decoder_out <= "1001100"; -- 4
            when "101" => decoder_out <= "0100100"; -- 5
            when "110" => decoder_out <= "0100000"; -- 6
            when "111" => decoder_out <= "0001111"; -- 7
            when others => decoder_out <= "0110000"; -- Error
        end case;
    end process;
end Behavorial;

