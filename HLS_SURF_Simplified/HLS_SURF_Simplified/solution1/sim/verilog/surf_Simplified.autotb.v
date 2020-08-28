// ==============================================================
// File generated on Thu Aug 27 15:08:30 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      surf_Simplified
`define AUTOTB_DUT_INST AESL_inst_surf_Simplified
`define AUTOTB_TOP      apatb_surf_Simplified_top
`define AUTOTB_LAT_RESULT_FILE "surf_Simplified.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "surf_Simplified.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_surf_Simplified_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_keyPoints 1
`define AESL_DEPTH_pointNumber 1
`define AESL_DEPTH_video_in_V_data_V 1
`define AESL_DEPTH_video_in_V_keep_V 1
`define AESL_DEPTH_video_in_V_strb_V 1
`define AESL_DEPTH_video_in_V_user_V 1
`define AESL_DEPTH_video_in_V_last_V 1
`define AESL_DEPTH_video_in_V_id_V 1
`define AESL_DEPTH_video_in_V_dest_V 1
`define AESL_DEPTH_keyPoints_V 1
`define AESL_DEPTH_kpn 1
`define AESL_DEPTH_threshold 1
`define AUTOTB_TVIN_video_in_V_data_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_data_V.dat"
`define AUTOTB_TVIN_video_in_V_keep_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_keep_V.dat"
`define AUTOTB_TVIN_video_in_V_strb_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_strb_V.dat"
`define AUTOTB_TVIN_video_in_V_user_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_user_V.dat"
`define AUTOTB_TVIN_video_in_V_last_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_last_V.dat"
`define AUTOTB_TVIN_video_in_V_id_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_id_V.dat"
`define AUTOTB_TVIN_video_in_V_dest_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_dest_V.dat"
`define AUTOTB_TVIN_video_in_V_data_V_out_wrapc  "../tv/rtldatafile/rtl.surf_Simplified.autotvin_video_in_V_data_V.dat"
`define AUTOTB_TVIN_video_in_V_keep_V_out_wrapc  "../tv/rtldatafile/rtl.surf_Simplified.autotvin_video_in_V_keep_V.dat"
`define AUTOTB_TVIN_video_in_V_strb_V_out_wrapc  "../tv/rtldatafile/rtl.surf_Simplified.autotvin_video_in_V_strb_V.dat"
`define AUTOTB_TVIN_video_in_V_user_V_out_wrapc  "../tv/rtldatafile/rtl.surf_Simplified.autotvin_video_in_V_user_V.dat"
`define AUTOTB_TVIN_video_in_V_last_V_out_wrapc  "../tv/rtldatafile/rtl.surf_Simplified.autotvin_video_in_V_last_V.dat"
`define AUTOTB_TVIN_video_in_V_id_V_out_wrapc  "../tv/rtldatafile/rtl.surf_Simplified.autotvin_video_in_V_id_V.dat"
`define AUTOTB_TVIN_video_in_V_dest_V_out_wrapc  "../tv/rtldatafile/rtl.surf_Simplified.autotvin_video_in_V_dest_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 145384313;
parameter LENGTH_video_in_V_data_V = 480000;
parameter LENGTH_video_in_V_keep_V = 480000;
parameter LENGTH_video_in_V_strb_V = 480000;
parameter LENGTH_video_in_V_user_V = 480000;
parameter LENGTH_video_in_V_last_V = 480000;
parameter LENGTH_video_in_V_id_V = 480000;
parameter LENGTH_video_in_V_dest_V = 480000;

task read_token;
    input integer fp;
    output reg [231 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [4 : 0] AXILiteS_AWADDR;
wire  AXILiteS_AWVALID;
wire  AXILiteS_AWREADY;
wire  AXILiteS_WVALID;
wire  AXILiteS_WREADY;
wire [31 : 0] AXILiteS_WDATA;
wire [3 : 0] AXILiteS_WSTRB;
wire [4 : 0] AXILiteS_ARADDR;
wire  AXILiteS_ARVALID;
wire  AXILiteS_ARREADY;
wire  AXILiteS_RVALID;
wire  AXILiteS_RREADY;
wire [31 : 0] AXILiteS_RDATA;
wire [1 : 0] AXILiteS_RRESP;
wire  AXILiteS_BVALID;
wire  AXILiteS_BREADY;
wire [1 : 0] AXILiteS_BRESP;
wire  AXILiteS_INTERRUPT;
wire [4 : 0] threshold_AWADDR;
wire  threshold_AWVALID;
wire  threshold_AWREADY;
wire  threshold_WVALID;
wire  threshold_WREADY;
wire [31 : 0] threshold_WDATA;
wire [3 : 0] threshold_WSTRB;
wire [4 : 0] threshold_ARADDR;
wire  threshold_ARVALID;
wire  threshold_ARREADY;
wire  threshold_RVALID;
wire  threshold_RREADY;
wire [31 : 0] threshold_RDATA;
wire [1 : 0] threshold_RRESP;
wire  threshold_BVALID;
wire  threshold_BREADY;
wire [1 : 0] threshold_BRESP;
wire  m_axi_keyPoints_AWVALID;
wire  m_axi_keyPoints_AWREADY;
wire [31 : 0] m_axi_keyPoints_AWADDR;
wire [0 : 0] m_axi_keyPoints_AWID;
wire [7 : 0] m_axi_keyPoints_AWLEN;
wire [2 : 0] m_axi_keyPoints_AWSIZE;
wire [1 : 0] m_axi_keyPoints_AWBURST;
wire [1 : 0] m_axi_keyPoints_AWLOCK;
wire [3 : 0] m_axi_keyPoints_AWCACHE;
wire [2 : 0] m_axi_keyPoints_AWPROT;
wire [3 : 0] m_axi_keyPoints_AWQOS;
wire [3 : 0] m_axi_keyPoints_AWREGION;
wire [0 : 0] m_axi_keyPoints_AWUSER;
wire  m_axi_keyPoints_WVALID;
wire  m_axi_keyPoints_WREADY;
wire [31 : 0] m_axi_keyPoints_WDATA;
wire [3 : 0] m_axi_keyPoints_WSTRB;
wire  m_axi_keyPoints_WLAST;
wire [0 : 0] m_axi_keyPoints_WID;
wire [0 : 0] m_axi_keyPoints_WUSER;
wire  m_axi_keyPoints_ARVALID;
wire  m_axi_keyPoints_ARREADY;
wire [31 : 0] m_axi_keyPoints_ARADDR;
wire [0 : 0] m_axi_keyPoints_ARID;
wire [7 : 0] m_axi_keyPoints_ARLEN;
wire [2 : 0] m_axi_keyPoints_ARSIZE;
wire [1 : 0] m_axi_keyPoints_ARBURST;
wire [1 : 0] m_axi_keyPoints_ARLOCK;
wire [3 : 0] m_axi_keyPoints_ARCACHE;
wire [2 : 0] m_axi_keyPoints_ARPROT;
wire [3 : 0] m_axi_keyPoints_ARQOS;
wire [3 : 0] m_axi_keyPoints_ARREGION;
wire [0 : 0] m_axi_keyPoints_ARUSER;
wire  m_axi_keyPoints_RVALID;
wire  m_axi_keyPoints_RREADY;
wire [31 : 0] m_axi_keyPoints_RDATA;
wire  m_axi_keyPoints_RLAST;
wire [0 : 0] m_axi_keyPoints_RID;
wire [0 : 0] m_axi_keyPoints_RUSER;
wire [1 : 0] m_axi_keyPoints_RRESP;
wire  m_axi_keyPoints_BVALID;
wire  m_axi_keyPoints_BREADY;
wire [1 : 0] m_axi_keyPoints_BRESP;
wire [0 : 0] m_axi_keyPoints_BID;
wire [0 : 0] m_axi_keyPoints_BUSER;
wire  m_axi_pointNumber_AWVALID;
wire  m_axi_pointNumber_AWREADY;
wire [31 : 0] m_axi_pointNumber_AWADDR;
wire [0 : 0] m_axi_pointNumber_AWID;
wire [7 : 0] m_axi_pointNumber_AWLEN;
wire [2 : 0] m_axi_pointNumber_AWSIZE;
wire [1 : 0] m_axi_pointNumber_AWBURST;
wire [1 : 0] m_axi_pointNumber_AWLOCK;
wire [3 : 0] m_axi_pointNumber_AWCACHE;
wire [2 : 0] m_axi_pointNumber_AWPROT;
wire [3 : 0] m_axi_pointNumber_AWQOS;
wire [3 : 0] m_axi_pointNumber_AWREGION;
wire [0 : 0] m_axi_pointNumber_AWUSER;
wire  m_axi_pointNumber_WVALID;
wire  m_axi_pointNumber_WREADY;
wire [31 : 0] m_axi_pointNumber_WDATA;
wire [3 : 0] m_axi_pointNumber_WSTRB;
wire  m_axi_pointNumber_WLAST;
wire [0 : 0] m_axi_pointNumber_WID;
wire [0 : 0] m_axi_pointNumber_WUSER;
wire  m_axi_pointNumber_ARVALID;
wire  m_axi_pointNumber_ARREADY;
wire [31 : 0] m_axi_pointNumber_ARADDR;
wire [0 : 0] m_axi_pointNumber_ARID;
wire [7 : 0] m_axi_pointNumber_ARLEN;
wire [2 : 0] m_axi_pointNumber_ARSIZE;
wire [1 : 0] m_axi_pointNumber_ARBURST;
wire [1 : 0] m_axi_pointNumber_ARLOCK;
wire [3 : 0] m_axi_pointNumber_ARCACHE;
wire [2 : 0] m_axi_pointNumber_ARPROT;
wire [3 : 0] m_axi_pointNumber_ARQOS;
wire [3 : 0] m_axi_pointNumber_ARREGION;
wire [0 : 0] m_axi_pointNumber_ARUSER;
wire  m_axi_pointNumber_RVALID;
wire  m_axi_pointNumber_RREADY;
wire [31 : 0] m_axi_pointNumber_RDATA;
wire  m_axi_pointNumber_RLAST;
wire [0 : 0] m_axi_pointNumber_RID;
wire [0 : 0] m_axi_pointNumber_RUSER;
wire [1 : 0] m_axi_pointNumber_RRESP;
wire  m_axi_pointNumber_BVALID;
wire  m_axi_pointNumber_BREADY;
wire [1 : 0] m_axi_pointNumber_BRESP;
wire [0 : 0] m_axi_pointNumber_BID;
wire [0 : 0] m_axi_pointNumber_BUSER;
wire [23 : 0] video_in_TDATA;
wire [2 : 0] video_in_TKEEP;
wire [2 : 0] video_in_TSTRB;
wire [0 : 0] video_in_TUSER;
wire [0 : 0] video_in_TLAST;
wire [0 : 0] video_in_TID;
wire [0 : 0] video_in_TDEST;
wire  video_in_TVALID;
wire  video_in_TREADY;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_AXILiteS_AWADDR(AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(AXILiteS_AWREADY),
    .s_axi_AXILiteS_WVALID(AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(AXILiteS_WREADY),
    .s_axi_AXILiteS_WDATA(AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(AXILiteS_WSTRB),
    .s_axi_AXILiteS_ARADDR(AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(AXILiteS_ARREADY),
    .s_axi_AXILiteS_RVALID(AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(AXILiteS_RREADY),
    .s_axi_AXILiteS_RDATA(AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(AXILiteS_RRESP),
    .s_axi_AXILiteS_BVALID(AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(AXILiteS_BREADY),
    .s_axi_AXILiteS_BRESP(AXILiteS_BRESP),
    .interrupt(AXILiteS_INTERRUPT),
    .s_axi_threshold_AWADDR(threshold_AWADDR),
    .s_axi_threshold_AWVALID(threshold_AWVALID),
    .s_axi_threshold_AWREADY(threshold_AWREADY),
    .s_axi_threshold_WVALID(threshold_WVALID),
    .s_axi_threshold_WREADY(threshold_WREADY),
    .s_axi_threshold_WDATA(threshold_WDATA),
    .s_axi_threshold_WSTRB(threshold_WSTRB),
    .s_axi_threshold_ARADDR(threshold_ARADDR),
    .s_axi_threshold_ARVALID(threshold_ARVALID),
    .s_axi_threshold_ARREADY(threshold_ARREADY),
    .s_axi_threshold_RVALID(threshold_RVALID),
    .s_axi_threshold_RREADY(threshold_RREADY),
    .s_axi_threshold_RDATA(threshold_RDATA),
    .s_axi_threshold_RRESP(threshold_RRESP),
    .s_axi_threshold_BVALID(threshold_BVALID),
    .s_axi_threshold_BREADY(threshold_BREADY),
    .s_axi_threshold_BRESP(threshold_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_keyPoints_AWVALID(m_axi_keyPoints_AWVALID),
    .m_axi_keyPoints_AWREADY(m_axi_keyPoints_AWREADY),
    .m_axi_keyPoints_AWADDR(m_axi_keyPoints_AWADDR),
    .m_axi_keyPoints_AWID(m_axi_keyPoints_AWID),
    .m_axi_keyPoints_AWLEN(m_axi_keyPoints_AWLEN),
    .m_axi_keyPoints_AWSIZE(m_axi_keyPoints_AWSIZE),
    .m_axi_keyPoints_AWBURST(m_axi_keyPoints_AWBURST),
    .m_axi_keyPoints_AWLOCK(m_axi_keyPoints_AWLOCK),
    .m_axi_keyPoints_AWCACHE(m_axi_keyPoints_AWCACHE),
    .m_axi_keyPoints_AWPROT(m_axi_keyPoints_AWPROT),
    .m_axi_keyPoints_AWQOS(m_axi_keyPoints_AWQOS),
    .m_axi_keyPoints_AWREGION(m_axi_keyPoints_AWREGION),
    .m_axi_keyPoints_AWUSER(m_axi_keyPoints_AWUSER),
    .m_axi_keyPoints_WVALID(m_axi_keyPoints_WVALID),
    .m_axi_keyPoints_WREADY(m_axi_keyPoints_WREADY),
    .m_axi_keyPoints_WDATA(m_axi_keyPoints_WDATA),
    .m_axi_keyPoints_WSTRB(m_axi_keyPoints_WSTRB),
    .m_axi_keyPoints_WLAST(m_axi_keyPoints_WLAST),
    .m_axi_keyPoints_WID(m_axi_keyPoints_WID),
    .m_axi_keyPoints_WUSER(m_axi_keyPoints_WUSER),
    .m_axi_keyPoints_ARVALID(m_axi_keyPoints_ARVALID),
    .m_axi_keyPoints_ARREADY(m_axi_keyPoints_ARREADY),
    .m_axi_keyPoints_ARADDR(m_axi_keyPoints_ARADDR),
    .m_axi_keyPoints_ARID(m_axi_keyPoints_ARID),
    .m_axi_keyPoints_ARLEN(m_axi_keyPoints_ARLEN),
    .m_axi_keyPoints_ARSIZE(m_axi_keyPoints_ARSIZE),
    .m_axi_keyPoints_ARBURST(m_axi_keyPoints_ARBURST),
    .m_axi_keyPoints_ARLOCK(m_axi_keyPoints_ARLOCK),
    .m_axi_keyPoints_ARCACHE(m_axi_keyPoints_ARCACHE),
    .m_axi_keyPoints_ARPROT(m_axi_keyPoints_ARPROT),
    .m_axi_keyPoints_ARQOS(m_axi_keyPoints_ARQOS),
    .m_axi_keyPoints_ARREGION(m_axi_keyPoints_ARREGION),
    .m_axi_keyPoints_ARUSER(m_axi_keyPoints_ARUSER),
    .m_axi_keyPoints_RVALID(m_axi_keyPoints_RVALID),
    .m_axi_keyPoints_RREADY(m_axi_keyPoints_RREADY),
    .m_axi_keyPoints_RDATA(m_axi_keyPoints_RDATA),
    .m_axi_keyPoints_RLAST(m_axi_keyPoints_RLAST),
    .m_axi_keyPoints_RID(m_axi_keyPoints_RID),
    .m_axi_keyPoints_RUSER(m_axi_keyPoints_RUSER),
    .m_axi_keyPoints_RRESP(m_axi_keyPoints_RRESP),
    .m_axi_keyPoints_BVALID(m_axi_keyPoints_BVALID),
    .m_axi_keyPoints_BREADY(m_axi_keyPoints_BREADY),
    .m_axi_keyPoints_BRESP(m_axi_keyPoints_BRESP),
    .m_axi_keyPoints_BID(m_axi_keyPoints_BID),
    .m_axi_keyPoints_BUSER(m_axi_keyPoints_BUSER),
    .m_axi_pointNumber_AWVALID(m_axi_pointNumber_AWVALID),
    .m_axi_pointNumber_AWREADY(m_axi_pointNumber_AWREADY),
    .m_axi_pointNumber_AWADDR(m_axi_pointNumber_AWADDR),
    .m_axi_pointNumber_AWID(m_axi_pointNumber_AWID),
    .m_axi_pointNumber_AWLEN(m_axi_pointNumber_AWLEN),
    .m_axi_pointNumber_AWSIZE(m_axi_pointNumber_AWSIZE),
    .m_axi_pointNumber_AWBURST(m_axi_pointNumber_AWBURST),
    .m_axi_pointNumber_AWLOCK(m_axi_pointNumber_AWLOCK),
    .m_axi_pointNumber_AWCACHE(m_axi_pointNumber_AWCACHE),
    .m_axi_pointNumber_AWPROT(m_axi_pointNumber_AWPROT),
    .m_axi_pointNumber_AWQOS(m_axi_pointNumber_AWQOS),
    .m_axi_pointNumber_AWREGION(m_axi_pointNumber_AWREGION),
    .m_axi_pointNumber_AWUSER(m_axi_pointNumber_AWUSER),
    .m_axi_pointNumber_WVALID(m_axi_pointNumber_WVALID),
    .m_axi_pointNumber_WREADY(m_axi_pointNumber_WREADY),
    .m_axi_pointNumber_WDATA(m_axi_pointNumber_WDATA),
    .m_axi_pointNumber_WSTRB(m_axi_pointNumber_WSTRB),
    .m_axi_pointNumber_WLAST(m_axi_pointNumber_WLAST),
    .m_axi_pointNumber_WID(m_axi_pointNumber_WID),
    .m_axi_pointNumber_WUSER(m_axi_pointNumber_WUSER),
    .m_axi_pointNumber_ARVALID(m_axi_pointNumber_ARVALID),
    .m_axi_pointNumber_ARREADY(m_axi_pointNumber_ARREADY),
    .m_axi_pointNumber_ARADDR(m_axi_pointNumber_ARADDR),
    .m_axi_pointNumber_ARID(m_axi_pointNumber_ARID),
    .m_axi_pointNumber_ARLEN(m_axi_pointNumber_ARLEN),
    .m_axi_pointNumber_ARSIZE(m_axi_pointNumber_ARSIZE),
    .m_axi_pointNumber_ARBURST(m_axi_pointNumber_ARBURST),
    .m_axi_pointNumber_ARLOCK(m_axi_pointNumber_ARLOCK),
    .m_axi_pointNumber_ARCACHE(m_axi_pointNumber_ARCACHE),
    .m_axi_pointNumber_ARPROT(m_axi_pointNumber_ARPROT),
    .m_axi_pointNumber_ARQOS(m_axi_pointNumber_ARQOS),
    .m_axi_pointNumber_ARREGION(m_axi_pointNumber_ARREGION),
    .m_axi_pointNumber_ARUSER(m_axi_pointNumber_ARUSER),
    .m_axi_pointNumber_RVALID(m_axi_pointNumber_RVALID),
    .m_axi_pointNumber_RREADY(m_axi_pointNumber_RREADY),
    .m_axi_pointNumber_RDATA(m_axi_pointNumber_RDATA),
    .m_axi_pointNumber_RLAST(m_axi_pointNumber_RLAST),
    .m_axi_pointNumber_RID(m_axi_pointNumber_RID),
    .m_axi_pointNumber_RUSER(m_axi_pointNumber_RUSER),
    .m_axi_pointNumber_RRESP(m_axi_pointNumber_RRESP),
    .m_axi_pointNumber_BVALID(m_axi_pointNumber_BVALID),
    .m_axi_pointNumber_BREADY(m_axi_pointNumber_BREADY),
    .m_axi_pointNumber_BRESP(m_axi_pointNumber_BRESP),
    .m_axi_pointNumber_BID(m_axi_pointNumber_BID),
    .m_axi_pointNumber_BUSER(m_axi_pointNumber_BUSER),
    .video_in_TDATA(video_in_TDATA),
    .video_in_TKEEP(video_in_TKEEP),
    .video_in_TSTRB(video_in_TSTRB),
    .video_in_TUSER(video_in_TUSER),
    .video_in_TLAST(video_in_TLAST),
    .video_in_TID(video_in_TID),
    .video_in_TDEST(video_in_TDEST),
    .video_in_TVALID(video_in_TVALID),
    .video_in_TREADY(video_in_TREADY));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end












reg [31:0] ap_c_n_tvin_trans_num_video_in_V_data_V;

reg video_in_ready_reg; // for self-sync

wire video_in_ready;
wire video_in_done;
wire [31:0] video_in_transaction;
wire axi_s_video_in_TVALID;
wire axi_s_video_in_TREADY;

AESL_axi_s_video_in AESL_AXI_S_video_in(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_video_in_TDATA(video_in_TDATA),
    .TRAN_video_in_TKEEP(video_in_TKEEP),
    .TRAN_video_in_TSTRB(video_in_TSTRB),
    .TRAN_video_in_TUSER(video_in_TUSER),
    .TRAN_video_in_TLAST(video_in_TLAST),
    .TRAN_video_in_TID(video_in_TID),
    .TRAN_video_in_TDEST(video_in_TDEST),
    .TRAN_video_in_TVALID(axi_s_video_in_TVALID),
    .TRAN_video_in_TREADY(axi_s_video_in_TREADY),
    .ready(video_in_ready),
    .done(video_in_done),
    .transaction(video_in_transaction));

assign video_in_ready = video_in_ready_reg | ready_initial;
assign video_in_done = 0;

assign video_in_TVALID = axi_s_video_in_TVALID;

assign axi_s_video_in_TREADY = video_in_TREADY;

AESL_axi_slave_AXILiteS AESL_AXI_SLAVE_AXILiteS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_AXILiteS_AWADDR (AXILiteS_AWADDR),
    .TRAN_s_axi_AXILiteS_AWVALID (AXILiteS_AWVALID),
    .TRAN_s_axi_AXILiteS_AWREADY (AXILiteS_AWREADY),
    .TRAN_s_axi_AXILiteS_WVALID (AXILiteS_WVALID),
    .TRAN_s_axi_AXILiteS_WREADY (AXILiteS_WREADY),
    .TRAN_s_axi_AXILiteS_WDATA (AXILiteS_WDATA),
    .TRAN_s_axi_AXILiteS_WSTRB (AXILiteS_WSTRB),
    .TRAN_s_axi_AXILiteS_ARADDR (AXILiteS_ARADDR),
    .TRAN_s_axi_AXILiteS_ARVALID (AXILiteS_ARVALID),
    .TRAN_s_axi_AXILiteS_ARREADY (AXILiteS_ARREADY),
    .TRAN_s_axi_AXILiteS_RVALID (AXILiteS_RVALID),
    .TRAN_s_axi_AXILiteS_RREADY (AXILiteS_RREADY),
    .TRAN_s_axi_AXILiteS_RDATA (AXILiteS_RDATA),
    .TRAN_s_axi_AXILiteS_RRESP (AXILiteS_RRESP),
    .TRAN_s_axi_AXILiteS_BVALID (AXILiteS_BVALID),
    .TRAN_s_axi_AXILiteS_BREADY (AXILiteS_BREADY),
    .TRAN_s_axi_AXILiteS_BRESP (AXILiteS_BRESP),
    .TRAN_AXILiteS_interrupt (AXILiteS_INTERRUPT),
    .TRAN_AXILiteS_ready_out (AESL_ready),
    .TRAN_AXILiteS_ready_in (AESL_slave_ready),
    .TRAN_AXILiteS_done_out (AESL_slave_output_done),
    .TRAN_AXILiteS_idle_out (AESL_idle),
    .TRAN_AXILiteS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_AXILiteS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_AXILiteS_transaction_done_in (AESL_done_delay),
    .TRAN_AXILiteS_start_in  (AESL_slave_start)
);
AESL_axi_slave_threshold AESL_AXI_SLAVE_threshold(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_threshold_AWADDR (threshold_AWADDR),
    .TRAN_s_axi_threshold_AWVALID (threshold_AWVALID),
    .TRAN_s_axi_threshold_AWREADY (threshold_AWREADY),
    .TRAN_s_axi_threshold_WVALID (threshold_WVALID),
    .TRAN_s_axi_threshold_WREADY (threshold_WREADY),
    .TRAN_s_axi_threshold_WDATA (threshold_WDATA),
    .TRAN_s_axi_threshold_WSTRB (threshold_WSTRB),
    .TRAN_s_axi_threshold_ARADDR (threshold_ARADDR),
    .TRAN_s_axi_threshold_ARVALID (threshold_ARVALID),
    .TRAN_s_axi_threshold_ARREADY (threshold_ARREADY),
    .TRAN_s_axi_threshold_RVALID (threshold_RVALID),
    .TRAN_s_axi_threshold_RREADY (threshold_RREADY),
    .TRAN_s_axi_threshold_RDATA (threshold_RDATA),
    .TRAN_s_axi_threshold_RRESP (threshold_RRESP),
    .TRAN_s_axi_threshold_BVALID (threshold_BVALID),
    .TRAN_s_axi_threshold_BREADY (threshold_BREADY),
    .TRAN_s_axi_threshold_BRESP (threshold_BRESP),
    .TRAN_threshold_ready_in (AESL_slave_ready),
    .TRAN_threshold_done_in (AESL_slave_output_done),
    .TRAN_threshold_idle_in (AESL_idle),
    .TRAN_threshold_transaction_done_in (AESL_done_delay),
    .TRAN_threshold_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_video_in_V_data_V;
reg [31:0] size_video_in_V_data_V;
reg [31:0] size_video_in_V_data_V_backup;
reg end_video_in_V_keep_V;
reg [31:0] size_video_in_V_keep_V;
reg [31:0] size_video_in_V_keep_V_backup;
reg end_video_in_V_strb_V;
reg [31:0] size_video_in_V_strb_V;
reg [31:0] size_video_in_V_strb_V_backup;
reg end_video_in_V_user_V;
reg [31:0] size_video_in_V_user_V;
reg [31:0] size_video_in_V_user_V_backup;
reg end_video_in_V_last_V;
reg [31:0] size_video_in_V_last_V;
reg [31:0] size_video_in_V_last_V_backup;
reg end_video_in_V_id_V;
reg [31:0] size_video_in_V_id_V;
reg [31:0] size_video_in_V_id_V_backup;
reg end_video_in_V_dest_V;
reg [31:0] size_video_in_V_dest_V;
reg [31:0] size_video_in_V_dest_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_video_in
        video_in_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_video_in_V_data_V or video_in_transaction);
            if (ap_c_n_tvin_trans_num_video_in_V_data_V > video_in_transaction) begin
                video_in_ready_reg = 1;
            end else begin
                video_in_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_video_in_V_data_V "../tv/stream_size/stream_size_in_video_in_V_data_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_video_in_V_data_V
        integer fp_video_in_V_data_V;
        reg [127:0] token_video_in_V_data_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_video_in_V_data_V = 0;
        end_video_in_V_data_V = 0;
        wait (AESL_reset === 1);
        
        fp_video_in_V_data_V = $fopen(`STREAM_SIZE_IN_video_in_V_data_V, "r");
        if(fp_video_in_V_data_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_video_in_V_data_V);
            $finish;
        end
        read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be [[[runtime]]]
        if (token_video_in_V_data_V != "[[[runtime]]]") begin
            $display("ERROR: token_video_in_V_data_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_video_in_V_data_V = 0;
        size_video_in_V_data_V_backup = 0;
        while (size_video_in_V_data_V == 0 && end_video_in_V_data_V == 0) begin
            ap_c_n_tvin_trans_num_video_in_V_data_V = ap_c_n_tvin_trans_num_video_in_V_data_V + 1;
            read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_video_in_V_data_V == "[[transaction]]") begin
                read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be transaction number
                read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be size for hls::stream
                ret = $sscanf(token_video_in_V_data_V, "%d", size_video_in_V_data_V);
                if (size_video_in_V_data_V > 0) begin
                    size_video_in_V_data_V_backup = size_video_in_V_data_V;
                end
                read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be [[/transaction]]
            end else if (token_video_in_V_data_V == "[[[/runtime]]]") begin
                $fclose(fp_video_in_V_data_V);
                end_video_in_V_data_V = 1;
            end else begin
                $display("ERROR: unknown token_video_in_V_data_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_video_in_V_data_V == 0) begin
                if ((video_in_TREADY & video_in_TVALID) == 1) begin
                    if (size_video_in_V_data_V > 0) begin
                        size_video_in_V_data_V = size_video_in_V_data_V - 1;
                        while (size_video_in_V_data_V == 0 && end_video_in_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_video_in_V_data_V = ap_c_n_tvin_trans_num_video_in_V_data_V + 1;
                            read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_video_in_V_data_V == "[[transaction]]") begin
                                read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be transaction number
                                read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be size for hls::stream
                                ret = $sscanf(token_video_in_V_data_V, "%d", size_video_in_V_data_V);
                                if (size_video_in_V_data_V > 0) begin
                                    size_video_in_V_data_V_backup = size_video_in_V_data_V;
                                end
                                read_token(fp_video_in_V_data_V, token_video_in_V_data_V); // should be [[/transaction]]
                            end else if (token_video_in_V_data_V == "[[[/runtime]]]") begin
                                size_video_in_V_data_V = size_video_in_V_data_V_backup;
                                $fclose(fp_video_in_V_data_V);
                                end_video_in_V_data_V = 1;
                            end else begin
                                $display("ERROR: unknown token_video_in_V_data_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((video_in_TREADY & video_in_TVALID) == 1) begin
                    if (size_video_in_V_data_V > 0) begin
                        size_video_in_V_data_V = size_video_in_V_data_V - 1;
                        if (size_video_in_V_data_V == 0) begin
                            ap_c_n_tvin_trans_num_video_in_V_data_V = ap_c_n_tvin_trans_num_video_in_V_data_V + 1;
                            size_video_in_V_data_V = size_video_in_V_data_V_backup;
                        end
                    end
                end
            end
        end
    end
    

////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
