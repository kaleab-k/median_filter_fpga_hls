// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="filter_wrapper,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=360028,HLS_SYN_TPT=360015,HLS_SYN_MEM=10,HLS_SYN_DSP=0,HLS_SYN_FF=4623,HLS_SYN_LUT=7288}" *)

module filter_wrapper (
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER
);

parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 32;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_ID_WIDTH = 1;
parameter    C_M_AXI_ADDR_WIDTH = 32;
parameter    C_M_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_AWUSER_WIDTH = 1;
parameter    C_M_AXI_ARUSER_WIDTH = 1;
parameter    C_M_AXI_WUSER_WIDTH = 1;
parameter    C_M_AXI_RUSER_WIDTH = 1;
parameter    C_M_AXI_BUSER_WIDTH = 1;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;

reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] in_array;
wire   [31:0] out_array;
wire    gmem_AWREADY;
wire    gmem_WREADY;
wire    gmem_ARREADY;
wire    gmem_RVALID;
wire   [31:0] gmem_RDATA;
wire    gmem_RLAST;
wire   [0:0] gmem_RID;
wire   [0:0] gmem_RUSER;
wire   [1:0] gmem_RRESP;
wire    gmem_BVALID;
wire   [1:0] gmem_BRESP;
wire   [0:0] gmem_BID;
wire   [0:0] gmem_BUSER;
wire    write_pixels_to_stre_U0_ap_start;
wire    write_pixels_to_stre_U0_ap_done;
wire    write_pixels_to_stre_U0_ap_continue;
wire    write_pixels_to_stre_U0_ap_idle;
wire    write_pixels_to_stre_U0_ap_ready;
wire    write_pixels_to_stre_U0_start_out;
wire    write_pixels_to_stre_U0_start_write;
wire   [31:0] write_pixels_to_stre_U0_in_stream_V_din;
wire    write_pixels_to_stre_U0_in_stream_V_write;
wire    write_pixels_to_stre_U0_m_axi_in_array_AWVALID;
wire   [31:0] write_pixels_to_stre_U0_m_axi_in_array_AWADDR;
wire   [0:0] write_pixels_to_stre_U0_m_axi_in_array_AWID;
wire   [31:0] write_pixels_to_stre_U0_m_axi_in_array_AWLEN;
wire   [2:0] write_pixels_to_stre_U0_m_axi_in_array_AWSIZE;
wire   [1:0] write_pixels_to_stre_U0_m_axi_in_array_AWBURST;
wire   [1:0] write_pixels_to_stre_U0_m_axi_in_array_AWLOCK;
wire   [3:0] write_pixels_to_stre_U0_m_axi_in_array_AWCACHE;
wire   [2:0] write_pixels_to_stre_U0_m_axi_in_array_AWPROT;
wire   [3:0] write_pixels_to_stre_U0_m_axi_in_array_AWQOS;
wire   [3:0] write_pixels_to_stre_U0_m_axi_in_array_AWREGION;
wire   [0:0] write_pixels_to_stre_U0_m_axi_in_array_AWUSER;
wire    write_pixels_to_stre_U0_m_axi_in_array_WVALID;
wire   [31:0] write_pixels_to_stre_U0_m_axi_in_array_WDATA;
wire   [3:0] write_pixels_to_stre_U0_m_axi_in_array_WSTRB;
wire    write_pixels_to_stre_U0_m_axi_in_array_WLAST;
wire   [0:0] write_pixels_to_stre_U0_m_axi_in_array_WID;
wire   [0:0] write_pixels_to_stre_U0_m_axi_in_array_WUSER;
wire    write_pixels_to_stre_U0_m_axi_in_array_ARVALID;
wire   [31:0] write_pixels_to_stre_U0_m_axi_in_array_ARADDR;
wire   [0:0] write_pixels_to_stre_U0_m_axi_in_array_ARID;
wire   [31:0] write_pixels_to_stre_U0_m_axi_in_array_ARLEN;
wire   [2:0] write_pixels_to_stre_U0_m_axi_in_array_ARSIZE;
wire   [1:0] write_pixels_to_stre_U0_m_axi_in_array_ARBURST;
wire   [1:0] write_pixels_to_stre_U0_m_axi_in_array_ARLOCK;
wire   [3:0] write_pixels_to_stre_U0_m_axi_in_array_ARCACHE;
wire   [2:0] write_pixels_to_stre_U0_m_axi_in_array_ARPROT;
wire   [3:0] write_pixels_to_stre_U0_m_axi_in_array_ARQOS;
wire   [3:0] write_pixels_to_stre_U0_m_axi_in_array_ARREGION;
wire   [0:0] write_pixels_to_stre_U0_m_axi_in_array_ARUSER;
wire    write_pixels_to_stre_U0_m_axi_in_array_RREADY;
wire    write_pixels_to_stre_U0_m_axi_in_array_BREADY;
wire   [31:0] write_pixels_to_stre_U0_out_array_out_din;
wire    write_pixels_to_stre_U0_out_array_out_write;
wire    filter_U0_ap_start;
wire    filter_U0_ap_done;
wire    filter_U0_ap_continue;
wire    filter_U0_ap_idle;
wire    filter_U0_ap_ready;
wire    filter_U0_in_stream_V_read;
wire   [31:0] filter_U0_out_stream_V_din;
wire    filter_U0_out_stream_V_write;
reg    read_pixels_from_str_U0_ap_start;
wire    read_pixels_from_str_U0_ap_done;
wire    read_pixels_from_str_U0_ap_continue;
wire    read_pixels_from_str_U0_ap_idle;
wire    read_pixels_from_str_U0_ap_ready;
wire    read_pixels_from_str_U0_out_stream_V_read;
wire    read_pixels_from_str_U0_m_axi_out_array_AWVALID;
wire   [31:0] read_pixels_from_str_U0_m_axi_out_array_AWADDR;
wire   [0:0] read_pixels_from_str_U0_m_axi_out_array_AWID;
wire   [31:0] read_pixels_from_str_U0_m_axi_out_array_AWLEN;
wire   [2:0] read_pixels_from_str_U0_m_axi_out_array_AWSIZE;
wire   [1:0] read_pixels_from_str_U0_m_axi_out_array_AWBURST;
wire   [1:0] read_pixels_from_str_U0_m_axi_out_array_AWLOCK;
wire   [3:0] read_pixels_from_str_U0_m_axi_out_array_AWCACHE;
wire   [2:0] read_pixels_from_str_U0_m_axi_out_array_AWPROT;
wire   [3:0] read_pixels_from_str_U0_m_axi_out_array_AWQOS;
wire   [3:0] read_pixels_from_str_U0_m_axi_out_array_AWREGION;
wire   [0:0] read_pixels_from_str_U0_m_axi_out_array_AWUSER;
wire    read_pixels_from_str_U0_m_axi_out_array_WVALID;
wire   [31:0] read_pixels_from_str_U0_m_axi_out_array_WDATA;
wire   [3:0] read_pixels_from_str_U0_m_axi_out_array_WSTRB;
wire    read_pixels_from_str_U0_m_axi_out_array_WLAST;
wire   [0:0] read_pixels_from_str_U0_m_axi_out_array_WID;
wire   [0:0] read_pixels_from_str_U0_m_axi_out_array_WUSER;
wire    read_pixels_from_str_U0_m_axi_out_array_ARVALID;
wire   [31:0] read_pixels_from_str_U0_m_axi_out_array_ARADDR;
wire   [0:0] read_pixels_from_str_U0_m_axi_out_array_ARID;
wire   [31:0] read_pixels_from_str_U0_m_axi_out_array_ARLEN;
wire   [2:0] read_pixels_from_str_U0_m_axi_out_array_ARSIZE;
wire   [1:0] read_pixels_from_str_U0_m_axi_out_array_ARBURST;
wire   [1:0] read_pixels_from_str_U0_m_axi_out_array_ARLOCK;
wire   [3:0] read_pixels_from_str_U0_m_axi_out_array_ARCACHE;
wire   [2:0] read_pixels_from_str_U0_m_axi_out_array_ARPROT;
wire   [3:0] read_pixels_from_str_U0_m_axi_out_array_ARQOS;
wire   [3:0] read_pixels_from_str_U0_m_axi_out_array_ARREGION;
wire   [0:0] read_pixels_from_str_U0_m_axi_out_array_ARUSER;
wire    read_pixels_from_str_U0_m_axi_out_array_RREADY;
wire    read_pixels_from_str_U0_m_axi_out_array_BREADY;
wire    read_pixels_from_str_U0_out_array_offset_read;
wire    ap_sync_continue;
wire    in_stream_V_full_n;
wire   [31:0] in_stream_V_dout;
wire    in_stream_V_empty_n;
wire    out_array_c_full_n;
wire   [31:0] out_array_c_dout;
wire    out_array_c_empty_n;
wire    out_stream_V_full_n;
wire   [31:0] out_stream_V_dout;
wire    out_stream_V_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_filter_U0_din;
wire    start_for_filter_U0_full_n;
wire   [0:0] start_for_filter_U0_dout;
wire    start_for_filter_U0_empty_n;
wire    filter_U0_start_full_n;
wire    filter_U0_start_write;
wire    read_pixels_from_str_U0_start_full_n;
wire    read_pixels_from_str_U0_start_write;

// power-on initialization
initial begin
#0 read_pixels_from_str_U0_ap_start = 1'b0;
end

filter_wrapper_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
filter_wrapper_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .in_array(in_array),
    .out_array(out_array)
);

filter_wrapper_gmem_m_axi #(
    .USER_DW( 32 ),
    .USER_AW( 32 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 2 ),
    .NUM_WRITE_OUTSTANDING( 2 ),
    .MAX_READ_BURST_LENGTH( 256 ),
    .MAX_WRITE_BURST_LENGTH( 256 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ))
filter_wrapper_gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(write_pixels_to_stre_U0_m_axi_in_array_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(write_pixels_to_stre_U0_m_axi_in_array_ARADDR),
    .I_ARID(write_pixels_to_stre_U0_m_axi_in_array_ARID),
    .I_ARLEN(write_pixels_to_stre_U0_m_axi_in_array_ARLEN),
    .I_ARSIZE(write_pixels_to_stre_U0_m_axi_in_array_ARSIZE),
    .I_ARLOCK(write_pixels_to_stre_U0_m_axi_in_array_ARLOCK),
    .I_ARCACHE(write_pixels_to_stre_U0_m_axi_in_array_ARCACHE),
    .I_ARQOS(write_pixels_to_stre_U0_m_axi_in_array_ARQOS),
    .I_ARPROT(write_pixels_to_stre_U0_m_axi_in_array_ARPROT),
    .I_ARUSER(write_pixels_to_stre_U0_m_axi_in_array_ARUSER),
    .I_ARBURST(write_pixels_to_stre_U0_m_axi_in_array_ARBURST),
    .I_ARREGION(write_pixels_to_stre_U0_m_axi_in_array_ARREGION),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(write_pixels_to_stre_U0_m_axi_in_array_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RID(gmem_RID),
    .I_RUSER(gmem_RUSER),
    .I_RRESP(gmem_RRESP),
    .I_RLAST(gmem_RLAST),
    .I_AWVALID(read_pixels_from_str_U0_m_axi_out_array_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(read_pixels_from_str_U0_m_axi_out_array_AWADDR),
    .I_AWID(read_pixels_from_str_U0_m_axi_out_array_AWID),
    .I_AWLEN(read_pixels_from_str_U0_m_axi_out_array_AWLEN),
    .I_AWSIZE(read_pixels_from_str_U0_m_axi_out_array_AWSIZE),
    .I_AWLOCK(read_pixels_from_str_U0_m_axi_out_array_AWLOCK),
    .I_AWCACHE(read_pixels_from_str_U0_m_axi_out_array_AWCACHE),
    .I_AWQOS(read_pixels_from_str_U0_m_axi_out_array_AWQOS),
    .I_AWPROT(read_pixels_from_str_U0_m_axi_out_array_AWPROT),
    .I_AWUSER(read_pixels_from_str_U0_m_axi_out_array_AWUSER),
    .I_AWBURST(read_pixels_from_str_U0_m_axi_out_array_AWBURST),
    .I_AWREGION(read_pixels_from_str_U0_m_axi_out_array_AWREGION),
    .I_WVALID(read_pixels_from_str_U0_m_axi_out_array_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(read_pixels_from_str_U0_m_axi_out_array_WDATA),
    .I_WID(read_pixels_from_str_U0_m_axi_out_array_WID),
    .I_WUSER(read_pixels_from_str_U0_m_axi_out_array_WUSER),
    .I_WLAST(read_pixels_from_str_U0_m_axi_out_array_WLAST),
    .I_WSTRB(read_pixels_from_str_U0_m_axi_out_array_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(read_pixels_from_str_U0_m_axi_out_array_BREADY),
    .I_BRESP(gmem_BRESP),
    .I_BID(gmem_BID),
    .I_BUSER(gmem_BUSER)
);

write_pixels_to_stre write_pixels_to_stre_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(write_pixels_to_stre_U0_ap_start),
    .start_full_n(start_for_filter_U0_full_n),
    .ap_done(write_pixels_to_stre_U0_ap_done),
    .ap_continue(write_pixels_to_stre_U0_ap_continue),
    .ap_idle(write_pixels_to_stre_U0_ap_idle),
    .ap_ready(write_pixels_to_stre_U0_ap_ready),
    .start_out(write_pixels_to_stre_U0_start_out),
    .start_write(write_pixels_to_stre_U0_start_write),
    .in_stream_V_din(write_pixels_to_stre_U0_in_stream_V_din),
    .in_stream_V_full_n(in_stream_V_full_n),
    .in_stream_V_write(write_pixels_to_stre_U0_in_stream_V_write),
    .m_axi_in_array_AWVALID(write_pixels_to_stre_U0_m_axi_in_array_AWVALID),
    .m_axi_in_array_AWREADY(1'b0),
    .m_axi_in_array_AWADDR(write_pixels_to_stre_U0_m_axi_in_array_AWADDR),
    .m_axi_in_array_AWID(write_pixels_to_stre_U0_m_axi_in_array_AWID),
    .m_axi_in_array_AWLEN(write_pixels_to_stre_U0_m_axi_in_array_AWLEN),
    .m_axi_in_array_AWSIZE(write_pixels_to_stre_U0_m_axi_in_array_AWSIZE),
    .m_axi_in_array_AWBURST(write_pixels_to_stre_U0_m_axi_in_array_AWBURST),
    .m_axi_in_array_AWLOCK(write_pixels_to_stre_U0_m_axi_in_array_AWLOCK),
    .m_axi_in_array_AWCACHE(write_pixels_to_stre_U0_m_axi_in_array_AWCACHE),
    .m_axi_in_array_AWPROT(write_pixels_to_stre_U0_m_axi_in_array_AWPROT),
    .m_axi_in_array_AWQOS(write_pixels_to_stre_U0_m_axi_in_array_AWQOS),
    .m_axi_in_array_AWREGION(write_pixels_to_stre_U0_m_axi_in_array_AWREGION),
    .m_axi_in_array_AWUSER(write_pixels_to_stre_U0_m_axi_in_array_AWUSER),
    .m_axi_in_array_WVALID(write_pixels_to_stre_U0_m_axi_in_array_WVALID),
    .m_axi_in_array_WREADY(1'b0),
    .m_axi_in_array_WDATA(write_pixels_to_stre_U0_m_axi_in_array_WDATA),
    .m_axi_in_array_WSTRB(write_pixels_to_stre_U0_m_axi_in_array_WSTRB),
    .m_axi_in_array_WLAST(write_pixels_to_stre_U0_m_axi_in_array_WLAST),
    .m_axi_in_array_WID(write_pixels_to_stre_U0_m_axi_in_array_WID),
    .m_axi_in_array_WUSER(write_pixels_to_stre_U0_m_axi_in_array_WUSER),
    .m_axi_in_array_ARVALID(write_pixels_to_stre_U0_m_axi_in_array_ARVALID),
    .m_axi_in_array_ARREADY(gmem_ARREADY),
    .m_axi_in_array_ARADDR(write_pixels_to_stre_U0_m_axi_in_array_ARADDR),
    .m_axi_in_array_ARID(write_pixels_to_stre_U0_m_axi_in_array_ARID),
    .m_axi_in_array_ARLEN(write_pixels_to_stre_U0_m_axi_in_array_ARLEN),
    .m_axi_in_array_ARSIZE(write_pixels_to_stre_U0_m_axi_in_array_ARSIZE),
    .m_axi_in_array_ARBURST(write_pixels_to_stre_U0_m_axi_in_array_ARBURST),
    .m_axi_in_array_ARLOCK(write_pixels_to_stre_U0_m_axi_in_array_ARLOCK),
    .m_axi_in_array_ARCACHE(write_pixels_to_stre_U0_m_axi_in_array_ARCACHE),
    .m_axi_in_array_ARPROT(write_pixels_to_stre_U0_m_axi_in_array_ARPROT),
    .m_axi_in_array_ARQOS(write_pixels_to_stre_U0_m_axi_in_array_ARQOS),
    .m_axi_in_array_ARREGION(write_pixels_to_stre_U0_m_axi_in_array_ARREGION),
    .m_axi_in_array_ARUSER(write_pixels_to_stre_U0_m_axi_in_array_ARUSER),
    .m_axi_in_array_RVALID(gmem_RVALID),
    .m_axi_in_array_RREADY(write_pixels_to_stre_U0_m_axi_in_array_RREADY),
    .m_axi_in_array_RDATA(gmem_RDATA),
    .m_axi_in_array_RLAST(gmem_RLAST),
    .m_axi_in_array_RID(gmem_RID),
    .m_axi_in_array_RUSER(gmem_RUSER),
    .m_axi_in_array_RRESP(gmem_RRESP),
    .m_axi_in_array_BVALID(1'b0),
    .m_axi_in_array_BREADY(write_pixels_to_stre_U0_m_axi_in_array_BREADY),
    .m_axi_in_array_BRESP(2'd0),
    .m_axi_in_array_BID(1'd0),
    .m_axi_in_array_BUSER(1'd0),
    .in_array_offset(in_array),
    .out_array(out_array),
    .out_array_out_din(write_pixels_to_stre_U0_out_array_out_din),
    .out_array_out_full_n(out_array_c_full_n),
    .out_array_out_write(write_pixels_to_stre_U0_out_array_out_write)
);

filter filter_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(filter_U0_ap_start),
    .ap_done(filter_U0_ap_done),
    .ap_continue(filter_U0_ap_continue),
    .ap_idle(filter_U0_ap_idle),
    .ap_ready(filter_U0_ap_ready),
    .in_stream_V_dout(in_stream_V_dout),
    .in_stream_V_empty_n(in_stream_V_empty_n),
    .in_stream_V_read(filter_U0_in_stream_V_read),
    .out_stream_V_din(filter_U0_out_stream_V_din),
    .out_stream_V_full_n(out_stream_V_full_n),
    .out_stream_V_write(filter_U0_out_stream_V_write)
);

read_pixels_from_str read_pixels_from_str_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(read_pixels_from_str_U0_ap_start),
    .ap_done(read_pixels_from_str_U0_ap_done),
    .ap_continue(read_pixels_from_str_U0_ap_continue),
    .ap_idle(read_pixels_from_str_U0_ap_idle),
    .ap_ready(read_pixels_from_str_U0_ap_ready),
    .out_stream_V_dout(out_stream_V_dout),
    .out_stream_V_empty_n(out_stream_V_empty_n),
    .out_stream_V_read(read_pixels_from_str_U0_out_stream_V_read),
    .m_axi_out_array_AWVALID(read_pixels_from_str_U0_m_axi_out_array_AWVALID),
    .m_axi_out_array_AWREADY(gmem_AWREADY),
    .m_axi_out_array_AWADDR(read_pixels_from_str_U0_m_axi_out_array_AWADDR),
    .m_axi_out_array_AWID(read_pixels_from_str_U0_m_axi_out_array_AWID),
    .m_axi_out_array_AWLEN(read_pixels_from_str_U0_m_axi_out_array_AWLEN),
    .m_axi_out_array_AWSIZE(read_pixels_from_str_U0_m_axi_out_array_AWSIZE),
    .m_axi_out_array_AWBURST(read_pixels_from_str_U0_m_axi_out_array_AWBURST),
    .m_axi_out_array_AWLOCK(read_pixels_from_str_U0_m_axi_out_array_AWLOCK),
    .m_axi_out_array_AWCACHE(read_pixels_from_str_U0_m_axi_out_array_AWCACHE),
    .m_axi_out_array_AWPROT(read_pixels_from_str_U0_m_axi_out_array_AWPROT),
    .m_axi_out_array_AWQOS(read_pixels_from_str_U0_m_axi_out_array_AWQOS),
    .m_axi_out_array_AWREGION(read_pixels_from_str_U0_m_axi_out_array_AWREGION),
    .m_axi_out_array_AWUSER(read_pixels_from_str_U0_m_axi_out_array_AWUSER),
    .m_axi_out_array_WVALID(read_pixels_from_str_U0_m_axi_out_array_WVALID),
    .m_axi_out_array_WREADY(gmem_WREADY),
    .m_axi_out_array_WDATA(read_pixels_from_str_U0_m_axi_out_array_WDATA),
    .m_axi_out_array_WSTRB(read_pixels_from_str_U0_m_axi_out_array_WSTRB),
    .m_axi_out_array_WLAST(read_pixels_from_str_U0_m_axi_out_array_WLAST),
    .m_axi_out_array_WID(read_pixels_from_str_U0_m_axi_out_array_WID),
    .m_axi_out_array_WUSER(read_pixels_from_str_U0_m_axi_out_array_WUSER),
    .m_axi_out_array_ARVALID(read_pixels_from_str_U0_m_axi_out_array_ARVALID),
    .m_axi_out_array_ARREADY(1'b0),
    .m_axi_out_array_ARADDR(read_pixels_from_str_U0_m_axi_out_array_ARADDR),
    .m_axi_out_array_ARID(read_pixels_from_str_U0_m_axi_out_array_ARID),
    .m_axi_out_array_ARLEN(read_pixels_from_str_U0_m_axi_out_array_ARLEN),
    .m_axi_out_array_ARSIZE(read_pixels_from_str_U0_m_axi_out_array_ARSIZE),
    .m_axi_out_array_ARBURST(read_pixels_from_str_U0_m_axi_out_array_ARBURST),
    .m_axi_out_array_ARLOCK(read_pixels_from_str_U0_m_axi_out_array_ARLOCK),
    .m_axi_out_array_ARCACHE(read_pixels_from_str_U0_m_axi_out_array_ARCACHE),
    .m_axi_out_array_ARPROT(read_pixels_from_str_U0_m_axi_out_array_ARPROT),
    .m_axi_out_array_ARQOS(read_pixels_from_str_U0_m_axi_out_array_ARQOS),
    .m_axi_out_array_ARREGION(read_pixels_from_str_U0_m_axi_out_array_ARREGION),
    .m_axi_out_array_ARUSER(read_pixels_from_str_U0_m_axi_out_array_ARUSER),
    .m_axi_out_array_RVALID(1'b0),
    .m_axi_out_array_RREADY(read_pixels_from_str_U0_m_axi_out_array_RREADY),
    .m_axi_out_array_RDATA(32'd0),
    .m_axi_out_array_RLAST(1'b0),
    .m_axi_out_array_RID(1'd0),
    .m_axi_out_array_RUSER(1'd0),
    .m_axi_out_array_RRESP(2'd0),
    .m_axi_out_array_BVALID(gmem_BVALID),
    .m_axi_out_array_BREADY(read_pixels_from_str_U0_m_axi_out_array_BREADY),
    .m_axi_out_array_BRESP(gmem_BRESP),
    .m_axi_out_array_BID(gmem_BID),
    .m_axi_out_array_BUSER(gmem_BUSER),
    .out_array_offset_dout(out_array_c_dout),
    .out_array_offset_empty_n(out_array_c_empty_n),
    .out_array_offset_read(read_pixels_from_str_U0_out_array_offset_read)
);

fifo_w32_d1024_A in_stream_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(write_pixels_to_stre_U0_in_stream_V_din),
    .if_full_n(in_stream_V_full_n),
    .if_write(write_pixels_to_stre_U0_in_stream_V_write),
    .if_dout(in_stream_V_dout),
    .if_empty_n(in_stream_V_empty_n),
    .if_read(filter_U0_in_stream_V_read)
);

fifo_w32_d2_A out_array_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(write_pixels_to_stre_U0_out_array_out_din),
    .if_full_n(out_array_c_full_n),
    .if_write(write_pixels_to_stre_U0_out_array_out_write),
    .if_dout(out_array_c_dout),
    .if_empty_n(out_array_c_empty_n),
    .if_read(read_pixels_from_str_U0_out_array_offset_read)
);

fifo_w32_d1024_A out_stream_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(filter_U0_out_stream_V_din),
    .if_full_n(out_stream_V_full_n),
    .if_write(filter_U0_out_stream_V_write),
    .if_dout(out_stream_V_dout),
    .if_empty_n(out_stream_V_empty_n),
    .if_read(read_pixels_from_str_U0_out_stream_V_read)
);

start_for_filter_U0 start_for_filter_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_filter_U0_din),
    .if_full_n(start_for_filter_U0_full_n),
    .if_write(write_pixels_to_stre_U0_start_write),
    .if_dout(start_for_filter_U0_dout),
    .if_empty_n(start_for_filter_U0_empty_n),
    .if_read(filter_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        read_pixels_from_str_U0_ap_start <= 1'b0;
    end else begin
        read_pixels_from_str_U0_ap_start <= 1'b1;
    end
end

assign ap_done = read_pixels_from_str_U0_ap_done;

assign ap_idle = (write_pixels_to_stre_U0_ap_idle & read_pixels_from_str_U0_ap_idle & filter_U0_ap_idle);

assign ap_ready = write_pixels_to_stre_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = read_pixels_from_str_U0_ap_done;

assign ap_sync_ready = write_pixels_to_stre_U0_ap_ready;

assign filter_U0_ap_continue = 1'b1;

assign filter_U0_ap_start = start_for_filter_U0_empty_n;

assign filter_U0_start_full_n = 1'b1;

assign filter_U0_start_write = 1'b0;

assign read_pixels_from_str_U0_ap_continue = 1'b1;

assign read_pixels_from_str_U0_start_full_n = 1'b1;

assign read_pixels_from_str_U0_start_write = 1'b0;

assign start_for_filter_U0_din = 1'b1;

assign write_pixels_to_stre_U0_ap_continue = 1'b1;

assign write_pixels_to_stre_U0_ap_start = ap_start;

endmodule //filter_wrapper
