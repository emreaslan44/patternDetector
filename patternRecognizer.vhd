----------------------------------------------------------------------------------
-- Company: Emre ASLAN
--------Recognize pattern of the "1101" as Mealy machine-----------




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity patternRecognizer is

Port (
    clk, reset, X: in  std_logic;
    Z: out std_logic
);
end patternRecognizer;

architecture Behavioral of patternRecognizer is

type state is (A,B,C,D);
signal present_ST, next_ST : state := A;


begin



clk_func_proces: process (clk, reset) begin

    
    
        if(reset = '1') then
            present_ST <=  A;   
        elsif ( falling_edge(clk)) then
            present_ST <= next_ST;
        end if;
        
end process;

main_func_process: process (X,present_ST,next_ST,clk) begin

--   if(rising_edge(clk)) then
    if (rising_edge(clk)) then  
    
    if(reset = '1' )  then
       next_ST <= A;   
    	       
    else
    


    
    case present_ST is 

	when A => 
	
	   Z <= '0';
	   
	   if(X = '0') then
	       next_ST <= A;   
	   else
	       next_ST <= B;      
	   end if;

	when B =>  
	   Z <= '0';
	   
	   if(X = '1') then
	       next_ST <= C;   
	   else
	       next_ST <= A;      
	   end if;	
	
    when C =>
    
	   Z <= '0';
	   
	   if(X = '1') then
	       next_ST <= C;   
	   else
	       next_ST <= D;      
	   end if;
	   
	when D=>
	   Z <= '1';
    if(X = '1') then
	       next_ST <= B;   
	    --   Z <= '1';
	   else
	       next_ST <= A;     
	   --    Z <= '0';   
	   end if;  
	   
   end case; 
     end if;
 end if;
end process;


end Behavioral;
