// ==============================================================
// File generated on Thu Aug 27 17:06:13 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __calcLayerDetAndTreOg_H__
#define __calcLayerDetAndTreOg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct calcLayerDetAndTreOg_ram : public sc_core::sc_module {

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


   SC_CTOR(calcLayerDetAndTreOg_ram) {
        ram[0] = "0b00000000000000000000000000000000";
        ram[1] = "0b00000000000000000000110000000000";
        ram[2] = "0b00000000000000000001100000000000";
        ram[3] = "0b00000000000000000000000000000000";
        ram[4] = "0b00000000000000000001010000000000";
        ram[5] = "0b00000000000000000010100000000000";
        ram[6] = "0b00000000000000000000000000000000";
        ram[7] = "0b00000000000000000001110000000000";
        ram[8] = "0b00000000000000000011100000000000";


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


SC_MODULE(calcLayerDetAndTreOg) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 9;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


calcLayerDetAndTreOg_ram* meminst;


SC_CTOR(calcLayerDetAndTreOg) {
meminst = new calcLayerDetAndTreOg_ram("calcLayerDetAndTreOg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~calcLayerDetAndTreOg() {
    delete meminst;
}


};//endmodule
#endif