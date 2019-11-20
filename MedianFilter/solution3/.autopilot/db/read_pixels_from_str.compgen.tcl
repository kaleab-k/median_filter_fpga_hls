# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name out_stream_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream_V \
    op interface \
    ports { out_stream_V_dout { I 32 vector } out_stream_V_empty_n { I 1 bit } out_stream_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name out_array \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_array \
    op interface \
    ports { m_axi_out_array_AWVALID { O 1 bit } m_axi_out_array_AWREADY { I 1 bit } m_axi_out_array_AWADDR { O 32 vector } m_axi_out_array_AWID { O 1 vector } m_axi_out_array_AWLEN { O 32 vector } m_axi_out_array_AWSIZE { O 3 vector } m_axi_out_array_AWBURST { O 2 vector } m_axi_out_array_AWLOCK { O 2 vector } m_axi_out_array_AWCACHE { O 4 vector } m_axi_out_array_AWPROT { O 3 vector } m_axi_out_array_AWQOS { O 4 vector } m_axi_out_array_AWREGION { O 4 vector } m_axi_out_array_AWUSER { O 1 vector } m_axi_out_array_WVALID { O 1 bit } m_axi_out_array_WREADY { I 1 bit } m_axi_out_array_WDATA { O 32 vector } m_axi_out_array_WSTRB { O 4 vector } m_axi_out_array_WLAST { O 1 bit } m_axi_out_array_WID { O 1 vector } m_axi_out_array_WUSER { O 1 vector } m_axi_out_array_ARVALID { O 1 bit } m_axi_out_array_ARREADY { I 1 bit } m_axi_out_array_ARADDR { O 32 vector } m_axi_out_array_ARID { O 1 vector } m_axi_out_array_ARLEN { O 32 vector } m_axi_out_array_ARSIZE { O 3 vector } m_axi_out_array_ARBURST { O 2 vector } m_axi_out_array_ARLOCK { O 2 vector } m_axi_out_array_ARCACHE { O 4 vector } m_axi_out_array_ARPROT { O 3 vector } m_axi_out_array_ARQOS { O 4 vector } m_axi_out_array_ARREGION { O 4 vector } m_axi_out_array_ARUSER { O 1 vector } m_axi_out_array_RVALID { I 1 bit } m_axi_out_array_RREADY { O 1 bit } m_axi_out_array_RDATA { I 32 vector } m_axi_out_array_RLAST { I 1 bit } m_axi_out_array_RID { I 1 vector } m_axi_out_array_RUSER { I 1 vector } m_axi_out_array_RRESP { I 2 vector } m_axi_out_array_BVALID { I 1 bit } m_axi_out_array_BREADY { O 1 bit } m_axi_out_array_BRESP { I 2 vector } m_axi_out_array_BID { I 1 vector } m_axi_out_array_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name out_array_offset \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_array_offset \
    op interface \
    ports { out_array_offset_dout { I 32 vector } out_array_offset_empty_n { I 1 bit } out_array_offset_read { O 1 bit } } \
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


