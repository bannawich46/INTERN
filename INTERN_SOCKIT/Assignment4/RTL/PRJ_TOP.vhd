library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_ARITH.all;
use IEEE.std_logic_UNSIGNED.all;

Entity PRJ_TOP Is
	Port
	(
		HPS_CONV_USB_n		: inout		std_logic;

		HPS_DDR3_ADDR		: out		std_logic_vector(14 downto 0);
		HPS_DDR3_BA			: out		std_logic_vector(2 downto 0);
		HPS_DDR3_CAS_N		: out		std_logic;
		HPS_DDR3_CKE		: out		std_logic;
		HPS_DDR3_CK_N		: out		std_logic;
		HPS_DDR3_CK_P		: out		std_logic;
		HPS_DDR3_CS_N		: out		std_logic;
		HPS_DDR3_DM			: out		std_logic_vector(3 downto 0);
		HPS_DDR3_DQ			: inout		std_logic_vector(31 downto 0);
		HPS_DDR3_DQS_N		: inout		std_logic_vector(3 downto 0);
		HPS_DDR3_DQS_P		: inout		std_logic_vector(3 downto 0);
		HPS_DDR3_ODT		: out		std_logic;
		HPS_DDR3_RAS_N		: out		std_logic;
		HPS_DDR3_RESET_N	: out		std_logic;
		HPS_DDR3_RZQ		: in		std_logic;
		HPS_DDR3_WE_N		: out		std_logic;

		HPS_ENET_GTX_CLK	: out		std_logic;
		HPS_ENET_INT_n		: inout		std_logic;
		HPS_ENET_MDC		: out		std_logic;
		HPS_ENET_MDIO		: inout		std_logic;
		HPS_ENET_RX_CLK		: in		std_logic;
		HPS_ENET_RX_DATA	: in		std_logic_vector(3 downto 0);
		HPS_ENET_RX_DV		: in		std_logic;
		HPS_ENET_TX_DATA	: out		std_logic_vector(3 downto 0);
		HPS_ENET_TX_EN		: out		std_logic;

		HPS_FLASH_DATA		: inout		std_logic_vector(3 downto 0);
		HPS_FLASH_DCLK		: out		std_logic;
		HPS_FLASH_NCSO		: out		std_logic;

		HPS_GSENSOR_INT		: inout		std_logic;

		HPS_I2C_CLK			: inout		std_logic;
		HPS_I2C_SDA			: inout		std_logic;

		HPS_KEY				: inout		std_logic_vector(3 downto 0);

		HPS_LCM_BK			: inout		std_logic;
		HPS_LCM_D_C			: inout		std_logic;
		HPS_LCM_RST_N		: inout		std_logic;
		HPS_LCM_SPIM_CLK	: out		std_logic;
		HPS_LCM_SPIM_MOSI	: out		std_logic;
		HPS_LCM_SPIM_MISO	: in		std_logic;
		HPS_LCM_SPIM_SS		: out		std_logic;

		HPS_LED				: inout		std_logic_vector(3 downto 0);

		HPS_LTC_GPIO		: inout		std_logic;

		HPS_SD_CLK			: out		std_logic;
		HPS_SD_CMD			: inout		std_logic;
		HPS_SD_DATA			: inout		std_logic_vector(3 downto 0);

		HPS_SPIM_CLK		: out		std_logic;
		HPS_SPIM_MISO		: in		std_logic;
		HPS_SPIM_MOSI		: out		std_logic;
		HPS_SPIM_SS			: inout		std_logic;

		HPS_SW				: inout		std_logic_vector(3 downto 0);

		HPS_UART_RX			: in		std_logic;
		HPS_UART_TX			: out		std_logic;

		HPS_USB_CLKOUT		: in		std_logic;
		HPS_USB_DATA		: inout		std_logic_vector(7 downto 0);
		HPS_USB_DIR			: in		std_logic;
		HPS_USB_NXT			: in		std_logic;
		HPS_USB_STP			: out		std_logic;

		KEY					: in		std_logic_vector(3 downto 0);

		LED					: out		std_logic_vector(3 downto 0);

		OSC_50_B3B			: in		std_logic;

		RESET_n				: in		std_logic;

		SW					: in		std_logic_vector(3 downto 0)

	);
End Entity PRJ_TOP;

Architecture RTL Of PRJ_TOP Is

	Component hps_reset
		port (
			source_clk : in std_logic;
			source     : in std_logic
		);
	End Component hps_reset;

	Component altera_edge_detector
		generic (
			PULSE_EXT                : integer := 6;
			EDGE_TYPE                : integer := 1;
			IGNORE_RST_WHILE_BUSY   : integer := 1
		);
		port (
			clk       : in std_logic;
			rst_n     : in std_logic;
			signal_in : in std_logic;
			pulse_out : out std_logic
		);
	End Component altera_edge_detector;
	
	Component Assignment4 is
		Port (
			clk_clk                              : in    std_logic                     := 'X';             -- clk
			hps_0_f2h_cold_reset_req_reset_n     : in    std_logic                     := 'X';             -- reset_n
			hps_0_f2h_debug_reset_req_reset_n    : in    std_logic                     := 'X';             -- reset_n
			hps_0_f2h_stm_hw_events_stm_hwevents : in    std_logic_vector(27 downto 0) := (others => 'X'); -- stm_hwevents
			hps_0_f2h_warm_reset_req_reset_n     : in    std_logic                     := 'X';             -- reset_n
			hps_0_h2f_reset_reset_n              : out   std_logic;                                        -- reset_n
			hps_io_hps_io_emac1_inst_TX_CLK      : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0        : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1        : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2        : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3        : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO        : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC         : out   std_logic;                                        -- hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL      : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL      : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK      : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3        : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
			hps_io_hps_io_qspi_inst_IO0          : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO0
			hps_io_hps_io_qspi_inst_IO1          : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO1
			hps_io_hps_io_qspi_inst_IO2          : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO2
			hps_io_hps_io_qspi_inst_IO3          : inout std_logic                     := 'X';             -- hps_io_qspi_inst_IO3
			hps_io_hps_io_qspi_inst_SS0          : out   std_logic;                                        -- hps_io_qspi_inst_SS0
			hps_io_hps_io_qspi_inst_CLK          : out   std_logic;                                        -- hps_io_qspi_inst_CLK
			hps_io_hps_io_sdio_inst_CMD          : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0           : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1           : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK          : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2           : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3           : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7           : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK          : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP          : out   std_logic;                                        -- hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR          : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT          : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
			hps_io_hps_io_spim0_inst_CLK         : out   std_logic;                                        -- hps_io_spim0_inst_CLK
			hps_io_hps_io_spim0_inst_MOSI        : out   std_logic;                                        -- hps_io_spim0_inst_MOSI
			hps_io_hps_io_spim0_inst_MISO        : in    std_logic                     := 'X';             -- hps_io_spim0_inst_MISO
			hps_io_hps_io_spim0_inst_SS0         : out   std_logic;                                        -- hps_io_spim0_inst_SS0
			hps_io_hps_io_spim1_inst_CLK         : out   std_logic;                                        -- hps_io_spim1_inst_CLK
			hps_io_hps_io_spim1_inst_MOSI        : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
			hps_io_hps_io_spim1_inst_MISO        : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
			hps_io_hps_io_spim1_inst_SS0         : out   std_logic;                                        -- hps_io_spim1_inst_SS0
			hps_io_hps_io_uart0_inst_RX          : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX          : out   std_logic;                                        -- hps_io_uart0_inst_TX
			hps_io_hps_io_i2c1_inst_SDA          : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
			hps_io_hps_io_i2c1_inst_SCL          : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
			hps_io_hps_io_gpio_inst_GPIO00       : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO00
			hps_io_hps_io_gpio_inst_GPIO09       : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO09
			hps_io_hps_io_gpio_inst_GPIO35       : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO35
			hps_io_hps_io_gpio_inst_GPIO40       : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO40
			hps_io_hps_io_gpio_inst_GPIO48       : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO48
			hps_io_hps_io_gpio_inst_GPIO61       : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO61
			hps_io_hps_io_gpio_inst_GPIO62       : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO62
			memory_mem_a                         : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                        : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                        : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                      : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                       : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                      : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                     : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                     : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                      : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                   : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                        : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                       : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                     : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                       : out   std_logic;                                        -- mem_odt
			memory_mem_dm                        : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                     : in    std_logic                     := 'X';             -- oct_rzqin
			ocram_master_0_conduit_end_export    : out   std_logic_vector(7 downto 0);                     -- export
			reset_reset_n                        : in    std_logic                     := 'X'              -- reset_n
		);
	End Component Assignment4;

	signal wFPGA_DEBOUNCED_BUTTONS		: std_logic_vector(1 downto 0);
	signal wFPGA_LED_INTERNAL			: std_logic_vector(3 downto 0);
	signal wHPS_FPGA_RESET_N			: std_logic;
	signal wHPS_RESET_REQ				: std_logic_vector(2 downto 0);
	signal wHPS_COLD_RESET				: std_logic;
	signal wHPS_WARM_RESET				: std_logic;
	signal wHPS_DEBUG_RESET				: std_logic;
	signal wSTM_HW_EVENTS				: std_logic_vector(27 downto 0);

	signal	wADDRESS					: std_logic_vector(7 downto 0);
	signal	wREAD						: std_logic;
	signal	wREADDATA					: std_logic_vector(31 downto 0);
	signal	wWRITE						: std_logic;
	signal	wWRITEDATA					: std_logic_vector(31 downto 0);
	signal	wWAITREQUEST				: std_logic;
	signal	wRESET						: std_logic;

	signal	wLED						: std_logic_vector( 7 downto 0 );

Begin

	HPS_LED		<=		wLED( 7 downto 4 );
	LED			<=		wLED( 3 downto 0 );

	u_hps_reset_inst: hps_reset
	Port map	(
		source_clk		=> OSC_50_B3B,
		source			=> wHPS_RESET_REQ(0)
	);

	u_pulse_cold_reset: altera_edge_detector
	generic map (
		PULSE_EXT		=> 6,
		EDGE_TYPE		=> 1,
		IGNORE_RST_WHILE_BUSY	=> 1
	)
	Port map (
		clk				=> OSC_50_B3B,
		rst_n			=> wHPS_FPGA_RESET_N,
		signal_in		=> wHPS_RESET_REQ(0),
		pulse_out		=> wHPS_COLD_RESET
	);

	u_pulse_warm_reset: altera_edge_detector
	generic map (
		PULSE_EXT => 2,
		EDGE_TYPE => 1,
		IGNORE_RST_WHILE_BUSY => 1
	)
	Port map (
		clk				=> OSC_50_B3B,
		rst_n			=> wHPS_FPGA_RESET_N,
		signal_in		=> wHPS_RESET_REQ(1),
		pulse_out		=> wHPS_WARM_RESET
	);

	u_pulse_debug_reset: altera_edge_detector
	generic map (
		PULSE_EXT		=> 32,
		EDGE_TYPE		=> 1,
		IGNORE_RST_WHILE_BUSY	=> 1
	)
	Port map (
		clk				=> OSC_50_B3B,
		rst_n			=> wHPS_FPGA_RESET_N,
		signal_in		=> wHPS_RESET_REQ(2),
		pulse_out		=> wHPS_DEBUG_RESET
	);

	u_Assignment4: Assignment4
	Port map (
		clk_clk                              => OSC_50_B3B,                              --                       clk.clk
		hps_0_f2h_cold_reset_req_reset_n     => not wHPS_COLD_RESET,     --  hps_0_f2h_cold_reset_req.reset_n
		hps_0_f2h_debug_reset_req_reset_n    => not wHPS_DEBUG_RESET,    -- hps_0_f2h_debug_reset_req.reset_n
		hps_0_f2h_stm_hw_events_stm_hwevents => wSTM_HW_EVENTS, --   hps_0_f2h_stm_hw_events.stm_hwevents
		hps_0_f2h_warm_reset_req_reset_n     => not wHPS_WARM_RESET,     --  hps_0_f2h_warm_reset_req.reset_n
		hps_0_h2f_reset_reset_n              => wHPS_FPGA_RESET_N,              --           hps_0_h2f_reset.reset_n
		hps_io_hps_io_emac1_inst_TX_CLK      => HPS_ENET_GTX_CLK,      --                    hps_io.hps_io_emac1_inst_TX_CLK
		hps_io_hps_io_emac1_inst_TXD0        => HPS_ENET_TX_DATA(0),        --                          .hps_io_emac1_inst_TXD0
		hps_io_hps_io_emac1_inst_TXD1        => HPS_ENET_TX_DATA(1),        --                          .hps_io_emac1_inst_TXD1
		hps_io_hps_io_emac1_inst_TXD2        => HPS_ENET_TX_DATA(2),        --                          .hps_io_emac1_inst_TXD2
		hps_io_hps_io_emac1_inst_TXD3        => HPS_ENET_TX_DATA(3),        --                          .hps_io_emac1_inst_TXD3
		hps_io_hps_io_emac1_inst_RXD0        => HPS_ENET_RX_DATA(0),        --                          .hps_io_emac1_inst_RXD0
		hps_io_hps_io_emac1_inst_MDIO        => HPS_ENET_MDIO,        --                          .hps_io_emac1_inst_MDIO
		hps_io_hps_io_emac1_inst_MDC         => HPS_ENET_MDC,         --                          .hps_io_emac1_inst_MDC
		hps_io_hps_io_emac1_inst_RX_CTL      => HPS_ENET_RX_DV,      --                          .hps_io_emac1_inst_RX_CTL
		hps_io_hps_io_emac1_inst_TX_CTL      => HPS_ENET_TX_EN,      --                          .hps_io_emac1_inst_TX_CTL
		hps_io_hps_io_emac1_inst_RX_CLK      => HPS_ENET_RX_CLK,      --                          .hps_io_emac1_inst_RX_CLK
		hps_io_hps_io_emac1_inst_RXD1        => HPS_ENET_RX_DATA(1),        --                          .hps_io_emac1_inst_RXD1
		hps_io_hps_io_emac1_inst_RXD2        => HPS_ENET_RX_DATA(2),        --                          .hps_io_emac1_inst_RXD2
		hps_io_hps_io_emac1_inst_RXD3        => HPS_ENET_RX_DATA(3),        --                          .hps_io_emac1_inst_RXD3
		hps_io_hps_io_qspi_inst_IO0          => HPS_FLASH_DATA(0),          --                          .hps_io_qspi_inst_IO0
		hps_io_hps_io_qspi_inst_IO1          => HPS_FLASH_DATA(1),          --                          .hps_io_qspi_inst_IO1
		hps_io_hps_io_qspi_inst_IO2          => HPS_FLASH_DATA(2),          --                          .hps_io_qspi_inst_IO2
		hps_io_hps_io_qspi_inst_IO3          => HPS_FLASH_DATA(3),          --                          .hps_io_qspi_inst_IO3
		hps_io_hps_io_qspi_inst_SS0          => HPS_FLASH_NCSO,          --                          .hps_io_qspi_inst_SS0
		hps_io_hps_io_qspi_inst_CLK          => HPS_FLASH_DCLK,          --                          .hps_io_qspi_inst_CLK
		hps_io_hps_io_sdio_inst_CMD          => HPS_SD_CMD,          --                          .hps_io_sdio_inst_CMD
		hps_io_hps_io_sdio_inst_D0           => HPS_SD_DATA(0),           --                          .hps_io_sdio_inst_D0
		hps_io_hps_io_sdio_inst_D1           => HPS_SD_DATA(1),           --                          .hps_io_sdio_inst_D1
		hps_io_hps_io_sdio_inst_CLK          => HPS_SD_CLK,          --                          .hps_io_sdio_inst_CLK
		hps_io_hps_io_sdio_inst_D2           => HPS_SD_DATA(2),           --                          .hps_io_sdio_inst_D2
		hps_io_hps_io_sdio_inst_D3           => HPS_SD_DATA(3),           --                          .hps_io_sdio_inst_D3
		hps_io_hps_io_usb1_inst_D0           => HPS_USB_DATA(0),           --                          .hps_io_usb1_inst_D0
		hps_io_hps_io_usb1_inst_D1           => HPS_USB_DATA(1),           --                          .hps_io_usb1_inst_D1
		hps_io_hps_io_usb1_inst_D2           => HPS_USB_DATA(2),           --                          .hps_io_usb1_inst_D2
		hps_io_hps_io_usb1_inst_D3           => HPS_USB_DATA(3),           --                          .hps_io_usb1_inst_D3
		hps_io_hps_io_usb1_inst_D4           => HPS_USB_DATA(4),           --                          .hps_io_usb1_inst_D4
		hps_io_hps_io_usb1_inst_D5           => HPS_USB_DATA(5),           --                          .hps_io_usb1_inst_D5
		hps_io_hps_io_usb1_inst_D6           => HPS_USB_DATA(6),           --                          .hps_io_usb1_inst_D6
		hps_io_hps_io_usb1_inst_D7           => HPS_USB_DATA(7),           --                          .hps_io_usb1_inst_D7
		hps_io_hps_io_usb1_inst_CLK          => HPS_USB_CLKOUT,          --                          .hps_io_usb1_inst_CLK
		hps_io_hps_io_usb1_inst_STP          => HPS_USB_STP,          --                          .hps_io_usb1_inst_STP
		hps_io_hps_io_usb1_inst_DIR          => HPS_USB_DIR,          --                          .hps_io_usb1_inst_DIR
		hps_io_hps_io_usb1_inst_NXT          => HPS_USB_NXT,          --                          .hps_io_usb1_inst_NXT
		hps_io_hps_io_spim0_inst_CLK         => HPS_SPIM_CLK,         --                          .hps_io_spim0_inst_CLK
		hps_io_hps_io_spim0_inst_MOSI        => HPS_SPIM_MOSI,        --                          .hps_io_spim0_inst_MOSI
		hps_io_hps_io_spim0_inst_MISO        => HPS_SPIM_MISO,        --                          .hps_io_spim0_inst_MISO
		hps_io_hps_io_spim0_inst_SS0         => HPS_SPIM_SS,         --                          .hps_io_spim0_inst_SS0
		hps_io_hps_io_spim1_inst_CLK         => HPS_LCM_SPIM_CLK,         --                          .hps_io_spim1_inst_CLK
		hps_io_hps_io_spim1_inst_MOSI        => HPS_LCM_SPIM_MOSI,        --                          .hps_io_spim1_inst_MOSI
		hps_io_hps_io_spim1_inst_MISO        => HPS_LCM_SPIM_MISO,        --                          .hps_io_spim1_inst_MISO
		hps_io_hps_io_spim1_inst_SS0         => HPS_LCM_SPIM_SS,         --                          .hps_io_spim1_inst_SS0
		hps_io_hps_io_uart0_inst_RX          => HPS_UART_RX,          --                          .hps_io_uart0_inst_RX
		hps_io_hps_io_uart0_inst_TX          => HPS_UART_TX,          --                          .hps_io_uart0_inst_TX
		hps_io_hps_io_i2c1_inst_SDA          => HPS_I2C_SDA,          --                          .hps_io_i2c1_inst_SDA
		hps_io_hps_io_i2c1_inst_SCL          => HPS_I2C_CLK,          --                          .hps_io_i2c1_inst_SCL
		hps_io_hps_io_gpio_inst_GPIO00       => HPS_LTC_GPIO,       --                          .hps_io_gpio_inst_GPIO00
		hps_io_hps_io_gpio_inst_GPIO09       => HPS_CONV_USB_n,       --                          .hps_io_gpio_inst_GPIO09
		hps_io_hps_io_gpio_inst_GPIO35       => HPS_ENET_INT_n,       --                          .hps_io_gpio_inst_GPIO35
		hps_io_hps_io_gpio_inst_GPIO40       => HPS_LCM_BK,       --                          .hps_io_gpio_inst_GPIO40
		hps_io_hps_io_gpio_inst_GPIO48       => HPS_LCM_RST_N,       --                          .hps_io_gpio_inst_GPIO48
		hps_io_hps_io_gpio_inst_GPIO61       => HPS_GSENSOR_INT,       --                          .hps_io_gpio_inst_GPIO61
		hps_io_hps_io_gpio_inst_GPIO62       => HPS_LCM_D_C,       --                          .hps_io_gpio_inst_GPIO62
		memory_mem_a                         => HPS_DDR3_ADDR,                         --                    memory.mem_a
		memory_mem_ba                        => HPS_DDR3_BA,                        --                          .mem_ba
		memory_mem_ck                        => HPS_DDR3_CK_P,                        --                          .mem_ck
		memory_mem_ck_n                      => HPS_DDR3_CK_N,                      --                          .mem_ck_n
		memory_mem_cke                       => HPS_DDR3_CKE,                       --                          .mem_cke
		memory_mem_cs_n                      => HPS_DDR3_CS_N,                      --                          .mem_cs_n
		memory_mem_ras_n                     => HPS_DDR3_RAS_N,                     --                          .mem_ras_n
		memory_mem_cas_n                     => HPS_DDR3_CAS_N,                     --                          .mem_cas_n
		memory_mem_we_n                      => HPS_DDR3_WE_N,                      --                          .mem_we_n
		memory_mem_reset_n                   => HPS_DDR3_RESET_N,                   --                          .mem_reset_n
		memory_mem_dq                        => HPS_DDR3_DQ,                        --                          .mem_dq
		memory_mem_dqs                       => HPS_DDR3_DQS_P,                       --                          .mem_dqs
		memory_mem_dqs_n                     => HPS_DDR3_DQS_N,                     --                          .mem_dqs_n
		memory_mem_odt                       => HPS_DDR3_ODT,                       --                          .mem_odt
		memory_mem_dm                        => HPS_DDR3_DM,                        --                          .mem_dm
		memory_oct_rzqin                     => HPS_DDR3_RZQ,                     --                          .oct_rzqin
		ocram_master_0_conduit_end_export    => wLED,    -- ocram_master_0_conduit_end.export
		reset_reset_n                        => wHPS_FPGA_RESET_N                         --                     reset.reset_n
	);

End Architecture RTL;