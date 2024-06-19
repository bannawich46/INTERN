library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity GPIO_IP is
	generic (
		DATA_WIDTH : integer := 8;  -- Number of bits for input/output
		PIO_DIRECTION : string := "OUTPUT"  -- Direction: "INPUT", "OUTPUT"
	);
	Port (
		clk				: in std_logic;
		reset_n			: in std_logic;
		address			: in std_logic_vector(1 downto 0);
		read			: in std_logic;
		readdata		: out std_logic_vector(31 downto 0);
		write			: in std_logic;
		writedata		: in std_logic_vector(31 downto 0);
		chipselect		: in std_logic;  -- Chip select signal
		pio_output		: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end entity GPIO_IP;

Architecture RTL Of GPIO_IP Is
	signal data : std_logic_vector(31 downto 0) := (others => '0');
Begin
	Process(clk, reset_n)
	Begin
		if reset_n = '0' then
			data <= (others => '0');
		elsif rising_edge(clk) then
			if chipselect = '1' then  -- Check chip select
				if write = '1' then
					-- if address = "00" then
					data <= writedata;
					-- end if;
				end if;
				if read = '1' then
					-- if address = "00" then
					readdata <= data;
					-- end if;
				end if;
			end if;
		end if;
	End Process;

	-- Handle PIO direction
	pio_output <= data(DATA_WIDTH-1 downto 0) when PIO_DIRECTION = "OUTPUT" else (others => 'Z');
End Architecture RTL;