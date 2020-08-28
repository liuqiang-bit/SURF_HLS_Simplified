// ==============================================================
// File generated on Thu Aug 27 15:08:30 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_threshold (
    clk,
    reset,
    TRAN_s_axi_threshold_AWADDR,
    TRAN_s_axi_threshold_AWVALID,
    TRAN_s_axi_threshold_AWREADY,
    TRAN_s_axi_threshold_WVALID,
    TRAN_s_axi_threshold_WREADY,
    TRAN_s_axi_threshold_WDATA,
    TRAN_s_axi_threshold_WSTRB,
    TRAN_s_axi_threshold_ARADDR,
    TRAN_s_axi_threshold_ARVALID,
    TRAN_s_axi_threshold_ARREADY,
    TRAN_s_axi_threshold_RVALID,
    TRAN_s_axi_threshold_RREADY,
    TRAN_s_axi_threshold_RDATA,
    TRAN_s_axi_threshold_RRESP,
    TRAN_s_axi_threshold_BVALID,
    TRAN_s_axi_threshold_BREADY,
    TRAN_s_axi_threshold_BRESP,
    TRAN_threshold_start_in,
    TRAN_threshold_idle_in,
    TRAN_threshold_ready_in,
    TRAN_threshold_done_in,
    TRAN_threshold_transaction_done_in
    );

//------------------------Parameter----------------------
parameter ADDR_WIDTH = 5;
parameter DATA_WIDTH = 32;
parameter threshold_DEPTH = 1;
reg [31 : 0] threshold_OPERATE_DEPTH = 0;
parameter threshold_c_bitwidth = 1;
parameter threshold_data_in_addr = 16;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_threshold_AWADDR;
output  TRAN_s_axi_threshold_AWVALID;
input  TRAN_s_axi_threshold_AWREADY;
output  TRAN_s_axi_threshold_WVALID;
input  TRAN_s_axi_threshold_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_threshold_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_threshold_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_threshold_ARADDR;
output  TRAN_s_axi_threshold_ARVALID;
input  TRAN_s_axi_threshold_ARREADY;
input  TRAN_s_axi_threshold_RVALID;
output  TRAN_s_axi_threshold_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_threshold_RDATA;
input [2 - 1 : 0] TRAN_s_axi_threshold_RRESP;
input  TRAN_s_axi_threshold_BVALID;
output  TRAN_s_axi_threshold_BREADY;
input [2 - 1 : 0] TRAN_s_axi_threshold_BRESP;
input     clk;
input     reset;
input     TRAN_threshold_start_in;
input     TRAN_threshold_done_in;
input     TRAN_threshold_ready_in;
input     TRAN_threshold_idle_in;
input     TRAN_threshold_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_threshold [threshold_DEPTH - 1 : 0];
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_threshold_AWADDR = AWADDR_reg;
assign TRAN_s_axi_threshold_AWVALID = AWVALID_reg;
assign TRAN_s_axi_threshold_WVALID = WVALID_reg;
assign TRAN_s_axi_threshold_WDATA = WDATA_reg;
assign TRAN_s_axi_threshold_WSTRB = WSTRB_reg;
assign TRAN_s_axi_threshold_ARADDR = ARADDR_reg;
assign TRAN_s_axi_threshold_ARVALID = ARVALID_reg;
assign TRAN_s_axi_threshold_RREADY = RREADY_reg;
assign TRAN_s_axi_threshold_BREADY = BREADY_reg;
always @(TRAN_threshold_done_in) 
begin
    AESL_done_index_reg <= TRAN_threshold_done_in;
end
always @(TRAN_threshold_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_threshold_ready_in | ready_initial;
end

always @(reset ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_threshold_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_threshold_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_threshold_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_threshold_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_threshold_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_threshold_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_threshold_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_threshold_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
endmodule
