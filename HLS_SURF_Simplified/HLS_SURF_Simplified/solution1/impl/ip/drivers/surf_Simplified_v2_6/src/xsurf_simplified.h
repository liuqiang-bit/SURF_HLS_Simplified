// ==============================================================
// File generated on Thu Aug 27 17:06:15 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSURF_SIMPLIFIED_H
#define XSURF_SIMPLIFIED_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsurf_simplified_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
    u32 Threshold_BaseAddress;
} XSurf_simplified_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 Threshold_BaseAddress;
    u32 IsReady;
} XSurf_simplified;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSurf_simplified_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSurf_simplified_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSurf_simplified_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSurf_simplified_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XSurf_simplified_Initialize(XSurf_simplified *InstancePtr, u16 DeviceId);
XSurf_simplified_Config* XSurf_simplified_LookupConfig(u16 DeviceId);
int XSurf_simplified_CfgInitialize(XSurf_simplified *InstancePtr, XSurf_simplified_Config *ConfigPtr);
#else
int XSurf_simplified_Initialize(XSurf_simplified *InstancePtr, const char* InstanceName);
int XSurf_simplified_Release(XSurf_simplified *InstancePtr);
#endif

void XSurf_simplified_Start(XSurf_simplified *InstancePtr);
u32 XSurf_simplified_IsDone(XSurf_simplified *InstancePtr);
u32 XSurf_simplified_IsIdle(XSurf_simplified *InstancePtr);
u32 XSurf_simplified_IsReady(XSurf_simplified *InstancePtr);
void XSurf_simplified_EnableAutoRestart(XSurf_simplified *InstancePtr);
void XSurf_simplified_DisableAutoRestart(XSurf_simplified *InstancePtr);

void XSurf_simplified_Set_keyPoints_V(XSurf_simplified *InstancePtr, u32 Data);
u32 XSurf_simplified_Get_keyPoints_V(XSurf_simplified *InstancePtr);
void XSurf_simplified_Set_kpn(XSurf_simplified *InstancePtr, u32 Data);
u32 XSurf_simplified_Get_kpn(XSurf_simplified *InstancePtr);
void XSurf_simplified_Set_threshold(XSurf_simplified *InstancePtr, u32 Data);
u32 XSurf_simplified_Get_threshold(XSurf_simplified *InstancePtr);

void XSurf_simplified_InterruptGlobalEnable(XSurf_simplified *InstancePtr);
void XSurf_simplified_InterruptGlobalDisable(XSurf_simplified *InstancePtr);
void XSurf_simplified_InterruptEnable(XSurf_simplified *InstancePtr, u32 Mask);
void XSurf_simplified_InterruptDisable(XSurf_simplified *InstancePtr, u32 Mask);
void XSurf_simplified_InterruptClear(XSurf_simplified *InstancePtr, u32 Mask);
u32 XSurf_simplified_InterruptGetEnabled(XSurf_simplified *InstancePtr);
u32 XSurf_simplified_InterruptGetStatus(XSurf_simplified *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
