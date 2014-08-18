--------------------------------------------------------------------------------
-- Title      : Demo testbench
-- Project    : Tri-Mode Ethernet MAC
--------------------------------------------------------------------------------
-- File       : demo_tb.vhd
-- -----------------------------------------------------------------------------
-- (c) Copyright 2004-2008 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 
-- -----------------------------------------------------------------------------
-- Description: This testbench will exercise the ports of the MAC core
--              to demonstrate the functionality.
--------------------------------------------------------------------------------
--
-- This testbench performs the following operations on the MAC core
-- and its design example:


--  - Four frames are then pushed into the receiver from the PHY
--    interface (GMII or RGMII):
--    The first is of minimum length (Length/Type = Length = 46 bytes).
--    The second frame sets Length/Type to Type = 0x8000.
--    The third frame has an error inserted.
--    The fourth frame only sends 4 bytes of data: the remainder of the
--    data field is padded up to the minimum frame length i.e. 46 bytes.

--  - These frames are then parsed from the MAC into the MAC's design
--    example.  The design example provides a MAC client loopback
--    function so that frames which are received without error will be
--    looped back to the MAC transmitter and transmitted back to the
--    testbench.  The testbench verifies that this data matches that
--    previously injected into the receiver.


------------------------------------------------------------------------
--                         DEMONSTRATION TESTBENCH                     |
--                                                                     |
--                                                                     |
--     ----------------------------------------------                  |
--     |           TOP LEVEL WRAPPER (DUT)          |                  |
--     |  -------------------    ----------------   |                  |
--     |  | USER LOOPBACK   |    | TRI-MODE     |   |                  |
--     |  | DESIGN EXAMPLE  |    | ETHERNET MAC |   |                  |
--     |  |                 |    | CORE         |   |                  |
--     |  |                 |    |              |   |       Monitor    |
--     |  |         ------->|--->|          Tx  |-------->  Frames     |
--     |  |         |       |    |          PHY |   |                  |
--     |  |         |       |    |          I/F |   |                  |
--     |  |         |       |    |              |   |                  |
--     |  |         |       |    |              |   |                  |
--     |  |         |       |    |              |   |                  |
--     |  |         |       |    |          Rx  |   |                  |
--     |  |         |       |    |          PHY |   |                  |
--     |  |         --------|<---|          I/F |<-------- Generate    |
--     |  |                 |    |              |   |      Frames      |
--     |  -------------------    ----------------   |                  |
--     --------------------------------^-------------                  |
--                                     |                               |
--                                     |                               |
--                                 Stimulate                           |
--                               Management I/F                        |
--                               (if present)                          |
--                                                                     |
------------------------------------------------------------------------

entity demo_tb is
end demo_tb;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

architecture behav of demo_tb is

  ------------------------------------------------------------------------------
  -- Component Declaration for Device Under Test (DUT).
  ------------------------------------------------------------------------------
   component tri_mode_eth_mac_v5_4_example_design
    port (
      -- asynchronous reset
      glbl_rst                      : in  std_logic;

      -- 200MHz clock input from board
      clk_in_p                      : in  std_logic;
      clk_in_n                      : in  std_logic;
      
      phy_resetn                    : out std_logic;
      
      -- GMII Interface
      -----------------
      
      gmii_txd                      : out std_logic_vector(7 downto 0);
      gmii_tx_en                    : out std_logic;
      gmii_tx_er                    : out std_logic;
      gmii_tx_clk                   : out std_logic;
      gmii_rxd                      : in  std_logic_vector(7 downto 0);
      gmii_rx_dv                    : in  std_logic;
      gmii_rx_er                    : in  std_logic;
      gmii_rx_clk                   : in  std_logic;

      -- Serialised statistics vectors
      --------------------------------
      tx_statistics_s               : out std_logic;
      rx_statistics_s               : out std_logic;
      
      -- Serialised Pause interface controls
      --------------------------------------
      pause_req_s                   : in  std_logic;
      
      -- Main example design controls
      -------------------------------
      mac_speed                     : in  std_logic_vector(1 downto 0);
      update_speed                  : in  std_logic;
      config_board                  : in  std_logic;
      --serial_command                : in  std_logic;
      serial_response               : out std_logic;
      gen_tx_data                   : in  std_logic;
      chk_tx_data                   : in  std_logic;
      reset_error                   : in  std_logic;
      frame_error                   : out std_logic;
      frame_errorn                  : out std_logic;
      activity_flash                : out std_logic;
      activity_flashn               : out std_logic
      
    );
  end component;


  ------------------------------------------------------------------------------
  -- types to support frame data
  ------------------------------------------------------------------------------
  -- Tx Data and Data_valid record
  type data_typ is record
      data : bit_vector(7 downto 0);        -- data
      valid : bit;                          -- data_valid
      error : bit;                          -- data_error
  end record;
  type frame_of_data_typ is array (natural range <>) of data_typ;

  -- Tx Data, Data_valid and underrun record
  type tri_mode_eth_mac_v5_4_frame_typ is record
      columns   : frame_of_data_typ(0 to 65);-- data field
      bad_frame : boolean;                   -- does this frame contain an error?
  end record;
  type frame_typ_ary is array (natural range <>) of tri_mode_eth_mac_v5_4_frame_typ;

  -----------------------------------
  -- testbench mode selection
  -----------------------------------
  -- the testbench hhas two modes of operation:
  --  - DEMO :=   In this mode frames are generated and checked by the testbench
  --              and looped back at the user side of the MAC.
  --  - BIST :=   In this mode the built in pattern generators and patttern 
  --              checkers are used with the data looped back in the PHY domain.
  --constant TB_MODE                  : string := "BIST";
  constant TB_MODE                  : string := "DEMO";


  ------------------------------------------------------------------------------
  -- Stimulus - Frame data
  ------------------------------------------------------------------------------
  -- The following constant holds the stimulus for the testbench. It is
  -- an ordered array of frames, with frame 0 the first to be injected
  -- into the core transmit interface by the testbench.
  ------------------------------------------------------------------------------
  constant frame_data : frame_typ_ary := (
   -------------
   -- Frame 0
   -------------
    0          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       13      => ( DATA => X"2E", VALID => '1', ERROR => '0'), -- Length/Type = Length = 46
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'),
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       18      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"07", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"08", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"09", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"0A", VALID => '1', ERROR => '0'),
       24      => ( DATA => X"0B", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"0C", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"0D", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"0E", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"0F", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"10", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"11", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"12", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"13", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"14", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"15", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"16", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"17", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"18", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"19", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"1A", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"1B", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"1C", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"1D", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"1E", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"1F", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"20", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"21", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"22", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"23", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"24", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"25", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"26", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"27", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"28", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"29", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"2A", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"2B", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"2C", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"2D", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"2E", VALID => '1', ERROR => '0'), -- 46th Byte of Data
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

      -- No error in this frame
      bad_frame => false),


   -------------
   -- Frame 1
   -------------
    1          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"80", VALID => '1', ERROR => '0'), -- Length/Type = Type = 8000
       13      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'),
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       18      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"07", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"08", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"09", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"0A", VALID => '1', ERROR => '0'),
       24      => ( DATA => X"0B", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"0C", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"0D", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"0E", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"0F", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"10", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"11", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"12", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"13", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"14", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"15", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"16", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"17", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"18", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"19", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"1A", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"1B", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"1C", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"1D", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"1E", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"1F", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"20", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"21", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"22", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"23", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"24", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"25", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"26", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"27", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"28", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"29", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"2A", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"2B", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"2C", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"2D", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"2E", VALID => '1', ERROR => '0'),
       60      => ( DATA => X"2F", VALID => '1', ERROR => '0'), -- 47th Data byte
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

      -- No error in this frame
      bad_frame => false),


   -------------
   -- Frame 2
   -------------
    2          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       13      => ( DATA => X"2E", VALID => '1', ERROR => '0'), -- Length/Type = Length = 46
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'),
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       18      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"00", VALID => '1', ERROR => '1'), -- Error asserted
       24      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

       -- Error this frame
      bad_frame => true),


   -------------
   -- Frame 3
   -------------
   3          => (
      columns  => (
        0      => ( DATA => X"DA", VALID => '1', ERROR => '0'), -- Destination Address (DA)
        1      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        2      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        3      => ( DATA => X"04", VALID => '1', ERROR => '0'),
        4      => ( DATA => X"05", VALID => '1', ERROR => '0'),
        5      => ( DATA => X"06", VALID => '1', ERROR => '0'),
        6      => ( DATA => X"5A", VALID => '1', ERROR => '0'), -- Source Address (5A)
        7      => ( DATA => X"02", VALID => '1', ERROR => '0'),
        8      => ( DATA => X"03", VALID => '1', ERROR => '0'),
        9      => ( DATA => X"04", VALID => '1', ERROR => '0'),
       10      => ( DATA => X"05", VALID => '1', ERROR => '0'),
       11      => ( DATA => X"06", VALID => '1', ERROR => '0'),
       12      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       13      => ( DATA => X"03", VALID => '1', ERROR => '0'), -- Length/Type = Length = 03
       14      => ( DATA => X"01", VALID => '1', ERROR => '0'), -- Therefore padding is required
       15      => ( DATA => X"02", VALID => '1', ERROR => '0'),
       16      => ( DATA => X"03", VALID => '1', ERROR => '0'),
       17      => ( DATA => X"00", VALID => '1', ERROR => '0'), -- Padding starts here
       18      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       19      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       20      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       21      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       22      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       23      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       24      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       25      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       26      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       27      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       28      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       29      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       30      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       31      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       32      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       33      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       34      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       35      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       36      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       37      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       38      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       39      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       40      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       41      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       42      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       43      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       44      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       45      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       46      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       47      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       48      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       49      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       50      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       51      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       52      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       53      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       54      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       55      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       56      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       57      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       58      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       59      => ( DATA => X"00", VALID => '1', ERROR => '0'),
       others  => ( DATA => X"00", VALID => '0', ERROR => '0')),

      -- No error in this frame
      bad_frame => false));


  ------------------------------------------------------------------------------
  -- CRC engine
  ------------------------------------------------------------------------------
  function calc_crc (data : in std_logic_vector;
                     fcs  : in std_logic_vector)
  return std_logic_vector is

    variable crc          : std_logic_vector(31 downto 0);
    variable crc_feedback : std_logic;
  begin

    crc := not fcs;

    for I in 0 to 7 loop
      crc_feedback      := crc(0) xor data(I);

      crc(4 downto 0)   := crc(5 downto 1);
      crc(5)            := crc(6)  xor crc_feedback;
      crc(7 downto 6)   := crc(8 downto 7);
      crc(8)            := crc(9)  xor crc_feedback;
      crc(9)            := crc(10) xor crc_feedback;
      crc(14 downto 10) := crc(15 downto 11);
      crc(15)           := crc(16) xor crc_feedback;
      crc(18 downto 16) := crc(19 downto 17);
      crc(19)           := crc(20) xor crc_feedback;
      crc(20)           := crc(21) xor crc_feedback;
      crc(21)           := crc(22) xor crc_feedback;
      crc(22)           := crc(23);
      crc(23)           := crc(24) xor crc_feedback;
      crc(24)           := crc(25) xor crc_feedback;
      crc(25)           := crc(26);
      crc(26)           := crc(27) xor crc_feedback;
      crc(27)           := crc(28) xor crc_feedback;
      crc(28)           := crc(29);
      crc(29)           := crc(30) xor crc_feedback;
      crc(30)           := crc(31) xor crc_feedback;
      crc(31)           :=             crc_feedback;
    end loop;

    -- return the CRC result
    return not crc;
  end calc_crc;


  ------------------------------------------------------------------------------
  -- Test Bench signals and constants
  ------------------------------------------------------------------------------

  -- Delay to provide setup and hold timing at the GMII/RGMII.
  constant dly : time := 5.8 ns; 
  constant gtx_period : time := 2.5 ns;


  -- testbench signals
  signal gtx_clk              : std_logic;
  signal reset                : std_logic                     := '0';             -- start in reset

  signal gmii_tx_clk          : std_logic;
  signal gmii_tx_en           : std_logic;
  signal gmii_tx_er           : std_logic;
  signal gmii_txd             : std_logic_vector(7 downto 0) := (others => '0');
  signal gmii_rx_clk          : std_logic;
  signal gmii_rx_dv           : std_logic := '0';
  signal gmii_rx_er           : std_logic := '0';
  signal gmii_rxd             : std_logic_vector(7 downto 0) := (others => '0');

  -- testbench control signals
  signal tx_monitor_finished_1G     : boolean := false;
  signal management_config_finished : boolean := false;
  signal rx_stimulus_finished       : boolean := false;

  signal phy_speed                  : std_logic_vector(1 downto 0) := "10";
  signal mac_speed                  : std_logic_vector(1 downto 0) := "10";
  signal update_speed               : std_logic := '0';
  
  signal test_half_duplex           : std_logic := '0';
  signal gtx_clkn                   : std_logic;


  signal gmii_rxd_dut               : std_logic_vector(7 downto 0);
  signal gmii_rx_dv_dut             : std_logic;
  signal gmii_rx_er_dut             : std_logic;
  
  signal gen_tx_data                : std_logic;
  signal check_tx_data              : std_logic;
  signal config_bist                : std_logic;
  signal frame_error                : std_logic;
  signal error_seen                 : std_logic;
  signal serial_response            : std_logic;
  
  

begin

  gtx_clkn <= not gtx_clk;

  -- select between loopback or local data
  gmii_rxd_dut    <= gmii_txd when (TB_MODE = "BIST") else gmii_rxd;
  gmii_rx_dv_dut  <= gmii_tx_en when (TB_MODE = "BIST") else gmii_rx_dv;
  gmii_rx_er_dut  <= gmii_tx_er when (TB_MODE = "BIST") else gmii_rx_er;


  ------------------------------------------------------------------------------
  -- Wire up Device Under Test
  ------------------------------------------------------------------------------
  dut: tri_mode_eth_mac_v5_4_example_design
    port map (
      -- asynchronous reset
      --------------------------------
      glbl_rst             => reset,

      -- 200MHz clock input from board
      clk_in_p             => gtx_clk,
      clk_in_n             => gtx_clkn,
      
      phy_resetn           => open,
      
      
      -- GMII Interface
      --------------------------------
      gmii_txd             => gmii_txd,
      gmii_tx_en           => gmii_tx_en,
      gmii_tx_er           => gmii_tx_er,
      gmii_tx_clk          => gmii_tx_clk,
      gmii_rxd             => gmii_rxd_dut,
      gmii_rx_dv           => gmii_rx_dv_dut,
      gmii_rx_er           => gmii_rx_er_dut,
      gmii_rx_clk          => gmii_rx_clk,
      -- Serialised statistics vectors
      --------------------------------
      tx_statistics_s      => open,
      rx_statistics_s      => open,
      
      -- Serialised Pause interface controls
      --------------------------------------
      pause_req_s          => '0',
      
      -- Main example design controls
      -------------------------------
      mac_speed            => mac_speed,
      update_speed         => update_speed,
      config_board         => config_bist,
      serial_response      => serial_response,
      gen_tx_data          => gen_tx_data,
      chk_tx_data          => check_tx_data,
      reset_error          => '0',
      frame_error          => frame_error,
      frame_errorn         => open,
      activity_flash       => open,
      activity_flashn      => open
    );


  ------------------------------------------------------------------------------
  -- If the simulation is still going after delay below
  -- then something has gone wrong: terminate with an error
  ------------------------------------------------------------------------------
  p_timebomb : process
  begin
    if TB_MODE = "BIST" then
       wait for 600 us;
    else
       wait for 100 us;
    end if;
    assert false
      report "ERROR - Simulation running forever!"
      severity failure;
  end process p_timebomb;


  ------------------------------------------------------------------------------
  -- Clock drivers
  ------------------------------------------------------------------------------

  -- drives gtx_clk at 125 MHz
  p_gtx_clk : process
  begin
    gtx_clk <= '0';
    wait for 80 ns;
    loop
      wait for gtx_period;
      gtx_clk <= '1';
      wait for gtx_period;
      gtx_clk <= '0';
    end loop;
  end process p_gtx_clk;

  -- Receiver and transmitter clocks are the same in this simulation
  gmii_rx_clk <= gmii_tx_clk;


  -- monitor frame error and output error when asserted 
  error_seen_p : process (gtx_clk)
  begin
    if gtx_clk'event and gtx_clk = '1' then
       if reset = '1' then
          error_seen <= '0';
       elsif frame_error = '1' and error_seen = '0' then
          error_seen <= '1';
          assert false
            report "** Error: Frame mismatch seen" & cr
            severity error;
       end if;
    end if;
  end process error_seen_p;


  -----------------------------------------------------------------------------
  -- Management process. This process sets up the configuration by
  -- turning off flow control, and checks gathered statistics at the
  -- end of transmission
  -----------------------------------------------------------------------------
  p_management : process

    -- Procedure to reset the MAC
    ------------------------------
    procedure mac_reset is
    begin
      assert false
        report "Resetting core..." & cr
        severity note;

      reset <= '1';
      wait for 400 ns;

      reset <= '0';

      assert false
        report "Timing checks are valid" & cr
        severity note;
    end procedure mac_reset;
    
  begin  -- process p_management

  assert false
      report "Timing checks are not valid" & cr
      severity note;
    mac_speed <= "10";
    phy_speed <= "10";
    update_speed <= '0';
    gen_tx_data <= '0'; 
    check_tx_data <= '0';
    config_bist <= '0';


    -- reset the core
    mac_reset;


    -- Adding a gap to allow reset to complete
    for j in 0 to 99 loop
      wait until gtx_clk'event and gtx_clk = '1';
    end loop;
    
    if TB_MODE = "BIST" then
       gen_tx_data <= '1';
       check_tx_data <= '1';
       -- run for a set time and then stop
       wait for 100 us;
       -- Our work here is done
       
       if frame_error = '1' then
          assert false
            report "ERROR: Frame mismatch seen" & cr
            severity failure;
       else
          assert false
            report "** failure: Simulation Stopped" & cr
            severity failure;
       end if;
    else 
       -- Signal that configuration is complete.  Other processes will now
       -- be allowed to run.
       management_config_finished <= true;

       -- The stimulus process will now send 4 frames at 1Gb/s.
       --------------------------------------------------------------------

       -- Wait for 1G monitor process to complete.
       wait until tx_monitor_finished_1G;
       management_config_finished <= false;



       wait;
    end if;
  end process p_management;



  ------------------------------------------------------------------------------
  -- Stimulus process. This process will inject frames of data into the
  -- PHY side of the receiver.
  ------------------------------------------------------------------------------
  p_stimulus : process

    ----------------------------------------------------------
    -- Procedure to inject a frame into the receiver at 1Gb/s
    ----------------------------------------------------------
    procedure send_frame_1g (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
    begin

      wait until gmii_rx_clk'event and gmii_rx_clk = '1';

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Adding the preamble field
      for j in 0 to 7 loop
        gmii_rxd   <= "01010101" after dly;
        gmii_rx_dv <= '1' after dly;
        gmii_rx_er <= '0' after dly;
        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;

      -- Adding the Start of Frame Delimiter (SFD)
      gmii_rxd   <= "11010101" after dly;
      gmii_rx_dv <= '1' after dly;
      wait until gmii_rx_clk'event and gmii_rx_clk = '1';

      current_col := 0;
      gmii_rxd     <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data) after dly;
      gmii_rx_dv   <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after dly;
      gmii_rx_er   <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after dly;
      fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);

      wait until gmii_rx_clk'event and gmii_rx_clk = '1';

      current_col := current_col + 1;
      -- loop over columns in frame.
      while frame_data(current_frame).columns(current_col).valid /= '0' loop
        -- send one column of data
        gmii_rxd   <= to_stdlogicvector(frame_data(current_frame).columns(current_col).data) after dly;
        gmii_rx_dv <= to_stdUlogic(frame_data(current_frame).columns(current_col).valid) after dly;
        gmii_rx_er   <= to_stdUlogic(frame_data(current_frame).columns(current_col).error) after dly;
        fcs          := calc_crc(to_stdlogicvector(frame_data(current_frame).columns(current_col).data), fcs);

        current_col := current_col + 1;
        wait until gmii_rx_clk'event and gmii_rx_clk = '1';

      end loop;

      -- Send the CRC.
      for j in 0 to 3 loop
         gmii_rxd   <= fcs(((8*j)+7) downto (8*j)) after dly;
         gmii_rx_dv <= '1' after dly;
         gmii_rx_er <= '0' after dly;
        wait until gmii_rx_clk'event and gmii_rx_clk = '1';
      end loop;

        -- Clear the data lines.
        gmii_rxd   <= (others => '0') after dly;
        gmii_rx_dv <=  '0' after dly;

        -- Adding the minimum Interframe gap for a receiver (8 idles)
        for j in 0 to 7 loop
          wait until gmii_rx_clk'event and gmii_rx_clk = '1';
        end loop;

    end send_frame_1g;


  begin


    -- Send four frames through the MAC and Design Exampled
    -- at each state Ethernet speed
    --      -- frame 0 = minimum length frame
    --      -- frame 1 = type frame
    --      -- frame 2 = errored frame
    --      -- frame 3 = padded frame
    -------------------------------------------------------


    -- 1 Gb/s speed
    -------------------------------------------------------
    -- Wait for the Management MDIO transaction to finish.
    wait until management_config_finished;
    -- Wait for the internal resets to settle
    wait for 800 ns;

    assert false
      report "Sending four frames at 1Gb/s..." & cr
      severity note;

    for current_frame in frame_data'low to frame_data'high loop
      send_frame_1g(current_frame);
    end loop;

    -- Wait for 1G monitor process to complete.
    wait until tx_monitor_finished_1G;
    wait for 10 ns;

    rx_stimulus_finished <= true;

    -- Our work here is done
    assert false
      report "Simulation stopped"
      severity failure;
  end process p_stimulus;



  ------------------------------------------------------------------------------
  -- Monitor process. This process checks the data coming out of the
  -- transmitter to make sure that it matches that inserted into the
  -- receiver.
  ------------------------------------------------------------------------------
  p_monitor : process

    ---------------------------------------------------
    -- Procedure to check a transmitted frame at 1Gb/s
    ---------------------------------------------------
    procedure check_frame_1g (current_frame : in natural) is
      variable current_col   : natural := 0;  -- Column counter within frame
      variable fcs           : std_logic_vector(31 downto 0);
      variable frame_type    : string(1 to 4) := (others => ' ');
    begin

      -- Reset the FCS calculation
      fcs         := (others => '0');

      -- Parse over the preamble field
      while gmii_tx_en /= '1' or gmii_txd = "01010101" loop
        wait until gmii_tx_clk'event and gmii_tx_clk = '1';
      end loop;

      -- Parse over the Start of Frame Delimiter (SFD)
      if (gmii_txd /= "11010101") then
        assert false
          report "SFD not present" & cr
          severity error;
      end if;
      wait until gmii_tx_clk'event and gmii_tx_clk = '1';
      if TB_MODE = "DEMO" then

         -- Start comparing transmitted dat to received data
         assert false
           report "Comparing Transmitted Data Frames to Received Data Frames" & cr
           severity note;

         -- frame has started, loop over columns of frame
         while ((frame_data(current_frame).columns(current_col).valid)='1') loop

             assert (gmii_tx_en = to_stdulogic(frame_data(current_frame).columns(current_col).valid))
               report "gmii_tx_en incorrect" & cr
               severity error;

             if gmii_tx_en = '1' then

               -- The transmitted Destination Address was the Source Address of the injected frame
               if current_col < 6 then
                 assert (gmii_txd(7 downto 0) =
                       to_stdlogicvector(frame_data(current_frame).columns(current_col+6).data(7 downto 0)))
                   report "gmii_txd incorrect" & cr
                   severity error;

               -- The transmitted Source Address was the Destination Address of the injected frame
               elsif current_col >= 6 and current_col < 12 then
                 assert (gmii_txd(7 downto 0) =
                       to_stdlogicvector(frame_data(current_frame).columns(current_col-6).data(7 downto 0)))
                   report "gmii_txd incorrect" & cr
                   severity error;

               -- for remainder of frame
               else
                 assert (gmii_txd(7 downto 0) =
                       to_stdlogicvector(frame_data(current_frame).columns(current_col).data(7 downto 0)))
                   report "gmii_txd incorrect" & cr
                   severity error;
               end if;
           end if;

           -- calculate expected crc for the frame
           fcs        := calc_crc(gmii_txd, fcs);

           -- wait for next column of data
           current_col        := current_col + 1;
           wait until gmii_tx_clk'event and gmii_tx_clk = '1';
         end loop;  -- while data valid

         -- Check the FCS matches that expected from calculation
         -- Having checked all data columns, txd must contain FCS.
         for j in 0 to 3 loop
           assert (gmii_tx_en = '1')
             report "gmii_tx_en incorrect during FCS field"  & cr
             severity error;

           assert (gmii_txd = fcs(((8*j)+7) downto (8*j)))
             report "gmii_txd incorrect during FCS field"  & cr
             severity error;

           wait until gmii_tx_clk'event and gmii_tx_clk = '1';
         end loop;  -- j

      else
         frame_type     := (others => ' ');
         while (gmii_tx_en='1') loop
           if current_col = 12 and gmii_txd = X"81" then
              frame_type := "VLAN";
           end if;
           -- wait for next column of data
           current_col        := current_col + 1;
           wait until gmii_tx_clk'event and gmii_tx_clk = '1';
         
         end loop;  -- while data valid
         assert false
           report frame_type & " Frame tramsmitted : Size " & integer'image(current_col) & cr
           severity note;
      end if;
    end check_frame_1g;


    variable f                  : tri_mode_eth_mac_v5_4_frame_typ;       -- temporary frame variable
    variable current_frame      : natural   := 0;  -- current frame pointer


  begin  -- process p_monitor


    -- Compare the transmitted frame to the received frames
    --      -- frame 0 = minimum length frame
    --      -- frame 1 = type frame
    --      -- frame 2 = errored frame
    --      -- frame 3 = padded frame
    -- Repeated for all stated speeds.
    -------------------------------------------------------

    -- wait for reset to complete before starting monitor to ignore false startup errors
    wait until reset'event and reset = '0';

    if TB_MODE = "DEMO" then
    
       -- 1 Gb/s speed
       -------------------------------------------------------

       current_frame      := 0;
       

       -- Look for 1Gb/s frames.
       -- loop over all the frames in the stimulus record
       loop

         -- If the current frame had an error inserted then it would have been
         -- dropped by the FIFO in the design example.  Therefore move immediately
         -- on to the next frame.
         while frame_data(current_frame).bad_frame loop
           current_frame := current_frame + 1;
         if current_frame = frame_data'high + 1 then
             exit;
           end if;
         end loop;

         -- There are only 4 frames in this test.
         if current_frame = frame_data'high + 1 then
           exit;
         end if;

         -- Check the current frame
         check_frame_1g(current_frame);

         -- move to the next frame
         if current_frame = frame_data'high then
           exit;
         else
           current_frame := current_frame + 1;
         end if;

       end loop;

       wait for 200 ns;
       tx_monitor_finished_1G <= true;


       wait;
    else
       loop
          check_frame_1g(current_frame);       
       end loop;
    end if;
  end process p_monitor;



end behav;
