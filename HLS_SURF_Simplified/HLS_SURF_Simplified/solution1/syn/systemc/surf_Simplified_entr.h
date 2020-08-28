// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _surf_Simplified_entr_HH_
#define _surf_Simplified_entr_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct surf_Simplified_entr : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > keyPoints_V;
    sc_in< sc_lv<32> > kpn;
    sc_out< sc_lv<32> > keyPoints_V_out_din;
    sc_in< sc_logic > keyPoints_V_out_full_n;
    sc_out< sc_logic > keyPoints_V_out_write;
    sc_out< sc_lv<32> > kpn_out_din;
    sc_in< sc_logic > kpn_out_full_n;
    sc_out< sc_logic > kpn_out_write;


    // Module declarations
    surf_Simplified_entr(sc_module_name name);
    SC_HAS_PROCESS(surf_Simplified_entr);

    ~surf_Simplified_entr();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > keyPoints_V_out_blk_n;
    sc_signal< sc_logic > kpn_out_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_internal_ap_ready();
    void thread_keyPoints_V_out_blk_n();
    void thread_keyPoints_V_out_din();
    void thread_keyPoints_V_out_write();
    void thread_kpn_out_blk_n();
    void thread_kpn_out_din();
    void thread_kpn_out_write();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
