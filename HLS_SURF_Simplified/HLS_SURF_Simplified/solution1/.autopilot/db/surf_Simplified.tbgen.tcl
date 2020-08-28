set moduleName surf_Simplified
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
set C_modelName {surf_Simplified}
set C_modelType { void 0 }
set C_modelArgList {
	{ keyPoints int 32 regular {axi_master 1}  }
	{ pointNumber int 32 regular {axi_master 1}  }
	{ video_in_V_data_V int 24 regular {axi_s 0 volatile  { video_in Data } }  }
	{ video_in_V_keep_V int 3 regular {axi_s 0 volatile  { video_in Keep } }  }
	{ video_in_V_strb_V int 3 regular {axi_s 0 volatile  { video_in Strb } }  }
	{ video_in_V_user_V int 1 regular {axi_s 0 volatile  { video_in User } }  }
	{ video_in_V_last_V int 1 regular {axi_s 0 volatile  { video_in Last } }  }
	{ video_in_V_id_V int 1 regular {axi_s 0 volatile  { video_in ID } }  }
	{ video_in_V_dest_V int 1 regular {axi_s 0 volatile  { video_in Dest } }  }
	{ keyPoints_V int 32 regular {axi_slave 0}  }
	{ kpn int 32 regular {axi_slave 0}  }
	{ threshold int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "keyPoints", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "keyPoints.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "keyPoints_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}]} , 
 	{ "Name" : "pointNumber", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kpn","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "kpn","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "video_in.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "video_in.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "video_in.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "video_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "video_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "keyPoints_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "kpn", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "threshold", "interface" : "axi_slave", "bundle":"threshold","type":"ap_stable","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "threshold","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 136
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_threshold_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_threshold_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_threshold_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_threshold_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_threshold_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_threshold_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_threshold_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_threshold_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_threshold_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_threshold_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_threshold_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_threshold_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_threshold_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_threshold_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_threshold_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_threshold_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_threshold_BRESP sc_out sc_lv 2 signal -1 } 
	{ m_axi_keyPoints_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_keyPoints_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_keyPoints_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_keyPoints_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_keyPoints_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_keyPoints_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_keyPoints_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_keyPoints_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_keyPoints_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_pointNumber_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_pointNumber_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_pointNumber_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_pointNumber_AWLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_pointNumber_ARLEN sc_out sc_lv 8 signal 1 } 
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
	{ video_in_TDATA sc_in sc_lv 24 signal 2 } 
	{ video_in_TKEEP sc_in sc_lv 3 signal 3 } 
	{ video_in_TSTRB sc_in sc_lv 3 signal 4 } 
	{ video_in_TUSER sc_in sc_lv 1 signal 5 } 
	{ video_in_TLAST sc_in sc_lv 1 signal 6 } 
	{ video_in_TID sc_in sc_lv 1 signal 7 } 
	{ video_in_TDEST sc_in sc_lv 1 signal 8 } 
	{ video_in_TVALID sc_in sc_logic 1 invld 8 } 
	{ video_in_TREADY sc_out sc_logic 1 inacc 8 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"surf_Simplified","role":"start","value":"0","valid_bit":"0"},{"name":"surf_Simplified","role":"continue","value":"0","valid_bit":"4"},{"name":"surf_Simplified","role":"auto_start","value":"0","valid_bit":"7"},{"name":"keyPoints_V","role":"data","value":"16"},{"name":"kpn","role":"data","value":"24"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"surf_Simplified","role":"start","value":"0","valid_bit":"0"},{"name":"surf_Simplified","role":"done","value":"0","valid_bit":"1"},{"name":"surf_Simplified","role":"idle","value":"0","valid_bit":"2"},{"name":"surf_Simplified","role":"ready","value":"0","valid_bit":"3"},{"name":"surf_Simplified","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } },
	{ "name": "s_axi_threshold_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "threshold", "role": "AWADDR" },"address":[{"name":"threshold","role":"data","value":"16"}] },
	{ "name": "s_axi_threshold_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "AWVALID" } },
	{ "name": "s_axi_threshold_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "AWREADY" } },
	{ "name": "s_axi_threshold_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "WVALID" } },
	{ "name": "s_axi_threshold_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "WREADY" } },
	{ "name": "s_axi_threshold_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold", "role": "WDATA" } },
	{ "name": "s_axi_threshold_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "threshold", "role": "WSTRB" } },
	{ "name": "s_axi_threshold_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "threshold", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_threshold_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "ARVALID" } },
	{ "name": "s_axi_threshold_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "ARREADY" } },
	{ "name": "s_axi_threshold_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "RVALID" } },
	{ "name": "s_axi_threshold_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "RREADY" } },
	{ "name": "s_axi_threshold_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "threshold", "role": "RDATA" } },
	{ "name": "s_axi_threshold_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "threshold", "role": "RRESP" } },
	{ "name": "s_axi_threshold_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "BVALID" } },
	{ "name": "s_axi_threshold_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold", "role": "BREADY" } },
	{ "name": "s_axi_threshold_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "threshold", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_keyPoints_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWVALID" }} , 
 	{ "name": "m_axi_keyPoints_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWREADY" }} , 
 	{ "name": "m_axi_keyPoints_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWADDR" }} , 
 	{ "name": "m_axi_keyPoints_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWID" }} , 
 	{ "name": "m_axi_keyPoints_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWLEN" }} , 
 	{ "name": "m_axi_keyPoints_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_keyPoints_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWBURST" }} , 
 	{ "name": "m_axi_keyPoints_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_keyPoints_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_keyPoints_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWPROT" }} , 
 	{ "name": "m_axi_keyPoints_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWQOS" }} , 
 	{ "name": "m_axi_keyPoints_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWREGION" }} , 
 	{ "name": "m_axi_keyPoints_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "AWUSER" }} , 
 	{ "name": "m_axi_keyPoints_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "WVALID" }} , 
 	{ "name": "m_axi_keyPoints_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "WREADY" }} , 
 	{ "name": "m_axi_keyPoints_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints", "role": "WDATA" }} , 
 	{ "name": "m_axi_keyPoints_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints", "role": "WSTRB" }} , 
 	{ "name": "m_axi_keyPoints_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "WLAST" }} , 
 	{ "name": "m_axi_keyPoints_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "WID" }} , 
 	{ "name": "m_axi_keyPoints_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "WUSER" }} , 
 	{ "name": "m_axi_keyPoints_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARVALID" }} , 
 	{ "name": "m_axi_keyPoints_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARREADY" }} , 
 	{ "name": "m_axi_keyPoints_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARADDR" }} , 
 	{ "name": "m_axi_keyPoints_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARID" }} , 
 	{ "name": "m_axi_keyPoints_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARLEN" }} , 
 	{ "name": "m_axi_keyPoints_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_keyPoints_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARBURST" }} , 
 	{ "name": "m_axi_keyPoints_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_keyPoints_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_keyPoints_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARPROT" }} , 
 	{ "name": "m_axi_keyPoints_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARQOS" }} , 
 	{ "name": "m_axi_keyPoints_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARREGION" }} , 
 	{ "name": "m_axi_keyPoints_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "ARUSER" }} , 
 	{ "name": "m_axi_keyPoints_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "RVALID" }} , 
 	{ "name": "m_axi_keyPoints_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "RREADY" }} , 
 	{ "name": "m_axi_keyPoints_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "keyPoints", "role": "RDATA" }} , 
 	{ "name": "m_axi_keyPoints_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "RLAST" }} , 
 	{ "name": "m_axi_keyPoints_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "RID" }} , 
 	{ "name": "m_axi_keyPoints_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "RUSER" }} , 
 	{ "name": "m_axi_keyPoints_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints", "role": "RRESP" }} , 
 	{ "name": "m_axi_keyPoints_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "BVALID" }} , 
 	{ "name": "m_axi_keyPoints_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "BREADY" }} , 
 	{ "name": "m_axi_keyPoints_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "keyPoints", "role": "BRESP" }} , 
 	{ "name": "m_axi_keyPoints_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "BID" }} , 
 	{ "name": "m_axi_keyPoints_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "keyPoints", "role": "BUSER" }} , 
 	{ "name": "m_axi_pointNumber_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWVALID" }} , 
 	{ "name": "m_axi_pointNumber_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWREADY" }} , 
 	{ "name": "m_axi_pointNumber_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWADDR" }} , 
 	{ "name": "m_axi_pointNumber_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWID" }} , 
 	{ "name": "m_axi_pointNumber_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pointNumber", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_pointNumber_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pointNumber", "role": "ARLEN" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "10", "11", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
		"CDFG" : "surf_Simplified",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5296622", "EstimateLatencyMax" : "145384313",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "surf_Simplified_entr_U0", "ReadyCount" : "surf_Simplified_entr_U0_ap_ready_count"},
			{"ID" : "6", "Name" : "AXIvideo2Mat_U0", "ReadyCount" : "AXIvideo2Mat_U0_ap_ready_count"},
			{"ID" : "10", "Name" : "Block_codeRepl47_pro_U0", "ReadyCount" : "Block_codeRepl47_pro_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "11", "Name" : "HessianDetector_U0"}],
		"Port" : [
			{"Name" : "keyPoints", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "keyPoints_V"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "pointNumber"}]},
			{"Name" : "video_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "video_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "video_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "video_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "video_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "video_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "video_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "keyPoints_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "kpn", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "pix_val", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "integralImg_U0", "Port" : "pix_val"}]},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "integralImg_U0", "Port" : "buf_1"}]},
			{"Name" : "buf_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "integralImg_U0", "Port" : "buf_0"}]},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "integralImg_U0", "Port" : "sum_V"},
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "sum_V"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "MSB_V"}]},
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "sumBuf"}]},
			{"Name" : "sizes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "sizes"}]},
			{"Name" : "Dx_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dx_V_0"}]},
			{"Name" : "Dx_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dx_V_1"}]},
			{"Name" : "Dx_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dx_V_2"}]},
			{"Name" : "Dx_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dx_V_3"}]},
			{"Name" : "Dx_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dx_V_4"}]},
			{"Name" : "Dy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dy_V_0"}]},
			{"Name" : "Dy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dy_V_1"}]},
			{"Name" : "Dy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dy_V_2"}]},
			{"Name" : "Dy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dy_V_3"}]},
			{"Name" : "Dy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dy_V_4"}]},
			{"Name" : "Dxy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dxy_V_2"}]},
			{"Name" : "Dxy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dxy_V_3"}]},
			{"Name" : "Dxy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dxy_V_0"}]},
			{"Name" : "Dxy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dxy_V_1"}]},
			{"Name" : "Dxy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "Dxy_V_4"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "bRow_V_0"}]},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "bRow_V_1"}]},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "bRow_V_2"}]},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "MSB_V_1"}]},
			{"Name" : "N1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "N1_V"}]},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "HessianDetector_U0", "Port" : "tmpPointNum"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_threshold_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_keyPoints_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_pointNumber_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.surf_Simplified_entr_U0", "Parent" : "0",
		"CDFG" : "surf_Simplified_entr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "keyPoints_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "kpn", "Type" : "None", "Direction" : "I"},
			{"Name" : "keyPoints_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kpn_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "kpn_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "483003", "EstimateLatencyMax" : "483003",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "video_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.integralImg_U0", "Parent" : "0", "Child" : ["8", "9"],
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
		"StartSource" : "6",
		"StartFifo" : "start_for_integrayd2_U",
		"Port" : [
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pix_val", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.integralImg_U0.buf_1_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.integralImg_U0.buf_0_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_codeRepl47_pro_U0", "Parent" : "0",
		"CDFG" : "Block_codeRepl47_pro",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "threshold", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "this_assign_1_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "12", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "this_assign_1_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0", "Parent" : "0", "Child" : ["12", "36", "39", "40", "41", "42", "43", "44", "45"],
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
		"StartSource" : "5",
		"StartFifo" : "start_for_HessianxdS_U",
		"InputProcess" : [
			{"ID" : "12", "Name" : "calcLayerDetAndTrace_U0"}],
		"OutputProcess" : [
			{"ID" : "36", "Name" : "findCharacteristicPo_U0"}],
		"Port" : [
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "keyPoints_V"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "46",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "keyPoints_V_offset"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "pointNumber"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "47",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "pointNumber_offset"}]},
			{"Name" : "this_assign_1_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "52",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "this_assign_1_reload"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "MSB_V"}]},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "51",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sum_V"}]},
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sumBuf"}]},
			{"Name" : "sizes", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "sizes"}]},
			{"Name" : "Dx_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_0"}]},
			{"Name" : "Dx_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_1"}]},
			{"Name" : "Dx_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_2"}]},
			{"Name" : "Dx_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_3"}]},
			{"Name" : "Dx_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dx_V_4"}]},
			{"Name" : "Dy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_0"}]},
			{"Name" : "Dy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_1"}]},
			{"Name" : "Dy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_2"}]},
			{"Name" : "Dy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_3"}]},
			{"Name" : "Dy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dy_V_4"}]},
			{"Name" : "Dxy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_2"}]},
			{"Name" : "Dxy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_3"}]},
			{"Name" : "Dxy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_0"}]},
			{"Name" : "Dxy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_1"}]},
			{"Name" : "Dxy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "calcLayerDetAndTrace_U0", "Port" : "Dxy_V_4"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_0"}]},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_1"}]},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "bRow_V_2"}]},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "MSB_V_1"}]},
			{"Name" : "N1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "N1_V"}]},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "findCharacteristicPo_U0", "Port" : "tmpPointNum"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0", "Parent" : "11", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "33", "34", "35"],
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
			{"Name" : "det0_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "det0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V_V3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "det1_V_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V_V6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "det2_V_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "this_assign_1_reload", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "this_assign_1_reload_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "this_assign_1_reload_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "this_assign_1_reload_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "MSB_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "sum_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sumBuf", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "sumBuf"}]},
			{"Name" : "sizes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dx_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_0_V"}]},
			{"Name" : "Dx_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_1_V"}]},
			{"Name" : "Dx_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_2_V"}]},
			{"Name" : "Dx_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_3_V"}]},
			{"Name" : "Dx_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_4_V"}]},
			{"Name" : "Dy_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_0_V"}]},
			{"Name" : "Dy_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_1_V"}]},
			{"Name" : "Dy_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_2_V"}]},
			{"Name" : "Dy_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_3_V"}]},
			{"Name" : "Dy_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_calcHaarPattern_x_y_fu_466", "Port" : "box_4_V"}]},
			{"Name" : "Dxy_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dxy_V_4", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sumBuf_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.sizes_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dx_V_0_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dx_V_1_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dx_V_2_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dx_V_3_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dx_V_4_U", "Parent" : "12"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dy_V_0_U", "Parent" : "12"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dy_V_1_U", "Parent" : "12"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dy_V_2_U", "Parent" : "12"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dy_V_3_U", "Parent" : "12"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dy_V_4_U", "Parent" : "12"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dxy_V_2_U", "Parent" : "12"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dxy_V_3_U", "Parent" : "12"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dxy_V_0_U", "Parent" : "12"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dxy_V_1_U", "Parent" : "12"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.Dxy_V_4_U", "Parent" : "12"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_466", "Parent" : "12", "Child" : ["31", "32"],
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
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_466.surf_Simplified_mbkb_U22", "Parent" : "30"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.grp_calcHaarPattern_x_y_fu_466.surf_Simplified_mbkb_U23", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surf_Simplified_mtde_U35", "Parent" : "12"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surf_Simplified_mbkb_U36", "Parent" : "12"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.calcLayerDetAndTrace_U0.surf_Simplified_mbkb_U37", "Parent" : "12"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.findCharacteristicPo_U0", "Parent" : "11", "Child" : ["37", "38"],
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
		"StartSource" : "12",
		"StartFifo" : "start_for_findChawdI_U",
		"Port" : [
			{"Name" : "det0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "det0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det1_V_V3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "det1_V_V3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "det2_V_V6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "det2_V_V6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hessianThreshold_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "hessianThreshold_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "keyPoints_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "keyPoints_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "keyPoints_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "pointNumber_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "pointNumber_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "pointNumber_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "pointNumber_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bRow_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bRow_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "MSB_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "N1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmpPointNum", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.findCharacteristicPo_U0.N1_V_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.findCharacteristicPo_U0.surf_Simplified_mvdy_U61", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.dets_0_V_V_U", "Parent" : "11"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.dets_1_V_V_U", "Parent" : "11"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.dets_2_V_V_U", "Parent" : "11"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.this_assign_1_reload_U", "Parent" : "11"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.keyPoints_V_offset_c_U", "Parent" : "11"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.pointNumber_offset_c_U", "Parent" : "11"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HessianDetector_U0.start_for_findChawdI_U", "Parent" : "11"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keyPoints_V_c_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kpn_c_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_data_stream_0_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_data_stream_1_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_data_stream_2_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.this_assign_1_loc_c_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HessianxdS_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_integrayd2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	surf_Simplified {
		keyPoints {Type O LastRead 38 FirstWrite 37}
		pointNumber {Type O LastRead 3 FirstWrite 2}
		video_in_V_data_V {Type I LastRead 6 FirstWrite -1}
		video_in_V_keep_V {Type I LastRead 6 FirstWrite -1}
		video_in_V_strb_V {Type I LastRead 6 FirstWrite -1}
		video_in_V_user_V {Type I LastRead 6 FirstWrite -1}
		video_in_V_last_V {Type I LastRead 6 FirstWrite -1}
		video_in_V_id_V {Type I LastRead 6 FirstWrite -1}
		video_in_V_dest_V {Type I LastRead 6 FirstWrite -1}
		keyPoints_V {Type I LastRead 3 FirstWrite -1}
		kpn {Type I LastRead 3 FirstWrite -1}
		threshold {Type I LastRead 3 FirstWrite -1}
		pix_val {Type O LastRead -1 FirstWrite -1}
		buf_1 {Type IO LastRead -1 FirstWrite -1}
		buf_0 {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		MSB_V {Type IO LastRead -1 FirstWrite -1}
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
	surf_Simplified_entr {
		keyPoints_V {Type I LastRead 0 FirstWrite -1}
		kpn {Type I LastRead 0 FirstWrite -1}
		keyPoints_V_out {Type O LastRead -1 FirstWrite 0}
		kpn_out {Type O LastRead -1 FirstWrite 0}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 6 FirstWrite -1}
		img_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_2_V {Type O LastRead -1 FirstWrite 5}}
	integralImg {
		img_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 2 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 2 FirstWrite -1}
		pix_val {Type O LastRead -1 FirstWrite -1}
		buf_1 {Type IO LastRead -1 FirstWrite -1}
		buf_0 {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type O LastRead -1 FirstWrite 5}}
	Block_codeRepl47_pro {
		threshold {Type I LastRead 0 FirstWrite -1}
		this_assign_1_out_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "5296622", "Max" : "145384313"}
	, {"Name" : "Interval", "Min" : "5296615", "Max" : "145384306"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	keyPoints { m_axi {  { m_axi_keyPoints_AWVALID VALID 1 1 }  { m_axi_keyPoints_AWREADY READY 0 1 }  { m_axi_keyPoints_AWADDR ADDR 1 32 }  { m_axi_keyPoints_AWID ID 1 1 }  { m_axi_keyPoints_AWLEN LEN 1 8 }  { m_axi_keyPoints_AWSIZE SIZE 1 3 }  { m_axi_keyPoints_AWBURST BURST 1 2 }  { m_axi_keyPoints_AWLOCK LOCK 1 2 }  { m_axi_keyPoints_AWCACHE CACHE 1 4 }  { m_axi_keyPoints_AWPROT PROT 1 3 }  { m_axi_keyPoints_AWQOS QOS 1 4 }  { m_axi_keyPoints_AWREGION REGION 1 4 }  { m_axi_keyPoints_AWUSER USER 1 1 }  { m_axi_keyPoints_WVALID VALID 1 1 }  { m_axi_keyPoints_WREADY READY 0 1 }  { m_axi_keyPoints_WDATA DATA 1 32 }  { m_axi_keyPoints_WSTRB STRB 1 4 }  { m_axi_keyPoints_WLAST LAST 1 1 }  { m_axi_keyPoints_WID ID 1 1 }  { m_axi_keyPoints_WUSER USER 1 1 }  { m_axi_keyPoints_ARVALID VALID 1 1 }  { m_axi_keyPoints_ARREADY READY 0 1 }  { m_axi_keyPoints_ARADDR ADDR 1 32 }  { m_axi_keyPoints_ARID ID 1 1 }  { m_axi_keyPoints_ARLEN LEN 1 8 }  { m_axi_keyPoints_ARSIZE SIZE 1 3 }  { m_axi_keyPoints_ARBURST BURST 1 2 }  { m_axi_keyPoints_ARLOCK LOCK 1 2 }  { m_axi_keyPoints_ARCACHE CACHE 1 4 }  { m_axi_keyPoints_ARPROT PROT 1 3 }  { m_axi_keyPoints_ARQOS QOS 1 4 }  { m_axi_keyPoints_ARREGION REGION 1 4 }  { m_axi_keyPoints_ARUSER USER 1 1 }  { m_axi_keyPoints_RVALID VALID 0 1 }  { m_axi_keyPoints_RREADY READY 1 1 }  { m_axi_keyPoints_RDATA DATA 0 32 }  { m_axi_keyPoints_RLAST LAST 0 1 }  { m_axi_keyPoints_RID ID 0 1 }  { m_axi_keyPoints_RUSER USER 0 1 }  { m_axi_keyPoints_RRESP RESP 0 2 }  { m_axi_keyPoints_BVALID VALID 0 1 }  { m_axi_keyPoints_BREADY READY 1 1 }  { m_axi_keyPoints_BRESP RESP 0 2 }  { m_axi_keyPoints_BID ID 0 1 }  { m_axi_keyPoints_BUSER USER 0 1 } } }
	pointNumber { m_axi {  { m_axi_pointNumber_AWVALID VALID 1 1 }  { m_axi_pointNumber_AWREADY READY 0 1 }  { m_axi_pointNumber_AWADDR ADDR 1 32 }  { m_axi_pointNumber_AWID ID 1 1 }  { m_axi_pointNumber_AWLEN LEN 1 8 }  { m_axi_pointNumber_AWSIZE SIZE 1 3 }  { m_axi_pointNumber_AWBURST BURST 1 2 }  { m_axi_pointNumber_AWLOCK LOCK 1 2 }  { m_axi_pointNumber_AWCACHE CACHE 1 4 }  { m_axi_pointNumber_AWPROT PROT 1 3 }  { m_axi_pointNumber_AWQOS QOS 1 4 }  { m_axi_pointNumber_AWREGION REGION 1 4 }  { m_axi_pointNumber_AWUSER USER 1 1 }  { m_axi_pointNumber_WVALID VALID 1 1 }  { m_axi_pointNumber_WREADY READY 0 1 }  { m_axi_pointNumber_WDATA DATA 1 32 }  { m_axi_pointNumber_WSTRB STRB 1 4 }  { m_axi_pointNumber_WLAST LAST 1 1 }  { m_axi_pointNumber_WID ID 1 1 }  { m_axi_pointNumber_WUSER USER 1 1 }  { m_axi_pointNumber_ARVALID VALID 1 1 }  { m_axi_pointNumber_ARREADY READY 0 1 }  { m_axi_pointNumber_ARADDR ADDR 1 32 }  { m_axi_pointNumber_ARID ID 1 1 }  { m_axi_pointNumber_ARLEN LEN 1 8 }  { m_axi_pointNumber_ARSIZE SIZE 1 3 }  { m_axi_pointNumber_ARBURST BURST 1 2 }  { m_axi_pointNumber_ARLOCK LOCK 1 2 }  { m_axi_pointNumber_ARCACHE CACHE 1 4 }  { m_axi_pointNumber_ARPROT PROT 1 3 }  { m_axi_pointNumber_ARQOS QOS 1 4 }  { m_axi_pointNumber_ARREGION REGION 1 4 }  { m_axi_pointNumber_ARUSER USER 1 1 }  { m_axi_pointNumber_RVALID VALID 0 1 }  { m_axi_pointNumber_RREADY READY 1 1 }  { m_axi_pointNumber_RDATA DATA 0 32 }  { m_axi_pointNumber_RLAST LAST 0 1 }  { m_axi_pointNumber_RID ID 0 1 }  { m_axi_pointNumber_RUSER USER 0 1 }  { m_axi_pointNumber_RRESP RESP 0 2 }  { m_axi_pointNumber_BVALID VALID 0 1 }  { m_axi_pointNumber_BREADY READY 1 1 }  { m_axi_pointNumber_BRESP RESP 0 2 }  { m_axi_pointNumber_BID ID 0 1 }  { m_axi_pointNumber_BUSER USER 0 1 } } }
	video_in_V_data_V { axis {  { video_in_TDATA in_data 0 24 } } }
	video_in_V_keep_V { axis {  { video_in_TKEEP in_data 0 3 } } }
	video_in_V_strb_V { axis {  { video_in_TSTRB in_data 0 3 } } }
	video_in_V_user_V { axis {  { video_in_TUSER in_data 0 1 } } }
	video_in_V_last_V { axis {  { video_in_TLAST in_data 0 1 } } }
	video_in_V_id_V { axis {  { video_in_TID in_data 0 1 } } }
	video_in_V_dest_V { axis {  { video_in_TDEST in_data 0 1 }  { video_in_TVALID in_vld 0 1 }  { video_in_TREADY in_acc 1 1 } } }
}

set busDeadlockParameterList { 
	{ keyPoints { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ pointNumber { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ keyPoints 1 }
	{ pointNumber 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ keyPoints 1 }
	{ pointNumber 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
