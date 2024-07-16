-- hps_reset.vhd

-- Generated using ACDS version 17.1 590

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hps_reset is
	port (
		source_clk : in  std_logic                    := '0'; -- source_clk.clk
		source     : out std_logic_vector(2 downto 0)         --    sources.source
	);
end entity hps_reset;

architecture rtl of hps_reset is
	component altsource_probe_top is
		generic (
			sld_auto_instance_index : string  := "YES";
			sld_instance_index      : integer := 0;
			instance_id             : string  := "NONE";
			probe_width             : integer := 1;
			source_width            : integer := 1;
			source_initial_value    : string  := "0";
			enable_metastability    : string  := "NO"
		);
		port (
			source     : out std_logic_vector(2 downto 0);        -- source
			source_clk : in  std_logic                    := 'X'; -- clk
			source_ena : in  std_logic                    := 'X'  -- source_ena
		);
	end component altsource_probe_top;

begin

	in_system_sources_probes_0 : component altsource_probe_top
		generic map (
			sld_auto_instance_index => "YES",
			sld_instance_index      => 0,
			instance_id             => "RST",
			probe_width             => 0,
			source_width            => 3,
			source_initial_value    => "0",
			enable_metastability    => "YES"
		)
		port map (
			source     => source,     --    sources.source
			source_clk => source_clk, -- source_clk.clk
			source_ena => '1'         -- (terminated)
		);

end architecture rtl; -- of hps_reset
