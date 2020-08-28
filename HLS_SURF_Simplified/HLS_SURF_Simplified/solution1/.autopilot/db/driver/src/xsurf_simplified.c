// ==============================================================
// File generated on Thu Aug 27 17:06:15 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsurf_simplified.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSurf_simplified_CfgInitialize(XSurf_simplified *InstancePtr, XSurf_simplified_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->Threshold_BaseAddress = ConfigPtr->Threshold_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSurf_simplified_Start(XSurf_simplified *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL) & 0x80;
    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSurf_simplified_IsDone(XSurf_simplified *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSurf_simplified_IsIdle(XSurf_simplified *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSurf_simplified_IsReady(XSurf_simplified *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSurf_simplified_EnableAutoRestart(XSurf_simplified *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XSurf_simplified_DisableAutoRestart(XSurf_simplified *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_AP_CTRL, 0);
}

void XSurf_simplified_Set_keyPoints_V(XSurf_simplified *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_KEYPOINTS_V_DATA, Data);
}

u32 XSurf_simplified_Get_keyPoints_V(XSurf_simplified *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_KEYPOINTS_V_DATA);
    return Data;
}

void XSurf_simplified_Set_kpn(XSurf_simplified *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_KPN_DATA, Data);
}

u32 XSurf_simplified_Get_kpn(XSurf_simplified *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_KPN_DATA);
    return Data;
}

void XSurf_simplified_Set_threshold(XSurf_simplified *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Threshold_BaseAddress, XSURF_SIMPLIFIED_THRESHOLD_ADDR_THRESHOLD_DATA, Data);
}

u32 XSurf_simplified_Get_threshold(XSurf_simplified *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSurf_simplified_ReadReg(InstancePtr->Threshold_BaseAddress, XSURF_SIMPLIFIED_THRESHOLD_ADDR_THRESHOLD_DATA);
    return Data;
}

void XSurf_simplified_InterruptGlobalEnable(XSurf_simplified *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_GIE, 1);
}

void XSurf_simplified_InterruptGlobalDisable(XSurf_simplified *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_GIE, 0);
}

void XSurf_simplified_InterruptEnable(XSurf_simplified *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_IER);
    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_IER, Register | Mask);
}

void XSurf_simplified_InterruptDisable(XSurf_simplified *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_IER);
    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_IER, Register & (~Mask));
}

void XSurf_simplified_InterruptClear(XSurf_simplified *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSurf_simplified_WriteReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_ISR, Mask);
}

u32 XSurf_simplified_InterruptGetEnabled(XSurf_simplified *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_IER);
}

u32 XSurf_simplified_InterruptGetStatus(XSurf_simplified *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSurf_simplified_ReadReg(InstancePtr->Axilites_BaseAddress, XSURF_SIMPLIFIED_AXILITES_ADDR_ISR);
}

