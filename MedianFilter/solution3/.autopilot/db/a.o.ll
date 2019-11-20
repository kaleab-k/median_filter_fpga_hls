; ModuleID = '/home/kinka1/HLS/MedianFilter/solution3/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"write_pixels_to_stream_loop\00", align 1 ; [#uses=1 type=[28 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [29 x i8] c"read_pixels_from_stream_loop\00", align 1 ; [#uses=1 type=[29 x i8]*]
@.str3 = private unnamed_addr constant [20 x i8] c"bubble_sort_mapping\00", align 1 ; [#uses=1 type=[20 x i8]*]
@.str4 = private unnamed_addr constant [23 x i8] c"bubble_sort_inner_loop\00", align 1 ; [#uses=1 type=[23 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"filter_rows\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"filter_cols\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str8 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str9 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]

; [#uses=1]
define internal void @_Z22write_pixels_to_streamRN3hls6streamIiEEPi(%"class.hls::stream"* %in_stream, i32* %in_array) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %temp = alloca i32, align 4                     ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %in_stream, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !130), !dbg !131 ; [debug line = 3:54] [debug variable = in_stream]
  store i32* %in_array, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !132), !dbg !133 ; [debug line = 4:16] [debug variable = in_array]
  %3 = load i32** %2, align 8, !dbg !134          ; [#uses=1 type=i32*] [debug line = 4:36]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 360000) nounwind, !dbg !134 ; [debug line = 4:36]
  br label %4, !dbg !134                          ; [debug line = 4:36]

; <label>:4                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !136), !dbg !138 ; [debug line = 5:39] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !139        ; [debug line = 5:44]
  br label %5, !dbg !139                          ; [debug line = 5:44]

; <label>:5                                       ; preds = %15, %4
  %6 = load i32* %i, align 4, !dbg !139           ; [#uses=1 type=i32] [debug line = 5:44]
  %7 = icmp slt i32 %6, 360000, !dbg !139         ; [#uses=1 type=i1] [debug line = 5:44]
  br i1 %7, label %8, label %18, !dbg !139        ; [debug line = 5:44]

; <label>:8                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 5:64]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 5:64]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 6:1]
  call void @llvm.dbg.declare(metadata !{i32* %temp}, metadata !143), !dbg !144 ; [debug line = 6:14] [debug variable = temp]
  %9 = load i32* %i, align 4, !dbg !145           ; [#uses=1 type=i32] [debug line = 6:32]
  %10 = sext i32 %9 to i64, !dbg !145             ; [#uses=1 type=i64] [debug line = 6:32]
  %11 = load i32** %2, align 8, !dbg !145         ; [#uses=1 type=i32*] [debug line = 6:32]
  %12 = getelementptr inbounds i32* %11, i64 %10, !dbg !145 ; [#uses=1 type=i32*] [debug line = 6:32]
  %13 = load i32* %12, align 4, !dbg !145         ; [#uses=1 type=i32] [debug line = 6:32]
  store i32 %13, i32* %temp, align 4, !dbg !145   ; [debug line = 6:32]
  %14 = load %"class.hls::stream"** %1, align 8, !dbg !146 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 7:3]
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream"* %14, i32* %temp), !dbg !146 ; [debug line = 7:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([28 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !147 ; [debug line = 8:2]
  br label %15, !dbg !147                         ; [debug line = 8:2]

; <label>:15                                      ; preds = %8
  %16 = load i32* %i, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 5:59]
  %17 = add nsw i32 %16, 1, !dbg !148             ; [#uses=1 type=i32] [debug line = 5:59]
  store i32 %17, i32* %i, align 4, !dbg !148      ; [debug line = 5:59]
  br label %5, !dbg !148                          ; [debug line = 5:59]

; <label>:18                                      ; preds = %5
  ret void, !dbg !149                             ; [debug line = 9:1]
}

; [#uses=41]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=5]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
define internal void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream"* %this, i32* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !150), !dbg !152 ; [debug line = 144:48] [debug variable = this]
  store i32* %din, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !153), !dbg !154 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !155), !dbg !157 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load i32** %2, align 8, !dbg !158          ; [#uses=1 type=i32*] [debug line = 145:31]
  %5 = load i32* %4, align 4, !dbg !158           ; [#uses=1 type=i32] [debug line = 145:31]
  store i32 %5, i32* %tmp, align 4, !dbg !158     ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !159 ; [#uses=1 type=i32*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(i32* %6, i32* %tmp) nounwind, !dbg !159 ; [debug line = 146:9]
  ret void, !dbg !160                             ; [debug line = 147:5]
}

; [#uses=6]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define internal void @_Z23read_pixels_from_streamRN3hls6streamIiEEPi(%"class.hls::stream"* %out_stream, i32* %out_array) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=3 type=i32**]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %temp = alloca i32, align 4                     ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %out_stream, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !161), !dbg !162 ; [debug line = 11:56] [debug variable = out_stream]
  store i32* %out_array, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !163), !dbg !164 ; [debug line = 12:18] [debug variable = out_array]
  %3 = load i32** %2, align 8, !dbg !165          ; [#uses=1 type=i32*] [debug line = 12:39]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 357604) nounwind, !dbg !165 ; [debug line = 12:39]
  br label %4, !dbg !165                          ; [debug line = 12:39]

; <label>:4                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !167), !dbg !169 ; [debug line = 13:40] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !170        ; [debug line = 13:45]
  br label %5, !dbg !170                          ; [debug line = 13:45]

; <label>:5                                       ; preds = %15, %4
  %6 = load i32* %i, align 4, !dbg !170           ; [#uses=1 type=i32] [debug line = 13:45]
  %7 = icmp slt i32 %6, 357604, !dbg !170         ; [#uses=1 type=i1] [debug line = 13:45]
  br i1 %7, label %8, label %18, !dbg !170        ; [debug line = 13:45]

; <label>:8                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !171 ; [debug line = 13:65]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !171 ; [debug line = 13:65]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !173 ; [debug line = 14:1]
  call void @llvm.dbg.declare(metadata !{i32* %temp}, metadata !174), !dbg !175 ; [debug line = 14:15] [debug variable = temp]
  %9 = load %"class.hls::stream"** %1, align 8, !dbg !176 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 15:3]
  call void @_ZN3hls6streamIiE4readERi(%"class.hls::stream"* %9, i32* %temp), !dbg !176 ; [debug line = 15:3]
  %10 = load i32* %temp, align 4, !dbg !177       ; [#uses=1 type=i32] [debug line = 16:3]
  %11 = load i32* %i, align 4, !dbg !177          ; [#uses=1 type=i32] [debug line = 16:3]
  %12 = sext i32 %11 to i64, !dbg !177            ; [#uses=1 type=i64] [debug line = 16:3]
  %13 = load i32** %2, align 8, !dbg !177         ; [#uses=1 type=i32*] [debug line = 16:3]
  %14 = getelementptr inbounds i32* %13, i64 %12, !dbg !177 ; [#uses=1 type=i32*] [debug line = 16:3]
  store i32 %10, i32* %14, align 4, !dbg !177     ; [debug line = 16:3]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([29 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !178 ; [debug line = 17:2]
  br label %15, !dbg !178                         ; [debug line = 17:2]

; <label>:15                                      ; preds = %8
  %16 = load i32* %i, align 4, !dbg !179          ; [#uses=1 type=i32] [debug line = 13:60]
  %17 = add nsw i32 %16, 1, !dbg !179             ; [#uses=1 type=i32] [debug line = 13:60]
  store i32 %17, i32* %i, align 4, !dbg !179      ; [debug line = 13:60]
  br label %5, !dbg !179                          ; [debug line = 13:60]

; <label>:18                                      ; preds = %5
  ret void, !dbg !180                             ; [debug line = 18:1]
}

; [#uses=2]
define internal void @_ZN3hls6streamIiE4readERi(%"class.hls::stream"* %this, i32* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !181), !dbg !182 ; [debug line = 123:48] [debug variable = this]
  store i32* %dout, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !183), !dbg !184 ; [debug line = 123:67] [debug variable = dout]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !185), !dbg !187 ; [debug line = 124:22] [debug variable = tmp]
  %4 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !188 ; [#uses=1 type=i32*] [debug line = 125:9]
  call void (...)* @_ssdm_StreamRead(i32* %4, i32* %tmp) nounwind, !dbg !188 ; [debug line = 125:9]
  %5 = load i32* %tmp, align 4, !dbg !189         ; [#uses=1 type=i32] [debug line = 126:9]
  %6 = load i32** %2, align 8, !dbg !189          ; [#uses=1 type=i32*] [debug line = 126:9]
  store i32 %5, i32* %6, align 4, !dbg !189       ; [debug line = 126:9]
  ret void, !dbg !190                             ; [debug line = 127:5]
}

; [#uses=1]
define internal i32 @_Z11bubble_sortPA3_i([3 x i32]* %CROP) nounwind uwtable {
  %1 = alloca [3 x i32]*, align 8                 ; [#uses=3 type=[3 x i32]**]
  %size = alloca i32, align 4                     ; [#uses=4 type=i32*]
  %2 = alloca i8*                                 ; [#uses=2 type=i8**]
  %i = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %k = alloca i32, align 4                        ; [#uses=1 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=4 type=i32*]
  %j2 = alloca i32, align 4                       ; [#uses=10 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  %3 = alloca i32                                 ; [#uses=1 type=i32*]
  store [3 x i32]* %CROP, [3 x i32]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i32]** %1}, metadata !191), !dbg !192 ; [debug line = 20:36] [debug variable = CROP]
  %4 = load [3 x i32]** %1, align 8, !dbg !193    ; [#uses=1 type=[3 x i32]*] [debug line = 20:49]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %4, i32 3) nounwind, !dbg !193 ; [debug line = 20:49]
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !195), !dbg !196 ; [debug line = 21:6] [debug variable = size]
  store i32 9, i32* %size, align 4, !dbg !197     ; [debug line = 21:16]
  %5 = load i32* %size, align 4, !dbg !198        ; [#uses=1 type=i32] [debug line = 22:13]
  %6 = zext i32 %5 to i64, !dbg !198              ; [#uses=1 type=i64] [debug line = 22:13]
  %7 = call i8* @llvm.stacksave(), !dbg !198      ; [#uses=1 type=i8*] [debug line = 22:13]
  store i8* %7, i8** %2, !dbg !198                ; [debug line = 22:13]
  %8 = alloca i32, i64 %6, align 16, !dbg !198    ; [#uses=8 type=i32*] [debug line = 22:13]
  call void @llvm.dbg.declare(metadata !{i32* %8}, metadata !199), !dbg !203 ; [debug line = 22:6] [debug variable = A]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !204), !dbg !206 ; [debug line = 24:11] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !207        ; [debug line = 24:23]
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !208), !dbg !209 ; [debug line = 24:18] [debug variable = k]
  store i32 0, i32* %k, align 4, !dbg !207        ; [debug line = 24:23]
  br label %9, !dbg !207                          ; [debug line = 24:23]

; <label>:9                                       ; preds = %36, %0
  %10 = load i32* %i, align 4, !dbg !207          ; [#uses=1 type=i32] [debug line = 24:23]
  %11 = icmp slt i32 %10, 3, !dbg !207            ; [#uses=1 type=i1] [debug line = 24:23]
  br i1 %11, label %12, label %39, !dbg !207      ; [debug line = 24:23]

; <label>:12                                      ; preds = %9
  br label %13, !dbg !210                         ; [debug line = 25:2]

; <label>:13                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !212), !dbg !214 ; [debug line = 26:32] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !215        ; [debug line = 26:37]
  br label %14, !dbg !215                         ; [debug line = 26:37]

; <label>:14                                      ; preds = %32, %13
  %15 = load i32* %j, align 4, !dbg !215          ; [#uses=1 type=i32] [debug line = 26:37]
  %16 = icmp slt i32 %15, 3, !dbg !215            ; [#uses=1 type=i1] [debug line = 26:37]
  br i1 %16, label %17, label %35, !dbg !215      ; [debug line = 26:37]

; <label>:17                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !216 ; [debug line = 26:52]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !216 ; [debug line = 26:52]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !218 ; [debug line = 27:1]
  %18 = load i32* %j, align 4, !dbg !219          ; [#uses=1 type=i32] [debug line = 27:4]
  %19 = sext i32 %18 to i64, !dbg !219            ; [#uses=1 type=i64] [debug line = 27:4]
  %20 = load i32* %i, align 4, !dbg !219          ; [#uses=1 type=i32] [debug line = 27:4]
  %21 = sext i32 %20 to i64, !dbg !219            ; [#uses=1 type=i64] [debug line = 27:4]
  %22 = load [3 x i32]** %1, align 8, !dbg !219   ; [#uses=1 type=[3 x i32]*] [debug line = 27:4]
  %23 = getelementptr inbounds [3 x i32]* %22, i64 %21, !dbg !219 ; [#uses=1 type=[3 x i32]*] [debug line = 27:4]
  %24 = getelementptr inbounds [3 x i32]* %23, i32 0, i64 %19, !dbg !219 ; [#uses=1 type=i32*] [debug line = 27:4]
  %25 = load i32* %24, align 4, !dbg !219         ; [#uses=1 type=i32] [debug line = 27:4]
  %26 = load i32* %i, align 4, !dbg !219          ; [#uses=1 type=i32] [debug line = 27:4]
  %27 = mul nsw i32 %26, 3, !dbg !219             ; [#uses=1 type=i32] [debug line = 27:4]
  %28 = load i32* %j, align 4, !dbg !219          ; [#uses=1 type=i32] [debug line = 27:4]
  %29 = add nsw i32 %27, %28, !dbg !219           ; [#uses=1 type=i32] [debug line = 27:4]
  %30 = sext i32 %29 to i64, !dbg !219            ; [#uses=1 type=i64] [debug line = 27:4]
  %31 = getelementptr inbounds i32* %8, i64 %30, !dbg !219 ; [#uses=1 type=i32*] [debug line = 27:4]
  store i32 %25, i32* %31, align 4, !dbg !219     ; [debug line = 27:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([20 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !220 ; [debug line = 28:3]
  br label %32, !dbg !220                         ; [debug line = 28:3]

; <label>:32                                      ; preds = %17
  %33 = load i32* %j, align 4, !dbg !221          ; [#uses=1 type=i32] [debug line = 26:46]
  %34 = add nsw i32 %33, 1, !dbg !221             ; [#uses=1 type=i32] [debug line = 26:46]
  store i32 %34, i32* %j, align 4, !dbg !221      ; [debug line = 26:46]
  br label %14, !dbg !221                         ; [debug line = 26:46]

; <label>:35                                      ; preds = %14
  br label %36, !dbg !222                         ; [debug line = 29:2]

; <label>:36                                      ; preds = %35
  %37 = load i32* %i, align 4, !dbg !223          ; [#uses=1 type=i32] [debug line = 24:32]
  %38 = add nsw i32 %37, 1, !dbg !223             ; [#uses=1 type=i32] [debug line = 24:32]
  store i32 %38, i32* %i, align 4, !dbg !223      ; [debug line = 24:32]
  br label %9, !dbg !223                          ; [debug line = 24:32]

; <label>:39                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !224), !dbg !226 ; [debug line = 31:10] [debug variable = i]
  store i32 0, i32* %i1, align 4, !dbg !227       ; [debug line = 31:15]
  br label %40, !dbg !227                         ; [debug line = 31:15]

; <label>:40                                      ; preds = %84, %39
  %41 = load i32* %i1, align 4, !dbg !227         ; [#uses=1 type=i32] [debug line = 31:15]
  %42 = load i32* %size, align 4, !dbg !227       ; [#uses=1 type=i32] [debug line = 31:15]
  %43 = icmp slt i32 %41, %42, !dbg !227          ; [#uses=1 type=i1] [debug line = 31:15]
  br i1 %43, label %44, label %87, !dbg !227      ; [debug line = 31:15]

; <label>:44                                      ; preds = %40
  br label %45, !dbg !228                         ; [debug line = 31:32]

; <label>:45                                      ; preds = %44
  call void @llvm.dbg.declare(metadata !{i32* %j2}, metadata !230), !dbg !232 ; [debug line = 32:34] [debug variable = j]
  store i32 0, i32* %j2, align 4, !dbg !233       ; [debug line = 32:39]
  br label %46, !dbg !233                         ; [debug line = 32:39]

; <label>:46                                      ; preds = %80, %45
  %47 = load i32* %j2, align 4, !dbg !233         ; [#uses=1 type=i32] [debug line = 32:39]
  %48 = load i32* %size, align 4, !dbg !233       ; [#uses=1 type=i32] [debug line = 32:39]
  %49 = icmp slt i32 %47, %48, !dbg !233          ; [#uses=1 type=i1] [debug line = 32:39]
  br i1 %49, label %50, label %83, !dbg !233      ; [debug line = 32:39]

; <label>:50                                      ; preds = %46
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !234 ; [debug line = 32:57]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !234 ; [debug line = 32:57]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !236 ; [debug line = 33:1]
  %51 = load i32* %j2, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 33:5]
  %52 = sext i32 %51 to i64, !dbg !237            ; [#uses=1 type=i64] [debug line = 33:5]
  %53 = getelementptr inbounds i32* %8, i64 %52, !dbg !237 ; [#uses=1 type=i32*] [debug line = 33:5]
  %54 = load i32* %53, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 33:5]
  %55 = load i32* %j2, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 33:5]
  %56 = add nsw i32 %55, 1, !dbg !237             ; [#uses=1 type=i32] [debug line = 33:5]
  %57 = sext i32 %56 to i64, !dbg !237            ; [#uses=1 type=i64] [debug line = 33:5]
  %58 = getelementptr inbounds i32* %8, i64 %57, !dbg !237 ; [#uses=1 type=i32*] [debug line = 33:5]
  %59 = load i32* %58, align 4, !dbg !237         ; [#uses=1 type=i32] [debug line = 33:5]
  %60 = icmp sgt i32 %54, %59, !dbg !237          ; [#uses=1 type=i1] [debug line = 33:5]
  br i1 %60, label %61, label %79, !dbg !237      ; [debug line = 33:5]

; <label>:61                                      ; preds = %50
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !238), !dbg !240 ; [debug line = 34:8] [debug variable = tmp]
  %62 = load i32* %j2, align 4, !dbg !241         ; [#uses=1 type=i32] [debug line = 34:18]
  %63 = sext i32 %62 to i64, !dbg !241            ; [#uses=1 type=i64] [debug line = 34:18]
  %64 = getelementptr inbounds i32* %8, i64 %63, !dbg !241 ; [#uses=1 type=i32*] [debug line = 34:18]
  %65 = load i32* %64, align 4, !dbg !241         ; [#uses=1 type=i32] [debug line = 34:18]
  store i32 %65, i32* %tmp, align 4, !dbg !241    ; [debug line = 34:18]
  %66 = load i32* %j2, align 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 35:4]
  %67 = add nsw i32 %66, 1, !dbg !242             ; [#uses=1 type=i32] [debug line = 35:4]
  %68 = sext i32 %67 to i64, !dbg !242            ; [#uses=1 type=i64] [debug line = 35:4]
  %69 = getelementptr inbounds i32* %8, i64 %68, !dbg !242 ; [#uses=1 type=i32*] [debug line = 35:4]
  %70 = load i32* %69, align 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 35:4]
  %71 = load i32* %j2, align 4, !dbg !242         ; [#uses=1 type=i32] [debug line = 35:4]
  %72 = sext i32 %71 to i64, !dbg !242            ; [#uses=1 type=i64] [debug line = 35:4]
  %73 = getelementptr inbounds i32* %8, i64 %72, !dbg !242 ; [#uses=1 type=i32*] [debug line = 35:4]
  store i32 %70, i32* %73, align 4, !dbg !242     ; [debug line = 35:4]
  %74 = load i32* %tmp, align 4, !dbg !243        ; [#uses=1 type=i32] [debug line = 36:4]
  %75 = load i32* %j2, align 4, !dbg !243         ; [#uses=1 type=i32] [debug line = 36:4]
  %76 = add nsw i32 %75, 1, !dbg !243             ; [#uses=1 type=i32] [debug line = 36:4]
  %77 = sext i32 %76 to i64, !dbg !243            ; [#uses=1 type=i64] [debug line = 36:4]
  %78 = getelementptr inbounds i32* %8, i64 %77, !dbg !243 ; [#uses=1 type=i32*] [debug line = 36:4]
  store i32 %74, i32* %78, align 4, !dbg !243     ; [debug line = 36:4]
  br label %79, !dbg !244                         ; [debug line = 37:5]

; <label>:79                                      ; preds = %61, %50
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([23 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !245 ; [debug line = 38:3]
  br label %80, !dbg !245                         ; [debug line = 38:3]

; <label>:80                                      ; preds = %79
  %81 = load i32* %j2, align 4, !dbg !246         ; [#uses=1 type=i32] [debug line = 32:51]
  %82 = add nsw i32 %81, 1, !dbg !246             ; [#uses=1 type=i32] [debug line = 32:51]
  store i32 %82, i32* %j2, align 4, !dbg !246     ; [debug line = 32:51]
  br label %46, !dbg !246                         ; [debug line = 32:51]

; <label>:83                                      ; preds = %46
  br label %84, !dbg !247                         ; [debug line = 39:2]

; <label>:84                                      ; preds = %83
  %85 = load i32* %i1, align 4, !dbg !248         ; [#uses=1 type=i32] [debug line = 31:27]
  %86 = add nsw i32 %85, 1, !dbg !248             ; [#uses=1 type=i32] [debug line = 31:27]
  store i32 %86, i32* %i1, align 4, !dbg !248     ; [debug line = 31:27]
  br label %40, !dbg !248                         ; [debug line = 31:27]

; <label>:87                                      ; preds = %40
  %88 = getelementptr inbounds i32* %8, i64 4, !dbg !249 ; [#uses=1 type=i32*] [debug line = 41:2]
  %89 = load i32* %88, align 4, !dbg !249         ; [#uses=1 type=i32] [debug line = 41:2]
  store i32 1, i32* %3
  %90 = load i8** %2, !dbg !250                   ; [#uses=1 type=i8*] [debug line = 42:1]
  call void @llvm.stackrestore(i8* %90), !dbg !250 ; [debug line = 42:1]
  ret i32 %89, !dbg !249                          ; [debug line = 41:2]
}

; [#uses=1]
declare i8* @llvm.stacksave() nounwind

; [#uses=1]
declare void @llvm.stackrestore(i8*) nounwind

; [#uses=1]
define internal void @_Z6filterRN3hls6streamIiEES2_(%"class.hls::stream"* %in_stream, %"class.hls::stream"* %out_stream) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %temp_array = alloca [2 x [600 x i32]], align 16 ; [#uses=4 type=[2 x [600 x i32]]*]
  %crop = alloca [3 x [3 x i32]], align 16        ; [#uses=5 type=[3 x [3 x i32]]*]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=9 type=i32*]
  %new_input = alloca i32, align 4                ; [#uses=3 type=i32*]
  %i1 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %j2 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %i3 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %i4 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %new_output = alloca i32, align 4               ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %in_stream, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !251), !dbg !252 ; [debug line = 44:38] [debug variable = in_stream]
  store %"class.hls::stream"* %out_stream, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !253), !dbg !254 ; [debug line = 45:32] [debug variable = out_stream]
  call void @llvm.dbg.declare(metadata !{[2 x [600 x i32]]* %temp_array}, metadata !255), !dbg !261 ; [debug line = 47:13] [debug variable = temp_array]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i32]]* %crop}, metadata !262), !dbg !265 ; [debug line = 48:13] [debug variable = crop]
  br label %3, !dbg !266                          ; [debug line = 48:23]

; <label>:3                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !267), !dbg !269 ; [debug line = 50:23] [debug variable = i]
  store i32 0, i32* %i, align 4, !dbg !270        ; [debug line = 50:28]
  br label %4, !dbg !270                          ; [debug line = 50:28]

; <label>:4                                       ; preds = %107, %3
  %5 = load i32* %i, align 4, !dbg !270           ; [#uses=1 type=i32] [debug line = 50:28]
  %6 = icmp slt i32 %5, 600, !dbg !270            ; [#uses=1 type=i1] [debug line = 50:28]
  br i1 %6, label %7, label %110, !dbg !270       ; [debug line = 50:28]

; <label>:7                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !271 ; [debug line = 50:45]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !271 ; [debug line = 50:45]
  br label %8, !dbg !271                          ; [debug line = 50:45]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !273), !dbg !275 ; [debug line = 51:24] [debug variable = j]
  store i32 0, i32* %j, align 4, !dbg !276        ; [debug line = 51:29]
  br label %9, !dbg !276                          ; [debug line = 51:29]

; <label>:9                                       ; preds = %103, %8
  %10 = load i32* %j, align 4, !dbg !276          ; [#uses=1 type=i32] [debug line = 51:29]
  %11 = icmp slt i32 %10, 600, !dbg !276          ; [#uses=1 type=i1] [debug line = 51:29]
  br i1 %11, label %12, label %106, !dbg !276     ; [debug line = 51:29]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !277 ; [debug line = 51:46]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !277 ; [debug line = 51:46]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !279 ; [debug line = 52:1]
  call void @llvm.dbg.declare(metadata !{i32* %new_input}, metadata !280), !dbg !281 ; [debug line = 52:15] [debug variable = new_input]
  %13 = load %"class.hls::stream"** %1, align 8, !dbg !282 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 53:4]
  call void @_ZN3hls6streamIiE4readERi(%"class.hls::stream"* %13, i32* %new_input), !dbg !282 ; [debug line = 53:4]
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !283), !dbg !285 ; [debug line = 56:14] [debug variable = i]
  store i32 0, i32* %i1, align 4, !dbg !286       ; [debug line = 56:19]
  br label %14, !dbg !286                         ; [debug line = 56:19]

; <label>:14                                      ; preds = %40, %12
  %15 = load i32* %i1, align 4, !dbg !286         ; [#uses=1 type=i32] [debug line = 56:19]
  %16 = icmp slt i32 %15, 3, !dbg !286            ; [#uses=1 type=i1] [debug line = 56:19]
  br i1 %16, label %17, label %43, !dbg !286      ; [debug line = 56:19]

; <label>:17                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i32* %j2}, metadata !287), !dbg !289 ; [debug line = 57:15] [debug variable = j]
  store i32 0, i32* %j2, align 4, !dbg !290       ; [debug line = 57:20]
  br label %18, !dbg !290                         ; [debug line = 57:20]

; <label>:18                                      ; preds = %36, %17
  %19 = load i32* %j2, align 4, !dbg !290         ; [#uses=1 type=i32] [debug line = 57:20]
  %20 = icmp slt i32 %19, 2, !dbg !290            ; [#uses=1 type=i1] [debug line = 57:20]
  br i1 %20, label %21, label %39, !dbg !290      ; [debug line = 57:20]

; <label>:21                                      ; preds = %18
  %22 = load i32* %j2, align 4, !dbg !291         ; [#uses=1 type=i32] [debug line = 58:7]
  %23 = add nsw i32 %22, 1, !dbg !291             ; [#uses=1 type=i32] [debug line = 58:7]
  %24 = sext i32 %23 to i64, !dbg !291            ; [#uses=1 type=i64] [debug line = 58:7]
  %25 = load i32* %i1, align 4, !dbg !291         ; [#uses=1 type=i32] [debug line = 58:7]
  %26 = sext i32 %25 to i64, !dbg !291            ; [#uses=1 type=i64] [debug line = 58:7]
  %27 = getelementptr inbounds [3 x [3 x i32]]* %crop, i32 0, i64 %26, !dbg !291 ; [#uses=1 type=[3 x i32]*] [debug line = 58:7]
  %28 = getelementptr inbounds [3 x i32]* %27, i32 0, i64 %24, !dbg !291 ; [#uses=1 type=i32*] [debug line = 58:7]
  %29 = load i32* %28, align 4, !dbg !291         ; [#uses=1 type=i32] [debug line = 58:7]
  %30 = load i32* %j2, align 4, !dbg !291         ; [#uses=1 type=i32] [debug line = 58:7]
  %31 = sext i32 %30 to i64, !dbg !291            ; [#uses=1 type=i64] [debug line = 58:7]
  %32 = load i32* %i1, align 4, !dbg !291         ; [#uses=1 type=i32] [debug line = 58:7]
  %33 = sext i32 %32 to i64, !dbg !291            ; [#uses=1 type=i64] [debug line = 58:7]
  %34 = getelementptr inbounds [3 x [3 x i32]]* %crop, i32 0, i64 %33, !dbg !291 ; [#uses=1 type=[3 x i32]*] [debug line = 58:7]
  %35 = getelementptr inbounds [3 x i32]* %34, i32 0, i64 %31, !dbg !291 ; [#uses=1 type=i32*] [debug line = 58:7]
  store i32 %29, i32* %35, align 4, !dbg !291     ; [debug line = 58:7]
  br label %36, !dbg !291                         ; [debug line = 58:7]

; <label>:36                                      ; preds = %21
  %37 = load i32* %j2, align 4, !dbg !292         ; [#uses=1 type=i32] [debug line = 57:33]
  %38 = add nsw i32 %37, 1, !dbg !292             ; [#uses=1 type=i32] [debug line = 57:33]
  store i32 %38, i32* %j2, align 4, !dbg !292     ; [debug line = 57:33]
  br label %18, !dbg !292                         ; [debug line = 57:33]

; <label>:39                                      ; preds = %18
  br label %40, !dbg !293                         ; [debug line = 58:31]

; <label>:40                                      ; preds = %39
  %41 = load i32* %i1, align 4, !dbg !294         ; [#uses=1 type=i32] [debug line = 56:28]
  %42 = add nsw i32 %41, 1, !dbg !294             ; [#uses=1 type=i32] [debug line = 56:28]
  store i32 %42, i32* %i1, align 4, !dbg !294     ; [debug line = 56:28]
  br label %14, !dbg !294                         ; [debug line = 56:28]

; <label>:43                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i32* %i3}, metadata !295), !dbg !297 ; [debug line = 60:14] [debug variable = i]
  store i32 0, i32* %i3, align 4, !dbg !298       ; [debug line = 60:19]
  br label %44, !dbg !298                         ; [debug line = 60:19]

; <label>:44                                      ; preds = %59, %43
  %45 = load i32* %i3, align 4, !dbg !298         ; [#uses=1 type=i32] [debug line = 60:19]
  %46 = icmp slt i32 %45, 2, !dbg !298            ; [#uses=1 type=i1] [debug line = 60:19]
  br i1 %46, label %47, label %62, !dbg !298      ; [debug line = 60:19]

; <label>:47                                      ; preds = %44
  %48 = load i32* %j, align 4, !dbg !299          ; [#uses=1 type=i32] [debug line = 61:6]
  %49 = sext i32 %48 to i64, !dbg !299            ; [#uses=1 type=i64] [debug line = 61:6]
  %50 = load i32* %i3, align 4, !dbg !299         ; [#uses=1 type=i32] [debug line = 61:6]
  %51 = sext i32 %50 to i64, !dbg !299            ; [#uses=1 type=i64] [debug line = 61:6]
  %52 = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i32 0, i64 %51, !dbg !299 ; [#uses=1 type=[600 x i32]*] [debug line = 61:6]
  %53 = getelementptr inbounds [600 x i32]* %52, i32 0, i64 %49, !dbg !299 ; [#uses=1 type=i32*] [debug line = 61:6]
  %54 = load i32* %53, align 4, !dbg !299         ; [#uses=1 type=i32] [debug line = 61:6]
  %55 = load i32* %i3, align 4, !dbg !299         ; [#uses=1 type=i32] [debug line = 61:6]
  %56 = sext i32 %55 to i64, !dbg !299            ; [#uses=1 type=i64] [debug line = 61:6]
  %57 = getelementptr inbounds [3 x [3 x i32]]* %crop, i32 0, i64 %56, !dbg !299 ; [#uses=1 type=[3 x i32]*] [debug line = 61:6]
  %58 = getelementptr inbounds [3 x i32]* %57, i32 0, i64 2, !dbg !299 ; [#uses=1 type=i32*] [debug line = 61:6]
  store i32 %54, i32* %58, align 4, !dbg !299     ; [debug line = 61:6]
  br label %59, !dbg !299                         ; [debug line = 61:6]

; <label>:59                                      ; preds = %47
  %60 = load i32* %i3, align 4, !dbg !300         ; [#uses=1 type=i32] [debug line = 60:32]
  %61 = add nsw i32 %60, 1, !dbg !300             ; [#uses=1 type=i32] [debug line = 60:32]
  store i32 %61, i32* %i3, align 4, !dbg !300     ; [debug line = 60:32]
  br label %44, !dbg !300                         ; [debug line = 60:32]

; <label>:62                                      ; preds = %44
  %63 = load i32* %new_input, align 4, !dbg !301  ; [#uses=1 type=i32] [debug line = 63:5]
  %64 = getelementptr inbounds [3 x [3 x i32]]* %crop, i32 0, i64 2, !dbg !301 ; [#uses=1 type=[3 x i32]*] [debug line = 63:5]
  %65 = getelementptr inbounds [3 x i32]* %64, i32 0, i64 2, !dbg !301 ; [#uses=1 type=i32*] [debug line = 63:5]
  store i32 %63, i32* %65, align 4, !dbg !301     ; [debug line = 63:5]
  call void @llvm.dbg.declare(metadata !{i32* %i4}, metadata !302), !dbg !304 ; [debug line = 65:14] [debug variable = i]
  store i32 0, i32* %i4, align 4, !dbg !305       ; [debug line = 65:19]
  br label %66, !dbg !305                         ; [debug line = 65:19]

; <label>:66                                      ; preds = %84, %62
  %67 = load i32* %i4, align 4, !dbg !305         ; [#uses=1 type=i32] [debug line = 65:19]
  %68 = icmp slt i32 %67, 1, !dbg !305            ; [#uses=1 type=i1] [debug line = 65:19]
  br i1 %68, label %69, label %87, !dbg !305      ; [debug line = 65:19]

; <label>:69                                      ; preds = %66
  %70 = load i32* %j, align 4, !dbg !306          ; [#uses=1 type=i32] [debug line = 66:6]
  %71 = sext i32 %70 to i64, !dbg !306            ; [#uses=1 type=i64] [debug line = 66:6]
  %72 = load i32* %i4, align 4, !dbg !306         ; [#uses=1 type=i32] [debug line = 66:6]
  %73 = add nsw i32 %72, 1, !dbg !306             ; [#uses=1 type=i32] [debug line = 66:6]
  %74 = sext i32 %73 to i64, !dbg !306            ; [#uses=1 type=i64] [debug line = 66:6]
  %75 = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i32 0, i64 %74, !dbg !306 ; [#uses=1 type=[600 x i32]*] [debug line = 66:6]
  %76 = getelementptr inbounds [600 x i32]* %75, i32 0, i64 %71, !dbg !306 ; [#uses=1 type=i32*] [debug line = 66:6]
  %77 = load i32* %76, align 4, !dbg !306         ; [#uses=1 type=i32] [debug line = 66:6]
  %78 = load i32* %j, align 4, !dbg !306          ; [#uses=1 type=i32] [debug line = 66:6]
  %79 = sext i32 %78 to i64, !dbg !306            ; [#uses=1 type=i64] [debug line = 66:6]
  %80 = load i32* %i4, align 4, !dbg !306         ; [#uses=1 type=i32] [debug line = 66:6]
  %81 = sext i32 %80 to i64, !dbg !306            ; [#uses=1 type=i64] [debug line = 66:6]
  %82 = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i32 0, i64 %81, !dbg !306 ; [#uses=1 type=[600 x i32]*] [debug line = 66:6]
  %83 = getelementptr inbounds [600 x i32]* %82, i32 0, i64 %79, !dbg !306 ; [#uses=1 type=i32*] [debug line = 66:6]
  store i32 %77, i32* %83, align 4, !dbg !306     ; [debug line = 66:6]
  br label %84, !dbg !306                         ; [debug line = 66:6]

; <label>:84                                      ; preds = %69
  %85 = load i32* %i4, align 4, !dbg !307         ; [#uses=1 type=i32] [debug line = 65:31]
  %86 = add nsw i32 %85, 1, !dbg !307             ; [#uses=1 type=i32] [debug line = 65:31]
  store i32 %86, i32* %i4, align 4, !dbg !307     ; [debug line = 65:31]
  br label %66, !dbg !307                         ; [debug line = 65:31]

; <label>:87                                      ; preds = %66
  %88 = load i32* %new_input, align 4, !dbg !308  ; [#uses=1 type=i32] [debug line = 68:5]
  %89 = load i32* %j, align 4, !dbg !308          ; [#uses=1 type=i32] [debug line = 68:5]
  %90 = sext i32 %89 to i64, !dbg !308            ; [#uses=1 type=i64] [debug line = 68:5]
  %91 = getelementptr inbounds [2 x [600 x i32]]* %temp_array, i32 0, i64 1, !dbg !308 ; [#uses=1 type=[600 x i32]*] [debug line = 68:5]
  %92 = getelementptr inbounds [600 x i32]* %91, i32 0, i64 %90, !dbg !308 ; [#uses=1 type=i32*] [debug line = 68:5]
  store i32 %88, i32* %92, align 4, !dbg !308     ; [debug line = 68:5]
  call void @llvm.dbg.declare(metadata !{i32* %new_output}, metadata !309), !dbg !310 ; [debug line = 69:16] [debug variable = new_output]
  %93 = getelementptr inbounds [3 x [3 x i32]]* %crop, i32 0, i32 0, !dbg !311 ; [#uses=1 type=[3 x i32]*] [debug line = 69:29]
  %94 = call i32 @_Z11bubble_sortPA3_i([3 x i32]* %93), !dbg !311 ; [#uses=1 type=i32] [debug line = 69:29]
  store i32 %94, i32* %new_output, align 4, !dbg !311 ; [debug line = 69:29]
  %95 = load i32* %i, align 4, !dbg !312          ; [#uses=1 type=i32] [debug line = 70:4]
  %96 = icmp sgt i32 %95, 1, !dbg !312            ; [#uses=1 type=i1] [debug line = 70:4]
  br i1 %96, label %97, label %102, !dbg !312     ; [debug line = 70:4]

; <label>:97                                      ; preds = %87
  %98 = load i32* %j, align 4, !dbg !312          ; [#uses=1 type=i32] [debug line = 70:4]
  %99 = icmp sgt i32 %98, 1, !dbg !312            ; [#uses=1 type=i1] [debug line = 70:4]
  br i1 %99, label %100, label %102, !dbg !312    ; [debug line = 70:4]

; <label>:100                                     ; preds = %97
  %101 = load %"class.hls::stream"** %2, align 8, !dbg !313 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 71:5]
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream"* %101, i32* %new_output), !dbg !313 ; [debug line = 71:5]
  br label %102, !dbg !313                        ; [debug line = 71:5]

; <label>:102                                     ; preds = %100, %97, %87
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !314 ; [debug line = 72:3]
  br label %103, !dbg !314                        ; [debug line = 72:3]

; <label>:103                                     ; preds = %102
  %104 = load i32* %j, align 4, !dbg !315         ; [#uses=1 type=i32] [debug line = 51:40]
  %105 = add nsw i32 %104, 1, !dbg !315           ; [#uses=1 type=i32] [debug line = 51:40]
  store i32 %105, i32* %j, align 4, !dbg !315     ; [debug line = 51:40]
  br label %9, !dbg !315                          ; [debug line = 51:40]

; <label>:106                                     ; preds = %9
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !316 ; [debug line = 73:2]
  br label %107, !dbg !316                        ; [debug line = 73:2]

; <label>:107                                     ; preds = %106
  %108 = load i32* %i, align 4, !dbg !317         ; [#uses=1 type=i32] [debug line = 50:39]
  %109 = add nsw i32 %108, 1, !dbg !317           ; [#uses=1 type=i32] [debug line = 50:39]
  store i32 %109, i32* %i, align 4, !dbg !317     ; [debug line = 50:39]
  br label %4, !dbg !317                          ; [debug line = 50:39]

; <label>:110                                     ; preds = %4
  ret void, !dbg !318                             ; [debug line = 74:1]
}

; [#uses=0]
define void @_Z14filter_wrapperPiS_(i32* %in_array, i32* %out_array) nounwind uwtable {
  %1 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %2 = alloca i32*, align 8                       ; [#uses=4 type=i32**]
  %in_stream = alloca %"class.hls::stream", align 4 ; [#uses=4 type=%"class.hls::stream"*]
  %out_stream = alloca %"class.hls::stream", align 4 ; [#uses=4 type=%"class.hls::stream"*]
  store i32* %in_array, i32** %1, align 8
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !319), !dbg !320 ; [debug line = 76:32] [debug variable = in_array]
  store i32* %out_array, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !321), !dbg !322 ; [debug line = 77:15] [debug variable = out_array]
  %3 = load i32** %2, align 8, !dbg !323          ; [#uses=1 type=i32*] [debug line = 77:35]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %3, i32 357604) nounwind, !dbg !323 ; [debug line = 77:35]
  %4 = load i32** %1, align 8, !dbg !325          ; [#uses=1 type=i32*] [debug line = 77:77]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %4, i32 360000) nounwind, !dbg !325 ; [debug line = 77:77]
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !326 ; [debug line = 78:1]
  %5 = load i32** %2, align 8, !dbg !326          ; [#uses=1 type=i32*] [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %5, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 400000, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 2, i32 2, i32 256, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !326 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !326 ; [debug line = 78:1]
  %6 = load i32** %1, align 8, !dbg !326          ; [#uses=1 type=i32*] [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %6, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 400000, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 2, i32 2, i32 256, i32 256, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !326 ; [debug line = 78:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %in_stream}, metadata !327), !dbg !328 ; [debug line = 78:26] [debug variable = in_stream]
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream"* %in_stream), !dbg !329 ; [debug line = 78:35]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream"* %in_stream, i32 1, i32 1024, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !330 ; [debug line = 79:1]
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"* %out_stream}, metadata !331), !dbg !332 ; [debug line = 79:26] [debug variable = out_stream]
  call void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream"* %out_stream), !dbg !333 ; [debug line = 79:36]
  call void (...)* @_ssdm_SpecStream(%"class.hls::stream"* %out_stream, i32 1, i32 1024, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !334 ; [debug line = 80:1]
  %7 = load i32** %1, align 8, !dbg !335          ; [#uses=1 type=i32*] [debug line = 80:2]
  call void @_Z22write_pixels_to_streamRN3hls6streamIiEEPi(%"class.hls::stream"* %in_stream, i32* %7), !dbg !335 ; [debug line = 80:2]
  call void @_Z6filterRN3hls6streamIiEES2_(%"class.hls::stream"* %in_stream, %"class.hls::stream"* %out_stream), !dbg !336 ; [debug line = 81:2]
  %8 = load i32** %2, align 8, !dbg !337          ; [#uses=1 type=i32*] [debug line = 82:2]
  call void @_Z23read_pixels_from_streamRN3hls6streamIiEEPi(%"class.hls::stream"* %out_stream, i32* %8), !dbg !337 ; [debug line = 82:2]
  ret void, !dbg !338                             ; [debug line = 83:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecDataflowPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
define internal void @_ZN3hls6streamIiEC1Ev(%"class.hls::stream"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !339), !dbg !340 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @_ZN3hls6streamIiEC2Ev(%"class.hls::stream"* %2), !dbg !341 ; [debug line = 84:5]
  ret void, !dbg !341                             ; [debug line = 84:5]
}

; [#uses=2]
declare void @_ssdm_SpecStream(...) nounwind

; [#uses=1]
define internal void @_ZN3hls6streamIiEC2Ev(%"class.hls::stream"* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !342), !dbg !343 ; [debug line = 83:43] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=0 type=%"class.hls::stream"*]
  ret void, !dbg !344                             ; [debug line = 84:5]
}

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!92, !99, !102, !108, !112, !116, !122, !123, !127}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/kinka1/HLS/MedianFilter/solution3/.autopilot/db/median.pragma.2.cpp", metadata !"/home/kinka1/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !70, metadata !75, metadata !82, metadata !85, metadata !88, metadata !89, metadata !90, metadata !91}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"write_pixels_to_stream", metadata !"write_pixels_to_stream", metadata !"_Z22write_pixels_to_streamRN3hls6streamIiEEPi", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_Z22write_pixels_to_streamRN3hls6streamIiEEPi, null, null, metadata !20, i32 4} ; [ DW_TAG_subprogram ]
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
!70 = metadata !{i32 786478, i32 0, metadata !6, metadata !"read_pixels_from_stream", metadata !"read_pixels_from_stream", metadata !"_Z23read_pixels_from_streamRN3hls6streamIiEEPi", metadata !6, i32 11, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_Z23read_pixels_from_streamRN3hls6streamIiEEPi, null, null, metadata !20, i32 12} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !9, metadata !73}
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786454, null, metadata !"Output_Type", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bubble_sort", metadata !"bubble_sort", metadata !"_Z11bubble_sortPA3_i", metadata !6, i32 20, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @_Z11bubble_sortPA3_i, null, null, metadata !20, i32 20} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !74, metadata !78}
!78 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !69, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!82 = metadata !{i32 786478, i32 0, metadata !6, metadata !"filter", metadata !"filter", metadata !"_Z6filterRN3hls6streamIiEES2_", metadata !6, i32 44, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z6filterRN3hls6streamIiEES2_, null, null, metadata !20, i32 45} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !9, metadata !9}
!85 = metadata !{i32 786478, i32 0, metadata !6, metadata !"filter_wrapper", metadata !"filter_wrapper", metadata !"_Z14filter_wrapperPiS_", metadata !6, i32 76, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @_Z14filter_wrapperPiS_, null, null, metadata !20, i32 77} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !68, metadata !73}
!88 = metadata !{i32 786478, i32 0, metadata !11, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC1Ev", metadata !12, i32 83, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIiEC1Ev, null, metadata !16, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786478, i32 0, metadata !11, metadata !"stream", metadata !"stream", metadata !"_ZN3hls6streamIiEC2Ev", metadata !12, i32 83, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*)* @_ZN3hls6streamIiEC2Ev, null, metadata !16, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE4readERi, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE5writeERKi, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!92 = metadata !{void (%"class.hls::stream"*, i32*)* @_Z22write_pixels_to_streamRN3hls6streamIiEEPi, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Input_Type> &", metadata !"Input_Type*"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"in_array"}
!98 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!99 = metadata !{void (%"class.hls::stream"*, i32*)* @_Z23read_pixels_from_streamRN3hls6streamIiEEPi, metadata !93, metadata !94, metadata !100, metadata !96, metadata !101, metadata !98}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Output_Type> &", metadata !"Output_Type*"}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"out_stream", metadata !"out_array"}
!102 = metadata !{i32 ([3 x i32]*)* @_Z11bubble_sortPA3_i, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !98}
!103 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!104 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"Input_Type [3]*"}
!106 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"CROP"}
!108 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z6filterRN3hls6streamIiEES2_, metadata !109, metadata !94, metadata !110, metadata !96, metadata !111, metadata !98}
!109 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<Input_Type> &", metadata !"hls::stream<Output_Type> &"}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!112 = metadata !{void (i32*, i32*)* @_Z14filter_wrapperPiS_, metadata !113, metadata !94, metadata !114, metadata !96, metadata !115, metadata !98}
!113 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"Input_Type*", metadata !"Output_Type*"}
!115 = metadata !{metadata !"kernel_arg_name", metadata !"in_array", metadata !"out_array"}
!116 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIiEC1Ev, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !98}
!117 = metadata !{metadata !"kernel_arg_addr_space"}
!118 = metadata !{metadata !"kernel_arg_access_qual"}
!119 = metadata !{metadata !"kernel_arg_type"}
!120 = metadata !{metadata !"kernel_arg_type_qual"}
!121 = metadata !{metadata !"kernel_arg_name"}
!122 = metadata !{void (%"class.hls::stream"*)* @_ZN3hls6streamIiEC2Ev, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !98}
!123 = metadata !{void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE4readERi, metadata !124, metadata !104, metadata !125, metadata !106, metadata !126, metadata !98}
!124 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"int &"}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!127 = metadata !{void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE5writeERKi, metadata !124, metadata !104, metadata !128, metadata !106, metadata !129, metadata !98}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!130 = metadata !{i32 786689, metadata !5, metadata !"in_stream", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 3, i32 54, metadata !5, null}
!132 = metadata !{i32 786689, metadata !5, metadata !"in_array", metadata !6, i32 33554436, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 4, i32 16, metadata !5, null}
!134 = metadata !{i32 4, i32 36, metadata !135, null}
!135 = metadata !{i32 786443, metadata !5, i32 4, i32 35, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 786688, metadata !137, metadata !"i", metadata !6, i32 5, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 786443, metadata !135, i32 5, i32 30, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 5, i32 39, metadata !137, null}
!139 = metadata !{i32 5, i32 44, metadata !137, null}
!140 = metadata !{i32 5, i32 64, metadata !141, null}
!141 = metadata !{i32 786443, metadata !137, i32 5, i32 63, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 6, i32 1, metadata !141, null}
!143 = metadata !{i32 786688, metadata !141, metadata !"temp", metadata !6, i32 6, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 6, i32 14, metadata !141, null}
!145 = metadata !{i32 6, i32 32, metadata !141, null}
!146 = metadata !{i32 7, i32 3, metadata !141, null}
!147 = metadata !{i32 8, i32 2, metadata !141, null}
!148 = metadata !{i32 5, i32 59, metadata !137, null}
!149 = metadata !{i32 9, i32 1, metadata !135, null}
!150 = metadata !{i32 786689, metadata !91, metadata !"this", metadata !12, i32 16777360, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 144, i32 48, metadata !91, null}
!153 = metadata !{i32 786689, metadata !91, metadata !"din", metadata !12, i32 33554576, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 144, i32 74, metadata !91, null}
!155 = metadata !{i32 786688, metadata !156, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 786443, metadata !91, i32 144, i32 79, metadata !12, i32 28} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 145, i32 22, metadata !156, null}
!158 = metadata !{i32 145, i32 31, metadata !156, null}
!159 = metadata !{i32 146, i32 9, metadata !156, null}
!160 = metadata !{i32 147, i32 5, metadata !156, null}
!161 = metadata !{i32 786689, metadata !70, metadata !"out_stream", metadata !6, i32 16777227, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 11, i32 56, metadata !70, null}
!163 = metadata !{i32 786689, metadata !70, metadata !"out_array", metadata !6, i32 33554444, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 12, i32 18, metadata !70, null}
!165 = metadata !{i32 12, i32 39, metadata !166, null}
!166 = metadata !{i32 786443, metadata !70, i32 12, i32 38, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !6, i32 13, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 786443, metadata !166, i32 13, i32 31, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 13, i32 40, metadata !168, null}
!170 = metadata !{i32 13, i32 45, metadata !168, null}
!171 = metadata !{i32 13, i32 65, metadata !172, null}
!172 = metadata !{i32 786443, metadata !168, i32 13, i32 64, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 14, i32 1, metadata !172, null}
!174 = metadata !{i32 786688, metadata !172, metadata !"temp", metadata !6, i32 14, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 14, i32 15, metadata !172, null}
!176 = metadata !{i32 15, i32 3, metadata !172, null}
!177 = metadata !{i32 16, i32 3, metadata !172, null}
!178 = metadata !{i32 17, i32 2, metadata !172, null}
!179 = metadata !{i32 13, i32 60, metadata !168, null}
!180 = metadata !{i32 18, i32 1, metadata !166, null}
!181 = metadata !{i32 786689, metadata !90, metadata !"this", metadata !12, i32 16777339, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!182 = metadata !{i32 123, i32 48, metadata !90, null}
!183 = metadata !{i32 786689, metadata !90, metadata !"dout", metadata !12, i32 33554555, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 123, i32 67, metadata !90, null}
!185 = metadata !{i32 786688, metadata !186, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 786443, metadata !90, i32 123, i32 73, metadata !12, i32 27} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 124, i32 22, metadata !186, null}
!188 = metadata !{i32 125, i32 9, metadata !186, null}
!189 = metadata !{i32 126, i32 9, metadata !186, null}
!190 = metadata !{i32 127, i32 5, metadata !186, null}
!191 = metadata !{i32 786689, metadata !75, metadata !"CROP", metadata !6, i32 16777236, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 20, i32 36, metadata !75, null}
!193 = metadata !{i32 20, i32 49, metadata !194, null}
!194 = metadata !{i32 786443, metadata !75, i32 20, i32 48, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 786688, metadata !194, metadata !"size", metadata !6, i32 21, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 21, i32 6, metadata !194, null}
!197 = metadata !{i32 21, i32 16, metadata !194, null}
!198 = metadata !{i32 22, i32 13, metadata !194, null}
!199 = metadata !{i32 786688, metadata !194, metadata !"A", metadata !6, i32 22, metadata !200, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 32, i32 0, i32 0, metadata !15, metadata !201, i32 0, i32 0} ; [ DW_TAG_array_type ]
!201 = metadata !{metadata !202}
!202 = metadata !{i32 786465, i64 1, i64 0}       ; [ DW_TAG_subrange_type ]
!203 = metadata !{i32 22, i32 6, metadata !194, null}
!204 = metadata !{i32 786688, metadata !205, metadata !"i", metadata !6, i32 24, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 786443, metadata !194, i32 24, i32 2, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 24, i32 11, metadata !205, null}
!207 = metadata !{i32 24, i32 23, metadata !205, null}
!208 = metadata !{i32 786688, metadata !205, metadata !"k", metadata !6, i32 24, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 24, i32 18, metadata !205, null}
!210 = metadata !{i32 25, i32 2, metadata !211, null}
!211 = metadata !{i32 786443, metadata !205, i32 25, i32 2, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 786688, metadata !213, metadata !"j", metadata !6, i32 26, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 786443, metadata !211, i32 26, i32 23, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 26, i32 32, metadata !213, null}
!215 = metadata !{i32 26, i32 37, metadata !213, null}
!216 = metadata !{i32 26, i32 52, metadata !217, null}
!217 = metadata !{i32 786443, metadata !213, i32 26, i32 51, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 27, i32 1, metadata !217, null}
!219 = metadata !{i32 27, i32 4, metadata !217, null}
!220 = metadata !{i32 28, i32 3, metadata !217, null}
!221 = metadata !{i32 26, i32 46, metadata !213, null}
!222 = metadata !{i32 29, i32 2, metadata !211, null}
!223 = metadata !{i32 24, i32 32, metadata !205, null}
!224 = metadata !{i32 786688, metadata !225, metadata !"i", metadata !6, i32 31, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!225 = metadata !{i32 786443, metadata !194, i32 31, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 31, i32 10, metadata !225, null}
!227 = metadata !{i32 31, i32 15, metadata !225, null}
!228 = metadata !{i32 31, i32 32, metadata !229, null}
!229 = metadata !{i32 786443, metadata !225, i32 31, i32 32, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 786688, metadata !231, metadata !"j", metadata !6, i32 32, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 786443, metadata !229, i32 32, i32 26, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 32, i32 34, metadata !231, null}
!233 = metadata !{i32 32, i32 39, metadata !231, null}
!234 = metadata !{i32 32, i32 57, metadata !235, null}
!235 = metadata !{i32 786443, metadata !231, i32 32, i32 56, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 33, i32 1, metadata !235, null}
!237 = metadata !{i32 33, i32 5, metadata !235, null}
!238 = metadata !{i32 786688, metadata !239, metadata !"tmp", metadata !6, i32 34, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 786443, metadata !235, i32 33, i32 25, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 34, i32 8, metadata !239, null}
!241 = metadata !{i32 34, i32 18, metadata !239, null}
!242 = metadata !{i32 35, i32 4, metadata !239, null}
!243 = metadata !{i32 36, i32 4, metadata !239, null}
!244 = metadata !{i32 37, i32 5, metadata !239, null}
!245 = metadata !{i32 38, i32 3, metadata !235, null}
!246 = metadata !{i32 32, i32 51, metadata !231, null}
!247 = metadata !{i32 39, i32 2, metadata !229, null}
!248 = metadata !{i32 31, i32 27, metadata !225, null}
!249 = metadata !{i32 41, i32 2, metadata !194, null}
!250 = metadata !{i32 42, i32 1, metadata !194, null}
!251 = metadata !{i32 786689, metadata !82, metadata !"in_stream", metadata !6, i32 16777260, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!252 = metadata !{i32 44, i32 38, metadata !82, null}
!253 = metadata !{i32 786689, metadata !82, metadata !"out_stream", metadata !6, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 45, i32 32, metadata !82, null}
!255 = metadata !{i32 786688, metadata !256, metadata !"temp_array", metadata !6, i32 47, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 786443, metadata !82, i32 45, i32 44, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!257 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 38400, i64 32, i32 0, i32 0, metadata !69, metadata !258, i32 0, i32 0} ; [ DW_TAG_array_type ]
!258 = metadata !{metadata !259, metadata !260}
!259 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!260 = metadata !{i32 786465, i64 0, i64 599}     ; [ DW_TAG_subrange_type ]
!261 = metadata !{i32 47, i32 13, metadata !256, null}
!262 = metadata !{i32 786688, metadata !256, metadata !"crop", metadata !6, i32 48, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !69, metadata !264, i32 0, i32 0} ; [ DW_TAG_array_type ]
!264 = metadata !{metadata !81, metadata !81}
!265 = metadata !{i32 48, i32 13, metadata !256, null}
!266 = metadata !{i32 48, i32 23, metadata !256, null}
!267 = metadata !{i32 786688, metadata !268, metadata !"i", metadata !6, i32 50, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!268 = metadata !{i32 786443, metadata !256, i32 50, i32 14, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 50, i32 23, metadata !268, null}
!270 = metadata !{i32 50, i32 28, metadata !268, null}
!271 = metadata !{i32 50, i32 45, metadata !272, null}
!272 = metadata !{i32 786443, metadata !268, i32 50, i32 44, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 786688, metadata !274, metadata !"j", metadata !6, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!274 = metadata !{i32 786443, metadata !272, i32 51, i32 15, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 51, i32 24, metadata !274, null}
!276 = metadata !{i32 51, i32 29, metadata !274, null}
!277 = metadata !{i32 51, i32 46, metadata !278, null}
!278 = metadata !{i32 786443, metadata !274, i32 51, i32 45, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!279 = metadata !{i32 52, i32 1, metadata !278, null}
!280 = metadata !{i32 786688, metadata !278, metadata !"new_input", metadata !6, i32 52, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 52, i32 15, metadata !278, null}
!282 = metadata !{i32 53, i32 4, metadata !278, null}
!283 = metadata !{i32 786688, metadata !284, metadata !"i", metadata !6, i32 56, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 786443, metadata !278, i32 56, i32 5, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 56, i32 14, metadata !284, null}
!286 = metadata !{i32 56, i32 19, metadata !284, null}
!287 = metadata !{i32 786688, metadata !288, metadata !"j", metadata !6, i32 57, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!288 = metadata !{i32 786443, metadata !284, i32 57, i32 6, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!289 = metadata !{i32 57, i32 15, metadata !288, null}
!290 = metadata !{i32 57, i32 20, metadata !288, null}
!291 = metadata !{i32 58, i32 7, metadata !288, null}
!292 = metadata !{i32 57, i32 33, metadata !288, null}
!293 = metadata !{i32 58, i32 31, metadata !288, null}
!294 = metadata !{i32 56, i32 28, metadata !284, null}
!295 = metadata !{i32 786688, metadata !296, metadata !"i", metadata !6, i32 60, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!296 = metadata !{i32 786443, metadata !278, i32 60, i32 5, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!297 = metadata !{i32 60, i32 14, metadata !296, null}
!298 = metadata !{i32 60, i32 19, metadata !296, null}
!299 = metadata !{i32 61, i32 6, metadata !296, null}
!300 = metadata !{i32 60, i32 32, metadata !296, null}
!301 = metadata !{i32 63, i32 5, metadata !278, null}
!302 = metadata !{i32 786688, metadata !303, metadata !"i", metadata !6, i32 65, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 786443, metadata !278, i32 65, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 65, i32 14, metadata !303, null}
!305 = metadata !{i32 65, i32 19, metadata !303, null}
!306 = metadata !{i32 66, i32 6, metadata !303, null}
!307 = metadata !{i32 65, i32 31, metadata !303, null}
!308 = metadata !{i32 68, i32 5, metadata !278, null}
!309 = metadata !{i32 786688, metadata !278, metadata !"new_output", metadata !6, i32 69, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!310 = metadata !{i32 69, i32 16, metadata !278, null}
!311 = metadata !{i32 69, i32 29, metadata !278, null}
!312 = metadata !{i32 70, i32 4, metadata !278, null}
!313 = metadata !{i32 71, i32 5, metadata !278, null}
!314 = metadata !{i32 72, i32 3, metadata !278, null}
!315 = metadata !{i32 51, i32 40, metadata !274, null}
!316 = metadata !{i32 73, i32 2, metadata !272, null}
!317 = metadata !{i32 50, i32 39, metadata !268, null}
!318 = metadata !{i32 74, i32 1, metadata !256, null}
!319 = metadata !{i32 786689, metadata !85, metadata !"in_array", metadata !6, i32 16777292, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!320 = metadata !{i32 76, i32 32, metadata !85, null}
!321 = metadata !{i32 786689, metadata !85, metadata !"out_array", metadata !6, i32 33554509, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!322 = metadata !{i32 77, i32 15, metadata !85, null}
!323 = metadata !{i32 77, i32 35, metadata !324, null}
!324 = metadata !{i32 786443, metadata !85, i32 77, i32 34, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!325 = metadata !{i32 77, i32 77, metadata !324, null}
!326 = metadata !{i32 78, i32 1, metadata !324, null}
!327 = metadata !{i32 786688, metadata !324, metadata !"in_stream", metadata !6, i32 78, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!328 = metadata !{i32 78, i32 26, metadata !324, null}
!329 = metadata !{i32 78, i32 35, metadata !324, null}
!330 = metadata !{i32 79, i32 1, metadata !324, null}
!331 = metadata !{i32 786688, metadata !324, metadata !"out_stream", metadata !6, i32 79, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!332 = metadata !{i32 79, i32 26, metadata !324, null}
!333 = metadata !{i32 79, i32 36, metadata !324, null}
!334 = metadata !{i32 80, i32 1, metadata !324, null}
!335 = metadata !{i32 80, i32 2, metadata !324, null}
!336 = metadata !{i32 81, i32 2, metadata !324, null}
!337 = metadata !{i32 82, i32 2, metadata !324, null}
!338 = metadata !{i32 83, i32 1, metadata !324, null}
!339 = metadata !{i32 786689, metadata !88, metadata !"this", metadata !12, i32 16777299, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!340 = metadata !{i32 83, i32 43, metadata !88, null}
!341 = metadata !{i32 84, i32 5, metadata !88, null}
!342 = metadata !{i32 786689, metadata !89, metadata !"this", metadata !12, i32 16777299, metadata !151, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!343 = metadata !{i32 83, i32 43, metadata !89, null}
!344 = metadata !{i32 84, i32 5, metadata !345, null}
!345 = metadata !{i32 786443, metadata !89, i32 83, i32 52, metadata !12, i32 26} ; [ DW_TAG_lexical_block ]
