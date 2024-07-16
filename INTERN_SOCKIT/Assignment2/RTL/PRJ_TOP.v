// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Mon Jun 17 20:35:29 2013
// ============================================================================

//`define ENABLE_DDR3
`define ENABLE_HPS
//`define ENABLE_HSMC


module PRJ_TOP(

`ifdef ENABLE_HPS
      ///////// HPS /////////
      inout              HPS_CONV_USB_n,
		//DDR3 
      output      [14:0] HPS_DDR3_ADDR,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_N,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_N,
      output             HPS_DDR3_CK_P,
      output             HPS_DDR3_CS_N,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_N,
      inout       [3:0]  HPS_DDR3_DQS_P,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_N,
      output             HPS_DDR3_RESET_N,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_N,
		
      output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_n,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
		
      inout       [3:0]  HPS_FLASH_DATA,
      output             HPS_FLASH_DCLK,
      output             HPS_FLASH_NCSO,	
		
      inout              HPS_GSENSOR_INT,	
		
	   inout              HPS_I2C_CLK,
      inout              HPS_I2C_SDA,
		
      inout       [3:0]  HPS_KEY,
		
      inout              HPS_LCM_BK,
      inout              HPS_LCM_D_C,
      inout              HPS_LCM_RST_N,
      output             HPS_LCM_SPIM_CLK,
      output             HPS_LCM_SPIM_MOSI,
		input              HPS_LCM_SPIM_MISO,
      output             HPS_LCM_SPIM_SS,
		
      inout      [3:0]   HPS_LED,
		
		inout              HPS_LTC_GPIO,		
		
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
		
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      inout              HPS_SPIM_SS,
		
	   inout       [3:0]  HPS_SW,
		
      input              HPS_UART_RX,
      output             HPS_UART_TX,
		
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,
`endif /*ENABLE_HPS*/

      ///////// LED /////////
      output      [3:0]  LED,

      ///////// OSC /////////
      input              OSC_50_B3B,

      ///////// RESET /////////
      input              RESET_n,

      ///////// SW /////////
      input       [3:0]  SW
);



// internal wires and registers declaration
  wire [1:0] fpga_debounced_buttons;
  wire [3:0]  fpga_led_internal;
  wire        hps_fpga_reset_n;
  wire [2:0]  hps_reset_req;
  wire        hps_cold_reset;
  wire        hps_warm_reset;
  wire        hps_debug_reset;
  wire [27:0] stm_hw_events;

// connection of internal logics
  assign fpga_led_pio = fpga_led_internal;
  // assign stm_hw_events    = {{12{1'b0}},SW, fpga_led_internal, fpga_debounced_buttons};



    Assignment2 u0 (
	     //HPS ddr3
        .memory_mem_a                          ( HPS_DDR3_ADDR),                          //          memory.mem_a
        .memory_mem_ba                         ( HPS_DDR3_BA),                         //                .mem_ba
        .memory_mem_ck                         ( HPS_DDR3_CK_P),                         //                .mem_ck
        .memory_mem_ck_n                       ( HPS_DDR3_CK_N),                       //                .mem_ck_n
        .memory_mem_cke                        ( HPS_DDR3_CKE),                        //                .mem_cke
        .memory_mem_cs_n                       ( HPS_DDR3_CS_N),                       //                .mem_cs_n
        .memory_mem_ras_n                      ( HPS_DDR3_RAS_N),                      //                .mem_ras_n
        .memory_mem_cas_n                      ( HPS_DDR3_CAS_N),                      //                .mem_cas_n
        .memory_mem_we_n                       ( HPS_DDR3_WE_N),                       //                .mem_we_n
        .memory_mem_reset_n                    ( HPS_DDR3_RESET_N),                    //                .mem_reset_n
        .memory_mem_dq                         ( HPS_DDR3_DQ),                         //                .mem_dq
        .memory_mem_dqs                        ( HPS_DDR3_DQS_P),                        //                .mem_dqs
        .memory_mem_dqs_n                      ( HPS_DDR3_DQS_N),                      //                .mem_dqs_n
        .memory_mem_odt                        ( HPS_DDR3_ODT),                        //                .mem_odt
        .memory_mem_dm                         ( HPS_DDR3_DM),                         //                .mem_dm
        .memory_oct_rzqin                      ( HPS_DDR3_RZQ),                      //                .oct_rzqin
        //hps ethernet		
	     .hps_io_hps_io_emac1_inst_TX_CLK ( HPS_ENET_GTX_CLK), //                   hps_0_hps_io.hps_io_emac1_inst_TX_CLK
        .hps_io_hps_io_emac1_inst_TXD0   ( HPS_ENET_TX_DATA[0] ),   //                               .hps_io_emac1_inst_TXD0
        .hps_io_hps_io_emac1_inst_TXD1   ( HPS_ENET_TX_DATA[1] ),   //                               .hps_io_emac1_inst_TXD1
        .hps_io_hps_io_emac1_inst_TXD2   ( HPS_ENET_TX_DATA[2] ),   //                               .hps_io_emac1_inst_TXD2
        .hps_io_hps_io_emac1_inst_TXD3   ( HPS_ENET_TX_DATA[3] ),   //                               .hps_io_emac1_inst_TXD3
        .hps_io_hps_io_emac1_inst_RXD0   ( HPS_ENET_RX_DATA[0] ),   //                               .hps_io_emac1_inst_RXD0
        .hps_io_hps_io_emac1_inst_MDIO   ( HPS_ENET_MDIO ),   //                               .hps_io_emac1_inst_MDIO
        .hps_io_hps_io_emac1_inst_MDC    ( HPS_ENET_MDC  ),    //                               .hps_io_emac1_inst_MDC
        .hps_io_hps_io_emac1_inst_RX_CTL ( HPS_ENET_RX_DV), //                               .hps_io_emac1_inst_RX_CTL
        .hps_io_hps_io_emac1_inst_TX_CTL ( HPS_ENET_TX_EN), //                               .hps_io_emac1_inst_TX_CTL
        .hps_io_hps_io_emac1_inst_RX_CLK ( HPS_ENET_RX_CLK), //                               .hps_io_emac1_inst_RX_CLK
        .hps_io_hps_io_emac1_inst_RXD1   ( HPS_ENET_RX_DATA[1] ),   //                               .hps_io_emac1_inst_RXD1
        .hps_io_hps_io_emac1_inst_RXD2   ( HPS_ENET_RX_DATA[2] ),   //                               .hps_io_emac1_inst_RXD2
        .hps_io_hps_io_emac1_inst_RXD3   ( HPS_ENET_RX_DATA[3] ),   //                               .hps_io_emac1_inst_RXD3
        
		  //hps flash
		  .hps_io_hps_io_qspi_inst_IO0     ( HPS_FLASH_DATA[0]    ),     //                               .hps_io_qspi_inst_IO0
        .hps_io_hps_io_qspi_inst_IO1     ( HPS_FLASH_DATA[1]    ),     //                               .hps_io_qspi_inst_IO1
        .hps_io_hps_io_qspi_inst_IO2     ( HPS_FLASH_DATA[2]    ),     //                               .hps_io_qspi_inst_IO2
        .hps_io_hps_io_qspi_inst_IO3     ( HPS_FLASH_DATA[3]    ),     //                               .hps_io_qspi_inst_IO3
        .hps_io_hps_io_qspi_inst_SS0     ( HPS_FLASH_NCSO    ),     //                               .hps_io_qspi_inst_SS0
        .hps_io_hps_io_qspi_inst_CLK     ( HPS_FLASH_DCLK    ),     //                               .hps_io_qspi_inst_CLK
        
		  //hps sd card
		  .hps_io_hps_io_sdio_inst_CMD     ( HPS_SD_CMD    ),     //                               .hps_io_sdio_inst_CMD
        .hps_io_hps_io_sdio_inst_D0      ( HPS_SD_DATA[0]     ),      //                               .hps_io_sdio_inst_D0
        .hps_io_hps_io_sdio_inst_D1      ( HPS_SD_DATA[1]     ),      //                               .hps_io_sdio_inst_D1
        .hps_io_hps_io_sdio_inst_CLK     ( HPS_SD_CLK   ),     //                               .hps_io_sdio_inst_CLK
        .hps_io_hps_io_sdio_inst_D2      ( HPS_SD_DATA[2]     ),      //                               .hps_io_sdio_inst_D2
        .hps_io_hps_io_sdio_inst_D3      ( HPS_SD_DATA[3]     ),      //                               .hps_io_sdio_inst_D3
        	
        //hps usb			
		  .hps_io_hps_io_usb1_inst_D0      ( HPS_USB_DATA[0]    ),      //                               .hps_io_usb1_inst_D0
        .hps_io_hps_io_usb1_inst_D1      ( HPS_USB_DATA[1]    ),      //                               .hps_io_usb1_inst_D1
        .hps_io_hps_io_usb1_inst_D2      ( HPS_USB_DATA[2]    ),      //                               .hps_io_usb1_inst_D2
        .hps_io_hps_io_usb1_inst_D3      ( HPS_USB_DATA[3]    ),      //                               .hps_io_usb1_inst_D3
        .hps_io_hps_io_usb1_inst_D4      ( HPS_USB_DATA[4]    ),      //                               .hps_io_usb1_inst_D4
        .hps_io_hps_io_usb1_inst_D5      ( HPS_USB_DATA[5]    ),      //                               .hps_io_usb1_inst_D5
        .hps_io_hps_io_usb1_inst_D6      ( HPS_USB_DATA[6]    ),      //                               .hps_io_usb1_inst_D6
        .hps_io_hps_io_usb1_inst_D7      ( HPS_USB_DATA[7]    ),      //                               .hps_io_usb1_inst_D7
        .hps_io_hps_io_usb1_inst_CLK     ( HPS_USB_CLKOUT    ),     //                               .hps_io_usb1_inst_CLK
        .hps_io_hps_io_usb1_inst_STP     ( HPS_USB_STP    ),     //                               .hps_io_usb1_inst_STP
        .hps_io_hps_io_usb1_inst_DIR     ( HPS_USB_DIR    ),     //                               .hps_io_usb1_inst_DIR
        .hps_io_hps_io_usb1_inst_NXT     ( HPS_USB_NXT    ),     //                               .hps_io_usb1_inst_NXT
        	
        //spim0			
		  .hps_io_hps_io_spim0_inst_CLK    ( HPS_SPIM_CLK  ),    //                               .hps_io_spim1_inst_CLK
        .hps_io_hps_io_spim0_inst_MOSI   ( HPS_SPIM_MOSI ),   //                               .hps_io_spim1_inst_MOSI
        .hps_io_hps_io_spim0_inst_MISO   ( HPS_SPIM_MISO ),   //                               .hps_io_spim1_inst_MISO
        .hps_io_hps_io_spim0_inst_SS0    ( HPS_SPIM_SS ),    //                               .hps_io_spim1_inst_SS0
        
		  //spim1
        .hps_io_hps_io_spim1_inst_CLK    (HPS_LCM_SPIM_CLK  ),    //                               .hps_io_spim1_inst_CLK
        .hps_io_hps_io_spim1_inst_MOSI   (HPS_LCM_SPIM_MOSI ),   //                               .hps_io_spim1_inst_MOSI
        .hps_io_hps_io_spim1_inst_MISO   (HPS_LCM_SPIM_MISO ),   //                               .hps_io_spim1_inst_MISO
        .hps_io_hps_io_spim1_inst_SS0    (HPS_LCM_SPIM_SS),    //                               .hps_io_spim1_inst_SS0
       
		  //hps uart
		  .hps_io_hps_io_uart0_inst_RX     ( HPS_UART_RX    ),     //                               .hps_io_uart0_inst_RX
        .hps_io_hps_io_uart0_inst_TX     ( HPS_UART_TX    ),     //                               .hps_io_uart0_inst_TX
        
		  //hps i2c1
		  .hps_io_hps_io_i2c1_inst_SDA     ( HPS_I2C_SDA),     //                               .hps_io_i2c1_inst_SDA
        .hps_io_hps_io_i2c1_inst_SCL     ( HPS_I2C_CLK),     //                               .hps_io_i2c1_inst_SCL 
        
		  //hps gpio
		// .hps_0_hps_io_hps_io_gpio_inst_GPIO00  (HPS_LTC_GPIO),  //                               .hps_io_gpio_inst_GPIO00
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO09  (HPS_CONV_USB_n),  //                               .hps_io_gpio_inst_GPIO09
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO35  (HPS_ENET_INT_n),  //                               .hps_io_gpio_inst_GPIO35
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO40  (HPS_LCM_BK ),  //                               .hps_io_gpio_inst_GPIO40
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO48  (HPS_LCM_RST_N ),  //                               .hps_io_gpio_inst_GPIO48
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO53  (HPS_LED[0] ),  //                               .hps_io_gpio_inst_GPIO53
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO54  (HPS_LED[1] ),  //                               .hps_io_gpio_inst_GPIO54
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO55  (HPS_LED[2] ),  //                               .hps_io_gpio_inst_GPIO55
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO56  (HPS_LED[3] ),  //                               .hps_io_gpio_inst_GPIO56
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO61  (HPS_GSENSOR_INT),  //                               .hps_io_gpio_inst_GPIO61
        // .hps_0_hps_io_hps_io_gpio_inst_GPIO62  (HPS_LCM_D_C),  //                               .hps_io_gpio_inst_GPIO62
		  
		  //fpga led gpio
		  .led_pio_conduit_end_export    (LED ),    //    led_pio_external_connection.export
        
		  //fpga switch gpio
		  .dipsw_pio_external_connection_export  (SW ),  //  dipsw_pio_external_connection.export

		  .hps_0_f2h_stm_hw_events_stm_hwevents  (stm_hw_events),   //        hps_0_f2h_stm_hw_events.stm_hwevents
        //clock & reset
		  .clk_clk                               (OSC_50_B3B),                               //                            clk.clk
        .reset_reset_n                         (hps_fpga_reset_n),                         //                          reset.reset_n
		  
		  //reset 
		  .hps_0_h2f_reset_reset_n               (hps_fpga_reset_n),               //                hps_0_h2f_reset.reset_n
        .hps_0_f2h_warm_reset_req_reset_n      (~hps_warm_reset),      //       hps_0_f2h_warm_reset_req.reset_n
        .hps_0_f2h_debug_reset_req_reset_n     (~hps_debug_reset),     //      hps_0_f2h_debug_reset_req.reset_n
        .hps_0_f2h_cold_reset_req_reset_n      (~hps_cold_reset)       //       hps_0_f2h_cold_reset_req.reset_n
		  
    );
// Source/Probe megawizard instance
hps_reset hps_reset_inst (
  .source_clk (OSC_50_B3B),
  .source     (hps_reset_req)
);

altera_edge_detector pulse_cold_reset (
  .clk       (OSC_50_B3B),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[0]),
  .pulse_out (hps_cold_reset)
);
  defparam pulse_cold_reset.PULSE_EXT = 6;
  defparam pulse_cold_reset.EDGE_TYPE = 1;
  defparam pulse_cold_reset.IGNORE_RST_WHILE_BUSY = 1;

altera_edge_detector pulse_warm_reset (
  .clk       (OSC_50_B3B),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[1]),
  .pulse_out (hps_warm_reset)
);
  defparam pulse_warm_reset.PULSE_EXT = 2;
  defparam pulse_warm_reset.EDGE_TYPE = 1;
  defparam pulse_warm_reset.IGNORE_RST_WHILE_BUSY = 1;
  
altera_edge_detector pulse_debug_reset (
  .clk       (OSC_50_B3B),
  .rst_n     (hps_fpga_reset_n),
  .signal_in (hps_reset_req[2]),
  .pulse_out (hps_debug_reset)
);
  defparam pulse_debug_reset.PULSE_EXT = 32;
  defparam pulse_debug_reset.EDGE_TYPE = 1;
  defparam pulse_debug_reset.IGNORE_RST_WHILE_BUSY = 1;

endmodule
