set moduleName write_pixels_to_stre
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {write_pixels_to_stre}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V int 32 regular {fifo 1 volatile }  }
	{ in_array int 32 regular {axi_master 0}  }
	{ in_array_offset int 32 regular  }
	{ out_array int 32 regular  }
	{ out_array_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_array", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_array_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_array", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_array_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ in_stream_V_din sc_out sc_lv 32 signal 0 } 
	{ in_stream_V_full_n sc_in sc_logic 1 signal 0 } 
	{ in_stream_V_write sc_out sc_logic 1 signal 0 } 
	{ m_axi_in_array_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_array_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_array_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_in_array_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_array_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_in_array_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_array_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_array_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_array_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_array_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_array_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_array_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_array_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_array_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_array_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_array_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_in_array_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_array_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_array_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_array_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_array_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_array_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_array_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_in_array_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_array_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_in_array_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_array_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_array_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_in_array_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_array_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_in_array_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_array_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_in_array_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_in_array_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_array_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_array_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_in_array_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_array_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_in_array_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_in_array_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_in_array_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_in_array_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_in_array_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_in_array_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_in_array_BUSER sc_in sc_lv 1 signal 1 } 
	{ in_array_offset sc_in sc_lv 32 signal 2 } 
	{ out_array sc_in sc_lv 32 signal 3 } 
	{ out_array_out_din sc_out sc_lv 32 signal 4 } 
	{ out_array_out_full_n sc_in sc_logic 1 signal 4 } 
	{ out_array_out_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "in_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V", "role": "din" }} , 
 	{ "name": "in_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V", "role": "full_n" }} , 
 	{ "name": "in_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V", "role": "write" }} , 
 	{ "name": "m_axi_in_array_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "AWVALID" }} , 
 	{ "name": "m_axi_in_array_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "AWREADY" }} , 
 	{ "name": "m_axi_in_array_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_array", "role": "AWADDR" }} , 
 	{ "name": "m_axi_in_array_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "AWID" }} , 
 	{ "name": "m_axi_in_array_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_array", "role": "AWLEN" }} , 
 	{ "name": "m_axi_in_array_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_array", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_in_array_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_array", "role": "AWBURST" }} , 
 	{ "name": "m_axi_in_array_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_array", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_in_array_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_array", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_in_array_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_array", "role": "AWPROT" }} , 
 	{ "name": "m_axi_in_array_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_array", "role": "AWQOS" }} , 
 	{ "name": "m_axi_in_array_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_array", "role": "AWREGION" }} , 
 	{ "name": "m_axi_in_array_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "AWUSER" }} , 
 	{ "name": "m_axi_in_array_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "WVALID" }} , 
 	{ "name": "m_axi_in_array_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "WREADY" }} , 
 	{ "name": "m_axi_in_array_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_array", "role": "WDATA" }} , 
 	{ "name": "m_axi_in_array_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_array", "role": "WSTRB" }} , 
 	{ "name": "m_axi_in_array_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "WLAST" }} , 
 	{ "name": "m_axi_in_array_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "WID" }} , 
 	{ "name": "m_axi_in_array_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "WUSER" }} , 
 	{ "name": "m_axi_in_array_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "ARVALID" }} , 
 	{ "name": "m_axi_in_array_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "ARREADY" }} , 
 	{ "name": "m_axi_in_array_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_array", "role": "ARADDR" }} , 
 	{ "name": "m_axi_in_array_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "ARID" }} , 
 	{ "name": "m_axi_in_array_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_array", "role": "ARLEN" }} , 
 	{ "name": "m_axi_in_array_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_array", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_in_array_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_array", "role": "ARBURST" }} , 
 	{ "name": "m_axi_in_array_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_array", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_in_array_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_array", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_in_array_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_array", "role": "ARPROT" }} , 
 	{ "name": "m_axi_in_array_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_array", "role": "ARQOS" }} , 
 	{ "name": "m_axi_in_array_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_array", "role": "ARREGION" }} , 
 	{ "name": "m_axi_in_array_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "ARUSER" }} , 
 	{ "name": "m_axi_in_array_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "RVALID" }} , 
 	{ "name": "m_axi_in_array_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "RREADY" }} , 
 	{ "name": "m_axi_in_array_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_array", "role": "RDATA" }} , 
 	{ "name": "m_axi_in_array_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "RLAST" }} , 
 	{ "name": "m_axi_in_array_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "RID" }} , 
 	{ "name": "m_axi_in_array_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "RUSER" }} , 
 	{ "name": "m_axi_in_array_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_array", "role": "RRESP" }} , 
 	{ "name": "m_axi_in_array_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "BVALID" }} , 
 	{ "name": "m_axi_in_array_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "BREADY" }} , 
 	{ "name": "m_axi_in_array_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_array", "role": "BRESP" }} , 
 	{ "name": "m_axi_in_array_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "BID" }} , 
 	{ "name": "m_axi_in_array_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_array", "role": "BUSER" }} , 
 	{ "name": "in_array_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_array_offset", "role": "default" }} , 
 	{ "name": "out_array", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_array", "role": "default" }} , 
 	{ "name": "out_array_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_array_out", "role": "din" }} , 
 	{ "name": "out_array_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_array_out", "role": "full_n" }} , 
 	{ "name": "out_array_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_array_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "write_pixels_to_stre",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_array", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_array_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in_array_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in_array_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_array", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_array_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_array_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	write_pixels_to_stre {
		in_stream_V {Type O LastRead -1 FirstWrite 9}
		in_array {Type I LastRead 8 FirstWrite -1}
		in_array_offset {Type I LastRead 0 FirstWrite -1}
		out_array {Type I LastRead 6 FirstWrite -1}
		out_array_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "360009", "Max" : "360009"}
	, {"Name" : "Interval", "Min" : "360009", "Max" : "360009"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_stream_V { ap_fifo {  { in_stream_V_din fifo_data 1 32 }  { in_stream_V_full_n fifo_status 0 1 }  { in_stream_V_write fifo_update 1 1 } } }
	in_array { m_axi {  { m_axi_in_array_AWVALID VALID 1 1 }  { m_axi_in_array_AWREADY READY 0 1 }  { m_axi_in_array_AWADDR ADDR 1 32 }  { m_axi_in_array_AWID ID 1 1 }  { m_axi_in_array_AWLEN LEN 1 32 }  { m_axi_in_array_AWSIZE SIZE 1 3 }  { m_axi_in_array_AWBURST BURST 1 2 }  { m_axi_in_array_AWLOCK LOCK 1 2 }  { m_axi_in_array_AWCACHE CACHE 1 4 }  { m_axi_in_array_AWPROT PROT 1 3 }  { m_axi_in_array_AWQOS QOS 1 4 }  { m_axi_in_array_AWREGION REGION 1 4 }  { m_axi_in_array_AWUSER USER 1 1 }  { m_axi_in_array_WVALID VALID 1 1 }  { m_axi_in_array_WREADY READY 0 1 }  { m_axi_in_array_WDATA DATA 1 32 }  { m_axi_in_array_WSTRB STRB 1 4 }  { m_axi_in_array_WLAST LAST 1 1 }  { m_axi_in_array_WID ID 1 1 }  { m_axi_in_array_WUSER USER 1 1 }  { m_axi_in_array_ARVALID VALID 1 1 }  { m_axi_in_array_ARREADY READY 0 1 }  { m_axi_in_array_ARADDR ADDR 1 32 }  { m_axi_in_array_ARID ID 1 1 }  { m_axi_in_array_ARLEN LEN 1 32 }  { m_axi_in_array_ARSIZE SIZE 1 3 }  { m_axi_in_array_ARBURST BURST 1 2 }  { m_axi_in_array_ARLOCK LOCK 1 2 }  { m_axi_in_array_ARCACHE CACHE 1 4 }  { m_axi_in_array_ARPROT PROT 1 3 }  { m_axi_in_array_ARQOS QOS 1 4 }  { m_axi_in_array_ARREGION REGION 1 4 }  { m_axi_in_array_ARUSER USER 1 1 }  { m_axi_in_array_RVALID VALID 0 1 }  { m_axi_in_array_RREADY READY 1 1 }  { m_axi_in_array_RDATA DATA 0 32 }  { m_axi_in_array_RLAST LAST 0 1 }  { m_axi_in_array_RID ID 0 1 }  { m_axi_in_array_RUSER USER 0 1 }  { m_axi_in_array_RRESP RESP 0 2 }  { m_axi_in_array_BVALID VALID 0 1 }  { m_axi_in_array_BREADY READY 1 1 }  { m_axi_in_array_BRESP RESP 0 2 }  { m_axi_in_array_BID ID 0 1 }  { m_axi_in_array_BUSER USER 0 1 } } }
	in_array_offset { ap_none {  { in_array_offset in_data 0 32 } } }
	out_array { ap_none {  { out_array in_data 0 32 } } }
	out_array_out { ap_fifo {  { out_array_out_din fifo_data 1 32 }  { out_array_out_full_n fifo_status 0 1 }  { out_array_out_write fifo_update 1 1 } } }
}
