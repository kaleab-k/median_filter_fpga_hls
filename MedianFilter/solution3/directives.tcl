############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_stream -depth 1024 -dim 1 "conv_stream" out_stream
set_directive_stream -depth 1024 -dim 1 "conv_stream" in_stream
set_directive_pipeline "write_pixels_to_stream/write_pixels_to_stream_loop"
set_directive_pipeline "read_pixels_from_stream/read_pixels_from_stream_loop"
set_directive_pipeline "bubble_sort/bubble_sort_inner_loop"
set_directive_unroll "bubble_sort/bubble_sort_outer_loop"
set_directive_pipeline "bubble_sort/bubble_sort_mapping"
set_directive_pipeline "filter/conv_cols"
set_directive_stream -depth 1024 -dim 1 "filter_wrapper" in_stream
set_directive_stream -depth 1024 -dim 1 "filter_wrapper" out_stream
set_directive_pipeline "filter/filter_cols"
set_directive_interface -mode m_axi -depth 400000 -offset slave -num_read_outstanding 2 -num_write_outstanding 2 -max_read_burst_length 256 -max_write_burst_length 256 "filter_wrapper" in_array
set_directive_interface -mode s_axilite "filter_wrapper"
set_directive_interface -mode m_axi -depth 400000 -offset slave -num_read_outstanding 2 -num_write_outstanding 2 -max_read_burst_length 256 -max_write_burst_length 256 "filter_wrapper" out_array
set_directive_dataflow "filter_wrapper"
