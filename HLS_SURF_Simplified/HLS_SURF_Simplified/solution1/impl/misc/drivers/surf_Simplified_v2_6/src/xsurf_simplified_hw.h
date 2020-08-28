// ==============================================================
// File generated on Thu Aug 27 17:06:15 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of keyPoints_V
//        bit 31~0 - keyPoints_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of kpn
//        bit 31~0 - kpn[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL          0x00
#define XSURF_SIMPLIFIED_AXILITES_ADDR_GIE              0x04
#define XSURF_SIMPLIFIED_AXILITES_ADDR_IER              0x08
#define XSURF_SIMPLIFIED_AXILITES_ADDR_ISR              0x0c
#define XSURF_SIMPLIFIED_AXILITES_ADDR_KEYPOINTS_V_DATA 0x10
#define XSURF_SIMPLIFIED_AXILITES_BITS_KEYPOINTS_V_DATA 32
#define XSURF_SIMPLIFIED_AXILITES_ADDR_KPN_DATA         0x18
#define XSURF_SIMPLIFIED_AXILITES_BITS_KPN_DATA         32

// threshold
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of threshold
//        bit 31~0 - threshold[31:0] (Read/Write)
// 0x14 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSURF_SIMPLIFIED_THRESHOLD_ADDR_THRESHOLD_DATA 0x10
#define XSURF_SIMPLIFIED_THRESHOLD_BITS_THRESHOLD_DATA 32

