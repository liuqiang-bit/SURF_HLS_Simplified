# This script segment is generated automatically by AutoPilot

set id 148
set name surfDetector_fcmpGfk
set corename simcore_fcmp
set op fcmp
set stage_num 1
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set opcode_width 5
set opcode_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fcmp] == "ap_gen_simcore_fcmp"} {
eval "ap_gen_simcore_fcmp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fcmp
set corename FCmp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 149
set name surfDetector_mul_Hfu
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 11
set in0_signed 0
set in1_width 14
set in1_signed 1
set out_width 14
set exp i0*i1
set arg_lists {i0 {11 0 +} i1 {14 1 +} p {14 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 152
set hasByteEnable 0
set MemName findCharacteristiFfa
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 32
set AddrRange 7119
set AddrWd 13
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.771
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name det0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_det0_V \
    op interface \
    ports { det0_V_dout { I 32 vector } det0_V_empty_n { I 1 bit } det0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name det1_V3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_det1_V3 \
    op interface \
    ports { det1_V3_dout { I 32 vector } det1_V3_empty_n { I 1 bit } det1_V3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name det2_V6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_det2_V6 \
    op interface \
    ports { det2_V6_dout { I 32 vector } det2_V6_empty_n { I 1 bit } det2_V6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name keyPoints_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_keyPoints_V \
    op interface \
    ports { m_axi_keyPoints_V_AWVALID { O 1 bit } m_axi_keyPoints_V_AWREADY { I 1 bit } m_axi_keyPoints_V_AWADDR { O 32 vector } m_axi_keyPoints_V_AWID { O 1 vector } m_axi_keyPoints_V_AWLEN { O 32 vector } m_axi_keyPoints_V_AWSIZE { O 3 vector } m_axi_keyPoints_V_AWBURST { O 2 vector } m_axi_keyPoints_V_AWLOCK { O 2 vector } m_axi_keyPoints_V_AWCACHE { O 4 vector } m_axi_keyPoints_V_AWPROT { O 3 vector } m_axi_keyPoints_V_AWQOS { O 4 vector } m_axi_keyPoints_V_AWREGION { O 4 vector } m_axi_keyPoints_V_AWUSER { O 1 vector } m_axi_keyPoints_V_WVALID { O 1 bit } m_axi_keyPoints_V_WREADY { I 1 bit } m_axi_keyPoints_V_WDATA { O 32 vector } m_axi_keyPoints_V_WSTRB { O 4 vector } m_axi_keyPoints_V_WLAST { O 1 bit } m_axi_keyPoints_V_WID { O 1 vector } m_axi_keyPoints_V_WUSER { O 1 vector } m_axi_keyPoints_V_ARVALID { O 1 bit } m_axi_keyPoints_V_ARREADY { I 1 bit } m_axi_keyPoints_V_ARADDR { O 32 vector } m_axi_keyPoints_V_ARID { O 1 vector } m_axi_keyPoints_V_ARLEN { O 32 vector } m_axi_keyPoints_V_ARSIZE { O 3 vector } m_axi_keyPoints_V_ARBURST { O 2 vector } m_axi_keyPoints_V_ARLOCK { O 2 vector } m_axi_keyPoints_V_ARCACHE { O 4 vector } m_axi_keyPoints_V_ARPROT { O 3 vector } m_axi_keyPoints_V_ARQOS { O 4 vector } m_axi_keyPoints_V_ARREGION { O 4 vector } m_axi_keyPoints_V_ARUSER { O 1 vector } m_axi_keyPoints_V_RVALID { I 1 bit } m_axi_keyPoints_V_RREADY { O 1 bit } m_axi_keyPoints_V_RDATA { I 32 vector } m_axi_keyPoints_V_RLAST { I 1 bit } m_axi_keyPoints_V_RID { I 1 vector } m_axi_keyPoints_V_RUSER { I 1 vector } m_axi_keyPoints_V_RRESP { I 2 vector } m_axi_keyPoints_V_BVALID { I 1 bit } m_axi_keyPoints_V_BREADY { O 1 bit } m_axi_keyPoints_V_BRESP { I 2 vector } m_axi_keyPoints_V_BID { I 1 vector } m_axi_keyPoints_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name pointNumber \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pointNumber \
    op interface \
    ports { m_axi_pointNumber_AWVALID { O 1 bit } m_axi_pointNumber_AWREADY { I 1 bit } m_axi_pointNumber_AWADDR { O 32 vector } m_axi_pointNumber_AWID { O 1 vector } m_axi_pointNumber_AWLEN { O 32 vector } m_axi_pointNumber_AWSIZE { O 3 vector } m_axi_pointNumber_AWBURST { O 2 vector } m_axi_pointNumber_AWLOCK { O 2 vector } m_axi_pointNumber_AWCACHE { O 4 vector } m_axi_pointNumber_AWPROT { O 3 vector } m_axi_pointNumber_AWQOS { O 4 vector } m_axi_pointNumber_AWREGION { O 4 vector } m_axi_pointNumber_AWUSER { O 1 vector } m_axi_pointNumber_WVALID { O 1 bit } m_axi_pointNumber_WREADY { I 1 bit } m_axi_pointNumber_WDATA { O 32 vector } m_axi_pointNumber_WSTRB { O 4 vector } m_axi_pointNumber_WLAST { O 1 bit } m_axi_pointNumber_WID { O 1 vector } m_axi_pointNumber_WUSER { O 1 vector } m_axi_pointNumber_ARVALID { O 1 bit } m_axi_pointNumber_ARREADY { I 1 bit } m_axi_pointNumber_ARADDR { O 32 vector } m_axi_pointNumber_ARID { O 1 vector } m_axi_pointNumber_ARLEN { O 32 vector } m_axi_pointNumber_ARSIZE { O 3 vector } m_axi_pointNumber_ARBURST { O 2 vector } m_axi_pointNumber_ARLOCK { O 2 vector } m_axi_pointNumber_ARCACHE { O 4 vector } m_axi_pointNumber_ARPROT { O 3 vector } m_axi_pointNumber_ARQOS { O 4 vector } m_axi_pointNumber_ARREGION { O 4 vector } m_axi_pointNumber_ARUSER { O 1 vector } m_axi_pointNumber_RVALID { I 1 bit } m_axi_pointNumber_RREADY { O 1 bit } m_axi_pointNumber_RDATA { I 32 vector } m_axi_pointNumber_RLAST { I 1 bit } m_axi_pointNumber_RID { I 1 vector } m_axi_pointNumber_RUSER { I 1 vector } m_axi_pointNumber_RRESP { I 2 vector } m_axi_pointNumber_BVALID { I 1 bit } m_axi_pointNumber_BREADY { O 1 bit } m_axi_pointNumber_BRESP { I 2 vector } m_axi_pointNumber_BID { I 1 vector } m_axi_pointNumber_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


