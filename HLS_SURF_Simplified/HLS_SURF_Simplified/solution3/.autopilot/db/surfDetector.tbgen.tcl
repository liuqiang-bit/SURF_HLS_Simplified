set moduleName surfDetector
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {surfDetector}
set C_modelType { void 0 }
set C_modelArgList {
	{ video_in_V_data_V int 24 regular {axi_s 0 volatile  { video_in Data } }  }
	{ video_in_V_keep_V int 3 regular {axi_s 0 volatile  { video_in Keep } }  }
	{ video_in_V_strb_V int 3 regular {axi_s 0 volatile  { video_in Strb } }  }
	{ video_in_V_user_V int 1 regular {axi_s 0 volatile  { video_in User } }  }
	{ video_in_V_last_V int 1 regular {axi_s 0 volatile  { video_in Last } }  }
	{ video_in_V_id_V int 1 regular {axi_s 0 volatile  { video_in ID } }  }
	{ video_in_V_dest_V int 1 regular {axi_s 0 volatile  { video_in Dest } }  }
	{ keyPoints_V int 32 regular {axi_master 1}  }
	{ kpn int 32 regular {axi_master 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "video_in_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "video_in.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "video_in.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "video_in.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "keyPoints_V", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keyPoints.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "kpn", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kpn","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 101
set portList { 
	{ m_axi_keyPoints_V_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_AWADDR sc_out sc_lv 32 signal 7 } 
	{ m_axi_keyPoints_V_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_keyPoints_V_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_keyPoints_V_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_keyPoints_V_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_keyPoints_V_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_keyPoints_V_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_keyPoints_V_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_keyPoints_V_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_keyPoints_V_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_keyPoints_V_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_keyPoints_V_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_ARADDR sc_out sc_lv 32 signal 7 } 
	{ m_axi_keyPoints_V_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_keyPoints_V_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_keyPoints_V_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_keyPoints_V_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_keyPoints_V_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_keyPoints_V_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_keyPoints_V_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_keyPoints_V_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_keyPoints_V_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_keyPoints_V_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_keyPoints_V_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_keyPoints_V_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_keyPoints_V_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_keyPoints_V_BUSER sc_in sc_lv 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_kpn_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_kpn_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_kpn_AWADDR sc_out sc_lv 32 signal 8 } 
	{ m_axi_kpn_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_kpn_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_kpn_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_kpn_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_kpn_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_kpn_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_kpn_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_kpn_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_kpn_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_kpn_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_kpn_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_kpn_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_kpn_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_kpn_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_kpn_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_kpn_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_kpn_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_kpn_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_kpn_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_kpn_ARADDR sc_out sc_lv 32 signal 8 } 
	{ m_axi_kpn_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_kpn_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_kpn_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_kpn_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_kpn_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_kpn_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_kpn_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_kpn_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_kpn_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_kpn_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_kpn_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_kpn_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_kpn_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_kpn_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_kpn_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_kpn_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_kpn_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_kpn_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_kpn_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_kpn_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_kpn_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_kpn_BUSER sc_in sc_lv 1 signal 8 } 
	{ video_in_TDATA sc_in sc_lv 24 signal 0 } 
	{ video_in_TKEEP sc_in sc_lv 3 signal 1 } 
	{ video_in_TSTRB sc_in sc_lv 3 signal 2 } 
	{ video_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ video_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ video_in_TID sc_in sc_lv 1 signal 5 } 
	{ video_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ video_in_TVALID sc_in sc_logic 1 invld 6 } 
	{ video_in_TREADY sc_out sc_logic 1 inacc 6 } 
}
set NewPortList {[ 
	{ "name": "m_axi_keyPoints_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_keyPoints_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_keyPoints_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_keyPoints_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWID" }} , 
 	{ "name": "m_axi_keyPoints_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_keyPoints_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "keyPoints_V", "role": "ARLEN" }} , 
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
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_kpn_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "AWVALID" }} , 
 	{ "name": "m_axi_kpn_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "AWREADY" }} , 
 	{ "name": "m_axi_kpn_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kpn", "role": "AWADDR" }} , 
 	{ "name": "m_axi_kpn_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "AWID" }} , 
 	{ "name": "m_axi_kpn_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kpn", "role": "AWLEN" }} , 
 	{ "name": "m_axi_kpn_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kpn", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_kpn_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kpn", "role": "AWBURST" }} , 
 	{ "name": "m_axi_kpn_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kpn", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_kpn_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kpn", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_kpn_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kpn", "role": "AWPROT" }} , 
 	{ "name": "m_axi_kpn_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kpn", "role": "AWQOS" }} , 
 	{ "name": "m_axi_kpn_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kpn", "role": "AWREGION" }} , 
 	{ "name": "m_axi_kpn_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "AWUSER" }} , 
 	{ "name": "m_axi_kpn_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "WVALID" }} , 
 	{ "name": "m_axi_kpn_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "WREADY" }} , 
 	{ "name": "m_axi_kpn_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kpn", "role": "WDATA" }} , 
 	{ "name": "m_axi_kpn_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kpn", "role": "WSTRB" }} , 
 	{ "name": "m_axi_kpn_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "WLAST" }} , 
 	{ "name": "m_axi_kpn_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "WID" }} , 
 	{ "name": "m_axi_kpn_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "WUSER" }} , 
 	{ "name": "m_axi_kpn_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "ARVALID" }} , 
 	{ "name": "m_axi_kpn_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "ARREADY" }} , 
 	{ "name": "m_axi_kpn_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kpn", "role": "ARADDR" }} , 
 	{ "name": "m_axi_kpn_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "ARID" }} , 
 	{ "name": "m_axi_kpn_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "kpn", "role": "ARLEN" }} , 
 	{ "name": "m_axi_kpn_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kpn", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_kpn_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kpn", "role": "ARBURST" }} , 
 	{ "name": "m_axi_kpn_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kpn", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_kpn_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kpn", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_kpn_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "kpn", "role": "ARPROT" }} , 
 	{ "name": "m_axi_kpn_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kpn", "role": "ARQOS" }} , 
 	{ "name": "m_axi_kpn_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kpn", "role": "ARREGION" }} , 
 	{ "name": "m_axi_kpn_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "ARUSER" }} , 
 	{ "name": "m_axi_kpn_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "RVALID" }} , 
 	{ "name": "m_axi_kpn_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "RREADY" }} , 
 	{ "name": "m_axi_kpn_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kpn", "role": "RDATA" }} , 
 	{ "name": "m_axi_kpn_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "RLAST" }} , 
 	{ "name": "m_axi_kpn_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "RID" }} , 
 	{ "name": "m_axi_kpn_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "RUSER" }} , 
 	{ "name": "m_axi_kpn_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kpn", "role": "RRESP" }} , 
 	{ "name": "m_axi_kpn_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "BVALID" }} , 
 	{ "name": "m_axi_kpn_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "BREADY" }} , 
 	{ "name": "m_axi_kpn_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "kpn", "role": "BRESP" }} , 
 	{ "name": "m_axi_kpn_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "BID" }} , 
 	{ "name": "m_axi_kpn_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kpn", "role": "BUSER" }} , 
 	{ "name": "video_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "video_in_V_data_V", "role": "default" }} , 
 	{ "name": "video_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "video_in_V_keep_V", "role": "default" }} , 
 	{ "name": "video_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "video_in_V_strb_V", "role": "default" }} , 
 	{ "name": "video_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_in_V_user_V", "role": "default" }} , 
 	{ "name": "video_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_in_V_last_V", "role": "default" }} , 
 	{ "name": "video_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_in_V_id_V", "role": "default" }} , 
 	{ "name": "video_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "video_in_V_dest_V", "role": "default" }} , 
 	{ "name": "video_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "video_in_V_dest_V", "role": "default" }} , 
 	{ "name": "video_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "video_in_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "87", "88"],
		"CDFG" : "surfDetector",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1926811", "EstimateLatencyMax" : "141533101",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "integralImg_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "HessianDetector_U0"}],
		"Port" : [
			{"Name" : "video_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "video_in_V_data_V"}]},
			{"Name" : "video_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "video_in_V_keep_V"}]},
			{"Name" : "video_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "video_in_V_strb_V"}]},
			{"Name" : "video_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "video_in_V_user_V"}]},
			{"Name" : "video_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "video_in_V_last_V"}]},
			{"Name" : "video_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "video_in_V_id_V"}]},
			{"Name" : "video_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "video_in_V_dest_V"}]},
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "keyPoints_V"}]},
			{"Name" : "kpn", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "pointNumber"}]},
			{"Name" : "pix_val", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "pix_val"}]},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "buf_1"}]},
			{"Name" : "buf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "buf_0"}]},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sum_V"},
					{"ID" : "3", "SubInstance" : "integralImg_U0", "Port" : "sum_V"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "MSB_V"}]},
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_0"}]},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_1"}]},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_2"}]},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_3"}]},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_4"}]},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_5"}]},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_6"}]},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_7"}]},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_8"}]},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_9"}]},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_10"}]},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_11"}]},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_12"}]},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_13"}]},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_14"}]},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_15"}]},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_16"}]},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_17"}]},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_18"}]},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_19"}]},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_20"}]},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf_21"}]},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "tmpPointNum"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "bRow_V_0"}]},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "bRow_V_1"}]},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "bRow_V_2"}]},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "MSB_V_1"}]},
			{"Name" : "N1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "HessianDetector_U0", "Port" : "N1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_keyPoints_V_m_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surfDetector_kpn_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integralImg_U0", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "integralImg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "964005", "EstimateLatencyMax" : "3371010",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "video_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "video_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "video_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "video_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "video_in_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "video_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "video_in_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "video_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "pix_val", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.integralImg_U0.buf_1_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.integralImg_U0.buf_0_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0", "Parent" : "0", "Child" : ["7", "79", "83", "84", "85", "86"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_HessianJfO_U",
		"InputProcess" : [
			{"ID" : "7", "Name" : "calcLayerDetAndTrace_U0"}],
		"OutputProcess" : [
			{"ID" : "79", "Name" : "findCharacteristicPo_U0"}],
		"Port" : [
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "keyPoints_V"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "pointNumber"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "MSB_V"}]},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "87",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sum_V"}]},
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_0"}]},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_1"}]},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_2"}]},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_3"}]},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_4"}]},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_5"}]},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_6"}]},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_7"}]},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_8"}]},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_9"}]},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_10"}]},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_11"}]},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_12"}]},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_13"}]},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_14"}]},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_15"}]},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_16"}]},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_17"}]},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_18"}]},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_19"}]},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_20"}]},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf_21"}]},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "tmpPointNum"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_0"}]},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_1"}]},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_2"}]},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "MSB_V_1"}]},
			{"Name" : "N1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "findCharacteristicPo_U0", "Port" : "N1"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0", "Parent" : "6", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "54", "74", "75", "76", "77", "78"],
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
			{"Name" : "det0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "det0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "det1_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "det2_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sumBuf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_0"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_0"}]},
			{"Name" : "sumBuf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_1"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_1"}]},
			{"Name" : "sumBuf_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_2"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_2"}]},
			{"Name" : "sumBuf_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_3"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_3"}]},
			{"Name" : "sumBuf_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_4"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_4"}]},
			{"Name" : "sumBuf_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_5"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_5"}]},
			{"Name" : "sumBuf_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_6"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_6"}]},
			{"Name" : "sumBuf_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_7"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_7"}]},
			{"Name" : "sumBuf_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_8"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_8"}]},
			{"Name" : "sumBuf_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_9"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_9"}]},
			{"Name" : "sumBuf_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_10"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_10"}]},
			{"Name" : "sumBuf_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_11"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_11"}]},
			{"Name" : "sumBuf_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_12"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_12"}]},
			{"Name" : "sumBuf_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_13"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_13"}]},
			{"Name" : "sumBuf_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_14"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_14"}]},
			{"Name" : "sumBuf_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_15"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_15"}]},
			{"Name" : "sumBuf_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_16"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_16"}]},
			{"Name" : "sumBuf_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_17"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_17"}]},
			{"Name" : "sumBuf_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_18"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_18"}]},
			{"Name" : "sumBuf_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_19"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_19"}]},
			{"Name" : "sumBuf_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_20"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_20"}]},
			{"Name" : "sumBuf_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_xy_fu_678", "Port" : "sumBuf_21"},
					{"ID" : "54", "SubInstance" : "grp_calcHaarPattern_x_y_fu_805", "Port" : "sumBuf_21"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_0_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_1_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_2_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_3_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_4_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_5_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_6_U", "Parent" : "7"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_7_U", "Parent" : "7"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_8_U", "Parent" : "7"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_9_U", "Parent" : "7"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_10_U", "Parent" : "7"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_11_U", "Parent" : "7"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_12_U", "Parent" : "7"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_13_U", "Parent" : "7"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_14_U", "Parent" : "7"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_15_U", "Parent" : "7"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_16_U", "Parent" : "7"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_17_U", "Parent" : "7"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_18_U", "Parent" : "7"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_19_U", "Parent" : "7"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_20_U", "Parent" : "7"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_21_U", "Parent" : "7"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678", "Parent" : "7", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53"],
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
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1876", "Parent" : "30",
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
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1882", "Parent" : "30",
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
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1888", "Parent" : "30",
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
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.grp_p_hls_fptosi_float_i_fu_1894", "Parent" : "30",
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
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_faddbkb_U70", "Parent" : "30"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_fmulcud_U71", "Parent" : "30"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_sitodEe_U72", "Parent" : "30"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U73", "Parent" : "30"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U74", "Parent" : "30"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U75", "Parent" : "30"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U76", "Parent" : "30"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U77", "Parent" : "30"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U78", "Parent" : "30"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U79", "Parent" : "30"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U80", "Parent" : "30"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U81", "Parent" : "30"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U82", "Parent" : "30"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U83", "Parent" : "30"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U84", "Parent" : "30"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U85", "Parent" : "30"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U86", "Parent" : "30"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U87", "Parent" : "30"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_xy_fu_678.surfDetector_mux_eOg_U88", "Parent" : "30"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805", "Parent" : "7", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73"],
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
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1484", "Parent" : "54",
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1490", "Parent" : "54",
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
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1496", "Parent" : "54",
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
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.grp_p_hls_fptosi_float_i_fu_1502", "Parent" : "54",
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
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_faddbkb_U11", "Parent" : "54"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_fmulcud_U12", "Parent" : "54"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_sitodEe_U13", "Parent" : "54"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U14", "Parent" : "54"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U15", "Parent" : "54"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U16", "Parent" : "54"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U17", "Parent" : "54"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U18", "Parent" : "54"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U19", "Parent" : "54"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U20", "Parent" : "54"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U21", "Parent" : "54"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U22", "Parent" : "54"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U23", "Parent" : "54"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U24", "Parent" : "54"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_805.surfDetector_mux_eOg_U25", "Parent" : "54"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surfDetector_fmulcud_U134", "Parent" : "7"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surfDetector_fptrBew_U135", "Parent" : "7"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surfDetector_fpexCeG_U136", "Parent" : "7"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surfDetector_dsubDeQ_U137", "Parent" : "7"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surfDetector_dmulEe0_U138", "Parent" : "7"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.findCharacteristicPo_U0", "Parent" : "6", "Child" : ["80", "81", "82"],
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
		"StartSource" : "7",
		"StartFifo" : "start_for_findChaIfE_U",
		"Port" : [
			{"Name" : "det0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "det0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "det1_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "85",
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
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.findCharacteristicPo_U0.N1_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.findCharacteristicPo_U0.surfDetector_fcmpGfk_U148", "Parent" : "79"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.findCharacteristicPo_U0.surfDetector_mul_Hfu_U149", "Parent" : "79"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.dets_0_V_U", "Parent" : "6"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.dets_1_V_U", "Parent" : "6"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.dets_2_V_U", "Parent" : "6"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.start_for_findChaIfE_U", "Parent" : "6"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HessianJfO_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	surfDetector {
		video_in_V_data_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_keep_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_strb_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_user_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_last_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_id_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_dest_V {Type I LastRead 2 FirstWrite -1}
		keyPoints_V {Type O LastRead 63 FirstWrite 62}
		kpn {Type O LastRead 3 FirstWrite 2}
		pix_val {Type O LastRead -1 FirstWrite -1}
		buf_1 {Type IO LastRead -1 FirstWrite -1}
		buf_0 {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
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
	integralImg {
		video_in_V_data_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_keep_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_strb_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_user_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_last_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_id_V {Type I LastRead 2 FirstWrite -1}
		video_in_V_dest_V {Type I LastRead 2 FirstWrite -1}
		pix_val {Type O LastRead -1 FirstWrite -1}
		buf_1 {Type IO LastRead -1 FirstWrite -1}
		buf_0 {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type O LastRead -1 FirstWrite 5}}
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
	{"Name" : "Latency", "Min" : "1926811", "Max" : "141533101"}
	, {"Name" : "Interval", "Min" : "1926808", "Max" : "141533098"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	video_in_V_data_V { axis {  { video_in_TDATA in_data 0 24 } } }
	video_in_V_keep_V { axis {  { video_in_TKEEP in_data 0 3 } } }
	video_in_V_strb_V { axis {  { video_in_TSTRB in_data 0 3 } } }
	video_in_V_user_V { axis {  { video_in_TUSER in_data 0 1 } } }
	video_in_V_last_V { axis {  { video_in_TLAST in_data 0 1 } } }
	video_in_V_id_V { axis {  { video_in_TID in_data 0 1 } } }
	video_in_V_dest_V { axis {  { video_in_TDEST in_data 0 1 }  { video_in_TVALID in_vld 0 1 }  { video_in_TREADY in_acc 1 1 } } }
	keyPoints_V { m_axi {  { m_axi_keyPoints_V_AWVALID VALID 1 1 }  { m_axi_keyPoints_V_AWREADY READY 0 1 }  { m_axi_keyPoints_V_AWADDR ADDR 1 32 }  { m_axi_keyPoints_V_AWID ID 1 1 }  { m_axi_keyPoints_V_AWLEN LEN 1 8 }  { m_axi_keyPoints_V_AWSIZE SIZE 1 3 }  { m_axi_keyPoints_V_AWBURST BURST 1 2 }  { m_axi_keyPoints_V_AWLOCK LOCK 1 2 }  { m_axi_keyPoints_V_AWCACHE CACHE 1 4 }  { m_axi_keyPoints_V_AWPROT PROT 1 3 }  { m_axi_keyPoints_V_AWQOS QOS 1 4 }  { m_axi_keyPoints_V_AWREGION REGION 1 4 }  { m_axi_keyPoints_V_AWUSER USER 1 1 }  { m_axi_keyPoints_V_WVALID VALID 1 1 }  { m_axi_keyPoints_V_WREADY READY 0 1 }  { m_axi_keyPoints_V_WDATA DATA 1 32 }  { m_axi_keyPoints_V_WSTRB STRB 1 4 }  { m_axi_keyPoints_V_WLAST LAST 1 1 }  { m_axi_keyPoints_V_WID ID 1 1 }  { m_axi_keyPoints_V_WUSER USER 1 1 }  { m_axi_keyPoints_V_ARVALID VALID 1 1 }  { m_axi_keyPoints_V_ARREADY READY 0 1 }  { m_axi_keyPoints_V_ARADDR ADDR 1 32 }  { m_axi_keyPoints_V_ARID ID 1 1 }  { m_axi_keyPoints_V_ARLEN LEN 1 8 }  { m_axi_keyPoints_V_ARSIZE SIZE 1 3 }  { m_axi_keyPoints_V_ARBURST BURST 1 2 }  { m_axi_keyPoints_V_ARLOCK LOCK 1 2 }  { m_axi_keyPoints_V_ARCACHE CACHE 1 4 }  { m_axi_keyPoints_V_ARPROT PROT 1 3 }  { m_axi_keyPoints_V_ARQOS QOS 1 4 }  { m_axi_keyPoints_V_ARREGION REGION 1 4 }  { m_axi_keyPoints_V_ARUSER USER 1 1 }  { m_axi_keyPoints_V_RVALID VALID 0 1 }  { m_axi_keyPoints_V_RREADY READY 1 1 }  { m_axi_keyPoints_V_RDATA DATA 0 32 }  { m_axi_keyPoints_V_RLAST LAST 0 1 }  { m_axi_keyPoints_V_RID ID 0 1 }  { m_axi_keyPoints_V_RUSER USER 0 1 }  { m_axi_keyPoints_V_RRESP RESP 0 2 }  { m_axi_keyPoints_V_BVALID VALID 0 1 }  { m_axi_keyPoints_V_BREADY READY 1 1 }  { m_axi_keyPoints_V_BRESP RESP 0 2 }  { m_axi_keyPoints_V_BID ID 0 1 }  { m_axi_keyPoints_V_BUSER USER 0 1 } } }
	kpn { m_axi {  { m_axi_kpn_AWVALID VALID 1 1 }  { m_axi_kpn_AWREADY READY 0 1 }  { m_axi_kpn_AWADDR ADDR 1 32 }  { m_axi_kpn_AWID ID 1 1 }  { m_axi_kpn_AWLEN LEN 1 8 }  { m_axi_kpn_AWSIZE SIZE 1 3 }  { m_axi_kpn_AWBURST BURST 1 2 }  { m_axi_kpn_AWLOCK LOCK 1 2 }  { m_axi_kpn_AWCACHE CACHE 1 4 }  { m_axi_kpn_AWPROT PROT 1 3 }  { m_axi_kpn_AWQOS QOS 1 4 }  { m_axi_kpn_AWREGION REGION 1 4 }  { m_axi_kpn_AWUSER USER 1 1 }  { m_axi_kpn_WVALID VALID 1 1 }  { m_axi_kpn_WREADY READY 0 1 }  { m_axi_kpn_WDATA DATA 1 32 }  { m_axi_kpn_WSTRB STRB 1 4 }  { m_axi_kpn_WLAST LAST 1 1 }  { m_axi_kpn_WID ID 1 1 }  { m_axi_kpn_WUSER USER 1 1 }  { m_axi_kpn_ARVALID VALID 1 1 }  { m_axi_kpn_ARREADY READY 0 1 }  { m_axi_kpn_ARADDR ADDR 1 32 }  { m_axi_kpn_ARID ID 1 1 }  { m_axi_kpn_ARLEN LEN 1 8 }  { m_axi_kpn_ARSIZE SIZE 1 3 }  { m_axi_kpn_ARBURST BURST 1 2 }  { m_axi_kpn_ARLOCK LOCK 1 2 }  { m_axi_kpn_ARCACHE CACHE 1 4 }  { m_axi_kpn_ARPROT PROT 1 3 }  { m_axi_kpn_ARQOS QOS 1 4 }  { m_axi_kpn_ARREGION REGION 1 4 }  { m_axi_kpn_ARUSER USER 1 1 }  { m_axi_kpn_RVALID VALID 0 1 }  { m_axi_kpn_RREADY READY 1 1 }  { m_axi_kpn_RDATA DATA 0 32 }  { m_axi_kpn_RLAST LAST 0 1 }  { m_axi_kpn_RID ID 0 1 }  { m_axi_kpn_RUSER USER 0 1 }  { m_axi_kpn_RRESP RESP 0 2 }  { m_axi_kpn_BVALID VALID 0 1 }  { m_axi_kpn_BREADY READY 1 1 }  { m_axi_kpn_BRESP RESP 0 2 }  { m_axi_kpn_BID ID 0 1 }  { m_axi_kpn_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ keyPoints_V { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ kpn { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ keyPoints_V 1 }
	{ kpn 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ keyPoints_V 1 }
	{ kpn 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
