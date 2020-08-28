-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity integralImg is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    video_in_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
    video_in_TVALID : IN STD_LOGIC;
    video_in_TREADY : OUT STD_LOGIC;
    video_in_TKEEP : IN STD_LOGIC_VECTOR (2 downto 0);
    video_in_TSTRB : IN STD_LOGIC_VECTOR (2 downto 0);
    video_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    video_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    video_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    video_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    sum_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    sum_V_full_n : IN STD_LOGIC;
    sum_V_write : OUT STD_LOGIC );
end;


architecture behav of integralImg is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_259 : STD_LOGIC_VECTOR (9 downto 0) := "1001011001";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_321 : STD_LOGIC_VECTOR (9 downto 0) := "1100100001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv65_155555556 : STD_LOGIC_VECTOR (64 downto 0) := "00000000000000000000000000000000101010101010101010101010101010110";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv10_3FF : STD_LOGIC_VECTOR (9 downto 0) := "1111111111";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal video_in_V_data_V_0_data_out : STD_LOGIC_VECTOR (23 downto 0);
    signal video_in_V_data_V_0_vld_in : STD_LOGIC;
    signal video_in_V_data_V_0_vld_out : STD_LOGIC;
    signal video_in_V_data_V_0_ack_in : STD_LOGIC;
    signal video_in_V_data_V_0_ack_out : STD_LOGIC;
    signal video_in_V_data_V_0_payload_A : STD_LOGIC_VECTOR (23 downto 0);
    signal video_in_V_data_V_0_payload_B : STD_LOGIC_VECTOR (23 downto 0);
    signal video_in_V_data_V_0_sel_rd : STD_LOGIC := '0';
    signal video_in_V_data_V_0_sel_wr : STD_LOGIC := '0';
    signal video_in_V_data_V_0_sel : STD_LOGIC;
    signal video_in_V_data_V_0_load_A : STD_LOGIC;
    signal video_in_V_data_V_0_load_B : STD_LOGIC;
    signal video_in_V_data_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal video_in_V_data_V_0_state_cmp_full : STD_LOGIC;
    signal video_in_V_dest_V_0_vld_in : STD_LOGIC;
    signal video_in_V_dest_V_0_ack_out : STD_LOGIC;
    signal video_in_V_dest_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal buf_1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal buf_1_ce0 : STD_LOGIC;
    signal buf_1_we0 : STD_LOGIC;
    signal buf_1_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal buf_1_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal buf_1_ce1 : STD_LOGIC;
    signal buf_1_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal buf_0_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal buf_0_ce0 : STD_LOGIC;
    signal buf_0_we0 : STD_LOGIC;
    signal buf_0_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal buf_0_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal buf_0_ce1 : STD_LOGIC;
    signal buf_0_q1 : STD_LOGIC_VECTOR (31 downto 0);
    signal video_in_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_4_i_fu_302_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_i_fu_320_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sum_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal r_V_fu_290_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal r_V_reg_488 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_i_fu_296_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_i_reg_493 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_fu_284_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_V_fu_308_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal c_V_reg_501 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_predicate_op32_read_state3 : BOOLEAN;
    signal ap_block_state3 : BOOLEAN;
    signal tmp_data_V_reg_509 : STD_LOGIC_VECTOR (23 downto 0);
    signal phitmp_i_fu_329_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal phitmp1_i_fu_335_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_353_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_15_i_fu_384_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_i_fu_347_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_537 : STD_LOGIC_VECTOR (30 downto 0);
    signal r_V_3_reg_201 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_i_fu_473_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal r_V_4_reg_213 : STD_LOGIC_VECTOR (0 downto 0);
    signal t_V_reg_225 : STD_LOGIC_VECTOR (9 downto 0);
    signal t_V_1_reg_236 : STD_LOGIC_VECTOR (9 downto 0);
    signal pix_val_load_1_reg_248 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_i_reg_259 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_reg_270 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_i_23_fu_410_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_i_fu_422_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_16_i_fu_479_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_428_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_i_fu_314_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_i_fu_359_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_12_cast_i_cast_fu_367_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_13_i_fu_371_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_2_fu_376_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_14_cast_i_fu_380_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_fu_394_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_fu_394_p2 : STD_LOGIC_VECTOR (64 downto 0);
    signal ret_V_fu_416_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal buf_load_phi_i_fu_437_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_7_i_fu_461_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal buf_load_1_phi_i_fu_445_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal buf_load_2_phi_i_fu_453_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_i_fu_467_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal mul_fu_394_p00 : STD_LOGIC_VECTOR (64 downto 0);

    component integralImg_buf_1 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        address1 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    buf_1_U : component integralImg_buf_1
    generic map (
        DataWidth => 32,
        AddressRange => 800,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_1_address0,
        ce0 => buf_1_ce0,
        we0 => buf_1_we0,
        d0 => tmp_1_reg_270,
        q0 => buf_1_q0,
        address1 => buf_1_address1,
        ce1 => buf_1_ce1,
        q1 => buf_1_q1);

    buf_0_U : component integralImg_buf_1
    generic map (
        DataWidth => 32,
        AddressRange => 800,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_0_address0,
        ce0 => buf_0_ce0,
        we0 => buf_0_we0,
        d0 => tmp_1_reg_270,
        q0 => buf_0_q0,
        address1 => buf_0_address1,
        ce1 => buf_0_ce1,
        q1 => buf_0_q1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((tmp_i_fu_284_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    video_in_V_data_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                video_in_V_data_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((video_in_V_data_V_0_ack_out = ap_const_logic_1) and (video_in_V_data_V_0_vld_out = ap_const_logic_1))) then 
                                        video_in_V_data_V_0_sel_rd <= not(video_in_V_data_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    video_in_V_data_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                video_in_V_data_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((video_in_V_data_V_0_ack_in = ap_const_logic_1) and (video_in_V_data_V_0_vld_in = ap_const_logic_1))) then 
                                        video_in_V_data_V_0_sel_wr <= not(video_in_V_data_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    video_in_V_data_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                video_in_V_data_V_0_state <= ap_const_lv2_0;
            else
                if ((((video_in_V_data_V_0_state = ap_const_lv2_2) and (video_in_V_data_V_0_vld_in = ap_const_logic_0)) or ((video_in_V_data_V_0_state = ap_const_lv2_3) and (video_in_V_data_V_0_vld_in = ap_const_logic_0) and (video_in_V_data_V_0_ack_out = ap_const_logic_1)))) then 
                    video_in_V_data_V_0_state <= ap_const_lv2_2;
                elsif ((((video_in_V_data_V_0_state = ap_const_lv2_1) and (video_in_V_data_V_0_ack_out = ap_const_logic_0)) or ((video_in_V_data_V_0_state = ap_const_lv2_3) and (video_in_V_data_V_0_ack_out = ap_const_logic_0) and (video_in_V_data_V_0_vld_in = ap_const_logic_1)))) then 
                    video_in_V_data_V_0_state <= ap_const_lv2_1;
                elsif (((not(((video_in_V_data_V_0_vld_in = ap_const_logic_0) and (video_in_V_data_V_0_ack_out = ap_const_logic_1))) and not(((video_in_V_data_V_0_ack_out = ap_const_logic_0) and (video_in_V_data_V_0_vld_in = ap_const_logic_1))) and (video_in_V_data_V_0_state = ap_const_lv2_3)) or ((video_in_V_data_V_0_state = ap_const_lv2_1) and (video_in_V_data_V_0_ack_out = ap_const_logic_1)) or ((video_in_V_data_V_0_state = ap_const_lv2_2) and (video_in_V_data_V_0_vld_in = ap_const_logic_1)))) then 
                    video_in_V_data_V_0_state <= ap_const_lv2_3;
                else 
                    video_in_V_data_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    video_in_V_dest_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                video_in_V_dest_V_0_state <= ap_const_lv2_0;
            else
                if ((((video_in_V_dest_V_0_state = ap_const_lv2_2) and (video_in_V_dest_V_0_vld_in = ap_const_logic_0)) or ((video_in_V_dest_V_0_state = ap_const_lv2_3) and (video_in_V_dest_V_0_vld_in = ap_const_logic_0) and (video_in_V_dest_V_0_ack_out = ap_const_logic_1)))) then 
                    video_in_V_dest_V_0_state <= ap_const_lv2_2;
                elsif ((((video_in_V_dest_V_0_state = ap_const_lv2_1) and (video_in_V_dest_V_0_ack_out = ap_const_logic_0)) or ((video_in_V_dest_V_0_state = ap_const_lv2_3) and (video_in_V_dest_V_0_ack_out = ap_const_logic_0) and (video_in_V_dest_V_0_vld_in = ap_const_logic_1)))) then 
                    video_in_V_dest_V_0_state <= ap_const_lv2_1;
                elsif (((not(((video_in_V_dest_V_0_vld_in = ap_const_logic_0) and (video_in_V_dest_V_0_ack_out = ap_const_logic_1))) and not(((video_in_V_dest_V_0_ack_out = ap_const_logic_0) and (video_in_V_dest_V_0_vld_in = ap_const_logic_1))) and (video_in_V_dest_V_0_state = ap_const_lv2_3)) or ((video_in_V_dest_V_0_state = ap_const_lv2_1) and (video_in_V_dest_V_0_ack_out = ap_const_logic_1)) or ((video_in_V_dest_V_0_state = ap_const_lv2_2) and (video_in_V_dest_V_0_vld_in = ap_const_logic_1)))) then 
                    video_in_V_dest_V_0_state <= ap_const_lv2_3;
                else 
                    video_in_V_dest_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    i_i_reg_259_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_i_fu_347_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_i_reg_259 <= i_fu_353_p2;
            elsif ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (or_cond_i_fu_320_p2 = ap_const_lv1_0) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_i_reg_259 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    pix_val_load_1_reg_248_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_i_fu_347_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                pix_val_load_1_reg_248 <= tmp_15_i_fu_384_p2;
            elsif ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (or_cond_i_fu_320_p2 = ap_const_lv1_0) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                pix_val_load_1_reg_248 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    r_V_3_reg_201_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (tmp_4_i_fu_302_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                r_V_3_reg_201 <= phitmp_i_fu_329_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                r_V_3_reg_201 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    r_V_4_reg_213_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (tmp_4_i_fu_302_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                r_V_4_reg_213 <= phitmp1_i_fu_335_p2;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                r_V_4_reg_213 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    t_V_1_reg_236_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((sum_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                t_V_1_reg_236 <= c_V_reg_501;
            elsif (((tmp_i_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                t_V_1_reg_236 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    t_V_reg_225_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (tmp_4_i_fu_302_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                t_V_reg_225 <= r_V_reg_488;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_reg_225 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    tmp_1_reg_270_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (or_cond_i_fu_320_p2 = ap_const_lv1_1) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                tmp_1_reg_270 <= ap_const_lv32_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                tmp_1_reg_270 <= tmp_11_i_fu_473_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                c_V_reg_501 <= c_V_fu_308_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                r_V_reg_488 <= r_V_fu_290_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_i_fu_284_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_1_i_reg_493 <= tmp_1_i_fu_296_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (or_cond_i_fu_320_p2 = ap_const_lv1_0) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_data_V_reg_509 <= video_in_V_data_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_i_fu_347_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                tmp_reg_537 <= mul_fu_394_p2(64 downto 34);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((video_in_V_data_V_0_load_A = ap_const_logic_1)) then
                video_in_V_data_V_0_payload_A <= video_in_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((video_in_V_data_V_0_load_B = ap_const_logic_1)) then
                video_in_V_data_V_0_payload_B <= video_in_TDATA;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, video_in_V_data_V_0_vld_out, sum_V_full_n, ap_CS_fsm_state3, tmp_4_i_fu_302_p2, or_cond_i_fu_320_p2, ap_CS_fsm_state6, ap_CS_fsm_state2, tmp_i_fu_284_p2, ap_predicate_op32_read_state3, ap_CS_fsm_state4, exitcond_i_fu_347_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((tmp_i_fu_284_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (tmp_4_i_fu_302_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (or_cond_i_fu_320_p2 = ap_const_lv1_0) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (or_cond_i_fu_320_p2 = ap_const_lv1_1) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((exitcond_i_fu_347_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((sum_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_assign_proc : process(video_in_V_data_V_0_vld_out, ap_predicate_op32_read_state3)
    begin
                ap_block_state3 <= ((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, tmp_i_fu_284_p2)
    begin
        if (((tmp_i_fu_284_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op32_read_state3_assign_proc : process(tmp_4_i_fu_302_p2, or_cond_i_fu_320_p2)
    begin
                ap_predicate_op32_read_state3 <= ((or_cond_i_fu_320_p2 = ap_const_lv1_0) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0));
    end process;

    ap_ready <= internal_ap_ready;

    buf_0_address0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state4, tmp_i_23_fu_410_p1, tmp_16_i_fu_479_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            buf_0_address0 <= tmp_16_i_fu_479_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buf_0_address0 <= tmp_i_23_fu_410_p1(10 - 1 downto 0);
        else 
            buf_0_address0 <= "XXXXXXXXXX";
        end if; 
    end process;

    buf_0_address1 <= tmp_5_i_fu_422_p1(10 - 1 downto 0);

    buf_0_ce0_assign_proc : process(sum_V_full_n, ap_CS_fsm_state6, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((sum_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            buf_0_ce0 <= ap_const_logic_1;
        else 
            buf_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_0_ce1_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buf_0_ce1 <= ap_const_logic_1;
        else 
            buf_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buf_0_we0_assign_proc : process(sum_V_full_n, ap_CS_fsm_state6, r_V_4_reg_213)
    begin
        if (((r_V_4_reg_213 = ap_const_lv1_0) and (sum_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            buf_0_we0 <= ap_const_logic_1;
        else 
            buf_0_we0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_1_address0_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state4, tmp_i_23_fu_410_p1, tmp_16_i_fu_479_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            buf_1_address0 <= tmp_16_i_fu_479_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buf_1_address0 <= tmp_i_23_fu_410_p1(10 - 1 downto 0);
        else 
            buf_1_address0 <= "XXXXXXXXXX";
        end if; 
    end process;

    buf_1_address1 <= tmp_5_i_fu_422_p1(10 - 1 downto 0);

    buf_1_ce0_assign_proc : process(sum_V_full_n, ap_CS_fsm_state6, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((sum_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            buf_1_ce0 <= ap_const_logic_1;
        else 
            buf_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_1_ce1_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            buf_1_ce1 <= ap_const_logic_1;
        else 
            buf_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buf_1_we0_assign_proc : process(sum_V_full_n, ap_CS_fsm_state6, r_V_4_reg_213)
    begin
        if (((r_V_4_reg_213 = ap_const_lv1_1) and (sum_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            buf_1_we0 <= ap_const_logic_1;
        else 
            buf_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_load_1_phi_i_fu_445_p3 <= 
        buf_1_q1 when (r_V_3_reg_201(0) = '1') else 
        buf_0_q1;
    buf_load_2_phi_i_fu_453_p3 <= 
        buf_1_q1 when (r_V_4_reg_213(0) = '1') else 
        buf_0_q1;
    buf_load_phi_i_fu_437_p3 <= 
        buf_1_q0 when (r_V_3_reg_201(0) = '1') else 
        buf_0_q0;
    c_V_fu_308_p2 <= std_logic_vector(unsigned(t_V_1_reg_236) + unsigned(ap_const_lv10_1));
    exitcond_i_fu_347_p2 <= "1" when (i_i_reg_259 = ap_const_lv2_3) else "0";
    i_fu_353_p2 <= std_logic_vector(unsigned(i_i_reg_259) + unsigned(ap_const_lv2_1));

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_i_fu_284_p2)
    begin
        if (((tmp_i_fu_284_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    mul_fu_394_p0 <= mul_fu_394_p00(32 - 1 downto 0);
    mul_fu_394_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pix_val_load_1_reg_248),65));
    mul_fu_394_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_fu_394_p0) * unsigned(ap_const_lv65_155555556), 65));
    or_cond_i_fu_320_p2 <= (tmp_6_i_fu_314_p2 or tmp_1_i_reg_493);
    phitmp1_i_fu_335_p2 <= (r_V_4_reg_213 xor ap_const_lv1_1);
    phitmp_i_fu_329_p2 <= (r_V_3_reg_201 xor ap_const_lv1_1);
    r_V_fu_290_p2 <= std_logic_vector(unsigned(t_V_reg_225) + unsigned(ap_const_lv10_1));

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    ret_V_fu_416_p2 <= std_logic_vector(unsigned(t_V_1_reg_236) + unsigned(ap_const_lv10_3FF));
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;


    sum_V_blk_n_assign_proc : process(sum_V_full_n, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            sum_V_blk_n <= sum_V_full_n;
        else 
            sum_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    sum_V_din <= tmp_1_reg_270;

    sum_V_write_assign_proc : process(sum_V_full_n, ap_CS_fsm_state6)
    begin
        if (((sum_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            sum_V_write <= ap_const_logic_1;
        else 
            sum_V_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_i_fu_467_p2 <= std_logic_vector(unsigned(tmp_7_i_fu_461_p2) - unsigned(buf_load_1_phi_i_fu_445_p3));
    tmp_11_i_fu_473_p2 <= std_logic_vector(unsigned(buf_load_2_phi_i_fu_453_p3) + unsigned(tmp_10_i_fu_467_p2));
    tmp_12_cast_i_cast_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_12_i_fu_359_p3),24));
    tmp_12_i_fu_359_p3 <= (i_i_reg_259 & ap_const_lv3_0);
    tmp_13_i_fu_371_p2 <= std_logic_vector(shift_right(unsigned(tmp_data_V_reg_509),to_integer(unsigned('0' & tmp_12_cast_i_cast_fu_367_p1(24-1 downto 0)))));
    tmp_14_cast_i_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_376_p1),32));
    tmp_15_i_fu_384_p2 <= std_logic_vector(unsigned(pix_val_load_1_reg_248) + unsigned(tmp_14_cast_i_fu_380_p1));
    tmp_16_i_fu_479_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_V_1_reg_236),64));
    tmp_1_i_fu_296_p2 <= "1" when (t_V_reg_225 = ap_const_lv10_0) else "0";
    tmp_2_fu_376_p1 <= tmp_13_i_fu_371_p2(8 - 1 downto 0);
        tmp_3_fu_428_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_reg_537),32));

    tmp_4_i_fu_302_p2 <= "1" when (t_V_1_reg_236 = ap_const_lv10_321) else "0";
    tmp_5_i_fu_422_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_fu_416_p2),64));
    tmp_6_i_fu_314_p2 <= "1" when (t_V_1_reg_236 = ap_const_lv10_0) else "0";
    tmp_7_i_fu_461_p2 <= std_logic_vector(signed(tmp_3_fu_428_p1) + signed(buf_load_phi_i_fu_437_p3));
    tmp_i_23_fu_410_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_V_1_reg_236),64));
    tmp_i_fu_284_p2 <= "1" when (t_V_reg_225 = ap_const_lv10_259) else "0";

    video_in_TDATA_blk_n_assign_proc : process(video_in_V_data_V_0_state, ap_CS_fsm_state3, tmp_4_i_fu_302_p2, or_cond_i_fu_320_p2)
    begin
        if (((or_cond_i_fu_320_p2 = ap_const_lv1_0) and (tmp_4_i_fu_302_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            video_in_TDATA_blk_n <= video_in_V_data_V_0_state(0);
        else 
            video_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    video_in_TREADY <= video_in_V_dest_V_0_state(1);
    video_in_V_data_V_0_ack_in <= video_in_V_data_V_0_state(1);

    video_in_V_data_V_0_ack_out_assign_proc : process(video_in_V_data_V_0_vld_out, ap_CS_fsm_state3, ap_predicate_op32_read_state3)
    begin
        if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) then 
            video_in_V_data_V_0_ack_out <= ap_const_logic_1;
        else 
            video_in_V_data_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    video_in_V_data_V_0_data_out_assign_proc : process(video_in_V_data_V_0_payload_A, video_in_V_data_V_0_payload_B, video_in_V_data_V_0_sel)
    begin
        if ((video_in_V_data_V_0_sel = ap_const_logic_1)) then 
            video_in_V_data_V_0_data_out <= video_in_V_data_V_0_payload_B;
        else 
            video_in_V_data_V_0_data_out <= video_in_V_data_V_0_payload_A;
        end if; 
    end process;

    video_in_V_data_V_0_load_A <= (video_in_V_data_V_0_state_cmp_full and not(video_in_V_data_V_0_sel_wr));
    video_in_V_data_V_0_load_B <= (video_in_V_data_V_0_state_cmp_full and video_in_V_data_V_0_sel_wr);
    video_in_V_data_V_0_sel <= video_in_V_data_V_0_sel_rd;
    video_in_V_data_V_0_state_cmp_full <= '0' when (video_in_V_data_V_0_state = ap_const_lv2_1) else '1';
    video_in_V_data_V_0_vld_in <= video_in_TVALID;
    video_in_V_data_V_0_vld_out <= video_in_V_data_V_0_state(0);

    video_in_V_dest_V_0_ack_out_assign_proc : process(video_in_V_data_V_0_vld_out, ap_CS_fsm_state3, ap_predicate_op32_read_state3)
    begin
        if ((not(((video_in_V_data_V_0_vld_out = ap_const_logic_0) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_CS_fsm_state3) and (ap_predicate_op32_read_state3 = ap_const_boolean_1))) then 
            video_in_V_dest_V_0_ack_out <= ap_const_logic_1;
        else 
            video_in_V_dest_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

    video_in_V_dest_V_0_vld_in <= video_in_TVALID;
end behav;
