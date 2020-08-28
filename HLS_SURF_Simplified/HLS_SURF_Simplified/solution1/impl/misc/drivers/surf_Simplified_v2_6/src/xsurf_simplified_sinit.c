// ==============================================================
// File generated on Thu Aug 27 17:06:15 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsurf_simplified.h"

extern XSurf_simplified_Config XSurf_simplified_ConfigTable[];

XSurf_simplified_Config *XSurf_simplified_LookupConfig(u16 DeviceId) {
	XSurf_simplified_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSURF_SIMPLIFIED_NUM_INSTANCES; Index++) {
		if (XSurf_simplified_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSurf_simplified_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSurf_simplified_Initialize(XSurf_simplified *InstancePtr, u16 DeviceId) {
	XSurf_simplified_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSurf_simplified_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSurf_simplified_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

