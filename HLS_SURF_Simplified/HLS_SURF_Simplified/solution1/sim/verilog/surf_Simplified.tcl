
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set keyPoints_V__kpn__return_group [add_wave_group keyPoints_V__kpn__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/interrupt -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_BRESP -into $keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_BREADY -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_BVALID -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_RRESP -into $keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_RDATA -into $keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_RREADY -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_RVALID -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_ARREADY -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_ARVALID -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_ARADDR -into $keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_WSTRB -into $keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_WDATA -into $keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_WREADY -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_WVALID -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_AWREADY -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_AWVALID -into $keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_AXILiteS_AWADDR -into $keyPoints_V__kpn__return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set video_in_group [add_wave_group video_in(axis) -into $cinputgroup]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TREADY -into $video_in_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TVALID -into $video_in_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TDEST -into $video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TID -into $video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TLAST -into $video_in_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TUSER -into $video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TSTRB -into $video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TKEEP -into $video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/video_in_TDATA -into $video_in_group -radix hex
set kpn_group [add_wave_group kpn(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $kpn_group]
set wdata_group [add_wave_group "Write Channel" -into $kpn_group]
set ctrl_group [add_wave_group "Handshakes" -into $kpn_group]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_BUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_BID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_BRESP -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_RRESP -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_RUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_RID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_RDATA -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARREGION -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARQOS -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARPROT -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARBURST -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARLEN -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARADDR -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_WUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_WID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_WSTRB -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_WDATA -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWREGION -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWQOS -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWPROT -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWBURST -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWLEN -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWADDR -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_pointNumber_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set keyPoints_group [add_wave_group keyPoints(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $keyPoints_group]
set wdata_group [add_wave_group "Write Channel" -into $keyPoints_group]
set ctrl_group [add_wave_group "Handshakes" -into $keyPoints_group]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_BUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_BID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_BRESP -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_RRESP -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_RUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_RID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_RDATA -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARREGION -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARQOS -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARPROT -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARBURST -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARLEN -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARADDR -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_WUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_WID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_WSTRB -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_WDATA -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWREGION -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWQOS -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWPROT -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWBURST -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWLEN -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWADDR -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/m_axi_keyPoints_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set threshold_group [add_wave_group threshold(axi_slave) -into $cinputgroup]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_BRESP -into $threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_BREADY -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_BVALID -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_RRESP -into $threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_RDATA -into $threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_RREADY -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_RVALID -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_ARREADY -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_ARVALID -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_ARADDR -into $threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_WSTRB -into $threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_WDATA -into $threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_WREADY -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_WVALID -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_AWREADY -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_AWVALID -into $threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/s_axi_threshold_AWADDR -into $threshold_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/ap_done -into $blocksiggroup
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/ap_idle -into $blocksiggroup
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/ap_ready -into $blocksiggroup
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_surf_Simplified_top/AESL_inst_surf_Simplified/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_surf_Simplified_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_surf_Simplified_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_surf_Simplified_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_surf_Simplified_top/LENGTH_video_in_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_surf_Simplified_top/LENGTH_video_in_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_surf_Simplified_top/LENGTH_video_in_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_surf_Simplified_top/LENGTH_video_in_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_surf_Simplified_top/LENGTH_video_in_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_surf_Simplified_top/LENGTH_video_in_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_surf_Simplified_top/LENGTH_video_in_V_dest_V -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_keyPoints_V__kpn__return_group [add_wave_group keyPoints_V__kpn__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_surf_Simplified_top/AXILiteS_INTERRUPT -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_BRESP -into $tb_keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_BREADY -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_BVALID -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_RRESP -into $tb_keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_RDATA -into $tb_keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_RREADY -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_RVALID -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_ARREADY -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_ARVALID -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_ARADDR -into $tb_keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_WSTRB -into $tb_keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_WDATA -into $tb_keyPoints_V__kpn__return_group -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_WREADY -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_WVALID -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_AWREADY -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_AWVALID -into $tb_keyPoints_V__kpn__return_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/AXILiteS_AWADDR -into $tb_keyPoints_V__kpn__return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_video_in_group [add_wave_group video_in(axis) -into $tbcinputgroup]
add_wave /apatb_surf_Simplified_top/video_in_TREADY -into $tb_video_in_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TVALID -into $tb_video_in_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TDEST -into $tb_video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TID -into $tb_video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TLAST -into $tb_video_in_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TUSER -into $tb_video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TSTRB -into $tb_video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TKEEP -into $tb_video_in_group -radix hex
add_wave /apatb_surf_Simplified_top/video_in_TDATA -into $tb_video_in_group -radix hex
set tb_kpn_group [add_wave_group kpn(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_kpn_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_kpn_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_kpn_group]
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_BUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_BID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_BRESP -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_RRESP -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_RUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_RID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_RDATA -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARREGION -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARQOS -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARPROT -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARBURST -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARLEN -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARADDR -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_WUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_WID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_WSTRB -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_WDATA -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWREGION -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWQOS -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWPROT -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWBURST -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWLEN -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWADDR -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_pointNumber_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_keyPoints_group [add_wave_group keyPoints(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_keyPoints_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_keyPoints_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_keyPoints_group]
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_BUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_BID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_BRESP -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_RRESP -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_RUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_RID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_RDATA -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARUSER -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARREGION -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARQOS -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARPROT -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARBURST -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARLEN -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARID -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARADDR -into $rdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_WUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_WID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_WSTRB -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_WDATA -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWUSER -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWREGION -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWQOS -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWPROT -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWBURST -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWLEN -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWID -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWADDR -into $wdata_group -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/m_axi_keyPoints_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_threshold_group [add_wave_group threshold(axi_slave) -into $tbcinputgroup]
add_wave /apatb_surf_Simplified_top/threshold_BRESP -into $tb_threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/threshold_BREADY -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_BVALID -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_RRESP -into $tb_threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/threshold_RDATA -into $tb_threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/threshold_RREADY -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_RVALID -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_ARREADY -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_ARVALID -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_ARADDR -into $tb_threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/threshold_WSTRB -into $tb_threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/threshold_WDATA -into $tb_threshold_group -radix hex
add_wave /apatb_surf_Simplified_top/threshold_WREADY -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_WVALID -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_AWREADY -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_AWVALID -into $tb_threshold_group -color #ffff00 -radix hex
add_wave /apatb_surf_Simplified_top/threshold_AWADDR -into $tb_threshold_group -radix hex
save_wave_config surf_Simplified.wcfg
run all
quit

