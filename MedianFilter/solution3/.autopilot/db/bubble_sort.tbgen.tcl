set moduleName bubble_sort
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {bubble_sort}
set C_modelType { int 32 }
set C_modelArgList {
	{ CROP_0_0_read int 32 regular  }
	{ CROP_0_1_read int 32 regular  }
	{ CROP_0_2_read int 32 regular  }
	{ CROP_1_0_read int 32 regular  }
	{ CROP_1_1_read int 32 regular  }
	{ CROP_1_2_read int 32 regular  }
	{ CROP_2_0_read int 32 regular  }
	{ CROP_2_1_read int 32 regular  }
	{ CROP_2_2_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "CROP_0_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_0_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_0_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_1_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_1_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_1_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_2_0_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_2_1_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "CROP_2_2_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ CROP_0_0_read sc_in sc_lv 32 signal 0 } 
	{ CROP_0_1_read sc_in sc_lv 32 signal 1 } 
	{ CROP_0_2_read sc_in sc_lv 32 signal 2 } 
	{ CROP_1_0_read sc_in sc_lv 32 signal 3 } 
	{ CROP_1_1_read sc_in sc_lv 32 signal 4 } 
	{ CROP_1_2_read sc_in sc_lv 32 signal 5 } 
	{ CROP_2_0_read sc_in sc_lv 32 signal 6 } 
	{ CROP_2_1_read sc_in sc_lv 32 signal 7 } 
	{ CROP_2_2_read sc_in sc_lv 32 signal 8 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "CROP_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_0_0_read", "role": "default" }} , 
 	{ "name": "CROP_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_0_1_read", "role": "default" }} , 
 	{ "name": "CROP_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_0_2_read", "role": "default" }} , 
 	{ "name": "CROP_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_1_0_read", "role": "default" }} , 
 	{ "name": "CROP_1_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_1_1_read", "role": "default" }} , 
 	{ "name": "CROP_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_1_2_read", "role": "default" }} , 
 	{ "name": "CROP_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_2_0_read", "role": "default" }} , 
 	{ "name": "CROP_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_2_1_read", "role": "default" }} , 
 	{ "name": "CROP_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CROP_2_2_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "bubble_sort",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CROP_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "CROP_2_2_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	bubble_sort {
		CROP_0_0_read {Type I LastRead 0 FirstWrite -1}
		CROP_0_1_read {Type I LastRead 0 FirstWrite -1}
		CROP_0_2_read {Type I LastRead 0 FirstWrite -1}
		CROP_1_0_read {Type I LastRead 0 FirstWrite -1}
		CROP_1_1_read {Type I LastRead 0 FirstWrite -1}
		CROP_1_2_read {Type I LastRead 0 FirstWrite -1}
		CROP_2_0_read {Type I LastRead 0 FirstWrite -1}
		CROP_2_1_read {Type I LastRead 0 FirstWrite -1}
		CROP_2_2_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	CROP_0_0_read { ap_none {  { CROP_0_0_read in_data 0 32 } } }
	CROP_0_1_read { ap_none {  { CROP_0_1_read in_data 0 32 } } }
	CROP_0_2_read { ap_none {  { CROP_0_2_read in_data 0 32 } } }
	CROP_1_0_read { ap_none {  { CROP_1_0_read in_data 0 32 } } }
	CROP_1_1_read { ap_none {  { CROP_1_1_read in_data 0 32 } } }
	CROP_1_2_read { ap_none {  { CROP_1_2_read in_data 0 32 } } }
	CROP_2_0_read { ap_none {  { CROP_2_0_read in_data 0 32 } } }
	CROP_2_1_read { ap_none {  { CROP_2_1_read in_data 0 32 } } }
	CROP_2_2_read { ap_none {  { CROP_2_2_read in_data 0 32 } } }
}
