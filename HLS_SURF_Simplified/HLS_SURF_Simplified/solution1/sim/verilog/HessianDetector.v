// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module HessianDetector (
        sum_V_dout,
        sum_V_empty_n,
        sum_V_read,
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] sum_V_dout;
input   sum_V_empty_n;
output   sum_V_read;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    calcLayerDetAndTrace_U0_ap_start;
wire    calcLayerDetAndTrace_U0_ap_done;
wire    calcLayerDetAndTrace_U0_ap_continue;
wire    calcLayerDetAndTrace_U0_ap_idle;
wire    calcLayerDetAndTrace_U0_ap_ready;
wire   [31:0] calcLayerDetAndTrace_U0_det0_V_V;
wire    calcLayerDetAndTrace_U0_det0_V_V_ap_vld;
wire   [31:0] calcLayerDetAndTrace_U0_det1_V_V3;
wire    calcLayerDetAndTrace_U0_det1_V_V3_ap_vld;
wire   [31:0] calcLayerDetAndTrace_U0_det2_V_V6;
wire    calcLayerDetAndTrace_U0_det2_V_V6_ap_vld;
wire    calcLayerDetAndTrace_U0_sum_V_read;
wire    findCharacteristicPo_U0_ap_start;
wire    findCharacteristicPo_U0_ap_done;
wire    findCharacteristicPo_U0_ap_continue;
wire    findCharacteristicPo_U0_ap_idle;
wire    findCharacteristicPo_U0_ap_ready;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_calcLayerDetAndTrace_U0_ap_ready;
wire    ap_sync_calcLayerDetAndTrace_U0_ap_ready;
reg   [1:0] calcLayerDetAndTrace_U0_ap_ready_count;
reg    ap_sync_reg_findCharacteristicPo_U0_ap_ready;
wire    ap_sync_findCharacteristicPo_U0_ap_ready;
reg   [1:0] findCharacteristicPo_U0_ap_ready_count;
wire    calcLayerDetAndTrace_U0_start_full_n;
wire    calcLayerDetAndTrace_U0_start_write;
wire    findCharacteristicPo_U0_start_full_n;
wire    findCharacteristicPo_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_calcLayerDetAndTrace_U0_ap_ready = 1'b0;
#0 calcLayerDetAndTrace_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_findCharacteristicPo_U0_ap_ready = 1'b0;
#0 findCharacteristicPo_U0_ap_ready_count = 2'd0;
end

calcLayerDetAndTrace calcLayerDetAndTrace_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(calcLayerDetAndTrace_U0_ap_start),
    .ap_done(calcLayerDetAndTrace_U0_ap_done),
    .ap_continue(calcLayerDetAndTrace_U0_ap_continue),
    .ap_idle(calcLayerDetAndTrace_U0_ap_idle),
    .ap_ready(calcLayerDetAndTrace_U0_ap_ready),
    .det0_V_V(calcLayerDetAndTrace_U0_det0_V_V),
    .det0_V_V_ap_vld(calcLayerDetAndTrace_U0_det0_V_V_ap_vld),
    .det1_V_V3(calcLayerDetAndTrace_U0_det1_V_V3),
    .det1_V_V3_ap_vld(calcLayerDetAndTrace_U0_det1_V_V3_ap_vld),
    .det2_V_V6(calcLayerDetAndTrace_U0_det2_V_V6),
    .det2_V_V6_ap_vld(calcLayerDetAndTrace_U0_det2_V_V6_ap_vld),
    .sum_V_dout(sum_V_dout),
    .sum_V_empty_n(sum_V_empty_n),
    .sum_V_read(calcLayerDetAndTrace_U0_sum_V_read)
);

findCharacteristicPo findCharacteristicPo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(findCharacteristicPo_U0_ap_start),
    .ap_done(findCharacteristicPo_U0_ap_done),
    .ap_continue(findCharacteristicPo_U0_ap_continue),
    .ap_idle(findCharacteristicPo_U0_ap_idle),
    .ap_ready(findCharacteristicPo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_calcLayerDetAndTrace_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_calcLayerDetAndTrace_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_calcLayerDetAndTrace_U0_ap_ready <= ap_sync_calcLayerDetAndTrace_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_findCharacteristicPo_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_findCharacteristicPo_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_findCharacteristicPo_U0_ap_ready <= ap_sync_findCharacteristicPo_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((calcLayerDetAndTrace_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        calcLayerDetAndTrace_U0_ap_ready_count <= (calcLayerDetAndTrace_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (calcLayerDetAndTrace_U0_ap_ready == 1'b1))) begin
        calcLayerDetAndTrace_U0_ap_ready_count <= (calcLayerDetAndTrace_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((findCharacteristicPo_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        findCharacteristicPo_U0_ap_ready_count <= (findCharacteristicPo_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (findCharacteristicPo_U0_ap_ready == 1'b1))) begin
        findCharacteristicPo_U0_ap_ready_count <= (findCharacteristicPo_U0_ap_ready_count + 2'd1);
    end
end

assign ap_done = findCharacteristicPo_U0_ap_done;

assign ap_idle = (findCharacteristicPo_U0_ap_idle & calcLayerDetAndTrace_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_calcLayerDetAndTrace_U0_ap_ready = (calcLayerDetAndTrace_U0_ap_ready | ap_sync_reg_calcLayerDetAndTrace_U0_ap_ready);

assign ap_sync_continue = ap_continue;

assign ap_sync_done = findCharacteristicPo_U0_ap_done;

assign ap_sync_findCharacteristicPo_U0_ap_ready = (findCharacteristicPo_U0_ap_ready | ap_sync_reg_findCharacteristicPo_U0_ap_ready);

assign ap_sync_ready = (ap_sync_findCharacteristicPo_U0_ap_ready & ap_sync_calcLayerDetAndTrace_U0_ap_ready);

assign calcLayerDetAndTrace_U0_ap_continue = 1'b1;

assign calcLayerDetAndTrace_U0_ap_start = ((ap_sync_reg_calcLayerDetAndTrace_U0_ap_ready ^ 1'b1) & ap_start);

assign calcLayerDetAndTrace_U0_start_full_n = 1'b1;

assign calcLayerDetAndTrace_U0_start_write = 1'b0;

assign findCharacteristicPo_U0_ap_continue = ap_continue;

assign findCharacteristicPo_U0_ap_start = ((ap_sync_reg_findCharacteristicPo_U0_ap_ready ^ 1'b1) & ap_start);

assign findCharacteristicPo_U0_start_full_n = 1'b1;

assign findCharacteristicPo_U0_start_write = 1'b0;

assign sum_V_read = calcLayerDetAndTrace_U0_sum_V_read;

endmodule //HessianDetector
