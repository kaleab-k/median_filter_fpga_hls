// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xfilter_wrapper.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFilter_wrapper_CfgInitialize(XFilter_wrapper *InstancePtr, XFilter_wrapper_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFilter_wrapper_Start(XFilter_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_AP_CTRL) & 0x80;
    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFilter_wrapper_IsDone(XFilter_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFilter_wrapper_IsIdle(XFilter_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFilter_wrapper_IsReady(XFilter_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFilter_wrapper_EnableAutoRestart(XFilter_wrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XFilter_wrapper_DisableAutoRestart(XFilter_wrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_AP_CTRL, 0);
}

void XFilter_wrapper_Set_in_array(XFilter_wrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_IN_ARRAY_DATA, Data);
}

u32 XFilter_wrapper_Get_in_array(XFilter_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_IN_ARRAY_DATA);
    return Data;
}

void XFilter_wrapper_Set_out_array(XFilter_wrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_OUT_ARRAY_DATA, Data);
}

u32 XFilter_wrapper_Get_out_array(XFilter_wrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_OUT_ARRAY_DATA);
    return Data;
}

void XFilter_wrapper_InterruptGlobalEnable(XFilter_wrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_GIE, 1);
}

void XFilter_wrapper_InterruptGlobalDisable(XFilter_wrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_GIE, 0);
}

void XFilter_wrapper_InterruptEnable(XFilter_wrapper *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_IER);
    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_IER, Register | Mask);
}

void XFilter_wrapper_InterruptDisable(XFilter_wrapper *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_IER);
    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_IER, Register & (~Mask));
}

void XFilter_wrapper_InterruptClear(XFilter_wrapper *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_wrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_ISR, Mask);
}

u32 XFilter_wrapper_InterruptGetEnabled(XFilter_wrapper *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_IER);
}

u32 XFilter_wrapper_InterruptGetStatus(XFilter_wrapper *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter_wrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XFILTER_WRAPPER_AXILITES_ADDR_ISR);
}
