// ==============================================================
// File generated on Thu Aug 27 17:06:14 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __calcLayerDetAndTribs_H__
#define __calcLayerDetAndTribs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct calcLayerDetAndTribs_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 9;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(calcLayerDetAndTribs_ram) {
        ram[0] = "0b00000000000000000000000001000100";
        ram[1] = "0b11111111111111111111111101110111";
        ram[2] = "0b00000000000000000000000001000100";
        ram[3] = "0b00000000000000000000000000010111";
        ram[4] = "0b11111111111111111111111111010010";
        ram[5] = "0b00000000000000000000000000010111";
        ram[6] = "0b00000000000000000000000000001101";
        ram[7] = "0b11111111111111111111111111100101";
        ram[8] = "0b00000000000000000000000000001101";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(calcLayerDetAndTribs) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 9;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


calcLayerDetAndTribs_ram* meminst;


SC_CTOR(calcLayerDetAndTribs) {
meminst = new calcLayerDetAndTribs_ram("calcLayerDetAndTribs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~calcLayerDetAndTribs() {
    delete meminst;
}


};//endmodule
#endif