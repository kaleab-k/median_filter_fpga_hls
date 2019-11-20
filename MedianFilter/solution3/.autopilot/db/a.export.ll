; ModuleID = '/home/kinka1/HLS/MedianFilter/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out_stream_OC_V_str = internal unnamed_addr constant [13 x i8] c"out_stream.V\00"
@out_array_c_str = internal unnamed_addr constant [12 x i8] c"out_array_c\00"
@mode7 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@in_stream_OC_V_str = internal unnamed_addr constant [12 x i8] c"in_stream.V\00"
@filter_wrapper_str = internal unnamed_addr constant [15 x i8] c"filter_wrapper\00"
@filter_rows_filter_c = internal unnamed_addr constant [24 x i8] c"filter_rows_filter_cols\00"
@bundle8 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str9 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str8 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"filter_cols\00", align 1
@p_str48 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str47 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str46 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str45 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str44 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str43 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str41 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str40 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str39 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str38 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str37 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str36 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str35 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str34 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [29 x i8] c"read_pixels_from_stream_loop\00", align 1
@p_str19 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str18 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str17 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [28 x i8] c"write_pixels_to_stream_loop\00", align 1

define internal fastcc void @write_pixels_to_stre(i32* %in_stream_V, i32* %in_array, i32 %in_array_offset, i32 %out_array, i32* %out_array_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str25, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str29, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str25, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str29, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_array, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @p_str1, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_array, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @p_str1, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_array_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str15, i32 0, i32 0, [1 x i8]* @p_str16, [1 x i8]* @p_str17, [1 x i8]* @p_str18, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str19, [1 x i8]* @p_str20)
  %out_array_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %out_array)
  %in_array_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %in_array_offset)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %out_array_out, i32 %out_array_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str25, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str29, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_array, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @p_str1, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %in_array_offset1_i_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %in_array_offset_read, i32 2, i32 31)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str25, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str29, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_array, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @p_str1, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %sext_i_i = zext i30 %in_array_offset1_i_i to i64
  %in_array_addr = getelementptr i32* %in_array, i64 %sext_i_i
  %in_array_addr_i_i_rd = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %in_array_addr, i32 360000)
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %i_i_i = phi i19 [ 0, %entry ], [ %i, %1 ]
  %exitcond_i_i = icmp eq i19 %i_i_i, -164288
  %i = add i19 %i_i_i, 1
  br i1 %exitcond_i_i, label %.exit, label %1

; <label>:1                                       ; preds = %0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 360000, i64 360000, i64 360000)
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @p_str) nounwind
  %tmp_2_i_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([28 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %temp = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %in_array_addr)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %in_stream_V, i32 %temp)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([28 x i8]* @p_str, i32 %tmp_2_i_i)
  br label %0

.exit:                                            ; preds = %0
  ret void
}

define internal fastcc void @read_pixels_from_str(i32* %out_stream_V, i32* %out_array, i32* nocapture %out_array_offset) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str32, i32 0, i32 0, [1 x i8]* @p_str33, [1 x i8]* @p_str34, [1 x i8]* @p_str35, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str36, [1 x i8]* @p_str37)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_array, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @p_str1, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_array_offset, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str43, i32 0, i32 0, [1 x i8]* @p_str44, [1 x i8]* @p_str45, [1 x i8]* @p_str46, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str47, [1 x i8]* @p_str48)
  %out_array_offset_rea = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %out_array_offset)
  %out_array_offset1_i = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_array_offset_rea, i32 2, i32 31)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str32, i32 0, i32 0, [1 x i8]* @p_str33, [1 x i8]* @p_str34, [1 x i8]* @p_str35, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str36, [1 x i8]* @p_str37)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_array, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @p_str1, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %sext_i = zext i30 %out_array_offset1_i to i64
  %out_array_addr = getelementptr i32* %out_array, i64 %sext_i
  %out_array_addr_i_wr_s = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %out_array_addr, i32 357604)
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %i_i = phi i19 [ 0, %entry ], [ %i, %1 ]
  %exitcond_i = icmp eq i19 %i_i, -166684
  %i = add i19 %i_i, 1
  br i1 %exitcond_i, label %.exit, label %1

; <label>:1                                       ; preds = %0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 357604, i64 357604, i64 357604)
  call void (...)* @_ssdm_op_SpecLoopName([29 x i8]* @p_str2) nounwind
  %tmp_5_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([29 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %out_stream_V)
  call void @_ssdm_op_Write.m_axi.i32P(i32* %out_array_addr, i32 %tmp, i4 -1)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([29 x i8]* @p_str2, i32 %tmp_5_i)
  br label %0

.exit:                                            ; preds = %0
  %out_array_addr_i_wr_1 = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %out_array_addr)
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @filter_wrapper(i32* %gmem, i32 %in_array, i32 %out_array) {
  %out_array_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %out_array)
  %in_array_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %in_array)
  %out_array_c = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem), !map !40
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @filter_wrapper_str) nounwind
  %in_stream_V = alloca i32, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([12 x i8]* @in_stream_OC_V_str, i32 1, [1 x i8]* @p_str24, [1 x i8]* @p_str24, i32 1024, i32 1024, i32* %in_stream_V, i32* %in_stream_V) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str25, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str29, [1 x i8]* @p_str30)
  %out_stream_V = alloca i32, align 4
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @out_stream_OC_V_str, i32 1, [1 x i8]* @p_str31, [1 x i8]* @p_str31, i32 1024, i32 1024, i32* %out_stream_V, i32* %out_stream_V) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str32, i32 0, i32 0, [1 x i8]* @p_str33, [1 x i8]* @p_str34, [1 x i8]* @p_str35, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str36, [1 x i8]* @p_str37)
  call void (...)* @_ssdm_op_SpecInterface(i32 %out_array, [10 x i8]* @mode7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @bundle8, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @p_str1, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i32 %in_array, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 400000, [1 x i8]* @bundle, [6 x i8]* @p_str8, [1 x i8]* @p_str1, i32 2, i32 2, i32 256, i32 256, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([12 x i8]* @out_array_c_str, i32 1, [1 x i8]* @p_str21, [1 x i8]* @p_str21, i32 2, i32 0, i32* %out_array_c, i32* %out_array_c)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_array_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str22, i32 0, i32 0, [1 x i8]* @p_str23, [1 x i8]* @p_str38, [1 x i8]* @p_str39, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str40, [1 x i8]* @p_str41)
  call fastcc void @write_pixels_to_stre(i32* %in_stream_V, i32* %gmem, i32 %in_array_read, i32 %out_array_read, i32* %out_array_c)
  call fastcc void @filter(i32* %in_stream_V, i32* %out_stream_V) nounwind
  call fastcc void @read_pixels_from_str(i32* %out_stream_V, i32* %gmem, i32* nocapture %out_array_c)
  ret void
}

define internal fastcc void @filter(i32* %in_stream_V, i32* %out_stream_V) {
  %crop_2_1 = alloca i32
  %crop_0_0 = alloca i32
  %crop_0_1 = alloca i32
  %crop_2_0 = alloca i32
  %crop_1_0 = alloca i32
  %crop_1_1 = alloca i32
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str32, i32 0, i32 0, [1 x i8]* @p_str33, [1 x i8]* @p_str34, [1 x i8]* @p_str35, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str36, [1 x i8]* @p_str37)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str25, i32 0, i32 0, [1 x i8]* @p_str26, [1 x i8]* @p_str27, [1 x i8]* @p_str28, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str29, [1 x i8]* @p_str30)
  %temp_array_0 = alloca [600 x i32], align 16
  %temp_array_1 = alloca [600 x i32], align 16
  br label %1

; <label>:1                                       ; preds = %0, %._crit_edge
  %indvar_flatten = phi i19 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge ]
  %i = phi i10 [ 0, %0 ], [ %i_mid2, %._crit_edge ]
  %j = phi i10 [ 0, %0 ], [ %j_1, %._crit_edge ]
  %crop_2_1_load = load i32* %crop_2_1
  %crop_0_0_load = load i32* %crop_0_0
  %crop_0_1_load = load i32* %crop_0_1
  %crop_2_0_load = load i32* %crop_2_0
  %crop_1_0_load = load i32* %crop_1_0
  %crop_1_1_load = load i32* %crop_1_1
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -164288
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  store i32 %crop_1_1_load, i32* %crop_1_0
  store i32 %crop_2_1_load, i32* %crop_2_0
  store i32 %crop_0_1_load, i32* %crop_0_0
  br i1 %exitcond_flatten, label %3, label %.reset

; <label>:2                                       ; preds = %.reset
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_stream_V, i32 %tmp_4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.reset
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_9)
  %j_1 = add i10 %j_mid2, 1
  br label %1

.reset:                                           ; preds = %1
  %crop_2_1_load_1 = load i32* %crop_2_1
  %crop_0_1_load_1 = load i32* %crop_0_1
  %crop_1_1_load_1 = load i32* %crop_1_1
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @filter_rows_filter_c)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 360000, i64 360000, i64 360000)
  %exitcond = icmp eq i10 %j, -424
  %j_mid2 = select i1 %exitcond, i10 0, i10 %j
  %i_s = add i10 %i, 1
  %tmp = call i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10 %i_s, i32 1, i32 9)
  %icmp = icmp ne i9 %tmp, 0
  %tmp_1 = call i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10 %i, i32 1, i32 9)
  %icmp1 = icmp ne i9 %tmp_1, 0
  %tmp_mid2 = select i1 %exitcond, i1 %icmp, i1 %icmp1
  %i_mid2 = select i1 %exitcond, i10 %i_s, i10 %i
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str6) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_5 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V)
  %tmp_8 = zext i10 %j_mid2 to i64
  %temp_array_0_addr = getelementptr [600 x i32]* %temp_array_0, i64 0, i64 %tmp_8
  %crop_0_2 = load i32* %temp_array_0_addr, align 4
  %temp_array_1_addr = getelementptr [600 x i32]* %temp_array_1, i64 0, i64 %tmp_8
  %crop_1_2 = load i32* %temp_array_1_addr, align 4
  store i32 %crop_1_2, i32* %temp_array_0_addr, align 4
  store i32 %tmp_5, i32* %temp_array_1_addr, align 4
  %tmp_4 = call fastcc i32 @bubble_sort(i32 %crop_0_0_load, i32 %crop_0_1_load_1, i32 %crop_0_2, i32 %crop_1_0_load, i32 %crop_1_1_load_1, i32 %crop_1_2, i32 %crop_2_0_load, i32 %crop_2_1_load_1, i32 %tmp_5)
  %tmp_3 = call i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10 %j_mid2, i32 1, i32 9)
  %icmp2 = icmp ne i9 %tmp_3, 0
  %or_cond = and i1 %tmp_mid2, %icmp2
  store i32 %crop_1_2, i32* %crop_1_1
  store i32 %crop_0_2, i32* %crop_0_1
  store i32 %tmp_5, i32* %crop_2_1
  br i1 %or_cond, label %2, label %._crit_edge

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc i32 @bubble_sort(i32 %CROP_0_0_read, i32 %CROP_0_1_read, i32 %CROP_0_2_read, i32 %CROP_1_0_read, i32 %CROP_1_1_read, i32 %CROP_1_2_read, i32 %CROP_2_0_read, i32 %CROP_2_1_read, i32 %CROP_2_2_read) readnone {
.preheader5.preheader.0:
  %CROP_2_2_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_2_2_read)
  %CROP_2_1_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_2_1_read)
  %CROP_2_0_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_2_0_read)
  %CROP_1_2_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_1_2_read)
  %CROP_1_1_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_1_1_read)
  %CROP_1_0_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_1_0_read)
  %CROP_0_2_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_0_2_read)
  %CROP_0_1_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_0_1_read)
  %CROP_0_0_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %CROP_0_0_read)
  %tmp_s = icmp sgt i32 %CROP_0_0_read_1, %CROP_0_1_read_1
  %p_read1_read = select i1 %tmp_s, i32 %CROP_0_1_read_1, i32 %CROP_0_0_read_1
  %p_read_read1 = select i1 %tmp_s, i32 %CROP_0_0_read_1, i32 %CROP_0_1_read_1
  %tmp_12_0_1 = icmp sgt i32 %p_read_read1, %CROP_0_2_read_1
  %p_read2_read_read1 = select i1 %tmp_12_0_1, i32 %CROP_0_2_read_1, i32 %p_read_read1
  %p_read_read1_read2 = select i1 %tmp_12_0_1, i32 %p_read_read1, i32 %CROP_0_2_read_1
  %tmp_12_0_2 = icmp sgt i32 %p_read_read1_read2, %CROP_1_0_read_1
  %p_read3_read_read1_s = select i1 %tmp_12_0_2, i32 %CROP_1_0_read_1, i32 %p_read_read1_read2
  %p_read_read1_read2_s = select i1 %tmp_12_0_2, i32 %p_read_read1_read2, i32 %CROP_1_0_read_1
  %tmp_12_0_3 = icmp sgt i32 %p_read_read1_read2_s, %CROP_1_1_read_1
  %p_read4_read_read1_s = select i1 %tmp_12_0_3, i32 %CROP_1_1_read_1, i32 %p_read_read1_read2_s
  %p_read_read1_read2_1 = select i1 %tmp_12_0_3, i32 %p_read_read1_read2_s, i32 %CROP_1_1_read_1
  %tmp_12_0_4 = icmp sgt i32 %p_read_read1_read2_1, %CROP_1_2_read_1
  %p_read5_read_read1_s = select i1 %tmp_12_0_4, i32 %CROP_1_2_read_1, i32 %p_read_read1_read2_1
  %p_read_read1_read2_2 = select i1 %tmp_12_0_4, i32 %p_read_read1_read2_1, i32 %CROP_1_2_read_1
  %tmp_12_0_5 = icmp sgt i32 %p_read_read1_read2_2, %CROP_2_0_read_1
  %p_read6_read_read1_s = select i1 %tmp_12_0_5, i32 %CROP_2_0_read_1, i32 %p_read_read1_read2_2
  %p_read_read1_read2_3 = select i1 %tmp_12_0_5, i32 %p_read_read1_read2_2, i32 %CROP_2_0_read_1
  %tmp_12_0_6 = icmp sgt i32 %p_read_read1_read2_3, %CROP_2_1_read_1
  %sel_SEBB = select i1 %tmp_12_0_6, i32 %CROP_2_1_read_1, i32 %p_read_read1_read2_3
  %sel_SEBB9 = select i1 %tmp_12_0_6, i32 %p_read_read1_read2_3, i32 %CROP_2_1_read_1
  %tmp_12_0_7 = icmp sgt i32 %sel_SEBB9, %CROP_2_2_read_1
  %p_read8_sel_SEBB9 = select i1 %tmp_12_0_7, i32 %CROP_2_2_read_1, i32 %sel_SEBB9
  %sel_SEBB9_read8 = select i1 %tmp_12_0_7, i32 %sel_SEBB9, i32 %CROP_2_2_read_1
  %tmp_12_1 = icmp sgt i32 %p_read1_read, %p_read2_read_read1
  %p_read2_read_read1_s = select i1 %tmp_12_1, i32 %p_read2_read_read1, i32 %p_read1_read
  %p_read1_read_read2_s = select i1 %tmp_12_1, i32 %p_read1_read, i32 %p_read2_read_read1
  %tmp_12_1_1 = icmp sgt i32 %p_read1_read_read2_s, %p_read3_read_read1_s
  %sel_SEBB1 = select i1 %tmp_12_1_1, i32 %p_read3_read_read1_s, i32 %p_read1_read_read2_s
  %sel_SEBB2 = select i1 %tmp_12_1_1, i32 %p_read1_read_read2_s, i32 %p_read3_read_read1_s
  %tmp_12_1_2 = icmp sgt i32 %sel_SEBB2, %p_read4_read_read1_s
  %p_read4_read_read1_1 = select i1 %tmp_12_1_2, i32 %p_read4_read_read1_s, i32 %sel_SEBB2
  %sel_SEBB11_read4_r = select i1 %tmp_12_1_2, i32 %sel_SEBB2, i32 %p_read4_read_read1_s
  %tmp_12_1_3 = icmp sgt i32 %sel_SEBB11_read4_r, %p_read5_read_read1_s
  %sel_SEBB3 = select i1 %tmp_12_1_3, i32 %p_read5_read_read1_s, i32 %sel_SEBB11_read4_r
  %sel_SEBB4 = select i1 %tmp_12_1_3, i32 %sel_SEBB11_read4_r, i32 %p_read5_read_read1_s
  %tmp_12_1_4 = icmp sgt i32 %sel_SEBB4, %p_read6_read_read1_s
  %sel_SEBB5 = select i1 %tmp_12_1_4, i32 %p_read6_read_read1_s, i32 %sel_SEBB4
  %sel_SEBB6 = select i1 %tmp_12_1_4, i32 %sel_SEBB4, i32 %p_read6_read_read1_s
  %tmp_12_1_5 = icmp sgt i32 %sel_SEBB6, %sel_SEBB
  %sel_SEBB_sel_SEBB = select i1 %tmp_12_1_5, i32 %sel_SEBB, i32 %sel_SEBB6
  %sel_SEBB15_sel_SEBB = select i1 %tmp_12_1_5, i32 %sel_SEBB6, i32 %sel_SEBB
  %tmp_12_1_6 = icmp sgt i32 %sel_SEBB15_sel_SEBB, %p_read8_sel_SEBB9
  %p_read8_sel_SEBB9_sel = select i1 %tmp_12_1_6, i32 %p_read8_sel_SEBB9, i32 %sel_SEBB15_sel_SEBB
  %sel_SEBB15_sel_SEBB_s = select i1 %tmp_12_1_6, i32 %sel_SEBB15_sel_SEBB, i32 %p_read8_sel_SEBB9
  %tmp_12_1_7 = icmp sgt i32 %sel_SEBB15_sel_SEBB_s, %sel_SEBB9_read8
  %sel_SEBB7 = select i1 %tmp_12_1_7, i32 %sel_SEBB9_read8, i32 %sel_SEBB15_sel_SEBB_s
  %sel_SEBB17_sel_SEBB9 = select i1 %tmp_12_1_7, i32 %sel_SEBB15_sel_SEBB_s, i32 %sel_SEBB9_read8
  %tmp_12_2 = icmp sgt i32 %p_read2_read_read1_s, %sel_SEBB1
  %sel_SEBB10_read2_r = select i1 %tmp_12_2, i32 %sel_SEBB1, i32 %p_read2_read_read1_s
  %p_read2_read_read1_1 = select i1 %tmp_12_2, i32 %p_read2_read_read1_s, i32 %sel_SEBB1
  %tmp_12_2_1 = icmp sgt i32 %p_read2_read_read1_1, %p_read4_read_read1_1
  %sel_SEBB8 = select i1 %tmp_12_2_1, i32 %p_read4_read_read1_1, i32 %p_read2_read_read1_1
  %sel_SEBB10 = select i1 %tmp_12_2_1, i32 %p_read2_read_read1_1, i32 %p_read4_read_read1_1
  %tmp_12_2_2 = icmp sgt i32 %sel_SEBB10, %sel_SEBB3
  %sel_SEBB12_sel_SEBB = select i1 %tmp_12_2_2, i32 %sel_SEBB3, i32 %sel_SEBB10
  %sel_SEBB19_sel_SEBB = select i1 %tmp_12_2_2, i32 %sel_SEBB10, i32 %sel_SEBB3
  %tmp_12_2_3 = icmp sgt i32 %sel_SEBB19_sel_SEBB, %sel_SEBB5
  %sel_SEBB14_sel_SEBB1 = select i1 %tmp_12_2_3, i32 %sel_SEBB5, i32 %sel_SEBB19_sel_SEBB
  %sel_SEBB19_sel_SEBB1 = select i1 %tmp_12_2_3, i32 %sel_SEBB19_sel_SEBB, i32 %sel_SEBB5
  %tmp_12_2_4 = icmp sgt i32 %sel_SEBB19_sel_SEBB1, %sel_SEBB_sel_SEBB
  %sel_SEBB11 = select i1 %tmp_12_2_4, i32 %sel_SEBB_sel_SEBB, i32 %sel_SEBB19_sel_SEBB1
  %sel_SEBB12 = select i1 %tmp_12_2_4, i32 %sel_SEBB19_sel_SEBB1, i32 %sel_SEBB_sel_SEBB
  %tmp_12_2_5 = icmp sgt i32 %sel_SEBB12, %p_read8_sel_SEBB9_sel
  %p_read8_sel_SEBB9_sel_1 = select i1 %tmp_12_2_5, i32 %p_read8_sel_SEBB9_sel, i32 %sel_SEBB12
  %sel_SEBB21_read8_se = select i1 %tmp_12_2_5, i32 %sel_SEBB12, i32 %p_read8_sel_SEBB9_sel
  %tmp_12_2_6 = icmp sgt i32 %sel_SEBB21_read8_se, %sel_SEBB7
  %sel_SEBB13 = select i1 %tmp_12_2_6, i32 %sel_SEBB7, i32 %sel_SEBB21_read8_se
  %sel_SEBB14 = select i1 %tmp_12_2_6, i32 %sel_SEBB21_read8_se, i32 %sel_SEBB7
  %tmp_12_2_7 = icmp sgt i32 %sel_SEBB14, %sel_SEBB9_read8
  %sel_SEBB9_read8_sel = select i1 %tmp_12_2_7, i32 %sel_SEBB9_read8, i32 %sel_SEBB14
  %sel_SEBB23_sel_SEBB9 = select i1 %tmp_12_2_7, i32 %sel_SEBB14, i32 %sel_SEBB9_read8
  %tmp_12_2_8 = icmp sgt i32 %sel_SEBB23_sel_SEBB9, %sel_SEBB17_sel_SEBB9
  %sel_SEBB15 = select i1 %tmp_12_2_8, i32 %sel_SEBB23_sel_SEBB9, i32 %sel_SEBB17_sel_SEBB9
  %sel_SEBB16 = select i1 %tmp_12_2_8, i32 %sel_SEBB17_sel_SEBB9, i32 %sel_SEBB23_sel_SEBB9
  %tmp_12_3 = icmp sgt i32 %sel_SEBB10_read2_r, %sel_SEBB8
  %sel_SEBB17 = select i1 %tmp_12_3, i32 %sel_SEBB8, i32 %sel_SEBB10_read2_r
  %sel_SEBB18 = select i1 %tmp_12_3, i32 %sel_SEBB10_read2_r, i32 %sel_SEBB8
  %tmp_12_3_1 = icmp sgt i32 %sel_SEBB18, %sel_SEBB12_sel_SEBB
  %sel_SEBB12_sel_SEBB1 = select i1 %tmp_12_3_1, i32 %sel_SEBB12_sel_SEBB, i32 %sel_SEBB18
  %sel_SEBB27_sel_SEBB1 = select i1 %tmp_12_3_1, i32 %sel_SEBB18, i32 %sel_SEBB12_sel_SEBB
  %tmp_12_3_2 = icmp sgt i32 %sel_SEBB27_sel_SEBB1, %sel_SEBB14_sel_SEBB1
  %sel_SEBB19 = select i1 %tmp_12_3_2, i32 %sel_SEBB14_sel_SEBB1, i32 %sel_SEBB27_sel_SEBB1
  %sel_SEBB20 = select i1 %tmp_12_3_2, i32 %sel_SEBB27_sel_SEBB1, i32 %sel_SEBB14_sel_SEBB1
  %tmp_12_3_3 = icmp sgt i32 %sel_SEBB20, %sel_SEBB11
  %sel_SEBB20_sel_SEBB = select i1 %tmp_12_3_3, i32 %sel_SEBB11, i32 %sel_SEBB20
  %sel_SEBB29_sel_SEBB = select i1 %tmp_12_3_3, i32 %sel_SEBB20, i32 %sel_SEBB11
  %tmp_12_3_4 = icmp sgt i32 %sel_SEBB29_sel_SEBB, %p_read8_sel_SEBB9_sel_1
  %sel_SEBB21 = select i1 %tmp_12_3_4, i32 %p_read8_sel_SEBB9_sel_1, i32 %sel_SEBB29_sel_SEBB
  %sel_SEBB22 = select i1 %tmp_12_3_4, i32 %sel_SEBB29_sel_SEBB, i32 %p_read8_sel_SEBB9_sel_1
  %tmp_12_3_5 = icmp sgt i32 %sel_SEBB22, %sel_SEBB13
  %sel_SEBB22_sel_SEBB = select i1 %tmp_12_3_5, i32 %sel_SEBB13, i32 %sel_SEBB22
  %sel_SEBB31_sel_SEBB = select i1 %tmp_12_3_5, i32 %sel_SEBB22, i32 %sel_SEBB13
  %tmp_12_3_6 = icmp sgt i32 %sel_SEBB31_sel_SEBB, %sel_SEBB9_read8_sel
  %sel_SEBB23 = select i1 %tmp_12_3_6, i32 %sel_SEBB9_read8_sel, i32 %sel_SEBB31_sel_SEBB
  %sel_SEBB24 = select i1 %tmp_12_3_6, i32 %sel_SEBB31_sel_SEBB, i32 %sel_SEBB9_read8_sel
  %tmp_12_3_7 = icmp sgt i32 %sel_SEBB24, %sel_SEBB16
  %sel_SEBB25_sel_SEBB = select i1 %tmp_12_3_7, i32 %sel_SEBB16, i32 %sel_SEBB24
  %sel_SEBB33_sel_SEBB = select i1 %tmp_12_3_7, i32 %sel_SEBB24, i32 %sel_SEBB16
  %tmp_12_3_8 = icmp sgt i32 %sel_SEBB33_sel_SEBB, %sel_SEBB15
  %sel_SEBB33_sel_SEBB2 = select i1 %tmp_12_3_8, i32 %sel_SEBB33_sel_SEBB, i32 %sel_SEBB15
  %sel_SEBB24_sel_SEBB3 = select i1 %tmp_12_3_8, i32 %sel_SEBB15, i32 %sel_SEBB33_sel_SEBB
  %tmp_12_4 = icmp sgt i32 %sel_SEBB17, %sel_SEBB12_sel_SEBB1
  %sel_SEBB12_sel_SEBB1_1 = select i1 %tmp_12_4, i32 %sel_SEBB12_sel_SEBB1, i32 %sel_SEBB17
  %sel_SEBB26_sel_SEBB1 = select i1 %tmp_12_4, i32 %sel_SEBB17, i32 %sel_SEBB12_sel_SEBB1
  %tmp_12_4_1 = icmp sgt i32 %sel_SEBB26_sel_SEBB1, %sel_SEBB19
  %sel_SEBB25 = select i1 %tmp_12_4_1, i32 %sel_SEBB19, i32 %sel_SEBB26_sel_SEBB1
  %sel_SEBB26 = select i1 %tmp_12_4_1, i32 %sel_SEBB26_sel_SEBB1, i32 %sel_SEBB19
  %tmp_12_4_2 = icmp sgt i32 %sel_SEBB26, %sel_SEBB20_sel_SEBB
  %sel_SEBB20_sel_SEBB2 = select i1 %tmp_12_4_2, i32 %sel_SEBB20_sel_SEBB, i32 %sel_SEBB26
  %sel_SEBB35_sel_SEBB2 = select i1 %tmp_12_4_2, i32 %sel_SEBB26, i32 %sel_SEBB20_sel_SEBB
  %tmp_12_4_3 = icmp sgt i32 %sel_SEBB35_sel_SEBB2, %sel_SEBB21
  %sel_SEBB30_sel_SEBB3 = select i1 %tmp_12_4_3, i32 %sel_SEBB21, i32 %sel_SEBB35_sel_SEBB2
  %sel_SEBB35_sel_SEBB2_1 = select i1 %tmp_12_4_3, i32 %sel_SEBB35_sel_SEBB2, i32 %sel_SEBB21
  %tmp_12_4_4 = icmp sgt i32 %sel_SEBB35_sel_SEBB2_1, %sel_SEBB22_sel_SEBB
  %sel_SEBB27 = select i1 %tmp_12_4_4, i32 %sel_SEBB22_sel_SEBB, i32 %sel_SEBB35_sel_SEBB2_1
  %sel_SEBB28 = select i1 %tmp_12_4_4, i32 %sel_SEBB35_sel_SEBB2_1, i32 %sel_SEBB22_sel_SEBB
  %tmp_12_4_5 = icmp sgt i32 %sel_SEBB28, %sel_SEBB23
  %sel_SEBB32_sel_SEBB = select i1 %tmp_12_4_5, i32 %sel_SEBB23, i32 %sel_SEBB28
  %sel_SEBB37_sel_SEBB = select i1 %tmp_12_4_5, i32 %sel_SEBB28, i32 %sel_SEBB23
  %tmp_12_4_6 = icmp sgt i32 %sel_SEBB37_sel_SEBB, %sel_SEBB25_sel_SEBB
  %sel_SEBB25_sel_SEBB3 = select i1 %tmp_12_4_6, i32 %sel_SEBB25_sel_SEBB, i32 %sel_SEBB37_sel_SEBB
  %sel_SEBB37_sel_SEBB3 = select i1 %tmp_12_4_6, i32 %sel_SEBB37_sel_SEBB, i32 %sel_SEBB25_sel_SEBB
  %tmp_12_4_7 = icmp sgt i32 %sel_SEBB37_sel_SEBB3, %sel_SEBB24_sel_SEBB3
  %sel_SEBB29 = select i1 %tmp_12_4_7, i32 %sel_SEBB24_sel_SEBB3, i32 %sel_SEBB37_sel_SEBB3
  %sel_SEBB30 = select i1 %tmp_12_4_7, i32 %sel_SEBB37_sel_SEBB3, i32 %sel_SEBB24_sel_SEBB3
  %tmp_12_4_8 = icmp sgt i32 %sel_SEBB30, %sel_SEBB33_sel_SEBB2
  %sel_SEBB33_sel_SEBB2_1 = select i1 %tmp_12_4_8, i32 %sel_SEBB33_sel_SEBB2, i32 %sel_SEBB30
  %tmp_12_5 = icmp sgt i32 %sel_SEBB12_sel_SEBB1_1, %sel_SEBB25
  %sel_SEBB31 = select i1 %tmp_12_5, i32 %sel_SEBB25, i32 %sel_SEBB12_sel_SEBB1_1
  %sel_SEBB32 = select i1 %tmp_12_5, i32 %sel_SEBB12_sel_SEBB1_1, i32 %sel_SEBB25
  %tmp_12_5_1 = icmp sgt i32 %sel_SEBB32, %sel_SEBB20_sel_SEBB2
  %sel_SEBB20_sel_SEBB2_1 = select i1 %tmp_12_5_1, i32 %sel_SEBB20_sel_SEBB2, i32 %sel_SEBB32
  %sel_SEBB41_sel_SEBB2 = select i1 %tmp_12_5_1, i32 %sel_SEBB32, i32 %sel_SEBB20_sel_SEBB2
  %tmp_12_5_2 = icmp sgt i32 %sel_SEBB41_sel_SEBB2, %sel_SEBB30_sel_SEBB3
  %sel_SEBB33 = select i1 %tmp_12_5_2, i32 %sel_SEBB30_sel_SEBB3, i32 %sel_SEBB41_sel_SEBB2
  %sel_SEBB34 = select i1 %tmp_12_5_2, i32 %sel_SEBB41_sel_SEBB2, i32 %sel_SEBB30_sel_SEBB3
  %tmp_12_5_3 = icmp sgt i32 %sel_SEBB34, %sel_SEBB27
  %sel_SEBB36_sel_SEBB = select i1 %tmp_12_5_3, i32 %sel_SEBB27, i32 %sel_SEBB34
  %sel_SEBB43_sel_SEBB = select i1 %tmp_12_5_3, i32 %sel_SEBB34, i32 %sel_SEBB27
  %tmp_12_5_4 = icmp sgt i32 %sel_SEBB43_sel_SEBB, %sel_SEBB32_sel_SEBB
  %sel_SEBB32_sel_SEBB3 = select i1 %tmp_12_5_4, i32 %sel_SEBB32_sel_SEBB, i32 %sel_SEBB43_sel_SEBB
  %sel_SEBB43_sel_SEBB3 = select i1 %tmp_12_5_4, i32 %sel_SEBB43_sel_SEBB, i32 %sel_SEBB32_sel_SEBB
  %tmp_12_5_5 = icmp sgt i32 %sel_SEBB43_sel_SEBB3, %sel_SEBB25_sel_SEBB3
  %sel_SEBB35 = select i1 %tmp_12_5_5, i32 %sel_SEBB25_sel_SEBB3, i32 %sel_SEBB43_sel_SEBB3
  %sel_SEBB36 = select i1 %tmp_12_5_5, i32 %sel_SEBB43_sel_SEBB3, i32 %sel_SEBB25_sel_SEBB3
  %tmp_12_5_6 = icmp sgt i32 %sel_SEBB36, %sel_SEBB29
  %sel_SEBB38_sel_SEBB = select i1 %tmp_12_5_6, i32 %sel_SEBB29, i32 %sel_SEBB36
  %sel_SEBB45_sel_SEBB = select i1 %tmp_12_5_6, i32 %sel_SEBB36, i32 %sel_SEBB29
  %tmp_12_5_7 = icmp sgt i32 %sel_SEBB45_sel_SEBB, %sel_SEBB33_sel_SEBB2_1
  %sel_SEBB37 = select i1 %tmp_12_5_7, i32 %sel_SEBB33_sel_SEBB2_1, i32 %sel_SEBB45_sel_SEBB
  %tmp_12_6 = icmp sgt i32 %sel_SEBB31, %sel_SEBB20_sel_SEBB2_1
  %sel_SEBB38 = select i1 %tmp_12_6, i32 %sel_SEBB20_sel_SEBB2_1, i32 %sel_SEBB31
  %sel_SEBB39 = select i1 %tmp_12_6, i32 %sel_SEBB31, i32 %sel_SEBB20_sel_SEBB2_1
  %tmp_12_6_1 = icmp sgt i32 %sel_SEBB39, %sel_SEBB33
  %sel_SEBB42_sel_SEBB = select i1 %tmp_12_6_1, i32 %sel_SEBB33, i32 %sel_SEBB39
  %sel_SEBB51_sel_SEBB = select i1 %tmp_12_6_1, i32 %sel_SEBB39, i32 %sel_SEBB33
  %tmp_12_6_2 = icmp sgt i32 %sel_SEBB51_sel_SEBB, %sel_SEBB36_sel_SEBB
  %sel_SEBB36_sel_SEBB4 = select i1 %tmp_12_6_2, i32 %sel_SEBB36_sel_SEBB, i32 %sel_SEBB51_sel_SEBB
  %sel_SEBB51_sel_SEBB4 = select i1 %tmp_12_6_2, i32 %sel_SEBB51_sel_SEBB, i32 %sel_SEBB36_sel_SEBB
  %tmp_12_6_3 = icmp sgt i32 %sel_SEBB51_sel_SEBB4, %sel_SEBB32_sel_SEBB3
  %sel_SEBB40 = select i1 %tmp_12_6_3, i32 %sel_SEBB32_sel_SEBB3, i32 %sel_SEBB51_sel_SEBB4
  %sel_SEBB41 = select i1 %tmp_12_6_3, i32 %sel_SEBB51_sel_SEBB4, i32 %sel_SEBB32_sel_SEBB3
  %tmp_12_6_4 = icmp sgt i32 %sel_SEBB41, %sel_SEBB35
  %sel_SEBB44_sel_SEBB = select i1 %tmp_12_6_4, i32 %sel_SEBB35, i32 %sel_SEBB41
  %sel_SEBB53_sel_SEBB = select i1 %tmp_12_6_4, i32 %sel_SEBB41, i32 %sel_SEBB35
  %tmp_12_6_5 = icmp sgt i32 %sel_SEBB53_sel_SEBB, %sel_SEBB38_sel_SEBB
  %sel_SEBB38_sel_SEBB4 = select i1 %tmp_12_6_5, i32 %sel_SEBB38_sel_SEBB, i32 %sel_SEBB53_sel_SEBB
  %sel_SEBB53_sel_SEBB4 = select i1 %tmp_12_6_5, i32 %sel_SEBB53_sel_SEBB, i32 %sel_SEBB38_sel_SEBB
  %tmp_12_6_6 = icmp sgt i32 %sel_SEBB53_sel_SEBB4, %sel_SEBB37
  %sel_SEBB42 = select i1 %tmp_12_6_6, i32 %sel_SEBB37, i32 %sel_SEBB53_sel_SEBB4
  %tmp_12_7 = icmp sgt i32 %sel_SEBB38, %sel_SEBB42_sel_SEBB
  %sel_SEBB42_sel_SEBB5 = select i1 %tmp_12_7, i32 %sel_SEBB42_sel_SEBB, i32 %sel_SEBB38
  %sel_SEBB50_sel_SEBB4 = select i1 %tmp_12_7, i32 %sel_SEBB38, i32 %sel_SEBB42_sel_SEBB
  %tmp_12_7_1 = icmp sgt i32 %sel_SEBB50_sel_SEBB4, %sel_SEBB36_sel_SEBB4
  %sel_SEBB43 = select i1 %tmp_12_7_1, i32 %sel_SEBB36_sel_SEBB4, i32 %sel_SEBB50_sel_SEBB4
  %sel_SEBB44 = select i1 %tmp_12_7_1, i32 %sel_SEBB50_sel_SEBB4, i32 %sel_SEBB36_sel_SEBB4
  %tmp_12_7_2 = icmp sgt i32 %sel_SEBB44, %sel_SEBB40
  %sel_SEBB52_sel_SEBB = select i1 %tmp_12_7_2, i32 %sel_SEBB40, i32 %sel_SEBB44
  %sel_SEBB57_sel_SEBB = select i1 %tmp_12_7_2, i32 %sel_SEBB44, i32 %sel_SEBB40
  %tmp_12_7_3 = icmp sgt i32 %sel_SEBB57_sel_SEBB, %sel_SEBB44_sel_SEBB
  %sel_SEBB44_sel_SEBB5 = select i1 %tmp_12_7_3, i32 %sel_SEBB44_sel_SEBB, i32 %sel_SEBB57_sel_SEBB
  %sel_SEBB57_sel_SEBB5 = select i1 %tmp_12_7_3, i32 %sel_SEBB57_sel_SEBB, i32 %sel_SEBB44_sel_SEBB
  %tmp_12_7_4 = icmp sgt i32 %sel_SEBB57_sel_SEBB5, %sel_SEBB38_sel_SEBB4
  %sel_SEBB45 = select i1 %tmp_12_7_4, i32 %sel_SEBB38_sel_SEBB4, i32 %sel_SEBB57_sel_SEBB5
  %sel_SEBB46 = select i1 %tmp_12_7_4, i32 %sel_SEBB57_sel_SEBB5, i32 %sel_SEBB38_sel_SEBB4
  %tmp_12_7_5 = icmp sgt i32 %sel_SEBB46, %sel_SEBB42
  %sel_SEBB54_sel_SEBB = select i1 %tmp_12_7_5, i32 %sel_SEBB42, i32 %sel_SEBB46
  %tmp_12_8 = icmp sgt i32 %sel_SEBB42_sel_SEBB5, %sel_SEBB43
  %sel_SEBB42_sel_SEBB5_1 = select i1 %tmp_12_8, i32 %sel_SEBB42_sel_SEBB5, i32 %sel_SEBB43
  %tmp_12_8_1 = icmp sgt i32 %sel_SEBB42_sel_SEBB5_1, %sel_SEBB52_sel_SEBB
  %sel_SEBB47 = select i1 %tmp_12_8_1, i32 %sel_SEBB42_sel_SEBB5_1, i32 %sel_SEBB52_sel_SEBB
  %tmp_12_8_2 = icmp sgt i32 %sel_SEBB47, %sel_SEBB44_sel_SEBB5
  %sel_SEBB48 = select i1 %tmp_12_8_2, i32 %sel_SEBB47, i32 %sel_SEBB44_sel_SEBB5
  %tmp_12_8_3 = icmp sgt i32 %sel_SEBB48, %sel_SEBB45
  %sel_SEBB63_sel_SEBB = select i1 %tmp_12_8_3, i32 %sel_SEBB48, i32 %sel_SEBB45
  %tmp_12_8_4 = icmp sgt i32 %sel_SEBB63_sel_SEBB, %sel_SEBB54_sel_SEBB
  %sel_SEBB54_sel_SEBB5 = select i1 %tmp_12_8_4, i32 %sel_SEBB54_sel_SEBB, i32 %sel_SEBB63_sel_SEBB
  ret i32 %sel_SEBB54_sel_SEBB5
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_13 = trunc i10 %empty to i9
  ret i9 %empty_13
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i30
  ret i30 %empty_14
}

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @_autotb_FifoRead_i32(i32*)

!opencl.kernels = !{!0, !7, !10, !16, !20, !24, !24, !30, !34}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!37}
!axi4.slave.bundlemap = !{!38, !39}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Input_Type> &", metadata !"Input_Type*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"in_array"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Output_Type> &", metadata !"Output_Type*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"out_stream", metadata !"out_array"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!12 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!13 = metadata !{metadata !"kernel_arg_type", metadata !"Input_Type [3]*"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"CROP"}
!16 = metadata !{null, metadata !17, metadata !2, metadata !18, metadata !4, metadata !19, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Input_Type> &", metadata !"hls::stream<Output_Type> &"}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!20 = metadata !{null, metadata !21, metadata !2, metadata !22, metadata !4, metadata !23, metadata !6}
!21 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"Input_Type*", metadata !"Output_Type*"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"in_array", metadata !"out_array"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space"}
!26 = metadata !{metadata !"kernel_arg_access_qual"}
!27 = metadata !{metadata !"kernel_arg_type"}
!28 = metadata !{metadata !"kernel_arg_type_qual"}
!29 = metadata !{metadata !"kernel_arg_name"}
!30 = metadata !{null, metadata !31, metadata !12, metadata !32, metadata !14, metadata !33, metadata !6}
!31 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"int &"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!34 = metadata !{null, metadata !31, metadata !12, metadata !35, metadata !14, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!37 = metadata !{metadata !"gmem", metadata !"in_array", metadata !"READONLY", metadata !"out_array", metadata !"WRITEONLY"}
!38 = metadata !{metadata !"in_array", metadata !""}
!39 = metadata !{metadata !"out_array", metadata !""}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43, metadata !46}
!43 = metadata !{metadata !"in_array", metadata !44, metadata !"int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 359999, i32 1}
!46 = metadata !{metadata !"out_array", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 357603, i32 1}
