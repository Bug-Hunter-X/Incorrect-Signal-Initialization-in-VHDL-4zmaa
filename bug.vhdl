```vhdl
entity example is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (7 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture behavioral of example is
    signal temp : STD_LOGIC_VECTOR (7 downto 0) := x"00"; -- Initialization with invalid value
begin
    process (clk, reset)
    begin
        if reset = '1' then
            temp <= x"00";
        elsif rising_edge(clk) then
            temp <= data_in;
            data_out <= temp;
        end if;
    end process;
end architecture;
```