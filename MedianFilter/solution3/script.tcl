############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MedianFilter
set_top filter_wrapper
add_files MedianFilter/median.cpp
add_files MedianFilter/median.h
add_files -tb MedianFilter/main.cpp
open_solution "solution3"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./MedianFilter/solution3/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc -trace_level port -rtl vhdl
export_design -rtl vhdl -format ip_catalog
