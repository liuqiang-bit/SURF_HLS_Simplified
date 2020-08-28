set moduleName HessianDetector
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {HessianDetector}
set C_modelType { void 0 }
set C_modelArgList {
	{ keyPoints_V int 32 regular {axi_master 1}  }
	{ keyPoints_V_offset int 32 regular {fifo 0}  }
	{ pointNumber int 32 regular {axi_master 1}  }
	{ pointNumber_offset int 32 regular {fifo 0}  }
	{ this_assign_1_loc int 32 regular {fifo 0}  }
	{ sum_V int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "keyPoints_V", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "keyPoints_V_offset", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pointNumber", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pointNumber_offset", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_assign_1_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 109
set portList { 
	{ m_axi_keyPoints_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_V_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ keyPoints_V_offset_dout sc_in sc_lv 32 signal 1 } 
	{ keyPoints_V_offset_empty_n sc_in sc_logic 1 signal 1 } 
	{ keyPoints_V_offset_read sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_pointNumber_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_pointNumber_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_pointNumber_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_pointNumber_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_pointNumber_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_pointNumber_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_pointNumber_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_pointNumber_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_pointNumber_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_pointNumber_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_pointNumber_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_pointNumber_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_pointNumber_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_pointNumber_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_pointNumber_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_pointNumber_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_pointNumber_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_pointNumber_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_pointNumber_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_pointNumber_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_pointNumber_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_pointNumber_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_pointNumber_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_pointNumber_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_pointNumber_BUSER sc_in sc_lv 1 signal 2 } 
	{ pointNumber_offset_dout sc_in sc_lv 32 signal 3 } 
	{ pointNumber_offset_empty_n sc_in sc_logic 1 signal 3 } 
	{ pointNumber_offset_read sc_out sc_logic 1 signal 3 } 
	{ this_assign_1_loc_dout sc_in sc_lv 32 signal 4 } 
	{ this_assign_1_loc_empty_n sc_in sc_logic 1 signal 4 } 
	{ this_assign_1_loc_read sc_out sc_logic 1 signal 4 } 
	{ sum_V_dout sc_in sc_lv 32 signal 5 } 
	{ sum_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ sum_V_read sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_keyPoints_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_keyPoints_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_keyPoints_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_keyPoints_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWID" }} , 
 	{ "name": "m_axi_keyPoints_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_keyPoints_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_keyPoints_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_keyPoints_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_keyPoints_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_keyPoints_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_keyPoints_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_keyPoints_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_keyPoints_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_keyPoints_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_keyPoints_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_keyPoints_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_keyPoints_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_keyPoints_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_keyPoints_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "WID" }} , 
 	{ "name": "m_axi_keyPoints_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_keyPoints_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_keyPoints_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_keyPoints_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_keyPoints_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARID" }} , 
 	{ "name": "m_axi_keyPoints_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_keyPoints_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_keyPoints_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_keyPoints_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_keyPoints_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_keyPoints_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_keyPoints_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_keyPoints_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_keyPoints_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_keyPoints_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_keyPoints_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_keyPoints_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_keyPoints_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_keyPoints_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "RID" }} , 
 	{ "name": "m_axi_keyPoints_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_keyPoints_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_keyPoints_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_keyPoints_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_keyPoints_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_keyPoints_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "BID" }} , 
 	{ "name": "m_axi_keyPoints_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "BUSER" }} , 
 	{ "name": "keyPoints_V_offset_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V_offset", "role": "dout" }} , 
 	{ "name": "keyPoints_V_offset_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V_offset", "role": "empty_n" }} , 
 	{ "name": "keyPoints_V_offset_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V_offset", "role": "read" }} , 
 	{ "name": "m_axi_pointNumber_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWVALID" }} , 
 	{ "name": "m_axi_pointNumber_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWREADY" }} , 
 	{ "name": "m_axi_pointNumber_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWADDR" }} , 
 	{ "name": "m_axi_pointNumber_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWID" }} , 
 	{ "name": "m_axi_pointNumber_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWLEN" }} , 
 	{ "name": "m_axi_pointNumber_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_pointNumber_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWBURST" }} , 
 	{ "name": "m_axi_pointNumber_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_pointNumber_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_pointNumber_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWPROT" }} , 
 	{ "name": "m_axi_pointNumber_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWQOS" }} , 
 	{ "name": "m_axi_pointNumber_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWREGION" }} , 
 	{ "name": "m_axi_pointNumber_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWUSER" }} , 
 	{ "name": "m_axi_pointNumber_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "WVALID" }} , 
 	{ "name": "m_axi_pointNumber_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "WREADY" }} , 
 	{ "name": "m_axi_pointNumber_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber", "role": "WDATA" }} , 
 	{ "name": "m_axi_pointNumber_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pointNumber", "role": "WSTRB" }} , 
 	{ "name": "m_axi_pointNumber_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "WLAST" }} , 
 	{ "name": "m_axi_pointNumber_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "WID" }} , 
 	{ "name": "m_axi_pointNumber_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "WUSER" }} , 
 	{ "name": "m_axi_pointNumber_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARVALID" }} , 
 	{ "name": "m_axi_pointNumber_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARREADY" }} , 
 	{ "name": "m_axi_pointNumber_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARADDR" }} , 
 	{ "name": "m_axi_pointNumber_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARID" }} , 
 	{ "name": "m_axi_pointNumber_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARLEN" }} , 
 	{ "name": "m_axi_pointNumber_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_pointNumber_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARBURST" }} , 
 	{ "name": "m_axi_pointNumber_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_pointNumber_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_pointNumber_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARPROT" }} , 
 	{ "name": "m_axi_pointNumber_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARQOS" }} , 
 	{ "name": "m_axi_pointNumber_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARREGION" }} , 
 	{ "name": "m_axi_pointNumber_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARUSER" }} , 
 	{ "name": "m_axi_pointNumber_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "RVALID" }} , 
 	{ "name": "m_axi_pointNumber_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "RREADY" }} , 
 	{ "name": "m_axi_pointNumber_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber", "role": "RDATA" }} , 
 	{ "name": "m_axi_pointNumber_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "RLAST" }} , 
 	{ "name": "m_axi_pointNumber_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "RID" }} , 
 	{ "name": "m_axi_pointNumber_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "RUSER" }} , 
 	{ "name": "m_axi_pointNumber_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pointNumber", "role": "RRESP" }} , 
 	{ "name": "m_axi_pointNumber_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "BVALID" }} , 
 	{ "name": "m_axi_pointNumber_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "BREADY" }} , 
 	{ "name": "m_axi_pointNumber_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "pointNumber", "role": "BRESP" }} , 
 	{ "name": "m_axi_pointNumber_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "BID" }} , 
 	{ "name": "m_axi_pointNumber_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "BUSER" }} , 
 	{ "name": "pointNumber_offset_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber_offset", "role": "dout" }} , 
 	{ "name": "pointNumber_offset_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber_offset", "role": "empty_n" }} , 
 	{ "name": "pointNumber_offset_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber_offset", "role": "read" }} , 
 	{ "name": "this_assign_1_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_assign_1_loc", "role": "dout" }} , 
 	{ "name": "this_assign_1_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_assign_1_loc", "role": "empty_n" }} , 
 	{ "name": "this_assign_1_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_assign_1_loc", "role": "read" }} , 
 	{ "name": "sum_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_V", "role": "dout" }} , 
 	{ "name": "sum_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_V", "role": "empty_n" }} , 
 	{ "name": "sum_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum_V", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "25", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "HessianDetector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5296614", "EstimateLatencyMax" : "145384305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "calcLayerDetAndTrace_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "findCharacteristicPo_U0"}],
		"Port" : [
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "keyPoints_V"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "keyPoints_V_offset"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "pointNumber"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "pointNumber_offset"}]},
			{"Name" : "this_assign_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "this_assign_1_reload"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "MSB_V"}]},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sum_V"}]},
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf"}]},
			{"Name" : "sizes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sizes"}]},
			{"Name" : "Dx_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_0"}]},
			{"Name" : "Dx_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_1"}]},
			{"Name" : "Dx_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_2"}]},
			{"Name" : "Dx_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_3"}]},
			{"Name" : "Dx_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_4"}]},
			{"Name" : "Dy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_0"}]},
			{"Name" : "Dy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_1"}]},
			{"Name" : "Dy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_2"}]},
			{"Name" : "Dy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_3"}]},
			{"Name" : "Dy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_4"}]},
			{"Name" : "Dxy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_2"}]},
			{"Name" : "Dxy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_3"}]},
			{"Name" : "Dxy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_0"}]},
			{"Name" : "Dxy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_1"}]},
			{"Name" : "Dxy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_4"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_0"}]},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_1"}]},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_2"}]},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "MSB_V_1"}]},
			{"Name" : "N1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "N1_V"}]},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "findCharacteristicPo_U0", "Port" : "tmpPointNum"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "22", "23", "24"],
		"CDFG" : "calcLayerDetAndTrace",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5296614", "EstimateLatencyMax" : "145384305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466"}],
		"Port" : [
			{"Name" : "det0_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "det0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V_V3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "det1_V_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V_V6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "det2_V_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "this_assign_1_reload", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "this_assign_1_reload_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "this_assign_1_reload_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "this_assign_1_reload_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "sumBuf"}]},
			{"Name" : "sizes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dx_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_0_V"}]},
			{"Name" : "Dx_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_1_V"}]},
			{"Name" : "Dx_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_2_V"}]},
			{"Name" : "Dx_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_3_V"}]},
			{"Name" : "Dx_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_4_V"}]},
			{"Name" : "Dy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_0_V"}]},
			{"Name" : "Dy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_1_V"}]},
			{"Name" : "Dy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_2_V"}]},
			{"Name" : "Dy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_3_V"}]},
			{"Name" : "Dy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_4_V"}]},
			{"Name" : "Dxy_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_4", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sizes_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dx_V_0_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dx_V_1_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dx_V_2_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dx_V_3_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dx_V_4_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dy_V_0_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dy_V_1_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dy_V_2_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dy_V_3_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dy_V_4_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dxy_V_2_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dxy_V_3_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dxy_V_0_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dxy_V_1_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.Dxy_V_4_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_466", "Parent" : "1", "Child" : ["20", "21"],
		"CDFG" : "calcHaarPattern_x_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sumBufIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cOffset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_466.surf_Simplified_mbkb_U22", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_466.surf_Simplified_mbkb_U23", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surf_Simplified_mtde_U35", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surf_Simplified_mbkb_U36", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surf_Simplified_mbkb_U37", "Parent" : "1"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.findCharacteristicPo_U0", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "findCharacteristicPo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1871704", "EstimateLatencyMax" : "19168501",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_findChawdI_U",
		"Port" : [
			{"Name" : "det0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "det0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V_V3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "det1_V_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V_V6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "det2_V_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hessianThreshold_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "hessianThreshold_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pointNumber_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "N1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findCharacteristicPo_U0.N1_V_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findCharacteristicPo_U0.surf_Simplified_mvdy_U61", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dets_0_V_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dets_1_V_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dets_2_V_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.this_assign_1_reload_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keyPoints_V_offset_c_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pointNumber_offset_c_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_findChawdI_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	HessianDetector {
		keyPoints_V {Type O LastRead 38 FirstWrite 37}
		keyPoints_V_offset {Type I LastRead 0 FirstWrite -1}
		pointNumber {Type O LastRead 3 FirstWrite 2}
		pointNumber_offset {Type I LastRead 0 FirstWrite -1}
		this_assign_1_loc {Type I LastRead 0 FirstWrite -1}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type I LastRead 2 FirstWrite -1}
		sumBuf {Type IO LastRead -1 FirstWrite -1}
		sizes {Type I LastRead -1 FirstWrite -1}
		Dx_V_0 {Type I LastRead -1 FirstWrite -1}
		Dx_V_1 {Type I LastRead -1 FirstWrite -1}
		Dx_V_2 {Type I LastRead -1 FirstWrite -1}
		Dx_V_3 {Type I LastRead -1 FirstWrite -1}
		Dx_V_4 {Type I LastRead -1 FirstWrite -1}
		Dy_V_0 {Type I LastRead -1 FirstWrite -1}
		Dy_V_1 {Type I LastRead -1 FirstWrite -1}
		Dy_V_2 {Type I LastRead -1 FirstWrite -1}
		Dy_V_3 {Type I LastRead -1 FirstWrite -1}
		Dy_V_4 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_2 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_3 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_0 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_1 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_4 {Type I LastRead -1 FirstWrite -1}
		bRow_V_0 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_1 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_2 {Type IO LastRead -1 FirstWrite -1}
		MSB_V_1 {Type IO LastRead -1 FirstWrite -1}
		N1_V {Type IO LastRead -1 FirstWrite -1}
		tmpPointNum {Type IO LastRead -1 FirstWrite -1}}
	calcLayerDetAndTrace {
		det0_V_V {Type O LastRead -1 FirstWrite 10}
		det1_V_V3 {Type O LastRead -1 FirstWrite 10}
		det2_V_V6 {Type O LastRead -1 FirstWrite 10}
		this_assign_1_reload {Type I LastRead 0 FirstWrite -1}
		this_assign_1_reload_out {Type O LastRead -1 FirstWrite 0}
		keyPoints_V_offset {Type I LastRead 0 FirstWrite -1}
		pointNumber_offset {Type I LastRead 0 FirstWrite -1}
		keyPoints_V_offset_out {Type O LastRead -1 FirstWrite 0}
		pointNumber_offset_out {Type O LastRead -1 FirstWrite 0}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type I LastRead 2 FirstWrite -1}
		sumBuf {Type IO LastRead -1 FirstWrite -1}
		sizes {Type I LastRead -1 FirstWrite -1}
		Dx_V_0 {Type I LastRead -1 FirstWrite -1}
		Dx_V_1 {Type I LastRead -1 FirstWrite -1}
		Dx_V_2 {Type I LastRead -1 FirstWrite -1}
		Dx_V_3 {Type I LastRead -1 FirstWrite -1}
		Dx_V_4 {Type I LastRead -1 FirstWrite -1}
		Dy_V_0 {Type I LastRead -1 FirstWrite -1}
		Dy_V_1 {Type I LastRead -1 FirstWrite -1}
		Dy_V_2 {Type I LastRead -1 FirstWrite -1}
		Dy_V_3 {Type I LastRead -1 FirstWrite -1}
		Dy_V_4 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_2 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_3 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_0 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_1 {Type I LastRead -1 FirstWrite -1}
		Dxy_V_4 {Type I LastRead -1 FirstWrite -1}}
	calcHaarPattern_x_y {
		sumBuf {Type I LastRead 7 FirstWrite -1}
		box_0_V {Type I LastRead 1 FirstWrite -1}
		box_1_V {Type I LastRead 1 FirstWrite -1}
		box_2_V {Type I LastRead 1 FirstWrite -1}
		box_3_V {Type I LastRead 1 FirstWrite -1}
		box_4_V {Type I LastRead 1 FirstWrite -1}
		box_V_offset {Type I LastRead 0 FirstWrite -1}
		sumBufIndex_V {Type I LastRead 0 FirstWrite -1}
		rOffset {Type I LastRead 0 FirstWrite -1}
		cOffset {Type I LastRead 0 FirstWrite -1}}
	findCharacteristicPo {
		det0_V_V {Type I LastRead 3 FirstWrite -1}
		det1_V_V3 {Type I LastRead 4 FirstWrite -1}
		det2_V_V6 {Type I LastRead 5 FirstWrite -1}
		hessianThreshold_V {Type I LastRead 0 FirstWrite -1}
		keyPoints_V {Type O LastRead 38 FirstWrite 37}
		keyPoints_V_offset {Type I LastRead 0 FirstWrite -1}
		pointNumber {Type O LastRead 3 FirstWrite 2}
		pointNumber_offset {Type I LastRead 0 FirstWrite -1}
		bRow_V_0 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_1 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_2 {Type IO LastRead -1 FirstWrite -1}
		MSB_V_1 {Type IO LastRead -1 FirstWrite -1}
		N1_V {Type IO LastRead -1 FirstWrite -1}
		tmpPointNum {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5296614", "Max" : "145384305"}
	, {"Name" : "Interval", "Min" : "5296615", "Max" : "145384306"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	keyPoints_V { m_axi {  { m_axi_keyPoints_V_AWVALID VALID 1 1 }  { m_axi_keyPoints_V_AWREADY READY 0 1 }  { m_axi_keyPoints_V_AWADDR ADDR 1 32 }  { m_axi_keyPoints_V_AWID ID 1 1 }  { m_axi_keyPoints_V_AWLEN LEN 1 32 }  { m_axi_keyPoints_V_AWSIZE SIZE 1 3 }  { m_axi_keyPoints_V_AWBURST BURST 1 2 }  { m_axi_keyPoints_V_AWLOCK LOCK 1 2 }  { m_axi_keyPoints_V_AWCACHE CACHE 1 4 }  { m_axi_keyPoints_V_AWPROT PROT 1 3 }  { m_axi_keyPoints_V_AWQOS QOS 1 4 }  { m_axi_keyPoints_V_AWREGION REGION 1 4 }  { m_axi_keyPoints_V_AWUSER USER 1 1 }  { m_axi_keyPoints_V_WVALID VALID 1 1 }  { m_axi_keyPoints_V_WREADY READY 0 1 }  { m_axi_keyPoints_V_WDATA DATA 1 32 }  { m_axi_keyPoints_V_WSTRB STRB 1 4 }  { m_axi_keyPoints_V_WLAST LAST 1 1 }  { m_axi_keyPoints_V_WID ID 1 1 }  { m_axi_keyPoints_V_WUSER USER 1 1 }  { m_axi_keyPoints_V_ARVALID VALID 1 1 }  { m_axi_keyPoints_V_ARREADY READY 0 1 }  { m_axi_keyPoints_V_ARADDR ADDR 1 32 }  { m_axi_keyPoints_V_ARID ID 1 1 }  { m_axi_keyPoints_V_ARLEN LEN 1 32 }  { m_axi_keyPoints_V_ARSIZE SIZE 1 3 }  { m_axi_keyPoints_V_ARBURST BURST 1 2 }  { m_axi_keyPoints_V_ARLOCK LOCK 1 2 }  { m_axi_keyPoints_V_ARCACHE CACHE 1 4 }  { m_axi_keyPoints_V_ARPROT PROT 1 3 }  { m_axi_keyPoints_V_ARQOS QOS 1 4 }  { m_axi_keyPoints_V_ARREGION REGION 1 4 }  { m_axi_keyPoints_V_ARUSER USER 1 1 }  { m_axi_keyPoints_V_RVALID VALID 0 1 }  { m_axi_keyPoints_V_RREADY READY 1 1 }  { m_axi_keyPoints_V_RDATA DATA 0 32 }  { m_axi_keyPoints_V_RLAST LAST 0 1 }  { m_axi_keyPoints_V_RID ID 0 1 }  { m_axi_keyPoints_V_RUSER USER 0 1 }  { m_axi_keyPoints_V_RRESP RESP 0 2 }  { m_axi_keyPoints_V_BVALID VALID 0 1 }  { m_axi_keyPoints_V_BREADY READY 1 1 }  { m_axi_keyPoints_V_BRESP RESP 0 2 }  { m_axi_keyPoints_V_BID ID 0 1 }  { m_axi_keyPoints_V_BUSER USER 0 1 } } }
	keyPoints_V_offset { ap_fifo {  { keyPoints_V_offset_dout fifo_data 0 32 }  { keyPoints_V_offset_empty_n fifo_status 0 1 }  { keyPoints_V_offset_read fifo_update 1 1 } } }
	pointNumber { m_axi {  { m_axi_pointNumber_AWVALID VALID 1 1 }  { m_axi_pointNumber_AWREADY READY 0 1 }  { m_axi_pointNumber_AWADDR ADDR 1 32 }  { m_axi_pointNumber_AWID ID 1 1 }  { m_axi_pointNumber_AWLEN LEN 1 32 }  { m_axi_pointNumber_AWSIZE SIZE 1 3 }  { m_axi_pointNumber_AWBURST BURST 1 2 }  { m_axi_pointNumber_AWLOCK LOCK 1 2 }  { m_axi_pointNumber_AWCACHE CACHE 1 4 }  { m_axi_pointNumber_AWPROT PROT 1 3 }  { m_axi_pointNumber_AWQOS QOS 1 4 }  { m_axi_pointNumber_AWREGION REGION 1 4 }  { m_axi_pointNumber_AWUSER USER 1 1 }  { m_axi_pointNumber_WVALID VALID 1 1 }  { m_axi_pointNumber_WREADY READY 0 1 }  { m_axi_pointNumber_WDATA DATA 1 32 }  { m_axi_pointNumber_WSTRB STRB 1 4 }  { m_axi_pointNumber_WLAST LAST 1 1 }  { m_axi_pointNumber_WID ID 1 1 }  { m_axi_pointNumber_WUSER USER 1 1 }  { m_axi_pointNumber_ARVALID VALID 1 1 }  { m_axi_pointNumber_ARREADY READY 0 1 }  { m_axi_pointNumber_ARADDR ADDR 1 32 }  { m_axi_pointNumber_ARID ID 1 1 }  { m_axi_pointNumber_ARLEN LEN 1 32 }  { m_axi_pointNumber_ARSIZE SIZE 1 3 }  { m_axi_pointNumber_ARBURST BURST 1 2 }  { m_axi_pointNumber_ARLOCK LOCK 1 2 }  { m_axi_pointNumber_ARCACHE CACHE 1 4 }  { m_axi_pointNumber_ARPROT PROT 1 3 }  { m_axi_pointNumber_ARQOS QOS 1 4 }  { m_axi_pointNumber_ARREGION REGION 1 4 }  { m_axi_pointNumber_ARUSER USER 1 1 }  { m_axi_pointNumber_RVALID VALID 0 1 }  { m_axi_pointNumber_RREADY READY 1 1 }  { m_axi_pointNumber_RDATA DATA 0 32 }  { m_axi_pointNumber_RLAST LAST 0 1 }  { m_axi_pointNumber_RID ID 0 1 }  { m_axi_pointNumber_RUSER USER 0 1 }  { m_axi_pointNumber_RRESP RESP 0 2 }  { m_axi_pointNumber_BVALID VALID 0 1 }  { m_axi_pointNumber_BREADY READY 1 1 }  { m_axi_pointNumber_BRESP RESP 0 2 }  { m_axi_pointNumber_BID ID 0 1 }  { m_axi_pointNumber_BUSER USER 0 1 } } }
	pointNumber_offset { ap_fifo {  { pointNumber_offset_dout fifo_data 0 32 }  { pointNumber_offset_empty_n fifo_status 0 1 }  { pointNumber_offset_read fifo_update 1 1 } } }
	this_assign_1_loc { ap_fifo {  { this_assign_1_loc_dout fifo_data 0 32 }  { this_assign_1_loc_empty_n fifo_status 0 1 }  { this_assign_1_loc_read fifo_update 1 1 } } }
	sum_V { ap_fifo {  { sum_V_dout fifo_data 0 32 }  { sum_V_empty_n fifo_status 0 1 }  { sum_V_read fifo_update 1 1 } } }
}
