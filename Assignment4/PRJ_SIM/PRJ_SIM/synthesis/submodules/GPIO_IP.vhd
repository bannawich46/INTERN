library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity GPIO_IP is
	generic (
		wDATA_WIDTH		: integer := 8  -- Bit width of GPIO pins
	);
	
	Port (
		CLK				: in std_logic;
		RST_L			: in std_logic;
		iADDRESS		: in std_logic_vector(1 downto 0);
		iREAD			: in std_logic;
		iREADDATA		: out std_logic_vector(31 downto 0);
		iWRITE			: in std_logic;
		iWRITEDATA		: in std_logic_vector(31 downto 0);
		iCHIPSELECT		: in std_logic;  -- Chip select signal
		PIO_EXTERNAL	: inout std_logic_vector(wDATA_WIDTH-1 downto 0)
	);
end entity GPIO_IP;

Architecture RTL Of GPIO_IP Is
	signal wDATA		: std_logic_vector(wDATA_WIDTH-1 downto 0);
	signal wDIR			: std_logic_vector(wDATA_WIDTH-1 downto 0);
	signal wREADDATA	: std_logic_vector(31 downto 0);
	signal wGPIO_IN		: std_logic_vector(wDATA_WIDTH-1 downto 0);
	signal wGPIO_OUT	: std_logic_vector(wDATA_WIDTH-1 downto 0);
	signal wGPIO_EN		: std_logic_vector(wDATA_WIDTH-1 downto 0);
Begin
	Process(CLK, RST_L)
	Begin
		if RST_L = '0' then
			wDATA <= (others => '0');
			wDIR <= (others => '1');
			wREADDATA <= (others => '0');
		elsif rising_edge(CLK) then
			if iCHIPSELECT = '1' then  -- Check chip select
				if iWRITE = '1' then
					case iADDRESS is
						when "00" =>
							wDATA <= iWRITEDATA(wDATA_WIDTH-1 downto 0);
						when "01" =>
							wDIR <= iWRITEDATA(wDATA_WIDTH-1 downto 0);
						when others =>
							null;
					end case;
				end if;
				if iREAD = '1' then
					case iADDRESS is
						when "00" =>
							wREADDATA(31 downto wDATA_WIDTH) <= (others => '0');
							wREADDATA(wDATA_WIDTH-1 downto 0) <= wDATA;
						when "01" =>
							wREADDATA(31 downto wDATA_WIDTH) <= (others => '0');
							wREADDATA(wDATA_WIDTH-1 downto 0) <= wDIR;
						when others =>
							null;
					end case;
				end if;
			end if;
		end if;
	End Process;

	iREADDATA <= wREADDATA;

	-- Bidirectional GPIO pins
	Process (wDIR, wDATA, PIO_EXTERNAL)
	Begin
		for i in 0 to wDATA_WIDTH-1 loop
			if wDIR(i) = '1' then
				wGPIO_OUT(i) <= wDATA(i);
				wGPIO_EN(i) <= '1';
				wGPIO_IN(i) <= '0';
			else
				wGPIO_OUT(i) <= '0';
				wGPIO_EN(i) <= '0';
				wGPIO_IN(i) <= PIO_EXTERNAL(i);
			end if;
		end loop;
	End process;

	-- Tri-state buffer for GPIO pins
	gen_gpio: for i in 0 to wDATA_WIDTH-1 generate
		PIO_EXTERNAL(i) <= wGPIO_OUT(i) when wGPIO_EN(i) = '1' else 'Z';
		wDATA(i) <= wGPIO_IN(i) when wGPIO_EN(i) = '0' else 'Z';
	end generate;
	
End Architecture RTL;