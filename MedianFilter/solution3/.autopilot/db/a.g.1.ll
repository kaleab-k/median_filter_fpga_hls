; ModuleID = '/home/kinka1/HLS/MedianFilter/solution3/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.0" = type { i32 }

@filter_wrapper.str = internal unnamed_addr constant [15 x i8] c"filter_wrapper\00" ; [#uses=1 type=[15 x i8]*]
@.str9 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str8 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"filter_cols\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"filter_rows\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [23 x i8] c"bubble_sort_inner_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@.str3 = private unnamed_addr constant [20 x i8] c"bubble_sort_mapping\00", align 1 ; [#uses=1 type=[20 x i8]*]
@.str2 = private unnamed_addr constant [29 x i8] c"read_pixels_from_stream_loop\00", align 1 ; [#uses=1 type=[29 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [28 x i8] c"write_pixels_to_stream_loop\00", align 1 ; [#uses=1 type=[28 x i8]*]

; [#uses=1]
define internal fastcc void @write_pixels_to_stream(%"class.hls::stream.0"* %in_stream, i32* %in_array) nounwind uwtable {
  %tmp.1 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !129), !dbg !130 ; [debug line = 3:54] [debug variable = in_stream]
  call void @llvm.dbg.value(metadata !{i32* %in_array}, i64 0, metadata !131), !dbg !132 ; [debug line = 4:16] [debug variable = in_array]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %in_array, i32 360000) nounwind, !dbg !133 ; [debug line = 4:36]
  %in_stream.addr = getelementptr inbounds %"class.hls::stream.0"* %in_stream, i64 0, i32 0, !dbg !135 ; [#uses=1 type=i32*] [debug line = 146:9@7:3]
  br label %1, !dbg !140                          ; [debug line = 5:44]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 360000, !dbg !140   ; [#uses=1 type=i1] [debug line = 5:44]
  br i1 %exitcond, label %3, label %2, !dbg !140  ; [debug line = 5:44]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !141 ; [debug line = 5:64]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !141 ; [#uses=1 type=i32] [debug line = 5:64]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !142 ; [debug line = 6:1]
  %tmp = sext i32 %i to i64, !dbg !143            ; [#uses=1 type=i64] [debug line = 6:32]
  %in_array.addr = getelementptr inbounds i32* %in_array, i64 %tmp, !dbg !143 ; [#uses=1 type=i32*] [debug line = 6:32]
  %temp = load i32* %in_array.addr, align 4, !dbg !143 ; [#uses=2 type=i32] [debug line = 6:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp) nounwind
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !144), !dbg !143 ; [debug line = 6:32] [debug variable = temp]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !145), !dbg !147 ; [debug line = 144:48@7:3] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.1}, metadata !148) nounwind, !dbg !149 ; [debug line = 145:22@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !148), !dbg !150 ; [debug line = 145:31@7:3] [debug variable = tmp]
  store i32 %temp, i32* %tmp.1, align 4, !dbg !150 ; [debug line = 145:31@7:3]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %in_stream.addr, i32* %tmp.1) nounwind, !dbg !135 ; [debug line = 146:9@7:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !151 ; [#uses=0 type=i32] [debug line = 8:2]
  %i.1 = add nsw i32 %i, 1, !dbg !152             ; [#uses=1 type=i32] [debug line = 5:59]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !153), !dbg !152 ; [debug line = 5:59] [debug variable = i]
  br label %1, !dbg !152                          ; [debug line = 5:59]

; <label>:3                                       ; preds = %1
  ret void, !dbg !154                             ; [debug line = 9:1]
}

; [#uses=1]
define internal fastcc void @read_pixels_from_stream(%"class.hls::stream.0"* %out_stream, i32* %out_array) nounwind uwtable {
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !155), !dbg !156 ; [debug line = 11:56] [debug variable = out_stream]
  call void @llvm.dbg.value(metadata !{i32* %out_array}, i64 0, metadata !157), !dbg !158 ; [debug line = 12:18] [debug variable = out_array]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_array, i32 357604) nounwind, !dbg !159 ; [debug line = 12:39]
  %out_stream.addr = getelementptr inbounds %"class.hls::stream.0"* %out_stream, i64 0, i32 0, !dbg !161 ; [#uses=1 type=i32*] [debug line = 125:9@15:3]
  br label %1, !dbg !166                          ; [debug line = 13:45]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 357604, !dbg !166   ; [#uses=1 type=i1] [debug line = 13:45]
  br i1 %exitcond, label %3, label %2, !dbg !166  ; [debug line = 13:45]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !167 ; [debug line = 13:65]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !167 ; [#uses=1 type=i32] [debug line = 13:65]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !168 ; [debug line = 14:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !169), !dbg !170 ; [debug line = 123:48@15:3] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !171) nounwind, !dbg !172 ; [debug line = 124:22@15:3] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %out_stream.addr, i32* %tmp) nounwind, !dbg !161 ; [debug line = 125:9@15:3]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !171), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = tmp]
  %temp = load i32* %tmp, align 4, !dbg !173      ; [#uses=1 type=i32] [debug line = 126:9@15:3]
  call void @llvm.dbg.value(metadata !{i32 %temp}, i64 0, metadata !174), !dbg !173 ; [debug line = 126:9@15:3] [debug variable = temp]
  %tmp.4 = sext i32 %i to i64, !dbg !175          ; [#uses=1 type=i64] [debug line = 16:3]
  %out_array.addr = getelementptr inbounds i32* %out_array, i64 %tmp.4, !dbg !175 ; [#uses=1 type=i32*] [debug line = 16:3]
  store i32 %temp, i32* %out_array.addr, align 4, !dbg !175 ; [debug line = 16:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !176 ; [#uses=0 type=i32] [debug line = 17:2]
  %i.2 = add nsw i32 %i, 1, !dbg !177             ; [#uses=1 type=i32] [debug line = 13:60]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !178), !dbg !177 ; [debug line = 13:60] [debug variable = i]
  br label %1, !dbg !177                          ; [debug line = 13:60]

; <label>:3                                       ; preds = %1
  ret void, !dbg !179                             ; [debug line = 18:1]
}

; [#uses=78]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @filter_wrapper(i32* %in_array, i32* %out_array) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @filter_wrapper.str) nounwind
  %in_stream = alloca %"class.hls::stream.0", align 4 ; [#uses=3 type=%"class.hls::stream.0"*]
  %out_stream = alloca %"class.hls::stream.0", align 4 ; [#uses=3 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.value(metadata !{i32* %in_array}, i64 0, metadata !180), !dbg !181 ; [debug line = 76:32] [debug variable = in_array]
  call void @llvm.dbg.value(metadata !{i32* %out_array}, i64 0, metadata !182), !dbg !183 ; [debug line = 77:15] [debug variable = out_array]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %out_array, i32 357604) nounwind, !dbg !184 ; [debug line = 77:35]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %in_array, i32 360000) nounwind, !dbg !186 ; [debug line = 77:77]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !187 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_array, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 400000, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 2, i32 2, i32 256, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !187 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !187 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_array, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 400000, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 2, i32 2, i32 256, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !187 ; [debug line = 78:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"* %in_stream}, metadata !188), !dbg !189 ; [debug line = 78:26] [debug variable = in_stream]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !190), !dbg !191 ; [debug line = 83:43@78:35] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !193), !dbg !194 ; [debug line = 83:43@84:5@78:35] [debug variable = this]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.0"* %in_stream, i32 1, i32 1024, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !196 ; [debug line = 79:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"* %out_stream}, metadata !197), !dbg !198 ; [debug line = 79:26] [debug variable = out_stream]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !190), !dbg !199 ; [debug line = 83:43@79:36] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !193), !dbg !201 ; [debug line = 83:43@84:5@79:36] [debug variable = this]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream.0"* %out_stream, i32 1, i32 1024, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !203 ; [debug line = 80:1]
  call fastcc void @write_pixels_to_stream(%"class.hls::stream.0"* %in_stream, i32* %in_array), !dbg !204 ; [debug line = 80:2]
  call fastcc void @filter(%"class.hls::stream.0"* %in_stream, %"class.hls::stream.0"* %out_stream), !dbg !205 ; [debug line = 81:2]
  call fastcc void @read_pixels_from_stream(%"class.hls::stream.0"* %out_stream, i32* %out_array), !dbg !206 ; [debug line = 82:2]
  ret void, !dbg !207                             ; [debug line = 83:1]
}

; [#uses=1]
define internal fastcc void @filter(%"class.hls::stream.0"* %in_stream, %"class.hls::stream.0"* %out_stream) nounwind uwtable {
  %tmp.20 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.7 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %temp_array = alloca [2 x [600 x i32]], align 16 ; [#uses=4 type=[2 x [600 x i32]]*]
  %crop = alloca [3 x [3 x i32]], align 16        ; [#uses=5 type=[3 x [3 x i32]]*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !208), !dbg !209 ; [debug line = 44:38] [debug variable = in_stream]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !210), !dbg !211 ; [debug line = 45:32] [debug variable = out_stream]
  call void @llvm.dbg.declare(metadata !{[2 x [600 x i32]]* %temp_array}, metadata !212), !dbg !218 ; [debug line = 47:13] [debug variable = temp_array]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i32]]* %crop}, metadata !219), !dbg !222 ; [debug line = 48:13] [debug variable = crop]
  %in_stream.addr = getelementptr inbounds %"class.hls::stream.0"* %in_stream, i64 0, i32 0, !dbg !223 ; [#uses=1 type=i32*] [debug line = 125:9@53:4]
  %crop.addr = getelementptr inbounds [3 x [3 x i32]]* %crop, i64 0, i64 2, i64 2, !dbg !229 ; [#uses=1 type=i32*] [debug line = 63:5]
  %crop.addr.1 = getelementptr inbounds [3 x [3 x i32]]* %crop, i64 0, i64 0, !dbg !230 ; [#uses=1 type=[3 x i32]*] [debug line = 69:29]
  %out_stream.addr = getelementptr inbounds %"class.hls::stream.0"* %out_stream, i64 0, i32 0, !dbg !231 ; [#uses=1 type=i32*] [debug line = 146:9@71:5]
  br label %1, !dbg !233                          ; [debug line = 50:28]

; <label>:1                                       ; preds = %14, %0
  %i = phi i32 [ 0, %0 ], [ %i.3, %14 ]           ; [#uses=3 type=i32]
  %exitcond9 = icmp eq i32 %i, 600, !dbg !233     ; [#uses=1 type=i1] [debug line = 50:28]
  br i1 %exitcond9, label %15, label %2, !dbg !233 ; [debug line = 50:28]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !234 ; [debug line = 50:45]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !234 ; [#uses=1 type=i32] [debug line = 50:45]
  %tmp = icmp sgt i32 %i, 1, !dbg !235            ; [#uses=1 type=i1] [debug line = 70:4]
  br label %3, !dbg !236                          ; [debug line = 51:29]

; <label>:3                                       ; preds = %._crit_edge, %2
  %j = phi i32 [ 0, %2 ], [ %j.2, %._crit_edge ]  ; [#uses=4 type=i32]
  %exitcond8 = icmp eq i32 %j, 600, !dbg !236     ; [#uses=1 type=i1] [debug line = 51:29]
  br i1 %exitcond8, label %14, label %4, !dbg !236 ; [debug line = 51:29]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !237 ; [debug line = 51:46]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !237 ; [#uses=1 type=i32] [debug line = 51:46]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !238 ; [debug line = 52:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !169), !dbg !239 ; [debug line = 123:48@53:4] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.7}, metadata !171) nounwind, !dbg !240 ; [debug line = 124:22@53:4] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.addr, i32* %tmp.7) nounwind, !dbg !223 ; [debug line = 125:9@53:4]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.7}, i64 0, metadata !171), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = tmp]
  %new_input = load i32* %tmp.7, align 4, !dbg !241 ; [#uses=2 type=i32] [debug line = 126:9@53:4]
  call void @llvm.dbg.value(metadata !{i32 %new_input}, i64 0, metadata !242), !dbg !241 ; [debug line = 126:9@53:4] [debug variable = new_input]
  br label %5, !dbg !243                          ; [debug line = 56:19]

; <label>:5                                       ; preds = %7, %4
  %i1 = phi i32 [ 0, %4 ], [ %i.5, %7 ]           ; [#uses=3 type=i32]
  %exitcond7 = icmp eq i32 %i1, 3, !dbg !243      ; [#uses=1 type=i1] [debug line = 56:19]
  br i1 %exitcond7, label %.preheader.preheader, label %.preheader10.preheader, !dbg !243 ; [debug line = 56:19]

.preheader10.preheader:                           ; preds = %5
  %tmp.9 = sext i32 %i1 to i64, !dbg !245         ; [#uses=2 type=i64] [debug line = 58:7]
  br label %.preheader10, !dbg !247               ; [debug line = 57:20]

.preheader.preheader:                             ; preds = %5
  %tmp.8 = sext i32 %j to i64, !dbg !248          ; [#uses=4 type=i64] [debug line = 61:6]
  br label %.preheader, !dbg !250                 ; [debug line = 60:19]

.preheader10:                                     ; preds = %6, %.preheader10.preheader
  %j2 = phi i32 [ %j.1, %6 ], [ 0, %.preheader10.preheader ] ; [#uses=3 type=i32]
  %exitcond6 = icmp eq i32 %j2, 2, !dbg !247      ; [#uses=1 type=i1] [debug line = 57:20]
  br i1 %exitcond6, label %7, label %6, !dbg !247 ; [debug line = 57:20]

; <label>:6                                       ; preds = %.preheader10
  %j.1 = add nsw i32 %j2, 1, !dbg !245            ; [#uses=2 type=i32] [debug line = 58:7]
  %tmp.14 = sext i32 %j.1 to i64, !dbg !245       ; [#uses=1 type=i64] [debug line = 58:7]
  %crop.addr.3 = getelementptr inbounds [3 x [3 x i32]]* %crop, i64 0, i64 %tmp.9, i64 %tmp.14, !dbg !245 ; [#uses=1 type=i32*] [debug line = 58:7]
  %crop.load = load i32* %crop.addr.3, align 4, !dbg !245 ; [#uses=2 type=i32] [debug line = 58:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %crop.load) nounwind
  %tmp.15 = sext i32 %j2 to i64, !dbg !245        ; [#uses=1 type=i64] [debug line = 58:7]
  %crop.addr.4 = getelementptr inbounds [3 x [3 x i32]]* %crop, i64 0, i64 %tmp.9, i64 %tmp.15, !dbg !245 ; [#uses=1 type=i32*] [debug line = 58:7]
  store i32 %crop.load, i32* %crop.addr.4, align 4, !dbg !245 ; [debug line = 58:7]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !251), !dbg !252 ; [debug line = 57:33] [debug variable = j]
  br label %.preheader10, !dbg !252               ; [debug line = 57:33]

; <label>:7                                       ; preds = %.preheader10
  %i.5 = add nsw i32 %i1, 1, !dbg !253            ; [#uses=1 type=i32] [debug line = 56:28]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !254), !dbg !253 ; [debug line = 56:28] [debug variable = i]
  br label %5, !dbg !253                          ; [debug line = 56:28]

.preheader:                                       ; preds = %8, %.preheader.preheader
  %i3 = phi i32 [ %i.4, %8 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %i3, 2, !dbg !250      ; [#uses=1 type=i1] [debug line = 60:19]
  br i1 %exitcond5, label %9, label %8, !dbg !250 ; [debug line = 60:19]

; <label>:8                                       ; preds = %.preheader
  %tmp.10 = sext i32 %i3 to i64, !dbg !248        ; [#uses=2 type=i64] [debug line = 61:6]
  %temp_array.addr = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i64 0, i64 %tmp.10, i64 %tmp.8, !dbg !248 ; [#uses=1 type=i32*] [debug line = 61:6]
  %temp_array.load = load i32* %temp_array.addr, align 4, !dbg !248 ; [#uses=2 type=i32] [debug line = 61:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp_array.load) nounwind
  %crop.addr.2 = getelementptr inbounds [3 x [3 x i32]]* %crop, i64 0, i64 %tmp.10, i64 2, !dbg !248 ; [#uses=1 type=i32*] [debug line = 61:6]
  store i32 %temp_array.load, i32* %crop.addr.2, align 4, !dbg !248 ; [debug line = 61:6]
  %i.4 = add nsw i32 %i3, 1, !dbg !255            ; [#uses=1 type=i32] [debug line = 60:32]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !256), !dbg !255 ; [debug line = 60:32] [debug variable = i]
  br label %.preheader, !dbg !255                 ; [debug line = 60:32]

; <label>:9                                       ; preds = %.preheader
  store i32 %new_input, i32* %crop.addr, align 8, !dbg !229 ; [debug line = 63:5]
  br label %10, !dbg !257                         ; [debug line = 65:19]

; <label>:10                                      ; preds = %11, %9
  %i4 = phi i32 [ 0, %9 ], [ %i.6, %11 ]          ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i4, 1, !dbg !257       ; [#uses=1 type=i1] [debug line = 65:19]
  br i1 %exitcond, label %12, label %11, !dbg !257 ; [debug line = 65:19]

; <label>:11                                      ; preds = %10
  %i.6 = add nsw i32 %i4, 1, !dbg !259            ; [#uses=2 type=i32] [debug line = 66:6]
  %tmp.18 = sext i32 %i.6 to i64, !dbg !259       ; [#uses=1 type=i64] [debug line = 66:6]
  %temp_array.addr.2 = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i64 0, i64 %tmp.18, i64 %tmp.8, !dbg !259 ; [#uses=1 type=i32*] [debug line = 66:6]
  %temp_array.load.1 = load i32* %temp_array.addr.2, align 4, !dbg !259 ; [#uses=2 type=i32] [debug line = 66:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %temp_array.load.1) nounwind
  %tmp.19 = sext i32 %i4 to i64, !dbg !259        ; [#uses=1 type=i64] [debug line = 66:6]
  %temp_array.addr.3 = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i64 0, i64 %tmp.19, i64 %tmp.8, !dbg !259 ; [#uses=1 type=i32*] [debug line = 66:6]
  store i32 %temp_array.load.1, i32* %temp_array.addr.3, align 4, !dbg !259 ; [debug line = 66:6]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !260), !dbg !261 ; [debug line = 65:31] [debug variable = i]
  br label %10, !dbg !261                         ; [debug line = 65:31]

; <label>:12                                      ; preds = %10
  %temp_array.addr.1 = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i64 0, i64 1, i64 %tmp.8, !dbg !262 ; [#uses=1 type=i32*] [debug line = 68:5]
  store i32 %new_input, i32* %temp_array.addr.1, align 4, !dbg !262 ; [debug line = 68:5]
  %new_output = call fastcc i32 @bubble_sort([3 x i32]* %crop.addr.1), !dbg !230 ; [#uses=1 type=i32] [debug line = 69:29]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !263), !dbg !230 ; [debug line = 69:29] [debug variable = new_output]
  %tmp.16 = icmp sgt i32 %j, 1, !dbg !235         ; [#uses=1 type=i1] [debug line = 70:4]
  %or.cond = and i1 %tmp, %tmp.16, !dbg !235      ; [#uses=1 type=i1] [debug line = 70:4]
  br i1 %or.cond, label %13, label %._crit_edge, !dbg !235 ; [debug line = 70:4]

; <label>:13                                      ; preds = %12
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !145), !dbg !264 ; [debug line = 144:48@71:5] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.20}, metadata !148) nounwind, !dbg !265 ; [debug line = 145:22@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %new_output}, i64 0, metadata !148), !dbg !266 ; [debug line = 145:31@71:5] [debug variable = tmp]
  store i32 %new_output, i32* %tmp.20, align 4, !dbg !266 ; [debug line = 145:31@71:5]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %out_stream.addr, i32* %tmp.20) nounwind, !dbg !231 ; [debug line = 146:9@71:5]
  br label %._crit_edge, !dbg !232                ; [debug line = 71:5]

._crit_edge:                                      ; preds = %13, %12
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !267 ; [#uses=0 type=i32] [debug line = 72:3]
  %j.2 = add nsw i32 %j, 1, !dbg !268             ; [#uses=1 type=i32] [debug line = 51:40]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !269), !dbg !268 ; [debug line = 51:40] [debug variable = j]
  br label %3, !dbg !268                          ; [debug line = 51:40]

; <label>:14                                      ; preds = %3
  %rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !270 ; [#uses=0 type=i32] [debug line = 73:2]
  %i.3 = add nsw i32 %i, 1, !dbg !271             ; [#uses=1 type=i32] [debug line = 50:39]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !272), !dbg !271 ; [debug line = 50:39] [debug variable = i]
  br label %1, !dbg !271                          ; [debug line = 50:39]

; <label>:15                                      ; preds = %1
  ret void, !dbg !273                             ; [debug line = 74:1]
}

; [#uses=1]
define internal fastcc i32 @bubble_sort([3 x i32]* %CROP) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[3 x i32]* %CROP}, i64 0, metadata !274), !dbg !275 ; [debug line = 20:36] [debug variable = CROP]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %CROP, i32 3) nounwind, !dbg !276 ; [debug line = 20:49]
  %1 = alloca [9 x i32], align 16, !dbg !278      ; [#uses=4 type=[9 x i32]*] [debug line = 22:13]
  br label %2, !dbg !279                          ; [debug line = 24:23]

; <label>:2                                       ; preds = %4, %0
  %i = phi i32 [ 0, %0 ], [ %i.7, %4 ]            ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %i, 3, !dbg !279       ; [#uses=1 type=i1] [debug line = 24:23]
  br i1 %exitcond3, label %.preheader4.preheader, label %.preheader5.preheader, !dbg !279 ; [debug line = 24:23]

.preheader4.preheader:                            ; preds = %2
  br label %.preheader4, !dbg !281                ; [debug line = 31:15]

.preheader5.preheader:                            ; preds = %2
  %tmp = sext i32 %i to i64, !dbg !283            ; [#uses=1 type=i64] [debug line = 27:4]
  %tmp.23 = mul nsw i32 %i, 3, !dbg !283          ; [#uses=1 type=i32] [debug line = 27:4]
  br label %.preheader5, !dbg !287                ; [debug line = 26:37]

.preheader5:                                      ; preds = %3, %.preheader5.preheader
  %j = phi i32 [ %j.3, %3 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %j, 3, !dbg !287       ; [#uses=1 type=i1] [debug line = 26:37]
  br i1 %exitcond2, label %4, label %3, !dbg !287 ; [debug line = 26:37]

; <label>:3                                       ; preds = %.preheader5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !288 ; [debug line = 26:52]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !288 ; [#uses=1 type=i32] [debug line = 26:52]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !289 ; [debug line = 27:1]
  %tmp.25 = sext i32 %j to i64, !dbg !283         ; [#uses=1 type=i64] [debug line = 27:4]
  %CROP.addr = getelementptr inbounds [3 x i32]* %CROP, i64 %tmp, i64 %tmp.25, !dbg !283 ; [#uses=1 type=i32*] [debug line = 27:4]
  %CROP.load = load i32* %CROP.addr, align 4, !dbg !283 ; [#uses=2 type=i32] [debug line = 27:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %CROP.load) nounwind
  %tmp.26 = add nsw i32 %j, %tmp.23, !dbg !283    ; [#uses=1 type=i32] [debug line = 27:4]
  %tmp.27 = sext i32 %tmp.26 to i64, !dbg !283    ; [#uses=1 type=i64] [debug line = 27:4]
  %.addr.1 = getelementptr inbounds [9 x i32]* %1, i64 0, i64 %tmp.27, !dbg !283 ; [#uses=1 type=i32*] [debug line = 27:4]
  store i32 %CROP.load, i32* %.addr.1, align 4, !dbg !283 ; [debug line = 27:4]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !290 ; [#uses=0 type=i32] [debug line = 28:3]
  %j.3 = add nsw i32 %j, 1, !dbg !291             ; [#uses=1 type=i32] [debug line = 26:46]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !292), !dbg !291 ; [debug line = 26:46] [debug variable = j]
  br label %.preheader5, !dbg !291                ; [debug line = 26:46]

; <label>:4                                       ; preds = %.preheader5
  %i.7 = add nsw i32 %i, 1, !dbg !293             ; [#uses=1 type=i32] [debug line = 24:32]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !294), !dbg !293 ; [debug line = 24:32] [debug variable = i]
  br label %2, !dbg !293                          ; [debug line = 24:32]

.preheader4:                                      ; preds = %8, %.preheader4.preheader
  %i1 = phi i32 [ %i.8, %8 ], [ 0, %.preheader4.preheader ] ; [#uses=2 type=i32]
  %exitcond1 = icmp eq i32 %i1, 9, !dbg !281      ; [#uses=1 type=i1] [debug line = 31:15]
  br i1 %exitcond1, label %9, label %.preheader.preheader, !dbg !281 ; [debug line = 31:15]

.preheader.preheader:                             ; preds = %.preheader4
  br label %.preheader, !dbg !295                 ; [debug line = 32:39]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %j2 = phi i32 [ %j.4, %._crit_edge ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j2, 9, !dbg !295       ; [#uses=1 type=i1] [debug line = 32:39]
  br i1 %exitcond, label %8, label %5, !dbg !295  ; [debug line = 32:39]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !298 ; [debug line = 32:57]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !298 ; [#uses=1 type=i32] [debug line = 32:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !300 ; [debug line = 33:1]
  %tmp.30 = sext i32 %j2 to i64, !dbg !301        ; [#uses=1 type=i64] [debug line = 33:5]
  %.addr.2 = getelementptr inbounds [9 x i32]* %1, i64 0, i64 %tmp.30, !dbg !301 ; [#uses=2 type=i32*] [debug line = 33:5]
  %tmp.34 = load i32* %.addr.2, align 4, !dbg !301 ; [#uses=4 type=i32] [debug line = 33:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.34) nounwind
  %j.4 = add nsw i32 %j2, 1, !dbg !301            ; [#uses=2 type=i32] [debug line = 33:5]
  %tmp.32 = sext i32 %j.4 to i64, !dbg !301       ; [#uses=1 type=i64] [debug line = 33:5]
  %.addr.3 = getelementptr inbounds [9 x i32]* %1, i64 0, i64 %tmp.32, !dbg !301 ; [#uses=2 type=i32*] [debug line = 33:5]
  %6 = load i32* %.addr.3, align 4, !dbg !301     ; [#uses=4 type=i32] [debug line = 33:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %6) nounwind
  %tmp.33 = icmp sgt i32 %tmp.34, %6, !dbg !301   ; [#uses=1 type=i1] [debug line = 33:5]
  br i1 %tmp.33, label %7, label %._crit_edge, !dbg !301 ; [debug line = 33:5]

; <label>:7                                       ; preds = %5
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %tmp.34) nounwind
  call void @llvm.dbg.value(metadata !{i32 %tmp.34}, i64 0, metadata !302), !dbg !304 ; [debug line = 34:18] [debug variable = tmp]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %6) nounwind
  store i32 %6, i32* %.addr.2, align 4, !dbg !305 ; [debug line = 35:4]
  store i32 %tmp.34, i32* %.addr.3, align 4, !dbg !306 ; [debug line = 36:4]
  br label %._crit_edge, !dbg !307                ; [debug line = 37:5]

._crit_edge:                                      ; preds = %7, %5
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !308 ; [#uses=0 type=i32] [debug line = 38:3]
  call void @llvm.dbg.value(metadata !{i32 %j.4}, i64 0, metadata !309), !dbg !310 ; [debug line = 32:51] [debug variable = j]
  br label %.preheader, !dbg !310                 ; [debug line = 32:51]

; <label>:8                                       ; preds = %.preheader
  %i.8 = add nsw i32 %i1, 1, !dbg !311            ; [#uses=1 type=i32] [debug line = 31:27]
  call void @llvm.dbg.value(metadata !{i32 %i.8}, i64 0, metadata !312), !dbg !311 ; [debug line = 31:27] [debug variable = i]
  br label %.preheader4, !dbg !311                ; [debug line = 31:27]

; <label>:9                                       ; preds = %.preheader4
  %.addr = getelementptr inbounds [9 x i32]* %1, i64 0, i64 4, !dbg !313 ; [#uses=1 type=i32*] [debug line = 41:2]
  %10 = load i32* %.addr, align 16, !dbg !313     ; [#uses=2 type=i32] [debug line = 41:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %10) nounwind
  ret i32 %10, !dbg !313                          ; [debug line = 41:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=2]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=2]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=10]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=5]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!92, !99, !102, !108, !112, !116, !116, !122, !126}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/kinka1/HLS/MedianFilter/solution3/.autopilot/db/median.pragma.2.cpp", metadata !"/home/kinka1/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !70, metadata !75, metadata !82, metadata !85, metadata !88, metadata !89, metadata !90, metadata !91}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"write_pixels_to_stream", metadata !"write_pixels_to_stream", metadata !"_Z22write_pixels_to_streamRN3hls6streamIiEEPi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, i32*)* @write_pixels_to_stream, null, null, metadata !20, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"MedianFilter/median.cpp", metadata !"/home/kinka1/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !68}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<int>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2017.4/common/technology/autopilot/hls_stream.h", metadata !"/home/kinka1/HLS", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !33, metadata !36, metadata !40, metadata !45, metadata !50, metadata !51, metadata !52, metadata !55, metadata !58, metadata !59, metadata !62}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !19, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !19, metadata !31}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !12, i32 94, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !9, metadata !19, metadata !31}
!36 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !12, i32 101, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !19, metadata !39}
!39 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !12, i32 105, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !19, metadata !43}
!43 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !12, i32 112, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !12, i32 117, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !15, metadata !19}
!55 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !12, i32 136, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !48, metadata !19, metadata !39}
!58 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !12, i32 150, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !48, metadata !19, metadata !43}
!62 = metadata !{i32 786478, i32 0, metadata !10, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !12, i32 157, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !19}
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786454, null, metadata !"Input_Type", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 786478, i32 0, metadata !6, metadata !"read_pixels_from_stream", metadata !"read_pixels_from_stream", metadata !"_Z23read_pixels_from_streamRN3hls6streamIiEEPi", metadata !6, i32 11, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, i32*)* @read_pixels_from_stream, null, null, metadata !20, i32 12} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !9, metadata !73}
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786454, null, metadata !"Output_Type", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bubble_sort", metadata !"bubble_sort", metadata !"_Z11bubble_sortPA3_i", metadata !6, i32 20, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @bubble_sort, null, null, metadata !20, i32 20} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !74, metadata !78}
!78 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !69, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!82 = metadata !{i32 786478, i32 0, metadata !6, metadata !"filter", metadata !"filter", metadata !"_Z6filterRN3hls6streamIiEES2_", metadata !6, i32 44, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @filter, null, null, metadata !20, i32 45} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !9, metadata !9}
!85 = metadata !{i32 786478, i32 0, metadata !6, metadata !"filter_wrapper", metadata !"filter_wrapper", metadata !"_Z14filter_wrapperPiS_", metadata !6, i32 76, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @filter_wrapper, null, null, metadata !20, i32 77} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !68, metadata !73}
!88 = metadata !{i32 786478, i32 0, metadata !11, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC1Ev", metadata !12, i32 83, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !16, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, metadata !11, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC2Ev", metadata !12, i32 83, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !16, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!92 = metadata !{void (%"class.hls::stream.0"*, i32*)* @write_pixels_to_stream, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Input_Type> &", metadata !"Input_Type*"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"in_array"}
!98 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!99 = metadata !{void (%"class.hls::stream.0"*, i32*)* @read_pixels_from_stream, metadata !93, metadata !94, metadata !100, metadata !96, metadata !101, metadata !98}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Output_Type> &", metadata !"Output_Type*"}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"out_stream", metadata !"out_array"}
!102 = metadata !{i32 ([3 x i32]*)* @bubble_sort, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !98}
!103 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!104 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"Input_Type [3]*"}
!106 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"CROP"}
!108 = metadata !{void (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @filter, metadata !109, metadata !94, metadata !110, metadata !96, metadata !111, metadata !98}
!109 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Input_Type> &", metadata !"hls::stream<Output_Type> &"}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!112 = metadata !{void (i32*, i32*)* @filter_wrapper, metadata !113, metadata !94, metadata !114, metadata !96, metadata !115, metadata !98}
!113 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"Input_Type*", metadata !"Output_Type*"}
!115 = metadata !{metadata !"kernel_arg_name", metadata !"in_array", metadata !"out_array"}
!116 = metadata !{null, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !98}
!117 = metadata !{metadata !"kernel_arg_addr_space"}
!118 = metadata !{metadata !"kernel_arg_access_qual"}
!119 = metadata !{metadata !"kernel_arg_type"}
!120 = metadata !{metadata !"kernel_arg_type_qual"}
!121 = metadata !{metadata !"kernel_arg_name"}
!122 = metadata !{null, metadata !123, metadata !104, metadata !124, metadata !106, metadata !125, metadata !98}
!123 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"int &"}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!126 = metadata !{null, metadata !123, metadata !104, metadata !127, metadata !106, metadata !128, metadata !98}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!128 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!129 = metadata !{i32 786689, metadata !5, metadata !"in_stream", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 3, i32 54, metadata !5, null}
!131 = metadata !{i32 786689, metadata !5, metadata !"in_array", metadata !6, i32 33554436, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 4, i32 16, metadata !5, null}
!133 = metadata !{i32 4, i32 36, metadata !134, null}
!134 = metadata !{i32 786443, metadata !5, i32 4, i32 35, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 146, i32 9, metadata !136, metadata !137}
!136 = metadata !{i32 786443, metadata !91, i32 144, i32 79, metadata !12, i32 28} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 7, i32 3, metadata !138, null}
!138 = metadata !{i32 786443, metadata !139, i32 5, i32 63, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 786443, metadata !134, i32 5, i32 30, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 5, i32 44, metadata !139, null}
!141 = metadata !{i32 5, i32 64, metadata !138, null}
!142 = metadata !{i32 6, i32 1, metadata !138, null}
!143 = metadata !{i32 6, i32 32, metadata !138, null}
!144 = metadata !{i32 786688, metadata !138, metadata !"temp", metadata !6, i32 6, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 786689, metadata !91, metadata !"this", metadata !12, i32 16777360, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!147 = metadata !{i32 144, i32 48, metadata !91, metadata !137}
!148 = metadata !{i32 786688, metadata !136, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 145, i32 22, metadata !136, metadata !137}
!150 = metadata !{i32 145, i32 31, metadata !136, metadata !137}
!151 = metadata !{i32 8, i32 2, metadata !138, null}
!152 = metadata !{i32 5, i32 59, metadata !139, null}
!153 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !6, i32 5, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 9, i32 1, metadata !134, null}
!155 = metadata !{i32 786689, metadata !70, metadata !"out_stream", metadata !6, i32 16777227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 11, i32 56, metadata !70, null}
!157 = metadata !{i32 786689, metadata !70, metadata !"out_array", metadata !6, i32 33554444, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 12, i32 18, metadata !70, null}
!159 = metadata !{i32 12, i32 39, metadata !160, null}
!160 = metadata !{i32 786443, metadata !70, i32 12, i32 38, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 125, i32 9, metadata !162, metadata !163}
!162 = metadata !{i32 786443, metadata !90, i32 123, i32 73, metadata !12, i32 27} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 15, i32 3, metadata !164, null}
!164 = metadata !{i32 786443, metadata !165, i32 13, i32 64, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 786443, metadata !160, i32 13, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 13, i32 45, metadata !165, null}
!167 = metadata !{i32 13, i32 65, metadata !164, null}
!168 = metadata !{i32 14, i32 1, metadata !164, null}
!169 = metadata !{i32 786689, metadata !90, metadata !"this", metadata !12, i32 16777339, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 123, i32 48, metadata !90, metadata !163}
!171 = metadata !{i32 786688, metadata !162, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 124, i32 22, metadata !162, metadata !163}
!173 = metadata !{i32 126, i32 9, metadata !162, metadata !163}
!174 = metadata !{i32 786688, metadata !164, metadata !"temp", metadata !6, i32 14, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 16, i32 3, metadata !164, null}
!176 = metadata !{i32 17, i32 2, metadata !164, null}
!177 = metadata !{i32 13, i32 60, metadata !165, null}
!178 = metadata !{i32 786688, metadata !165, metadata !"i", metadata !6, i32 13, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 18, i32 1, metadata !160, null}
!180 = metadata !{i32 786689, metadata !85, metadata !"in_array", metadata !6, i32 16777292, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 76, i32 32, metadata !85, null}
!182 = metadata !{i32 786689, metadata !85, metadata !"out_array", metadata !6, i32 33554509, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!183 = metadata !{i32 77, i32 15, metadata !85, null}
!184 = metadata !{i32 77, i32 35, metadata !185, null}
!185 = metadata !{i32 786443, metadata !85, i32 77, i32 34, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 77, i32 77, metadata !185, null}
!187 = metadata !{i32 78, i32 1, metadata !185, null}
!188 = metadata !{i32 786688, metadata !185, metadata !"in_stream", metadata !6, i32 78, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 78, i32 26, metadata !185, null}
!190 = metadata !{i32 786689, metadata !88, metadata !"this", metadata !12, i32 16777299, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!191 = metadata !{i32 83, i32 43, metadata !88, metadata !192}
!192 = metadata !{i32 78, i32 35, metadata !185, null}
!193 = metadata !{i32 786689, metadata !89, metadata !"this", metadata !12, i32 16777299, metadata !146, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 83, i32 43, metadata !89, metadata !195}
!195 = metadata !{i32 84, i32 5, metadata !88, metadata !192}
!196 = metadata !{i32 79, i32 1, metadata !185, null}
!197 = metadata !{i32 786688, metadata !185, metadata !"out_stream", metadata !6, i32 79, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 79, i32 26, metadata !185, null}
!199 = metadata !{i32 83, i32 43, metadata !88, metadata !200}
!200 = metadata !{i32 79, i32 36, metadata !185, null}
!201 = metadata !{i32 83, i32 43, metadata !89, metadata !202}
!202 = metadata !{i32 84, i32 5, metadata !88, metadata !200}
!203 = metadata !{i32 80, i32 1, metadata !185, null}
!204 = metadata !{i32 80, i32 2, metadata !185, null}
!205 = metadata !{i32 81, i32 2, metadata !185, null}
!206 = metadata !{i32 82, i32 2, metadata !185, null}
!207 = metadata !{i32 83, i32 1, metadata !185, null}
!208 = metadata !{i32 786689, metadata !82, metadata !"in_stream", metadata !6, i32 16777260, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 44, i32 38, metadata !82, null}
!210 = metadata !{i32 786689, metadata !82, metadata !"out_stream", metadata !6, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!211 = metadata !{i32 45, i32 32, metadata !82, null}
!212 = metadata !{i32 786688, metadata !213, metadata !"temp_array", metadata !6, i32 47, metadata !214, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 786443, metadata !82, i32 45, i32 44, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 38400, i64 32, i32 0, i32 0, metadata !69, metadata !215, i32 0, i32 0} ; [ DW_TAG_array_type ]
!215 = metadata !{metadata !216, metadata !217}
!216 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!217 = metadata !{i32 786465, i64 0, i64 599}     ; [ DW_TAG_subrange_type ]
!218 = metadata !{i32 47, i32 13, metadata !213, null}
!219 = metadata !{i32 786688, metadata !213, metadata !"crop", metadata !6, i32 48, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !69, metadata !221, i32 0, i32 0} ; [ DW_TAG_array_type ]
!221 = metadata !{metadata !81, metadata !81}
!222 = metadata !{i32 48, i32 13, metadata !213, null}
!223 = metadata !{i32 125, i32 9, metadata !162, metadata !224}
!224 = metadata !{i32 53, i32 4, metadata !225, null}
!225 = metadata !{i32 786443, metadata !226, i32 51, i32 45, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 786443, metadata !227, i32 51, i32 15, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 786443, metadata !228, i32 50, i32 44, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 786443, metadata !213, i32 50, i32 14, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!229 = metadata !{i32 63, i32 5, metadata !225, null}
!230 = metadata !{i32 69, i32 29, metadata !225, null}
!231 = metadata !{i32 146, i32 9, metadata !136, metadata !232}
!232 = metadata !{i32 71, i32 5, metadata !225, null}
!233 = metadata !{i32 50, i32 28, metadata !228, null}
!234 = metadata !{i32 50, i32 45, metadata !227, null}
!235 = metadata !{i32 70, i32 4, metadata !225, null}
!236 = metadata !{i32 51, i32 29, metadata !226, null}
!237 = metadata !{i32 51, i32 46, metadata !225, null}
!238 = metadata !{i32 52, i32 1, metadata !225, null}
!239 = metadata !{i32 123, i32 48, metadata !90, metadata !224}
!240 = metadata !{i32 124, i32 22, metadata !162, metadata !224}
!241 = metadata !{i32 126, i32 9, metadata !162, metadata !224}
!242 = metadata !{i32 786688, metadata !225, metadata !"new_input", metadata !6, i32 52, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 56, i32 19, metadata !244, null}
!244 = metadata !{i32 786443, metadata !225, i32 56, i32 5, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 58, i32 7, metadata !246, null}
!246 = metadata !{i32 786443, metadata !244, i32 57, i32 6, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 57, i32 20, metadata !246, null}
!248 = metadata !{i32 61, i32 6, metadata !249, null}
!249 = metadata !{i32 786443, metadata !225, i32 60, i32 5, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 60, i32 19, metadata !249, null}
!251 = metadata !{i32 786688, metadata !246, metadata !"j", metadata !6, i32 57, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!252 = metadata !{i32 57, i32 33, metadata !246, null}
!253 = metadata !{i32 56, i32 28, metadata !244, null}
!254 = metadata !{i32 786688, metadata !244, metadata !"i", metadata !6, i32 56, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 60, i32 32, metadata !249, null}
!256 = metadata !{i32 786688, metadata !249, metadata !"i", metadata !6, i32 60, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 65, i32 19, metadata !258, null}
!258 = metadata !{i32 786443, metadata !225, i32 65, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 66, i32 6, metadata !258, null}
!260 = metadata !{i32 786688, metadata !258, metadata !"i", metadata !6, i32 65, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 65, i32 31, metadata !258, null}
!262 = metadata !{i32 68, i32 5, metadata !225, null}
!263 = metadata !{i32 786688, metadata !225, metadata !"new_output", metadata !6, i32 69, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 144, i32 48, metadata !91, metadata !232}
!265 = metadata !{i32 145, i32 22, metadata !136, metadata !232}
!266 = metadata !{i32 145, i32 31, metadata !136, metadata !232}
!267 = metadata !{i32 72, i32 3, metadata !225, null}
!268 = metadata !{i32 51, i32 40, metadata !226, null}
!269 = metadata !{i32 786688, metadata !226, metadata !"j", metadata !6, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 73, i32 2, metadata !227, null}
!271 = metadata !{i32 50, i32 39, metadata !228, null}
!272 = metadata !{i32 786688, metadata !228, metadata !"i", metadata !6, i32 50, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!273 = metadata !{i32 74, i32 1, metadata !213, null}
!274 = metadata !{i32 786689, metadata !75, metadata !"CROP", metadata !6, i32 16777236, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!275 = metadata !{i32 20, i32 36, metadata !75, null}
!276 = metadata !{i32 20, i32 49, metadata !277, null}
!277 = metadata !{i32 786443, metadata !75, i32 20, i32 48, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!278 = metadata !{i32 22, i32 13, metadata !277, null}
!279 = metadata !{i32 24, i32 23, metadata !280, null}
!280 = metadata !{i32 786443, metadata !277, i32 24, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!281 = metadata !{i32 31, i32 15, metadata !282, null}
!282 = metadata !{i32 786443, metadata !277, i32 31, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!283 = metadata !{i32 27, i32 4, metadata !284, null}
!284 = metadata !{i32 786443, metadata !285, i32 26, i32 51, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 786443, metadata !286, i32 26, i32 23, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 786443, metadata !280, i32 25, i32 2, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 26, i32 37, metadata !285, null}
!288 = metadata !{i32 26, i32 52, metadata !284, null}
!289 = metadata !{i32 27, i32 1, metadata !284, null}
!290 = metadata !{i32 28, i32 3, metadata !284, null}
!291 = metadata !{i32 26, i32 46, metadata !285, null}
!292 = metadata !{i32 786688, metadata !285, metadata !"j", metadata !6, i32 26, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!293 = metadata !{i32 24, i32 32, metadata !280, null}
!294 = metadata !{i32 786688, metadata !280, metadata !"i", metadata !6, i32 24, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!295 = metadata !{i32 32, i32 39, metadata !296, null}
!296 = metadata !{i32 786443, metadata !297, i32 32, i32 26, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 786443, metadata !282, i32 31, i32 32, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!298 = metadata !{i32 32, i32 57, metadata !299, null}
!299 = metadata !{i32 786443, metadata !296, i32 32, i32 56, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 33, i32 1, metadata !299, null}
!301 = metadata !{i32 33, i32 5, metadata !299, null}
!302 = metadata !{i32 786688, metadata !303, metadata !"tmp", metadata !6, i32 34, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 786443, metadata !299, i32 33, i32 25, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 34, i32 18, metadata !303, null}
!305 = metadata !{i32 35, i32 4, metadata !303, null}
!306 = metadata !{i32 36, i32 4, metadata !303, null}
!307 = metadata !{i32 37, i32 5, metadata !303, null}
!308 = metadata !{i32 38, i32 3, metadata !299, null}
!309 = metadata !{i32 786688, metadata !296, metadata !"j", metadata !6, i32 32, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!310 = metadata !{i32 32, i32 51, metadata !296, null}
!311 = metadata !{i32 31, i32 27, metadata !282, null}
!312 = metadata !{i32 786688, metadata !282, metadata !"i", metadata !6, i32 31, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!313 = metadata !{i32 41, i32 2, metadata !277, null}
