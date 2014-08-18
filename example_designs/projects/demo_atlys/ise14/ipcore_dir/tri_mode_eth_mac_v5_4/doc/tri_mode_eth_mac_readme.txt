CHANGE LOG for Xilinx LogiCORE Tri-Mode Ethernet MAC v5.5 Rev 1

Release Date: April 8, 2013
--------------------------------------------------------------------------------

Table of Contents

1.   INTRODUCTION 
2.   DEVICE SUPPORT    
3.   NEW FEATURE HISTORY   
4.   RESOLVED ISSUES 
5.   KNOWN ISSUES & LIMITATIONS 
6.   TECHNICAL SUPPORT & FEEDBACK 
7.   CORE RELEASE HISTORY 
8.   LEGAL DISCLAIMER 

--------------------------------------------------------------------------------


1. INTRODUCTION

  This file contains the change log for all released versions of the Xilinx 
  LogiCORE IP core Tri-Mode Ethernet MAC. 
  
  For the latest core updates, see the product page at:

    http://www.xilinx.com/products/ipcenter/TEMAC.htm

  For installation instructions for this release, please go to:

    www.xilinx.com/ipcenter/coregen/ip_update_install_instructions.htm

  For system requirements, see:

    www.xilinx.com/ipcenter/coregen/ip_update_system_requirements.htm


2. DEVICE SUPPORT

  2.1 ISE
 
   The following device families are supported by the core for this release.

   Virtex-7 devices
     Virtex-7
     Virtex-7 HT/XT
     Virtex-7 Low Voltage (-2L)

   Kintex-7 devices
     Kintex-7
     Kintex-7 Low Voltage (-2L)

   Artix-7 devices
     Artix-7
   
   Zynq-7000 devices
     Zynq-7000

   All Virtex-6 devices

   Spartan-6 devices
     Spartan-6                LX/LXT
     Defense Grade Spartan-6Q LX/LXT


  2.2 Vivado
 
   The following device families are supported by the core for this release.

   Virtex-7 devices
     Virtex-7
     Virtex-7 HT/XT
     Virtex-7 Low Voltage (-2L)

   Kintex-7 devices
     Kintex-7
     Kintex-7 Low Voltage (-2L)

   Artix-7 devices
     Artix-7

3. NEW FEATURE HISTORY
  
  3.1 ISE
  
    v5.5
  
    - ISE 14.4 software support
    
    v5.4
  
    - ISE 14.2 software support
    
    - Example design testbench targeted at Tri-speed Internal interface
      demonstrates operation at all three speeds
      
    v5.3
    
    - ISE 14.1 software support
    
    - User provided component name used to uniquify all example design files
        
    v5.2
    
    - ISE 13.4 software support
    
    - Artix 7 Support
    
    - Optional Built-in AVB
    
    - Improved Example design
    
      - New BIST mode with built-in pattern generator and checker
      
      - Activity indication
        
    v5.1
    
    - ISE 13.1 software support
    
    - Initial release of AXI enabled core
    
    - AXI4 Stream support
    
    - AXI4 Lite support
    
    - All new memory mapped interface
    
    - Integrated Statistics counters
    
    - Advanced Frame Filter enabling match vectors to be built up over any 
      combination of bits in the first 64 bytes of each frame
      
    - Example design targeted at key Xilinx demonstration platforms
      
  3.2 Vivado
  
    v5.5
    
    - Vivado 2012.4 software support
    
    v5.4
    
    - Vivado 2012.2 software support
    
    - Initial public release
    
    - Block level user editable logic delivered as part of the core
    
   
4. RESOLVED ISSUES

  4.1 ISE

    v5.5 Rev 1
    
    - Programming the AVB specific frame filters also changes the non-AVB filter at 
      the same offset
    - CR704839
    
    - The TX stats byte count is incorrect if the TX IFG drops below 8.
    - CR687357 
    
    - When using the TX IFG input, the smallest value which can be obtained
      in full duplex mose (with half duplex supported) is 9 bytes
    - CR695056
    
    v5.5
    
    - A Pause request during transmission of a PAUSE frame can corrupt the Quanta
    - CR 687357
    
    - Frames within 12 bytes of the user defined max frame size could get marked bad
    - AR 52556
    
    - RGMII_TX_ER incorrect timing at 10/100 speeds 
    - CR 680540
    
    - Receive clocking logic updated for ZYNQ/Artix to improve timing
      Changed to use IDELAYs in place of MMCM/PLL
    - AR 50860
    
    - Received Fragmented frames could be incorrectly marked as good
    - CR 666785
    
    - MDIO read data register is updated after an MDIO write
    - CR 678002
    
    v5.4
    
    - None
    
    v5.3
    
    - Unable to read TX PTP Packet Buffer when core is generated with AVB support.
      This has been fixed by adjusting the read acknowledge timing
    - CR 655322
    
    - UCF changes to target KC705 Rev C/Rev D Board
    - AR 45527
    
    - The core is not selectable with Virtex-6 and Spartan-6 Q-grade devices
    - AR 45724
       
    v5.2
    
    - ERROR:NgdBuild:973 - The temac symbol is not supported
    - AR 42089
    
    - Invalid target device when running virtex 7 example design in 13.2
    - AR 42926
    
    v5.1 rev 2
    
    - RGMII Support for Kintex 7
    - AR 44892
    
    - Base Address/High Address restriction when generating the core with both 
      AXI4-Lite and AVB
    - AR 44893
    
    v5.1 rev 1
    
    - When implemented with statistics counters - the counters are 
      partially reset when an RX/TX soft reset is applied.  The counters have
      been updated to only use the global reset.
    - CR 610022
    - AR 42667
    
    v5.1
    
    - None
    

  4.2 Vivado
  
    v5.5 Rev 1
    
    - Programming the AVB specific frame filters also changes the non-AVB filter at 
      the same offset
    - CR704839
    
    - The TX stats byte count is incorrect if the TX IFG drops below 8.
    - CR687357 
    
    - When using the TX IFG input, the smallest value which can be obtained
      in full duplex mose (with half duplex supported) is 9 bytes
    - CR695056
    
    v5.5
    
    - A Pause request during transmission of a PAUSE frame can corrupt the Quanta
    - CR 687357
    
    - Frames within 12 bytes of the user defined max frame size could get marked bad
    - AR 52556
    
    - RGMII_TX_ER incorrect timing at 10/100 speeds 
    - CR 680540
    
    - Receive clocking logic updated for ZYNQ/Artix to improve timing
      Changed to use IDELAYs in place of MMCM/PLL
    - AR 50860
    
    - Received Fragmented frames could be incorrectly marked as good
    - CR 666785
    
    - MDIO read data register is updated after an MDIO write
    - CR 678002
        
    v5.4
    
    - None
    

5. KNOWN ISSUES & LIMITATIONS

  - Virtex-6 FPGAs - Meeting GMII and RGMII setup and hold times
  - AR 40028
  
  - Spartan-6 FPGAs - Meeting GMII setup and hold times
  - AR 35336
  
  - For a comprehensive listing of Known Issues for this core, please see the IP 
    Release Notes Guide,  
    
    http://www.xilinx.com/support/documentation/user_guides/xtp025.pdf

................................................................................

6. TECHNICAL SUPPORT & FEEDBACK

   To obtain technical support, create a WebCase at www.xilinx.com/support.  
   Questions are routed to a team with expertise using this product.  
   Feedback on this IP core may also be submitted under the "Leave Feedback" 
   menu item in Vivado/PlanAhead.
   
   Xilinx provides technical support for use of this product when used
   according to the guidelines described in the core documentation, and
   cannot guarantee timing, functionality, or support of this product for
   designs that do not follow specified guidelines.


7. CORE RELEASE HISTORY

Date        By            Version   Change Description
========================================================================
04/08/2013  Xilinx, Inc.  5.5 Rev 1   Patch release
12/18/2012  Xilinx, Inc.  5.5         Release for ISE 14.4 / Vivado 2012.4
07/25/2012  Xilinx, Inc.  5.4         Release for ISE 14.2 / Vivado 2012.2
04/24/2012  Xilinx, Inc.  5.3         Release for ISE 14.1
01/18/2012  Xilinx, Inc.  5.2         Release for ISE 13.4
11/11/2011  Xilinx, Inc.  5.1 Rev 2   Release to suppport KC705 development board
05/27/2011  Xilinx, Inc.  5.1 Rev 1   Patch release
03/01/2011  Xilinx, Inc.  5.1         Release for ISE 13.1
11/16/2010  Xilinx, Inc.  5.1         ISE 7 Series Monthly Snapshot - (O.34)
10/19/2010  Xilinx, Inc.  5.1         ISE 7 Series Monthly Snapshot - (O.28)
========================================================================


8. LEGAL DISCLAIMER

  (c) Copyright 2002 - 2013 Xilinx, Inc. All rights reserved.
  
  This file contains confidential and proprietary information
  of Xilinx, Inc. and is protected under U.S. and
  international copyright and other intellectual property
  laws. 

  DISCLAIMER
  This disclaimer is not a license and does not grant any
  rights to the materials distributed herewith. Except as
  otherwise provided in a valid license issued to you by
  Xilinx, and to the maximum extent permitted by applicable
  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
  (2) Xilinx shall not be liable (whether in contract or tort,
  including negligence, or under any other theory of
  liability) for any loss or damage of any kind or nature
  related to, arising under or in connection with these
  materials, including for any direct, or any indirect,
  special, incidental, or consequential loss or damage
  (including loss of data, profits, goodwill, or any type of
  loss or damage suffered as a result of any action brought
  by a third party) even if such damage or loss was
  reasonably foreseeable or Xilinx had been advised of the
  possibility of the same. 

  CRITICAL APPLICATIONS
  Xilinx products are not designed or intended to be fail-
  safe, or for use in any application requiring fail-safe
  performance, such as life-support or safety devices or
  systems, Class III medical devices, nuclear facilities,
  applications related to the deployment of airbags, or any
  other applications that could lead to death, personal
  injury, or severe property or environmental damage
  (individually and collectively, "Critical 
  Applications"). Customer assumes the sole risk and 
  liability of any use of Xilinx products in Critical 
  Applications, subject only to applicable laws and 
  regulations governing limitations on product liability. 
 
  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
  PART OF THIS FILE AT ALL TIMES.
