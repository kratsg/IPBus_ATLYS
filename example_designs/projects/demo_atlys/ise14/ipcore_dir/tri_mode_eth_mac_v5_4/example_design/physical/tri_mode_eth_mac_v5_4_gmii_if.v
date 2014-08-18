//------------------------------------------------------------------------------
// File       : tri_mode_eth_mac_v5_4_gmii_if.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2004-2009 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
// -----------------------------------------------------------------------------
// Description:  This module creates a Gigabit Media Independent
//               Interface (GMII) by instantiating Input/Output buffers
//               and Input/Output flip-flops as required.
//
//               This interface is used to connect the Ethernet MAC to
//               an external Ethernet PHY via GMII connection.
//
//               The GMII receiver clocking logic is also defined here: the
//               receiver clock received from the PHY is unique and cannot be
//               shared across multiple instantiations of the core.  For the
//               receiver clock:
//
//               A BUFIO/BUFG combination is used for the input clock to allow
//               the use of IODELAYs on the DATA.
//------------------------------------------------------------------------------

`timescale 1 ps / 1 ps


module tri_mode_eth_mac_v5_4_gmii_if (
    // Synchronous resets
    input            tx_reset,
    input            rx_reset,

    // The following ports are the GMII physical interface: these will be at
    // pins on the FPGA
    output reg [7:0] gmii_txd,
    output reg       gmii_tx_en,
    output reg       gmii_tx_er,
    output           gmii_tx_clk,
    input      [7:0] gmii_rxd,
    input            gmii_rx_dv,
    input            gmii_rx_er,
    input            gmii_rx_clk,

    // The following ports are the internal GMII connections from IOB logic to
    // the TEMAC core
    input      [7:0] txd_from_mac,
    input            tx_en_from_mac,
    input            tx_er_from_mac,
    input            tx_clk,
    output reg [7:0] rxd_to_mac,
    output reg       rx_dv_to_mac,
    output reg       rx_er_to_mac,

    // Receiver clock for the MAC and Client Logic
    output           rx_clk

    );


  //----------------------------------------------------------------------------
  // internal signals
  //----------------------------------------------------------------------------

  wire            not_tx_clk;               // tx_clk routed through an inverter.

  wire            gmii_rx_dv_delay;
  wire            gmii_rx_er_delay;
  wire   [7:0]    gmii_rxd_delay;
  wire            gmii_rx_clk_bufio;
  wire            gmii_rx_clk_tobufg;

  wire            rx_clk_int;


  //----------------------------------------------------------------------------
  // GMII Transmitter Clock Management :
  // drive gmii_tx_clk through IOB onto GMII interface
  //----------------------------------------------------------------------------


   // tx_clk is inverted.  This inversion will take place
   // locally in IOBs.
   INV invert_tx_clk(
      .I                (tx_clk),
      .O                (not_tx_clk)
   );

   // Instantiate a DDR output register.  This is a good way to
   // drive GMII_TX_CLK since the clock-to-PAD delay will be the same
   // as that for data driven from IOB Ouput flip-flops eg gmii_rxd[7:0].
   // This is set to produce an inverted clock w.r.t. tx_clk
   // so that the rising edge is centralised within the
   // gmii_rxd[7:0] valid window.
   ODDR2 gmii_tx_clk_ddr_iob (
      .Q                (gmii_tx_clk),
      .C0               (tx_clk),
      .C1               (not_tx_clk),
      .CE               (1'b1),
      .D0               (1'b0),
      .D1               (1'b1),
      .R                (1'b0),
      .S                (1'b0)
   );
   //---------------------------------------------------------------------------
   // GMII Transmitter Logic : drive TX signals through IOBs registers onto
   // GMII interface
   //---------------------------------------------------------------------------


   // Infer IOB Output flip-flops.
   always @(posedge tx_clk)
   begin
      gmii_tx_en           <= tx_en_from_mac;
      gmii_tx_er           <= tx_er_from_mac;
      gmii_txd             <= txd_from_mac;
   end


   //---------------------------------------------------------------------------
   // GMII Receiver Clock Logic
   //---------------------------------------------------------------------------

   // Route gmii_rx_clk through a BUFIO2/BUFG and onto global clock routing
   BUFIO2 bufio_gmii_rx_clk (
      .DIVCLK           (gmii_rx_clk_tobufg),
      .I                (gmii_rx_clk),
      .IOCLK            (gmii_rx_clk_bufio),
      .SERDESSTROBE     ()
   );


   // Route rx_clk through a BUFG onto global clock routing
   BUFG bufg_gmii_rx_clk (
      .I                (gmii_rx_clk_tobufg),
      .O                (rx_clk_int)
   );

   // Assign the internal clock signal to the output port
   assign rx_clk = rx_clk_int;

   //---------------------------------------------------------------------------
   // GMII Receiver Logic : receive RX signals through IOBs from GMII interface
   //---------------------------------------------------------------------------

   // Use IDELAY to delay data to the capturing register.

   // Note: Delay value is set in UCF file
   // Please modify the IOBDELAY_VALUE according to your design.
   // For more information on IDELAYCTRL and IDELAY, please refer to
   // the User Guide.

   IODELAY2 #(
      .IDELAY_TYPE      ("FIXED"),
      .DELAY_SRC        ("IDATAIN")
   )
   delay_gmii_rx_dv (
      .BUSY             (),
      .DATAOUT          (gmii_rx_dv_delay),
      .DATAOUT2         (),
      .DOUT             (),
      .TOUT             (),
      .CAL              (1'b0),
      .CE               (1'b0),
      .CLK              (1'b0),
      .IDATAIN          (gmii_rx_dv),
      .INC              (1'b0),
      .IOCLK0           (1'b0),
      .IOCLK1           (1'b0),
      .ODATAIN          (1'b0),
      .RST              (1'b0),
      .T                (1'b1)
   );

   IODELAY2 #(
      .IDELAY_TYPE      ("FIXED"),
      .DELAY_SRC        ("IDATAIN")
   )
   delay_gmii_rx_er (
      .BUSY             (),
      .DATAOUT          (gmii_rx_er_delay),
      .DATAOUT2         (),
      .DOUT             (),
      .TOUT             (),
      .CAL              (1'b0),
      .CE               (1'b0),
      .CLK              (1'b0),
      .IDATAIN          (gmii_rx_er),
      .INC              (1'b0),
      .IOCLK0           (1'b0),
      .IOCLK1           (1'b0),
      .ODATAIN          (1'b0),
      .RST              (1'b0),
      .T                (1'b1)
   );

   genvar i;
   generate for (i=0; i<8; i=i+1)
     begin : gmii_data_bus

      IODELAY2 #(
         .IDELAY_TYPE   ("FIXED"),
         .DELAY_SRC     ("IDATAIN")
      )
      delay_gmii_rxd (
         .BUSY          (),
         .DATAOUT       (gmii_rxd_delay[i]),
         .DATAOUT2      (),
         .DOUT          (),
         .TOUT          (),
         .CAL           (1'b0),
         .CE            (1'b0),
         .CLK           (1'b0),
         .IDATAIN       (gmii_rxd[i]),
         .INC           (1'b0),
         .IOCLK0        (1'b0),
         .IOCLK1        (1'b0),
         .ODATAIN       (1'b0),
         .RST           (1'b0),
         .T             (1'b1)
      );
     end
   endgenerate


   // Infer IOB Input flip-flops.
   always @(posedge gmii_rx_clk_bufio)
   begin
      rx_dv_to_mac <= gmii_rx_dv_delay;
      rx_er_to_mac <= gmii_rx_er_delay;
      rxd_to_mac   <= gmii_rxd_delay;
   end



endmodule
