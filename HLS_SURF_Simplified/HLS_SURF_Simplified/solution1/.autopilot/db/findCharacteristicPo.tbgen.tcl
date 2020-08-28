set moduleName findCharacteristicPo
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {findCharacteristicPo}
set C_modelType { void 0 }
set C_modelArgList {
	{ det0_V_V int 32 regular {fifo 0 volatile }  }
	{ det1_V_V3 int 32 regular {fifo 0 volatile }  }
	{ det2_V_V6 int 32 regular {fifo 0 volatile }  }
	{ hessianThreshold_V int 32 regular {fifo 0}  }
	{ keyPoints_V int 32 regular {axi_master 1}  }
	{ keyPoints_V_offset int 32 regular {fifo 0}  }
	{ pointNumber int 32 regular {axi_master 1}  }
	{ pointNumber_offset int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "det0_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "det1_V_V3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "det2_V_V6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "hessianThreshold_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "keyPoints_V", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "keyPoints_V_offset", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pointNumber", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pointNumber_offset", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 115
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ det0_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ det0_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ det0_V_V_read sc_out sc_logic 1 signal 0 } 
	{ det1_V_V3_dout sc_in sc_lv 32 signal 1 } 
	{ det1_V_V3_empty_n sc_in sc_logic 1 signal 1 } 
	{ det1_V_V3_read sc_out sc_logic 1 signal 1 } 
	{ det2_V_V6_dout sc_in sc_lv 32 signal 2 } 
	{ det2_V_V6_empty_n sc_in sc_logic 1 signal 2 } 
	{ det2_V_V6_read sc_out sc_logic 1 signal 2 } 
	{ hessianThreshold_V_dout sc_in sc_lv 32 signal 3 } 
	{ hessianThreshold_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ hessianThreshold_V_read sc_out sc_logic 1 signal 3 } 
	{ m_axi_keyPoints_V_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_AWADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_keyPoints_V_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_keyPoints_V_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_keyPoints_V_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_keyPoints_V_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_keyPoints_V_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_keyPoints_V_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_keyPoints_V_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_keyPoints_V_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_keyPoints_V_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_keyPoints_V_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_keyPoints_V_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_ARADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_keyPoints_V_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_keyPoints_V_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_keyPoints_V_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_keyPoints_V_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_keyPoints_V_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_keyPoints_V_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_keyPoints_V_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_keyPoints_V_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_keyPoints_V_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_keyPoints_V_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_keyPoints_V_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_keyPoints_V_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_keyPoints_V_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_keyPoints_V_BUSER sc_in sc_lv 1 signal 4 } 
	{ keyPoints_V_offset_dout sc_in sc_lv 32 signal 5 } 
	{ keyPoints_V_offset_empty_n sc_in sc_logic 1 signal 5 } 
	{ keyPoints_V_offset_read sc_out sc_logic 1 signal 5 } 
	{ m_axi_pointNumber_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_AWADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_pointNumber_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_pointNumber_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_pointNumber_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_pointNumber_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_pointNumber_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_pointNumber_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_pointNumber_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_pointNumber_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_pointNumber_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_pointNumber_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_pointNumber_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_ARADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_pointNumber_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_pointNumber_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_pointNumber_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_pointNumber_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_pointNumber_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_pointNumber_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_pointNumber_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_pointNumber_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_pointNumber_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_pointNumber_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_pointNumber_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_pointNumber_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_pointNumber_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_pointNumber_BUSER sc_in sc_lv 1 signal 6 } 
	{ pointNumber_offset_dout sc_in sc_lv 32 signal 7 } 
	{ pointNumber_offset_empty_n sc_in sc_logic 1 signal 7 } 
	{ pointNumber_offset_read sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "det0_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det0_V_V", "role": "dout" }} , 
 	{ "name": "det0_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det0_V_V", "role": "empty_n" }} , 
 	{ "name": "det0_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det0_V_V", "role": "read" }} , 
 	{ "name": "det1_V_V3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det1_V_V3", "role": "dout" }} , 
 	{ "name": "det1_V_V3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det1_V_V3", "role": "empty_n" }} , 
 	{ "name": "det1_V_V3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det1_V_V3", "role": "read" }} , 
 	{ "name": "det2_V_V6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "det2_V_V6", "role": "dout" }} , 
 	{ "name": "det2_V_V6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det2_V_V6", "role": "empty_n" }} , 
 	{ "name": "det2_V_V6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "det2_V_V6", "role": "read" }} , 
 	{ "name": "hessianThreshold_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hessianThreshold_V", "role": "dout" }} , 
 	{ "name": "hessianThreshold_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hessianThreshold_V", "role": "empty_n" }} , 
 	{ "name": "hessianThreshold_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hessianThreshold_V", "role": "read" }} , 
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
 	{ "name": "pointNumber_offset_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber_offset", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
		"Port" : [
			{"Name" : "det0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V_V3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det1_V_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V_V6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "det2_V_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hessianThreshold_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hessianThreshold_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pointNumber_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "N1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.N1_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_mvdy_U61", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1871704", "Max" : "19168501"}
	, {"Name" : "Interval", "Min" : "1871704", "Max" : "19168501"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	det0_V_V { ap_fifo {  { det0_V_V_dout fifo_data 0 32 }  { det0_V_V_empty_n fifo_status 0 1 }  { det0_V_V_read fifo_update 1 1 } } }
	det1_V_V3 { ap_fifo {  { det1_V_V3_dout fifo_data 0 32 }  { det1_V_V3_empty_n fifo_status 0 1 }  { det1_V_V3_read fifo_update 1 1 } } }
	det2_V_V6 { ap_fifo {  { det2_V_V6_dout fifo_data 0 32 }  { det2_V_V6_empty_n fifo_status 0 1 }  { det2_V_V6_read fifo_update 1 1 } } }
	hessianThreshold_V { ap_fifo {  { hessianThreshold_V_dout fifo_data 0 32 }  { hessianThreshold_V_empty_n fifo_status 0 1 }  { hessianThreshold_V_read fifo_update 1 1 } } }
	keyPoints_V { m_axi {  { m_axi_keyPoints_V_AWVALID VALID 1 1 }  { m_axi_keyPoints_V_AWREADY READY 0 1 }  { m_axi_keyPoints_V_AWADDR ADDR 1 32 }  { m_axi_keyPoints_V_AWID ID 1 1 }  { m_axi_keyPoints_V_AWLEN LEN 1 32 }  { m_axi_keyPoints_V_AWSIZE SIZE 1 3 }  { m_axi_keyPoints_V_AWBURST BURST 1 2 }  { m_axi_keyPoints_V_AWLOCK LOCK 1 2 }  { m_axi_keyPoints_V_AWCACHE CACHE 1 4 }  { m_axi_keyPoints_V_AWPROT PROT 1 3 }  { m_axi_keyPoints_V_AWQOS QOS 1 4 }  { m_axi_keyPoints_V_AWREGION REGION 1 4 }  { m_axi_keyPoints_V_AWUSER USER 1 1 }  { m_axi_keyPoints_V_WVALID VALID 1 1 }  { m_axi_keyPoints_V_WREADY READY 0 1 }  { m_axi_keyPoints_V_WDATA DATA 1 32 }  { m_axi_keyPoints_V_WSTRB STRB 1 4 }  { m_axi_keyPoints_V_WLAST LAST 1 1 }  { m_axi_keyPoints_V_WID ID 1 1 }  { m_axi_keyPoints_V_WUSER USER 1 1 }  { m_axi_keyPoints_V_ARVALID VALID 1 1 }  { m_axi_keyPoints_V_ARREADY READY 0 1 }  { m_axi_keyPoints_V_ARADDR ADDR 1 32 }  { m_axi_keyPoints_V_ARID ID 1 1 }  { m_axi_keyPoints_V_ARLEN LEN 1 32 }  { m_axi_keyPoints_V_ARSIZE SIZE 1 3 }  { m_axi_keyPoints_V_ARBURST BURST 1 2 }  { m_axi_keyPoints_V_ARLOCK LOCK 1 2 }  { m_axi_keyPoints_V_ARCACHE CACHE 1 4 }  { m_axi_keyPoints_V_ARPROT PROT 1 3 }  { m_axi_keyPoints_V_ARQOS QOS 1 4 }  { m_axi_keyPoints_V_ARREGION REGION 1 4 }  { m_axi_keyPoints_V_ARUSER USER 1 1 }  { m_axi_keyPoints_V_RVALID VALID 0 1 }  { m_axi_keyPoints_V_RREADY READY 1 1 }  { m_axi_keyPoints_V_RDATA DATA 0 32 }  { m_axi_keyPoints_V_RLAST LAST 0 1 }  { m_axi_keyPoints_V_RID ID 0 1 }  { m_axi_keyPoints_V_RUSER USER 0 1 }  { m_axi_keyPoints_V_RRESP RESP 0 2 }  { m_axi_keyPoints_V_BVALID VALID 0 1 }  { m_axi_keyPoints_V_BREADY READY 1 1 }  { m_axi_keyPoints_V_BRESP RESP 0 2 }  { m_axi_keyPoints_V_BID ID 0 1 }  { m_axi_keyPoints_V_BUSER USER 0 1 } } }
	keyPoints_V_offset { ap_fifo {  { keyPoints_V_offset_dout fifo_data 0 32 }  { keyPoints_V_offset_empty_n fifo_status 0 1 }  { keyPoints_V_offset_read fifo_update 1 1 } } }
	pointNumber { m_axi {  { m_axi_pointNumber_AWVALID VALID 1 1 }  { m_axi_pointNumber_AWREADY READY 0 1 }  { m_axi_pointNumber_AWADDR ADDR 1 32 }  { m_axi_pointNumber_AWID ID 1 1 }  { m_axi_pointNumber_AWLEN LEN 1 32 }  { m_axi_pointNumber_AWSIZE SIZE 1 3 }  { m_axi_pointNumber_AWBURST BURST 1 2 }  { m_axi_pointNumber_AWLOCK LOCK 1 2 }  { m_axi_pointNumber_AWCACHE CACHE 1 4 }  { m_axi_pointNumber_AWPROT PROT 1 3 }  { m_axi_pointNumber_AWQOS QOS 1 4 }  { m_axi_pointNumber_AWREGION REGION 1 4 }  { m_axi_pointNumber_AWUSER USER 1 1 }  { m_axi_pointNumber_WVALID VALID 1 1 }  { m_axi_pointNumber_WREADY READY 0 1 }  { m_axi_pointNumber_WDATA DATA 1 32 }  { m_axi_pointNumber_WSTRB STRB 1 4 }  { m_axi_pointNumber_WLAST LAST 1 1 }  { m_axi_pointNumber_WID ID 1 1 }  { m_axi_pointNumber_WUSER USER 1 1 }  { m_axi_pointNumber_ARVALID VALID 1 1 }  { m_axi_pointNumber_ARREADY READY 0 1 }  { m_axi_pointNumber_ARADDR ADDR 1 32 }  { m_axi_pointNumber_ARID ID 1 1 }  { m_axi_pointNumber_ARLEN LEN 1 32 }  { m_axi_pointNumber_ARSIZE SIZE 1 3 }  { m_axi_pointNumber_ARBURST BURST 1 2 }  { m_axi_pointNumber_ARLOCK LOCK 1 2 }  { m_axi_pointNumber_ARCACHE CACHE 1 4 }  { m_axi_pointNumber_ARPROT PROT 1 3 }  { m_axi_pointNumber_ARQOS QOS 1 4 }  { m_axi_pointNumber_ARREGION REGION 1 4 }  { m_axi_pointNumber_ARUSER USER 1 1 }  { m_axi_pointNumber_RVALID VALID 0 1 }  { m_axi_pointNumber_RREADY READY 1 1 }  { m_axi_pointNumber_RDATA DATA 0 32 }  { m_axi_pointNumber_RLAST LAST 0 1 }  { m_axi_pointNumber_RID ID 0 1 }  { m_axi_pointNumber_RUSER USER 0 1 }  { m_axi_pointNumber_RRESP RESP 0 2 }  { m_axi_pointNumber_BVALID VALID 0 1 }  { m_axi_pointNumber_BREADY READY 1 1 }  { m_axi_pointNumber_BRESP RESP 0 2 }  { m_axi_pointNumber_BID ID 0 1 }  { m_axi_pointNumber_BUSER USER 0 1 } } }
	pointNumber_offset { ap_fifo {  { pointNumber_offset_dout fifo_data 0 32 }  { pointNumber_offset_empty_n fifo_status 0 1 }  { pointNumber_offset_read fifo_update 1 1 } } }
}
