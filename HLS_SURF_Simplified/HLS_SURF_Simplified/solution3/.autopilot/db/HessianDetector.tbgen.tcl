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
	{ pointNumber int 32 regular {axi_master 1}  }
	{ sum_V int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "keyPoints_V", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pointNumber", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 100
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
	{ m_axi_pointNumber_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_pointNumber_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_pointNumber_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_pointNumber_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_pointNumber_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_pointNumber_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_pointNumber_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_pointNumber_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_pointNumber_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_pointNumber_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_pointNumber_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_pointNumber_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_pointNumber_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_pointNumber_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_pointNumber_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_pointNumber_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_pointNumber_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_pointNumber_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_pointNumber_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_pointNumber_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_pointNumber_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_pointNumber_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_pointNumber_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_pointNumber_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_BUSER sc_in sc_lv 1 signal 1 } 
	{ sum_V_dout sc_in sc_lv 32 signal 2 } 
	{ sum_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ sum_V_read sc_out sc_logic 1 signal 2 } 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "73", "77", "78", "79", "80"],
		"CDFG" : "HessianDetector",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1926807", "EstimateLatencyMax" : "141533097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "calcLayerDetAndTrace_U0"}],
		"OutputProcess" : [
			{"ID" : "73", "Name" : "findCharacteristicPo_U0"}],
		"Port" : [
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "keyPoints_V"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "pointNumber"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "MSB_V"}]},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sum_V"}]},
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_0"}]},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_1"}]},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_2"}]},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_3"}]},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_4"}]},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_5"}]},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_6"}]},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_7"}]},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_8"}]},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_9"}]},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_10"}]},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_11"}]},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_12"}]},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_13"}]},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_14"}]},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_15"}]},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_16"}]},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_17"}]},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_18"}]},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_19"}]},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_20"}]},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_21"}]},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "tmpPointNum"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_0"}]},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_1"}]},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_2"}]},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "MSB_V_1"}]},
			{"Name" : "N1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "findCharacteristicPo_U0", "Port" : "N1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "48", "68", "69", "70", "71", "72"],
		"CDFG" : "calcLayerDetAndTrace",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1926807", "EstimateLatencyMax" : "141533097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "det0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "det0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "det1_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "det2_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_0"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_0"}]},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_1"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_1"}]},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_2"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_2"}]},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_3"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_3"}]},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_4"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_4"}]},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_5"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_5"}]},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_6"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_6"}]},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_7"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_7"}]},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_8"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_8"}]},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_9"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_9"}]},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_10"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_10"}]},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_11"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_11"}]},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_12"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_12"}]},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_13"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_13"}]},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_14"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_14"}]},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_15"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_15"}]},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_16"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_16"}]},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_17"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_17"}]},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_18"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_18"}]},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_19"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_19"}]},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_20"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_20"}]},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_21"},
					{"ID" : "48", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_21"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_4_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_5_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_6_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_7_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_8_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_9_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_10_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_11_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_12_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_13_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_14_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_15_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_16_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_17_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_18_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_19_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_20_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.sumBuf_21_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678", "Parent" : "1", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "calcHaarPattern_xy",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "29", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_3_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sumBufIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cOffset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1876", "Parent" : "24",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1882", "Parent" : "24",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1888", "Parent" : "24",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1894", "Parent" : "24",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_faddbkb_U70", "Parent" : "24"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_fmulcud_U71", "Parent" : "24"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_sitodEe_U72", "Parent" : "24"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U73", "Parent" : "24"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U74", "Parent" : "24"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U75", "Parent" : "24"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U76", "Parent" : "24"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U77", "Parent" : "24"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U78", "Parent" : "24"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U79", "Parent" : "24"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U80", "Parent" : "24"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U81", "Parent" : "24"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U82", "Parent" : "24"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U83", "Parent" : "24"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U84", "Parent" : "24"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U85", "Parent" : "24"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U86", "Parent" : "24"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U87", "Parent" : "24"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U88", "Parent" : "24"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805", "Parent" : "1", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "calcHaarPattern_x_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "3",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "box_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_0_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_1_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "box_2_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sumBufIndex_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rOffset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cOffset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1484", "Parent" : "48",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1490", "Parent" : "48",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1496", "Parent" : "48",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1502", "Parent" : "48",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_faddbkb_U11", "Parent" : "48"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_fmulcud_U12", "Parent" : "48"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_sitodEe_U13", "Parent" : "48"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U14", "Parent" : "48"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U15", "Parent" : "48"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U16", "Parent" : "48"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U17", "Parent" : "48"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U18", "Parent" : "48"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U19", "Parent" : "48"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U20", "Parent" : "48"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U21", "Parent" : "48"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U22", "Parent" : "48"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U23", "Parent" : "48"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U24", "Parent" : "48"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U25", "Parent" : "48"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surfDetector_fmulcud_U134", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surfDetector_fptrBew_U135", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surfDetector_fpexCeG_U136", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surfDetector_dsubDeQ_U137", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.calcLayerDetAndTrace_U0.surfDetector_dmulEe0_U138", "Parent" : "1"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.findCharacteristicPo_U0", "Parent" : "0", "Child" : ["74", "75", "76"],
		"CDFG" : "findCharacteristicPo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1404223", "EstimateLatencyMax" : "30855526",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_findChaIfE_U",
		"Port" : [
			{"Name" : "det0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "det0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "det1_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "det2_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pointNumber_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "N1", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findCharacteristicPo_U0.N1_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findCharacteristicPo_U0.surfDetector_fcmpGfk_U148", "Parent" : "73"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.findCharacteristicPo_U0.surfDetector_mul_Hfu_U149", "Parent" : "73"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dets_0_V_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dets_1_V_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dets_2_V_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_findChaIfE_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	HessianDetector {
		keyPoints_V {Type O LastRead 63 FirstWrite 62}
		pointNumber {Type O LastRead 3 FirstWrite 2}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type I LastRead 2 FirstWrite -1}
		sumBuf_0 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_1 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_2 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_3 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_4 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_5 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_6 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_7 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_8 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_9 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_10 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_11 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_12 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_13 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_14 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_15 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_16 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_17 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_18 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_19 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_20 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_21 {Type IO LastRead -1 FirstWrite -1}
		tmpPointNum {Type IO LastRead -1 FirstWrite -1}
		bRow_V_0 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_1 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_2 {Type IO LastRead -1 FirstWrite -1}
		MSB_V_1 {Type IO LastRead -1 FirstWrite -1}
		N1 {Type IO LastRead -1 FirstWrite -1}}
	calcLayerDetAndTrace {
		det0_V {Type O LastRead -1 FirstWrite 99}
		det1_V3 {Type O LastRead -1 FirstWrite 197}
		det2_V6 {Type O LastRead -1 FirstWrite 295}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type I LastRead 2 FirstWrite -1}
		sumBuf_0 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_1 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_2 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_3 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_4 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_5 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_6 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_7 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_8 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_9 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_10 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_11 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_12 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_13 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_14 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_15 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_16 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_17 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_18 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_19 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_20 {Type IO LastRead -1 FirstWrite -1}
		sumBuf_21 {Type IO LastRead -1 FirstWrite -1}}
	calcHaarPattern_xy {
		sumBuf_0 {Type I LastRead 5 FirstWrite -1}
		sumBuf_1 {Type I LastRead 5 FirstWrite -1}
		sumBuf_2 {Type I LastRead 5 FirstWrite -1}
		sumBuf_3 {Type I LastRead 5 FirstWrite -1}
		sumBuf_4 {Type I LastRead 5 FirstWrite -1}
		sumBuf_5 {Type I LastRead 5 FirstWrite -1}
		sumBuf_6 {Type I LastRead 5 FirstWrite -1}
		sumBuf_7 {Type I LastRead 5 FirstWrite -1}
		sumBuf_8 {Type I LastRead 5 FirstWrite -1}
		sumBuf_9 {Type I LastRead 5 FirstWrite -1}
		sumBuf_10 {Type I LastRead 5 FirstWrite -1}
		sumBuf_11 {Type I LastRead 5 FirstWrite -1}
		sumBuf_12 {Type I LastRead 5 FirstWrite -1}
		sumBuf_13 {Type I LastRead 5 FirstWrite -1}
		sumBuf_14 {Type I LastRead 5 FirstWrite -1}
		sumBuf_15 {Type I LastRead 5 FirstWrite -1}
		sumBuf_16 {Type I LastRead 5 FirstWrite -1}
		sumBuf_17 {Type I LastRead 5 FirstWrite -1}
		sumBuf_18 {Type I LastRead 5 FirstWrite -1}
		sumBuf_19 {Type I LastRead 5 FirstWrite -1}
		sumBuf_20 {Type I LastRead 5 FirstWrite -1}
		sumBuf_21 {Type I LastRead 5 FirstWrite -1}
		box_0_0_read {Type I LastRead 0 FirstWrite -1}
		box_0_1_read {Type I LastRead 0 FirstWrite -1}
		box_0_2_read {Type I LastRead 0 FirstWrite -1}
		box_0_3_read {Type I LastRead 0 FirstWrite -1}
		box_0_4_read {Type I LastRead 3 FirstWrite -1}
		box_1_0_read {Type I LastRead 1 FirstWrite -1}
		box_1_1_read {Type I LastRead 1 FirstWrite -1}
		box_1_2_read {Type I LastRead 1 FirstWrite -1}
		box_1_3_read {Type I LastRead 1 FirstWrite -1}
		box_1_4_read {Type I LastRead 3 FirstWrite -1}
		box_2_0_read {Type I LastRead 2 FirstWrite -1}
		box_2_1_read {Type I LastRead 2 FirstWrite -1}
		box_2_2_read {Type I LastRead 2 FirstWrite -1}
		box_2_3_read {Type I LastRead 2 FirstWrite -1}
		box_2_4_read {Type I LastRead 3 FirstWrite -1}
		box_3_0_read {Type I LastRead 3 FirstWrite -1}
		box_3_1_read {Type I LastRead 3 FirstWrite -1}
		box_3_2_read {Type I LastRead 3 FirstWrite -1}
		box_3_3_read {Type I LastRead 3 FirstWrite -1}
		box_3_4_read {Type I LastRead 3 FirstWrite -1}
		sumBufIndex_V {Type I LastRead 2 FirstWrite -1}
		rOffset {Type I LastRead 1 FirstWrite -1}
		cOffset {Type I LastRead 1 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	calcHaarPattern_x_y {
		sumBuf_0 {Type I LastRead 4 FirstWrite -1}
		sumBuf_1 {Type I LastRead 4 FirstWrite -1}
		sumBuf_2 {Type I LastRead 4 FirstWrite -1}
		sumBuf_3 {Type I LastRead 4 FirstWrite -1}
		sumBuf_4 {Type I LastRead 4 FirstWrite -1}
		sumBuf_5 {Type I LastRead 4 FirstWrite -1}
		sumBuf_6 {Type I LastRead 4 FirstWrite -1}
		sumBuf_7 {Type I LastRead 4 FirstWrite -1}
		sumBuf_8 {Type I LastRead 4 FirstWrite -1}
		sumBuf_9 {Type I LastRead 4 FirstWrite -1}
		sumBuf_10 {Type I LastRead 4 FirstWrite -1}
		sumBuf_11 {Type I LastRead 4 FirstWrite -1}
		sumBuf_12 {Type I LastRead 4 FirstWrite -1}
		sumBuf_13 {Type I LastRead 4 FirstWrite -1}
		sumBuf_14 {Type I LastRead 4 FirstWrite -1}
		sumBuf_15 {Type I LastRead 4 FirstWrite -1}
		sumBuf_16 {Type I LastRead 4 FirstWrite -1}
		sumBuf_17 {Type I LastRead 4 FirstWrite -1}
		sumBuf_18 {Type I LastRead 4 FirstWrite -1}
		sumBuf_19 {Type I LastRead 4 FirstWrite -1}
		sumBuf_20 {Type I LastRead 4 FirstWrite -1}
		sumBuf_21 {Type I LastRead 4 FirstWrite -1}
		box_0_0_read {Type I LastRead 0 FirstWrite -1}
		box_0_1_read {Type I LastRead 0 FirstWrite -1}
		box_0_2_read {Type I LastRead 0 FirstWrite -1}
		box_0_3_read {Type I LastRead 0 FirstWrite -1}
		box_0_4_read {Type I LastRead 2 FirstWrite -1}
		box_1_0_read {Type I LastRead 1 FirstWrite -1}
		box_1_1_read {Type I LastRead 1 FirstWrite -1}
		box_1_2_read {Type I LastRead 1 FirstWrite -1}
		box_1_3_read {Type I LastRead 1 FirstWrite -1}
		box_1_4_read {Type I LastRead 2 FirstWrite -1}
		box_2_0_read {Type I LastRead 2 FirstWrite -1}
		box_2_1_read {Type I LastRead 2 FirstWrite -1}
		box_2_2_read {Type I LastRead 2 FirstWrite -1}
		box_2_3_read {Type I LastRead 2 FirstWrite -1}
		box_2_4_read {Type I LastRead 2 FirstWrite -1}
		sumBufIndex_V {Type I LastRead 2 FirstWrite -1}
		rOffset {Type I LastRead 1 FirstWrite -1}
		cOffset {Type I LastRead 1 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	findCharacteristicPo {
		det0_V {Type I LastRead 3 FirstWrite -1}
		det1_V3 {Type I LastRead 3 FirstWrite -1}
		det2_V6 {Type I LastRead 4 FirstWrite -1}
		keyPoints_V {Type O LastRead 63 FirstWrite 62}
		pointNumber {Type O LastRead 3 FirstWrite 2}
		tmpPointNum {Type IO LastRead -1 FirstWrite -1}
		bRow_V_0 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_1 {Type IO LastRead -1 FirstWrite -1}
		bRow_V_2 {Type IO LastRead -1 FirstWrite -1}
		MSB_V_1 {Type IO LastRead -1 FirstWrite -1}
		N1 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1926807", "Max" : "141533097"}
	, {"Name" : "Interval", "Min" : "1926808", "Max" : "141533098"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	keyPoints_V { m_axi {  { m_axi_keyPoints_V_AWVALID VALID 1 1 }  { m_axi_keyPoints_V_AWREADY READY 0 1 }  { m_axi_keyPoints_V_AWADDR ADDR 1 32 }  { m_axi_keyPoints_V_AWID ID 1 1 }  { m_axi_keyPoints_V_AWLEN LEN 1 32 }  { m_axi_keyPoints_V_AWSIZE SIZE 1 3 }  { m_axi_keyPoints_V_AWBURST BURST 1 2 }  { m_axi_keyPoints_V_AWLOCK LOCK 1 2 }  { m_axi_keyPoints_V_AWCACHE CACHE 1 4 }  { m_axi_keyPoints_V_AWPROT PROT 1 3 }  { m_axi_keyPoints_V_AWQOS QOS 1 4 }  { m_axi_keyPoints_V_AWREGION REGION 1 4 }  { m_axi_keyPoints_V_AWUSER USER 1 1 }  { m_axi_keyPoints_V_WVALID VALID 1 1 }  { m_axi_keyPoints_V_WREADY READY 0 1 }  { m_axi_keyPoints_V_WDATA DATA 1 32 }  { m_axi_keyPoints_V_WSTRB STRB 1 4 }  { m_axi_keyPoints_V_WLAST LAST 1 1 }  { m_axi_keyPoints_V_WID ID 1 1 }  { m_axi_keyPoints_V_WUSER USER 1 1 }  { m_axi_keyPoints_V_ARVALID VALID 1 1 }  { m_axi_keyPoints_V_ARREADY READY 0 1 }  { m_axi_keyPoints_V_ARADDR ADDR 1 32 }  { m_axi_keyPoints_V_ARID ID 1 1 }  { m_axi_keyPoints_V_ARLEN LEN 1 32 }  { m_axi_keyPoints_V_ARSIZE SIZE 1 3 }  { m_axi_keyPoints_V_ARBURST BURST 1 2 }  { m_axi_keyPoints_V_ARLOCK LOCK 1 2 }  { m_axi_keyPoints_V_ARCACHE CACHE 1 4 }  { m_axi_keyPoints_V_ARPROT PROT 1 3 }  { m_axi_keyPoints_V_ARQOS QOS 1 4 }  { m_axi_keyPoints_V_ARREGION REGION 1 4 }  { m_axi_keyPoints_V_ARUSER USER 1 1 }  { m_axi_keyPoints_V_RVALID VALID 0 1 }  { m_axi_keyPoints_V_RREADY READY 1 1 }  { m_axi_keyPoints_V_RDATA DATA 0 32 }  { m_axi_keyPoints_V_RLAST LAST 0 1 }  { m_axi_keyPoints_V_RID ID 0 1 }  { m_axi_keyPoints_V_RUSER USER 0 1 }  { m_axi_keyPoints_V_RRESP RESP 0 2 }  { m_axi_keyPoints_V_BVALID VALID 0 1 }  { m_axi_keyPoints_V_BREADY READY 1 1 }  { m_axi_keyPoints_V_BRESP RESP 0 2 }  { m_axi_keyPoints_V_BID ID 0 1 }  { m_axi_keyPoints_V_BUSER USER 0 1 } } }
	pointNumber { m_axi {  { m_axi_pointNumber_AWVALID VALID 1 1 }  { m_axi_pointNumber_AWREADY READY 0 1 }  { m_axi_pointNumber_AWADDR ADDR 1 32 }  { m_axi_pointNumber_AWID ID 1 1 }  { m_axi_pointNumber_AWLEN LEN 1 32 }  { m_axi_pointNumber_AWSIZE SIZE 1 3 }  { m_axi_pointNumber_AWBURST BURST 1 2 }  { m_axi_pointNumber_AWLOCK LOCK 1 2 }  { m_axi_pointNumber_AWCACHE CACHE 1 4 }  { m_axi_pointNumber_AWPROT PROT 1 3 }  { m_axi_pointNumber_AWQOS QOS 1 4 }  { m_axi_pointNumber_AWREGION REGION 1 4 }  { m_axi_pointNumber_AWUSER USER 1 1 }  { m_axi_pointNumber_WVALID VALID 1 1 }  { m_axi_pointNumber_WREADY READY 0 1 }  { m_axi_pointNumber_WDATA DATA 1 32 }  { m_axi_pointNumber_WSTRB STRB 1 4 }  { m_axi_pointNumber_WLAST LAST 1 1 }  { m_axi_pointNumber_WID ID 1 1 }  { m_axi_pointNumber_WUSER USER 1 1 }  { m_axi_pointNumber_ARVALID VALID 1 1 }  { m_axi_pointNumber_ARREADY READY 0 1 }  { m_axi_pointNumber_ARADDR ADDR 1 32 }  { m_axi_pointNumber_ARID ID 1 1 }  { m_axi_pointNumber_ARLEN LEN 1 32 }  { m_axi_pointNumber_ARSIZE SIZE 1 3 }  { m_axi_pointNumber_ARBURST BURST 1 2 }  { m_axi_pointNumber_ARLOCK LOCK 1 2 }  { m_axi_pointNumber_ARCACHE CACHE 1 4 }  { m_axi_pointNumber_ARPROT PROT 1 3 }  { m_axi_pointNumber_ARQOS QOS 1 4 }  { m_axi_pointNumber_ARREGION REGION 1 4 }  { m_axi_pointNumber_ARUSER USER 1 1 }  { m_axi_pointNumber_RVALID VALID 0 1 }  { m_axi_pointNumber_RREADY READY 1 1 }  { m_axi_pointNumber_RDATA DATA 0 32 }  { m_axi_pointNumber_RLAST LAST 0 1 }  { m_axi_pointNumber_RID ID 0 1 }  { m_axi_pointNumber_RUSER USER 0 1 }  { m_axi_pointNumber_RRESP RESP 0 2 }  { m_axi_pointNumber_BVALID VALID 0 1 }  { m_axi_pointNumber_BREADY READY 1 1 }  { m_axi_pointNumber_BRESP RESP 0 2 }  { m_axi_pointNumber_BID ID 0 1 }  { m_axi_pointNumber_BUSER USER 0 1 } } }
	sum_V { ap_fifo {  { sum_V_dout fifo_data 0 32 }  { sum_V_empty_n fifo_status 0 1 }  { sum_V_read fifo_update 1 1 } } }
}
