#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("m_axi_keyPoints_V_AWVALID", 1, hls_out, 7, "m_axi", "VALID", 1),
	Port_Property("m_axi_keyPoints_V_AWREADY", 1, hls_in, 7, "m_axi", "READY", 1),
	Port_Property("m_axi_keyPoints_V_AWADDR", 32, hls_out, 7, "m_axi", "ADDR", 1),
	Port_Property("m_axi_keyPoints_V_AWID", 1, hls_out, 7, "m_axi", "ID", 1),
	Port_Property("m_axi_keyPoints_V_AWLEN", 8, hls_out, 7, "m_axi", "LEN", 1),
	Port_Property("m_axi_keyPoints_V_AWSIZE", 3, hls_out, 7, "m_axi", "SIZE", 1),
	Port_Property("m_axi_keyPoints_V_AWBURST", 2, hls_out, 7, "m_axi", "BURST", 1),
	Port_Property("m_axi_keyPoints_V_AWLOCK", 2, hls_out, 7, "m_axi", "LOCK", 1),
	Port_Property("m_axi_keyPoints_V_AWCACHE", 4, hls_out, 7, "m_axi", "CACHE", 1),
	Port_Property("m_axi_keyPoints_V_AWPROT", 3, hls_out, 7, "m_axi", "PROT", 1),
	Port_Property("m_axi_keyPoints_V_AWQOS", 4, hls_out, 7, "m_axi", "QOS", 1),
	Port_Property("m_axi_keyPoints_V_AWREGION", 4, hls_out, 7, "m_axi", "REGION", 1),
	Port_Property("m_axi_keyPoints_V_AWUSER", 1, hls_out, 7, "m_axi", "USER", 1),
	Port_Property("m_axi_keyPoints_V_WVALID", 1, hls_out, 7, "m_axi", "VALID", 1),
	Port_Property("m_axi_keyPoints_V_WREADY", 1, hls_in, 7, "m_axi", "READY", 1),
	Port_Property("m_axi_keyPoints_V_WDATA", 32, hls_out, 7, "m_axi", "DATA", 1),
	Port_Property("m_axi_keyPoints_V_WSTRB", 4, hls_out, 7, "m_axi", "STRB", 1),
	Port_Property("m_axi_keyPoints_V_WLAST", 1, hls_out, 7, "m_axi", "LAST", 1),
	Port_Property("m_axi_keyPoints_V_WID", 1, hls_out, 7, "m_axi", "ID", 1),
	Port_Property("m_axi_keyPoints_V_WUSER", 1, hls_out, 7, "m_axi", "USER", 1),
	Port_Property("m_axi_keyPoints_V_ARVALID", 1, hls_out, 7, "m_axi", "VALID", 1),
	Port_Property("m_axi_keyPoints_V_ARREADY", 1, hls_in, 7, "m_axi", "READY", 1),
	Port_Property("m_axi_keyPoints_V_ARADDR", 32, hls_out, 7, "m_axi", "ADDR", 1),
	Port_Property("m_axi_keyPoints_V_ARID", 1, hls_out, 7, "m_axi", "ID", 1),
	Port_Property("m_axi_keyPoints_V_ARLEN", 8, hls_out, 7, "m_axi", "LEN", 1),
	Port_Property("m_axi_keyPoints_V_ARSIZE", 3, hls_out, 7, "m_axi", "SIZE", 1),
	Port_Property("m_axi_keyPoints_V_ARBURST", 2, hls_out, 7, "m_axi", "BURST", 1),
	Port_Property("m_axi_keyPoints_V_ARLOCK", 2, hls_out, 7, "m_axi", "LOCK", 1),
	Port_Property("m_axi_keyPoints_V_ARCACHE", 4, hls_out, 7, "m_axi", "CACHE", 1),
	Port_Property("m_axi_keyPoints_V_ARPROT", 3, hls_out, 7, "m_axi", "PROT", 1),
	Port_Property("m_axi_keyPoints_V_ARQOS", 4, hls_out, 7, "m_axi", "QOS", 1),
	Port_Property("m_axi_keyPoints_V_ARREGION", 4, hls_out, 7, "m_axi", "REGION", 1),
	Port_Property("m_axi_keyPoints_V_ARUSER", 1, hls_out, 7, "m_axi", "USER", 1),
	Port_Property("m_axi_keyPoints_V_RVALID", 1, hls_in, 7, "m_axi", "VALID", 1),
	Port_Property("m_axi_keyPoints_V_RREADY", 1, hls_out, 7, "m_axi", "READY", 1),
	Port_Property("m_axi_keyPoints_V_RDATA", 32, hls_in, 7, "m_axi", "DATA", 1),
	Port_Property("m_axi_keyPoints_V_RLAST", 1, hls_in, 7, "m_axi", "LAST", 1),
	Port_Property("m_axi_keyPoints_V_RID", 1, hls_in, 7, "m_axi", "ID", 1),
	Port_Property("m_axi_keyPoints_V_RUSER", 1, hls_in, 7, "m_axi", "USER", 1),
	Port_Property("m_axi_keyPoints_V_RRESP", 2, hls_in, 7, "m_axi", "RESP", 1),
	Port_Property("m_axi_keyPoints_V_BVALID", 1, hls_in, 7, "m_axi", "VALID", 1),
	Port_Property("m_axi_keyPoints_V_BREADY", 1, hls_out, 7, "m_axi", "READY", 1),
	Port_Property("m_axi_keyPoints_V_BRESP", 2, hls_in, 7, "m_axi", "RESP", 1),
	Port_Property("m_axi_keyPoints_V_BID", 1, hls_in, 7, "m_axi", "ID", 1),
	Port_Property("m_axi_keyPoints_V_BUSER", 1, hls_in, 7, "m_axi", "USER", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("m_axi_kpn_AWVALID", 1, hls_out, 8, "m_axi", "VALID", 1),
	Port_Property("m_axi_kpn_AWREADY", 1, hls_in, 8, "m_axi", "READY", 1),
	Port_Property("m_axi_kpn_AWADDR", 32, hls_out, 8, "m_axi", "ADDR", 1),
	Port_Property("m_axi_kpn_AWID", 1, hls_out, 8, "m_axi", "ID", 1),
	Port_Property("m_axi_kpn_AWLEN", 8, hls_out, 8, "m_axi", "LEN", 1),
	Port_Property("m_axi_kpn_AWSIZE", 3, hls_out, 8, "m_axi", "SIZE", 1),
	Port_Property("m_axi_kpn_AWBURST", 2, hls_out, 8, "m_axi", "BURST", 1),
	Port_Property("m_axi_kpn_AWLOCK", 2, hls_out, 8, "m_axi", "LOCK", 1),
	Port_Property("m_axi_kpn_AWCACHE", 4, hls_out, 8, "m_axi", "CACHE", 1),
	Port_Property("m_axi_kpn_AWPROT", 3, hls_out, 8, "m_axi", "PROT", 1),
	Port_Property("m_axi_kpn_AWQOS", 4, hls_out, 8, "m_axi", "QOS", 1),
	Port_Property("m_axi_kpn_AWREGION", 4, hls_out, 8, "m_axi", "REGION", 1),
	Port_Property("m_axi_kpn_AWUSER", 1, hls_out, 8, "m_axi", "USER", 1),
	Port_Property("m_axi_kpn_WVALID", 1, hls_out, 8, "m_axi", "VALID", 1),
	Port_Property("m_axi_kpn_WREADY", 1, hls_in, 8, "m_axi", "READY", 1),
	Port_Property("m_axi_kpn_WDATA", 32, hls_out, 8, "m_axi", "DATA", 1),
	Port_Property("m_axi_kpn_WSTRB", 4, hls_out, 8, "m_axi", "STRB", 1),
	Port_Property("m_axi_kpn_WLAST", 1, hls_out, 8, "m_axi", "LAST", 1),
	Port_Property("m_axi_kpn_WID", 1, hls_out, 8, "m_axi", "ID", 1),
	Port_Property("m_axi_kpn_WUSER", 1, hls_out, 8, "m_axi", "USER", 1),
	Port_Property("m_axi_kpn_ARVALID", 1, hls_out, 8, "m_axi", "VALID", 1),
	Port_Property("m_axi_kpn_ARREADY", 1, hls_in, 8, "m_axi", "READY", 1),
	Port_Property("m_axi_kpn_ARADDR", 32, hls_out, 8, "m_axi", "ADDR", 1),
	Port_Property("m_axi_kpn_ARID", 1, hls_out, 8, "m_axi", "ID", 1),
	Port_Property("m_axi_kpn_ARLEN", 8, hls_out, 8, "m_axi", "LEN", 1),
	Port_Property("m_axi_kpn_ARSIZE", 3, hls_out, 8, "m_axi", "SIZE", 1),
	Port_Property("m_axi_kpn_ARBURST", 2, hls_out, 8, "m_axi", "BURST", 1),
	Port_Property("m_axi_kpn_ARLOCK", 2, hls_out, 8, "m_axi", "LOCK", 1),
	Port_Property("m_axi_kpn_ARCACHE", 4, hls_out, 8, "m_axi", "CACHE", 1),
	Port_Property("m_axi_kpn_ARPROT", 3, hls_out, 8, "m_axi", "PROT", 1),
	Port_Property("m_axi_kpn_ARQOS", 4, hls_out, 8, "m_axi", "QOS", 1),
	Port_Property("m_axi_kpn_ARREGION", 4, hls_out, 8, "m_axi", "REGION", 1),
	Port_Property("m_axi_kpn_ARUSER", 1, hls_out, 8, "m_axi", "USER", 1),
	Port_Property("m_axi_kpn_RVALID", 1, hls_in, 8, "m_axi", "VALID", 1),
	Port_Property("m_axi_kpn_RREADY", 1, hls_out, 8, "m_axi", "READY", 1),
	Port_Property("m_axi_kpn_RDATA", 32, hls_in, 8, "m_axi", "DATA", 1),
	Port_Property("m_axi_kpn_RLAST", 1, hls_in, 8, "m_axi", "LAST", 1),
	Port_Property("m_axi_kpn_RID", 1, hls_in, 8, "m_axi", "ID", 1),
	Port_Property("m_axi_kpn_RUSER", 1, hls_in, 8, "m_axi", "USER", 1),
	Port_Property("m_axi_kpn_RRESP", 2, hls_in, 8, "m_axi", "RESP", 1),
	Port_Property("m_axi_kpn_BVALID", 1, hls_in, 8, "m_axi", "VALID", 1),
	Port_Property("m_axi_kpn_BREADY", 1, hls_out, 8, "m_axi", "READY", 1),
	Port_Property("m_axi_kpn_BRESP", 2, hls_in, 8, "m_axi", "RESP", 1),
	Port_Property("m_axi_kpn_BID", 1, hls_in, 8, "m_axi", "ID", 1),
	Port_Property("m_axi_kpn_BUSER", 1, hls_in, 8, "m_axi", "USER", 1),
	Port_Property("video_in_TDATA", 24, hls_in, 0, "axis", "in_data", 1),
	Port_Property("video_in_TKEEP", 3, hls_in, 1, "axis", "in_data", 1),
	Port_Property("video_in_TSTRB", 3, hls_in, 2, "axis", "in_data", 1),
	Port_Property("video_in_TUSER", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("video_in_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("video_in_TID", 1, hls_in, 5, "axis", "in_data", 1),
	Port_Property("video_in_TDEST", 1, hls_in, 6, "axis", "in_data", 1),
	Port_Property("video_in_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("video_in_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "surfDetector";
