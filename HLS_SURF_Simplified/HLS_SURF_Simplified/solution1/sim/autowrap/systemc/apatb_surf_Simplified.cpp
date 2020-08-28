// ==============================================================
// File generated on Thu Aug 27 15:07:13 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    template< int D ,int U ,int TI ,int TD > struct ap_axiu;
    template<> struct ap_axiu<24, 1, 1, 1> {
        ap_uint<24> data;
        ap_uint<3> keep;
        ap_uint<3> strb;
        ap_uint<1> user;
        ap_uint<1> last;
        ap_uint<1> id;
        ap_uint<1> dest;
       } ;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "video_in_V_data_V"
#define AUTOTB_TVIN_video_in_V_data_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_data_V  "../tv/stream_size/stream_size_in_video_in_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V  "../tv/stream_size/stream_ingress_status_video_in_V_data_V.dat"
// wrapc file define: "video_in_V_keep_V"
#define AUTOTB_TVIN_video_in_V_keep_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_keep_V  "../tv/stream_size/stream_size_in_video_in_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V  "../tv/stream_size/stream_ingress_status_video_in_V_keep_V.dat"
// wrapc file define: "video_in_V_strb_V"
#define AUTOTB_TVIN_video_in_V_strb_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_strb_V  "../tv/stream_size/stream_size_in_video_in_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V  "../tv/stream_size/stream_ingress_status_video_in_V_strb_V.dat"
// wrapc file define: "video_in_V_user_V"
#define AUTOTB_TVIN_video_in_V_user_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_user_V  "../tv/stream_size/stream_size_in_video_in_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V  "../tv/stream_size/stream_ingress_status_video_in_V_user_V.dat"
// wrapc file define: "video_in_V_last_V"
#define AUTOTB_TVIN_video_in_V_last_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_last_V  "../tv/stream_size/stream_size_in_video_in_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V  "../tv/stream_size/stream_ingress_status_video_in_V_last_V.dat"
// wrapc file define: "video_in_V_id_V"
#define AUTOTB_TVIN_video_in_V_id_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_id_V  "../tv/stream_size/stream_size_in_video_in_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V  "../tv/stream_size/stream_ingress_status_video_in_V_id_V.dat"
// wrapc file define: "video_in_V_dest_V"
#define AUTOTB_TVIN_video_in_V_dest_V  "../tv/cdatafile/c.surf_Simplified.autotvin_video_in_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_video_in_V_dest_V  "../tv/stream_size/stream_size_in_video_in_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V  "../tv/stream_size/stream_ingress_status_video_in_V_dest_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"


class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			video_in_V_data_V_depth = 0;
			video_in_V_keep_V_depth = 0;
			video_in_V_strb_V_depth = 0;
			video_in_V_user_V_depth = 0;
			video_in_V_last_V_depth = 0;
			video_in_V_id_V_depth = 0;
			video_in_V_dest_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{video_in_V_data_V " << video_in_V_data_V_depth << "}\n";
			total_list << "{video_in_V_keep_V " << video_in_V_keep_V_depth << "}\n";
			total_list << "{video_in_V_strb_V " << video_in_V_strb_V_depth << "}\n";
			total_list << "{video_in_V_user_V " << video_in_V_user_V_depth << "}\n";
			total_list << "{video_in_V_last_V " << video_in_V_last_V_depth << "}\n";
			total_list << "{video_in_V_id_V " << video_in_V_id_V_depth << "}\n";
			total_list << "{video_in_V_dest_V " << video_in_V_dest_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int video_in_V_data_V_depth;
		int video_in_V_keep_V_depth;
		int video_in_V_strb_V_depth;
		int video_in_V_user_V_depth;
		int video_in_V_last_V_depth;
		int video_in_V_id_V_depth;
		int video_in_V_dest_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void surf_Simplified (
hls::stream<ap_axiu<24, 1, 1, 1 > > (&video_in),
ap_uint<32>* keyPoints,
unsigned int* kpn,
int threshold);

void AESL_WRAP_surf_Simplified (
hls::stream<ap_axiu<24, 1, 1, 1 > > (&video_in),
ap_uint<32>* keyPoints,
unsigned int* kpn,
int threshold)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "video_in"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				video_in.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, AESL_token); // [[/transaction]]
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "video_in_V_data_V"
		char* tvin_video_in_V_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_data_V);
		char* wrapc_stream_size_in_video_in_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_data_V);
		char* wrapc_stream_ingress_status_video_in_V_data_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V);

		// "video_in_V_keep_V"
		char* tvin_video_in_V_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_keep_V);
		char* wrapc_stream_size_in_video_in_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V);
		char* wrapc_stream_ingress_status_video_in_V_keep_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V);

		// "video_in_V_strb_V"
		char* tvin_video_in_V_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_strb_V);
		char* wrapc_stream_size_in_video_in_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V);
		char* wrapc_stream_ingress_status_video_in_V_strb_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V);

		// "video_in_V_user_V"
		char* tvin_video_in_V_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_user_V);
		char* wrapc_stream_size_in_video_in_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_user_V);
		char* wrapc_stream_ingress_status_video_in_V_user_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V);

		// "video_in_V_last_V"
		char* tvin_video_in_V_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_last_V);
		char* wrapc_stream_size_in_video_in_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_last_V);
		char* wrapc_stream_ingress_status_video_in_V_last_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V);

		// "video_in_V_id_V"
		char* tvin_video_in_V_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_id_V);
		char* wrapc_stream_size_in_video_in_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_id_V);
		char* wrapc_stream_ingress_status_video_in_V_id_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V);

		// "video_in_V_dest_V"
		char* tvin_video_in_V_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_video_in_V_dest_V);
		char* wrapc_stream_size_in_video_in_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V);
		char* wrapc_stream_ingress_status_video_in_V_dest_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "video_in"
		std::vector<ap_axiu<24, 1, 1, 1 > > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!video_in.empty())
		{
			aesl_tmp_0.push_back(video_in.read());
			aesl_tmp_1++;
		}

		// push back input stream: "video_in"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			video_in.write(aesl_tmp_0[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		surf_Simplified(video_in, keyPoints, kpn, threshold);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "video_in"
		int aesl_tmp_2 = video_in.size();

		// [[transaction]]
		sprintf(tvin_video_in_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_data_V, tvin_video_in_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, tvin_video_in_V_data_V);

		sc_bv<24>* video_in_V_data_V_tvin_wrapc_buffer = new sc_bv<24>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_data_V
		{
			// bitslice(23, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.data.V(23, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : video_in_V_data_V
							// input_type_conversion : (aesl_tmp_0[i_0].data).to_string(2).c_str()
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<24> video_in_V_data_V_tmp_mem;
								video_in_V_data_V_tmp_mem = (aesl_tmp_0[i_0].data).to_string(2).c_str();
								video_in_V_data_V_tvin_wrapc_buffer[hls_map_index].range(23, 0) = video_in_V_data_V_tmp_mem.range(23, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_video_in_V_data_V, "%s\n", (video_in_V_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_data_V, tvin_video_in_V_data_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_data_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, stream_ingress_size_video_in_V_data_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_data_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, stream_ingress_size_video_in_V_data_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_data_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, stream_ingress_size_video_in_V_data_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_data_V_depth);
		sprintf(tvin_video_in_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_data_V, tvin_video_in_V_data_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_data_V, tvin_video_in_V_data_V);

		// release memory allocation
		delete [] video_in_V_data_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, wrapc_stream_size_in_video_in_V_data_V);
		sprintf(wrapc_stream_size_in_video_in_V_data_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, wrapc_stream_size_in_video_in_V_data_V);
		sprintf(wrapc_stream_size_in_video_in_V_data_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_data_V, wrapc_stream_size_in_video_in_V_data_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_keep_V, tvin_video_in_V_keep_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, tvin_video_in_V_keep_V);

		sc_bv<3>* video_in_V_keep_V_tvin_wrapc_buffer = new sc_bv<3>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_keep_V
		{
			// bitslice(2, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.keep.V(2, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].keep
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].keep
							// regulate_c_name       : video_in_V_keep_V
							// input_type_conversion : (aesl_tmp_0[i_0].keep).to_string(2).c_str()
							if (&(aesl_tmp_0[0].keep) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<3> video_in_V_keep_V_tmp_mem;
								video_in_V_keep_V_tmp_mem = (aesl_tmp_0[i_0].keep).to_string(2).c_str();
								video_in_V_keep_V_tvin_wrapc_buffer[hls_map_index].range(2, 0) = video_in_V_keep_V_tmp_mem.range(2, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_video_in_V_keep_V, "%s\n", (video_in_V_keep_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_keep_V, tvin_video_in_V_keep_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_keep_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, stream_ingress_size_video_in_V_keep_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_keep_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, stream_ingress_size_video_in_V_keep_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_keep_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, stream_ingress_size_video_in_V_keep_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_keep_V_depth);
		sprintf(tvin_video_in_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_keep_V, tvin_video_in_V_keep_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_keep_V, tvin_video_in_V_keep_V);

		// release memory allocation
		delete [] video_in_V_keep_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V, wrapc_stream_size_in_video_in_V_keep_V);
		sprintf(wrapc_stream_size_in_video_in_V_keep_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V, wrapc_stream_size_in_video_in_V_keep_V);
		sprintf(wrapc_stream_size_in_video_in_V_keep_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_keep_V, wrapc_stream_size_in_video_in_V_keep_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_strb_V, tvin_video_in_V_strb_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, tvin_video_in_V_strb_V);

		sc_bv<3>* video_in_V_strb_V_tvin_wrapc_buffer = new sc_bv<3>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_strb_V
		{
			// bitslice(2, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.strb.V(2, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].strb
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].strb
							// regulate_c_name       : video_in_V_strb_V
							// input_type_conversion : (aesl_tmp_0[i_0].strb).to_string(2).c_str()
							if (&(aesl_tmp_0[0].strb) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<3> video_in_V_strb_V_tmp_mem;
								video_in_V_strb_V_tmp_mem = (aesl_tmp_0[i_0].strb).to_string(2).c_str();
								video_in_V_strb_V_tvin_wrapc_buffer[hls_map_index].range(2, 0) = video_in_V_strb_V_tmp_mem.range(2, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_video_in_V_strb_V, "%s\n", (video_in_V_strb_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_strb_V, tvin_video_in_V_strb_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_strb_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, stream_ingress_size_video_in_V_strb_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_strb_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, stream_ingress_size_video_in_V_strb_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_strb_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, stream_ingress_size_video_in_V_strb_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_strb_V_depth);
		sprintf(tvin_video_in_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_strb_V, tvin_video_in_V_strb_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_strb_V, tvin_video_in_V_strb_V);

		// release memory allocation
		delete [] video_in_V_strb_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V, wrapc_stream_size_in_video_in_V_strb_V);
		sprintf(wrapc_stream_size_in_video_in_V_strb_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V, wrapc_stream_size_in_video_in_V_strb_V);
		sprintf(wrapc_stream_size_in_video_in_V_strb_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_strb_V, wrapc_stream_size_in_video_in_V_strb_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_user_V, tvin_video_in_V_user_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, tvin_video_in_V_user_V);

		sc_bv<1>* video_in_V_user_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_user_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.user.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].user
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].user
							// regulate_c_name       : video_in_V_user_V
							// input_type_conversion : (aesl_tmp_0[i_0].user).to_string(2).c_str()
							if (&(aesl_tmp_0[0].user) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_user_V_tmp_mem;
								video_in_V_user_V_tmp_mem = (aesl_tmp_0[i_0].user).to_string(2).c_str();
								video_in_V_user_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_user_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_video_in_V_user_V, "%s\n", (video_in_V_user_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_user_V, tvin_video_in_V_user_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_user_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, stream_ingress_size_video_in_V_user_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_user_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, stream_ingress_size_video_in_V_user_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_user_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, stream_ingress_size_video_in_V_user_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_user_V_depth);
		sprintf(tvin_video_in_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_user_V, tvin_video_in_V_user_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_user_V, tvin_video_in_V_user_V);

		// release memory allocation
		delete [] video_in_V_user_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_user_V, wrapc_stream_size_in_video_in_V_user_V);
		sprintf(wrapc_stream_size_in_video_in_V_user_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_user_V, wrapc_stream_size_in_video_in_V_user_V);
		sprintf(wrapc_stream_size_in_video_in_V_user_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_user_V, wrapc_stream_size_in_video_in_V_user_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_last_V, tvin_video_in_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, tvin_video_in_V_last_V);

		sc_bv<1>* video_in_V_last_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.last.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].last
							// regulate_c_name       : video_in_V_last_V
							// input_type_conversion : (aesl_tmp_0[i_0].last).to_string(2).c_str()
							if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_last_V_tmp_mem;
								video_in_V_last_V_tmp_mem = (aesl_tmp_0[i_0].last).to_string(2).c_str();
								video_in_V_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_last_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_video_in_V_last_V, "%s\n", (video_in_V_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_last_V, tvin_video_in_V_last_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_last_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, stream_ingress_size_video_in_V_last_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_last_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, stream_ingress_size_video_in_V_last_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_last_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, stream_ingress_size_video_in_V_last_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_last_V_depth);
		sprintf(tvin_video_in_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_last_V, tvin_video_in_V_last_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_last_V, tvin_video_in_V_last_V);

		// release memory allocation
		delete [] video_in_V_last_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_last_V, wrapc_stream_size_in_video_in_V_last_V);
		sprintf(wrapc_stream_size_in_video_in_V_last_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_last_V, wrapc_stream_size_in_video_in_V_last_V);
		sprintf(wrapc_stream_size_in_video_in_V_last_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_last_V, wrapc_stream_size_in_video_in_V_last_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_id_V, tvin_video_in_V_id_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, tvin_video_in_V_id_V);

		sc_bv<1>* video_in_V_id_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_id_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.id.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].id
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].id
							// regulate_c_name       : video_in_V_id_V
							// input_type_conversion : (aesl_tmp_0[i_0].id).to_string(2).c_str()
							if (&(aesl_tmp_0[0].id) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_id_V_tmp_mem;
								video_in_V_id_V_tmp_mem = (aesl_tmp_0[i_0].id).to_string(2).c_str();
								video_in_V_id_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_id_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_video_in_V_id_V, "%s\n", (video_in_V_id_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_id_V, tvin_video_in_V_id_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_id_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, stream_ingress_size_video_in_V_id_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_id_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, stream_ingress_size_video_in_V_id_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_id_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, stream_ingress_size_video_in_V_id_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_id_V_depth);
		sprintf(tvin_video_in_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_id_V, tvin_video_in_V_id_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_id_V, tvin_video_in_V_id_V);

		// release memory allocation
		delete [] video_in_V_id_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_id_V, wrapc_stream_size_in_video_in_V_id_V);
		sprintf(wrapc_stream_size_in_video_in_V_id_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_id_V, wrapc_stream_size_in_video_in_V_id_V);
		sprintf(wrapc_stream_size_in_video_in_V_id_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_id_V, wrapc_stream_size_in_video_in_V_id_V);

		// [[transaction]]
		sprintf(tvin_video_in_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_video_in_V_dest_V, tvin_video_in_V_dest_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, tvin_video_in_V_dest_V);

		sc_bv<1>* video_in_V_dest_V_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: video_in_V_dest_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: video_in.V.dest.V(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].dest
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].dest
							// regulate_c_name       : video_in_V_dest_V
							// input_type_conversion : (aesl_tmp_0[i_0].dest).to_string(2).c_str()
							if (&(aesl_tmp_0[0].dest) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> video_in_V_dest_V_tmp_mem;
								video_in_V_dest_V_tmp_mem = (aesl_tmp_0[i_0].dest).to_string(2).c_str();
								video_in_V_dest_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = video_in_V_dest_V_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_video_in_V_dest_V, "%s\n", (video_in_V_dest_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_video_in_V_dest_V, tvin_video_in_V_dest_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_video_in_V_dest_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, stream_ingress_size_video_in_V_dest_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_video_in_V_dest_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, stream_ingress_size_video_in_V_dest_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_video_in_V_dest_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, stream_ingress_size_video_in_V_dest_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.video_in_V_dest_V_depth);
		sprintf(tvin_video_in_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_video_in_V_dest_V, tvin_video_in_V_dest_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_video_in_V_dest_V, tvin_video_in_V_dest_V);

		// release memory allocation
		delete [] video_in_V_dest_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_video_in_V_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V, wrapc_stream_size_in_video_in_V_dest_V);
		sprintf(wrapc_stream_size_in_video_in_V_dest_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V, wrapc_stream_size_in_video_in_V_dest_V);
		sprintf(wrapc_stream_size_in_video_in_V_dest_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_video_in_V_dest_V, wrapc_stream_size_in_video_in_V_dest_V);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "video_in_V_data_V"
		delete [] tvin_video_in_V_data_V;
		delete [] wrapc_stream_size_in_video_in_V_data_V;
		// release memory allocation: "video_in_V_keep_V"
		delete [] tvin_video_in_V_keep_V;
		delete [] wrapc_stream_size_in_video_in_V_keep_V;
		// release memory allocation: "video_in_V_strb_V"
		delete [] tvin_video_in_V_strb_V;
		delete [] wrapc_stream_size_in_video_in_V_strb_V;
		// release memory allocation: "video_in_V_user_V"
		delete [] tvin_video_in_V_user_V;
		delete [] wrapc_stream_size_in_video_in_V_user_V;
		// release memory allocation: "video_in_V_last_V"
		delete [] tvin_video_in_V_last_V;
		delete [] wrapc_stream_size_in_video_in_V_last_V;
		// release memory allocation: "video_in_V_id_V"
		delete [] tvin_video_in_V_id_V;
		delete [] wrapc_stream_size_in_video_in_V_id_V;
		// release memory allocation: "video_in_V_dest_V"
		delete [] tvin_video_in_V_dest_V;
		delete [] wrapc_stream_size_in_video_in_V_dest_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

