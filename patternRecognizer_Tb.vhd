----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/07/2022 07:01:16 PM
-- Design Name: 
-- Module Name: patternRecognizer_Tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity patternRecognizer_Tb is
-- Port ( );
end patternRecognizer_Tb;

architecture Behavioral of patternRecognizer_Tb is

component patternRecognizer is

Port (
    clk, reset, X: in  std_logic;
    Z: out std_logic
);
end component;




signal clk,reset,X : std_logic := '0';
signal Z: std_logic;


begin

main_map: patternRecognizer port map(
    X =>X,
    clk =>clk,
    reset => reset,
    Z  => Z
);

clk_process: process begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
end process;

main_process: process begin
--- "1101"

    X<= '0';
    reset<= '1';
    wait for 5ns;
    
    X<= '1';
    reset<= '0';
    wait for 6ns;
     
    X<= '1';
    reset<= '0';
    wait for 5ns;
         
    X<= '0';
    reset<= '0';
    wait for 5ns;
        
    X<= '1';
    reset<= '0';
    wait for 5ns;
            
    X<= '1';
    reset<= '0';
    wait for 5ns;
     
    X<= '1';
    reset<= '0';
    wait for 15ns;
    
    X<= '0';
    reset<= '0';
    wait for 15ns;
    
    X<= '1';
    reset<= '0';
    wait;
    
end process;
end Behavioral;
