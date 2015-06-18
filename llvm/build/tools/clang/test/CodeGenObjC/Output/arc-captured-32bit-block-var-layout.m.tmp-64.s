; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/arc-captured-32bit-block-var-layout.m'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32-S128"
target triple = "i386-apple-darwin"

%0 = type opaque
%1 = type opaque
%2 = type opaque
%struct.__block_byref_byref_int = type { i8*, %struct.__block_byref_byref_int*, i32, i32, i32 }
%struct.__block_byref_byref_bab = type { i8*, %struct.__block_byref_byref_bab*, i32, i32, i8*, i8*, i8* }
%struct.__block_byref_bl_var1 = type { i8*, %struct.__block_byref_bl_var1*, i32, i32, i8*, i8*, i8* }
%struct.__block_descriptor = type { i32, i32 }
%struct.__block_literal_generic = type { i8*, i32, i32, i8*, %struct.__block_descriptor* }
%struct.__block_byref_byref_int.0 = type { i8*, %struct.__block_byref_byref_int.0*, i32, i32, i32 }
%struct.__block_byref_byref_bab.1 = type { i8*, %struct.__block_byref_byref_bab.1*, i32, i32, i8*, i8*, i8* }
%struct.__block_byref_byref_int.2 = type { i8*, %struct.__block_byref_byref_int.2*, i32, i32, i32 }
%struct.__block_byref_bl_var1.3 = type { i8*, %struct.__block_byref_bl_var1.3*, i32, i32, i8*, i8*, i8* }
%struct.__block_byref_byref_bab.4 = type { i8*, %struct.__block_byref_byref_bab.4*, i32, i32, i8*, i8*, i8* }
%union.U = type { i8* }
%struct.S5 = type { i32, i8*, %struct.V, i32, %union.UI }
%struct.V = type { i32, i8* }
%union.UI = type { i8* }
%struct.__block_byref_block_id = type { i8*, %struct.__block_byref_block_id*, i32, i32, i8*, i8*, i8* }
%struct.__block_byref_block_id.5 = type { i8*, %struct.__block_byref_block_id.5*, i32, i32, i8*, i8*, i8* }
%struct.S = type { [4 x i8*] }
%struct.S.6 = type { i32, [4 x i8*] }
%struct.S.7 = type { i32, [0 x i8*] }
%struct.S.8 = type { %struct.s0, i8*, [2 x [2 x %struct.s1]] }
%struct.s0 = type { i8*, i8* }
%struct.s1 = type { i32*, %2* }
%struct.S.9 = type { [4 x i8], i8, [3 x i8] }
%struct.S.10 = type { i8, [3 x i8] }
%struct.anon = type { [2 x i8], i8, i8, [4 x i8] }
%struct.anon.11 = type <{ [2 x i8], i8, i8, [8 x i8], i8, [3 x i8], [4 x i8] }>
%struct.anon.12 = type <{ i8, [3 x i8], [4 x i8], i8 }>
%struct.anon.13 = type <{ i8, [3 x i8], i8 }>

@_NSConcreteStackBlock = external global i8*
@.str = private unnamed_addr constant [6 x i8] c"v4@?0\00", align 1
@"\01L_OBJC_CLASS_NAME_" = internal global [4 x i8] c"@2@\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp = internal constant { i32, i32, i8*, i8*, i8*, i8* } { i32 0, i32 45, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_ to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_ to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @"\01L_OBJC_CLASS_NAME_", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_4" = internal global [5 x i8] c"@2PA\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp5 = internal constant { i32, i32, i8*, i8*, i8*, i8* } { i32 0, i32 53, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_2 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_3 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_4", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_8" = internal global [5 x i8] c"!1P1\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp9 = internal constant { i32, i32, i8*, i8*, i8*, i8* } { i32 0, i32 48, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_6 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_7 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_8", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_12" = internal global [7 x i8] c" ` `\22@\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp13 = internal constant { i32, i32, i8*, i8*, i8*, i8* } { i32 0, i32 52, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_10 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_11 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @"\01L_OBJC_CLASS_NAME_12", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_14" = internal global [2 x i8] c"c\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp15 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 36, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @"\01L_OBJC_CLASS_NAME_14", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_16" = internal global [3 x i8] c" c\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp17 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 40, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @"\01L_OBJC_CLASS_NAME_16", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_18" = internal global [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp19 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 24, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_18", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_20" = internal global [10 x i8] c"b ` ` ` `\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp21 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 64, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @"\01L_OBJC_CLASS_NAME_20", i32 0, i32 0) }
@.str22 = private unnamed_addr constant [6 x i8] c"i4@?0\00", align 1
@"\01L_OBJC_CLASS_NAME_23" = internal global [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp24 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 28, i8* getelementptr inbounds ([6 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_23", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_25" = internal global [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp26 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 24, i8* getelementptr inbounds ([6 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_25", i32 0, i32 0) }
@.str27 = private unnamed_addr constant [6 x i8] c"C4@?0\00", align 1
@"\01L_OBJC_CLASS_NAME_28" = internal global [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp29 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 28, i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_28", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_30" = internal global [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp31 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 40, i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_30", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_32" = internal global [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp33 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 29, i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_32", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_34" = internal global [1 x i8] zeroinitializer, section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp35 = internal constant { i32, i32, i8*, i8* } { i32 0, i32 25, i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_34", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_38" = internal global [3 x i8] c"0_\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp39 = internal constant { i32, i32, i8*, i8*, i8*, i8* } { i32 0, i32 88, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_36 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_37 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @"\01L_OBJC_CLASS_NAME_38", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_42" = internal global [5 x i8] c"0__P\00", section "__TEXT,__objc_classname,cstring_literals", align 1
@__block_descriptor_tmp43 = internal constant { i32, i32, i8*, i8*, i8*, i8* } { i32 0, i32 156, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_40 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_41 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_42", i32 0, i32 0) }
@llvm.used = appending global [16 x i8*] [i8* getelementptr inbounds ([4 x i8]* @"\01L_OBJC_CLASS_NAME_", i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_4", i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_8", i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @"\01L_OBJC_CLASS_NAME_12", i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @"\01L_OBJC_CLASS_NAME_14", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @"\01L_OBJC_CLASS_NAME_16", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_18", i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @"\01L_OBJC_CLASS_NAME_20", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_23", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_25", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_28", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_30", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_32", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_34", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @"\01L_OBJC_CLASS_NAME_38", i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_42", i32 0, i32 0)], section "llvm.metadata"

define void @x(i8* %y) nounwind {
entry:
  %y.addr = alloca i8*, align 4
  %0 = call i8* @objc_retain(i8* %y) nounwind
  store i8* %0, i8** %y.addr, align 4
  call void @objc_storeStrong(i8** %y.addr, i8* null) nounwind
  ret void
}

declare extern_weak i8* @objc_retain(i8*) nonlazybind

declare extern_weak void @objc_storeStrong(i8**, i8*)

define void @y(i32 %a) nounwind {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  ret void
}

define void @f() nounwind {
entry:
  %wid = alloca i8*, align 4
  %byref_int = alloca %struct.__block_byref_byref_int, align 4
  %ch = alloca i8, align 1
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  %sh = alloca i16, align 2
  %bar = alloca i8*, align 4
  %baz = alloca i8*, align 4
  %strong_void_sta = alloca i8*, align 4
  %byref_bab = alloca %struct.__block_byref_byref_bab, align 4
  %bl_var1 = alloca %struct.__block_byref_bl_var1, align 4
  %i = alloca i32, align 4
  %dob = alloca double, align 8
  %b = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>, align 4
  %c = alloca void (...)*, align 4
  %block22 = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>, align 4
  store i8* null, i8** %wid
  %byref.isa = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 0
  store i8* null, i8** %byref.isa
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 1
  store %struct.__block_byref_byref_int* %byref_int, %struct.__block_byref_byref_int** %byref.forwarding
  %byref.flags = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 2
  store i32 0, i32* %byref.flags
  %byref.size = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 3
  store i32 20, i32* %byref.size
  %byref_int1 = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 4
  store i32 0, i32* %byref_int1, align 4
  store i8 97, i8* %ch, align 1
  store i8 98, i8* %ch1, align 1
  store i8 99, i8* %ch2, align 1
  store i16 2, i16* %sh, align 2
  %call = call i8* bitcast (i8* (...)* @opaque_id to i8* ()*)()
  %0 = call i8* @objc_retainAutoreleasedReturnValue(i8* %call) nounwind
  store i8* %0, i8** %bar, align 4
  store i8* null, i8** %baz, align 4
  store i8* null, i8** %strong_void_sta, align 4
  %byref.isa2 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 0
  store i8* null, i8** %byref.isa2
  %byref.forwarding3 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 1
  store %struct.__block_byref_byref_bab* %byref_bab, %struct.__block_byref_byref_bab** %byref.forwarding3
  %byref.flags4 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 2
  store i32 33554432, i32* %byref.flags4
  %byref.size5 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 3
  store i32 28, i32* %byref.size5
  %1 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 4
  store i8* bitcast (void (i8*, i8*)* @__Block_byref_object_copy_ to i8*), i8** %1
  %2 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 5
  store i8* bitcast (void (i8*)* @__Block_byref_object_dispose_ to i8*), i8** %2
  %byref_bab6 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 6
  store i8* null, i8** %byref_bab6, align 4
  %byref_bab7 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 6
  %byref.isa8 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 0
  store i8* null, i8** %byref.isa8
  %byref.forwarding9 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 1
  store %struct.__block_byref_bl_var1* %bl_var1, %struct.__block_byref_bl_var1** %byref.forwarding9
  %byref.flags10 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 2
  store i32 33554432, i32* %byref.flags10
  %byref.size11 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 3
  store i32 28, i32* %byref.size11
  %3 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 4
  store i8* bitcast (void (i8*, i8*)* @__Block_byref_object_copy_ to i8*), i8** %3
  %4 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 5
  store i8* bitcast (void (i8*)* @__Block_byref_object_dispose_ to i8*), i8** %4
  %bl_var112 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 6
  store i8* null, i8** %bl_var112, align 4
  %bl_var113 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 6
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__f_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %8 = bitcast %struct.__block_byref_byref_int* %byref_int to i8*
  store i8* %8, i8** %block.captured
  %block.captured14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %9 = load i16* %sh, align 2
  store i16 %9, i16* %block.captured14, align 2
  %block.captured15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 11
  %10 = load i8* %ch, align 1
  store i8 %10, i8* %block.captured15, align 1
  %block.captured16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 12
  %11 = load i8* %ch1, align 1
  store i8 %11, i8* %block.captured16, align 1
  %block.captured17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 13
  %12 = load i8* %ch2, align 1
  store i8 %12, i8* %block.captured17, align 1
  %block.captured18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %13 = load i8** %bar, align 4
  %14 = call i8* @objc_retain(i8* %13) nounwind
  store i8* %14, i8** %block.captured18, align 4
  %block.captured19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %15 = load i8** %baz, align 4
  %16 = call i8* @objc_retain(i8* %15) nounwind
  store i8* %16, i8** %block.captured19, align 4
  %block.captured20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %17 = load i8** %strong_void_sta, align 4
  %18 = call i8* @objc_retain(i8* %17) nounwind
  store i8* %18, i8** %block.captured20, align 4
  %block.captured21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %19 = bitcast %struct.__block_byref_byref_bab* %byref_bab to i8*
  store i8* %19, i8** %block.captured21
  %20 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block to void ()*
  %21 = bitcast void ()* %20 to void (...)*
  %22 = bitcast void (...)* %21 to i8*
  %23 = call i8* @objc_retainBlock(i8* %22) nounwind, !clang.arc.copy_on_escape !4
  %24 = bitcast i8* %23 to void (...)*
  store void (...)* %24, void (...)** %b, align 4
  %25 = load void (...)** %b, align 4
  %block.literal = bitcast void (...)* %25 to %struct.__block_literal_generic*
  %26 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %27 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %28 = load i8** %26
  %29 = bitcast i8* %28 to void (i8*)*
  call void %29(i8* %27)
  %30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 6
  %31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 7
  %32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 8
  %33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 9
  %block.isa23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa23
  %block.flags24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags24
  %block.reserved25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 2
  store i32 0, i32* %block.reserved25
  %block.invoke26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__f_block_invoke1 to i8*), i8** %block.invoke26
  %block.descriptor27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp5 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor27
  %block.captured28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 5
  %34 = bitcast %struct.__block_byref_byref_int* %byref_int to i8*
  store i8* %34, i8** %block.captured28
  %block.captured29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 12
  %35 = load i16* %sh, align 2
  store i16 %35, i16* %block.captured29, align 2
  %block.captured30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 13
  %36 = load i8* %ch, align 1
  store i8 %36, i8* %block.captured30, align 1
  %block.captured31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 14
  %37 = load i8* %ch1, align 1
  store i8 %37, i8* %block.captured31, align 1
  %block.captured32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 15
  %38 = load i8* %ch2, align 1
  store i8 %38, i8* %block.captured32, align 1
  %block.captured33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 6
  %39 = load i8** %bar, align 4
  %40 = call i8* @objc_retain(i8* %39) nounwind
  store i8* %40, i8** %block.captured33, align 4
  %block.captured34 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 7
  %41 = load i8** %baz, align 4
  %42 = call i8* @objc_retain(i8* %41) nounwind
  store i8* %42, i8** %block.captured34, align 4
  %block.captured35 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 8
  %43 = load i8** %strong_void_sta, align 4
  %44 = call i8* @objc_retain(i8* %43) nounwind
  store i8* %44, i8** %block.captured35, align 4
  %block.captured36 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 9
  %45 = call i8* @objc_loadWeak(i8** %wid) nounwind
  %46 = call i8* @objc_initWeak(i8** %block.captured36, i8* %45) nounwind
  %block.captured37 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 10
  %47 = bitcast %struct.__block_byref_bl_var1* %bl_var1 to i8*
  store i8* %47, i8** %block.captured37
  %block.captured38 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22, i32 0, i32 11
  %48 = bitcast %struct.__block_byref_byref_bab* %byref_bab to i8*
  store i8* %48, i8** %block.captured38
  %49 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block22 to void ()*
  %50 = bitcast void ()* %49 to void (...)*
  %51 = bitcast void (...)* %50 to i8*
  %52 = call i8* @objc_retainBlock(i8* %51) nounwind, !clang.arc.copy_on_escape !4
  %53 = bitcast i8* %52 to void (...)*
  store void (...)* %53, void (...)** %c, align 4
  %54 = bitcast void (...)** %c to i8**
  call void @objc_storeStrong(i8** %54, i8* null) nounwind
  call void @objc_destroyWeak(i8** %33) nounwind
  call void @objc_storeStrong(i8** %32, i8* null) nounwind
  call void @objc_storeStrong(i8** %31, i8* null) nounwind
  call void @objc_storeStrong(i8** %30, i8* null) nounwind
  %55 = bitcast void (...)** %b to i8**
  call void @objc_storeStrong(i8** %55, i8* null) nounwind
  call void @objc_storeStrong(i8** %7, i8* null) nounwind
  call void @objc_storeStrong(i8** %6, i8* null) nounwind
  call void @objc_storeStrong(i8** %5, i8* null) nounwind
  %56 = bitcast %struct.__block_byref_bl_var1* %bl_var1 to i8*
  call void @_Block_object_dispose(i8* %56, i32 8)
  call void @objc_storeStrong(i8** %bl_var113, i8* null) nounwind
  %57 = bitcast %struct.__block_byref_byref_bab* %byref_bab to i8*
  call void @_Block_object_dispose(i8* %57, i32 8)
  call void @objc_storeStrong(i8** %byref_bab7, i8* null) nounwind
  call void @objc_storeStrong(i8** %strong_void_sta, i8* null) nounwind
  call void @objc_storeStrong(i8** %baz, i8* null) nounwind
  call void @objc_storeStrong(i8** %bar, i8* null) nounwind
  %58 = bitcast %struct.__block_byref_byref_int* %byref_int to i8*
  call void @_Block_object_dispose(i8* %58, i32 8)
  call void @objc_destroyWeak(i8** %wid) nounwind
  ret void
}

declare i8* @opaque_id(...)

declare extern_weak i8* @objc_retainAutoreleasedReturnValue(i8*)

define internal void @__Block_byref_object_copy_(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 4
  %.addr1 = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  store i8* %1, i8** %.addr1, align 4
  %2 = load i8** %.addr
  %3 = bitcast i8* %2 to %struct.__block_byref_byref_bab*
  %x = getelementptr inbounds %struct.__block_byref_byref_bab* %3, i32 0, i32 6
  %4 = load i8** %.addr1
  %5 = bitcast i8* %4 to %struct.__block_byref_byref_bab*
  %x2 = getelementptr inbounds %struct.__block_byref_byref_bab* %5, i32 0, i32 6
  %6 = load i8** %x2, align 4
  store i8* %6, i8** %x, align 4
  store i8* null, i8** %x2, align 4
  ret void
}

define internal void @__Block_byref_object_dispose_(i8*) {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  %1 = load i8** %.addr
  %2 = bitcast i8* %1 to %struct.__block_byref_byref_bab*
  %x = getelementptr inbounds %struct.__block_byref_byref_bab* %2, i32 0, i32 6
  call void @objc_storeStrong(i8** %x, i8* null) nounwind
  ret void
}

define internal void @__f_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %0 = load i16* %block.capture.addr, align 2
  %conv = sext i16 %0 to i32
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 11
  %1 = load i8* %block.capture.addr1, align 1
  %conv2 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv2
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 12
  %2 = load i8* %block.capture.addr3, align 1
  %conv4 = sext i8 %2 to i32
  %add5 = add nsw i32 %add, %conv4
  %block.capture.addr6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 13
  %3 = load i8* %block.capture.addr6, align 1
  %conv7 = sext i8 %3 to i32
  %add8 = add nsw i32 %add5, %conv7
  %block.capture.addr9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %4 = load i8** %block.capture.addr9
  %byref.addr = bitcast i8* %4 to %struct.__block_byref_byref_int.0*
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_byref_int.0* %byref.addr, i32 0, i32 1
  %byref.addr.forwarded = load %struct.__block_byref_byref_int.0** %byref.forwarding
  %byref_int = getelementptr inbounds %struct.__block_byref_byref_int.0* %byref.addr.forwarded, i32 0, i32 4
  store i32 %add8, i32* %byref_int, align 4
  %block.capture.addr10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %5 = load i8** %block.capture.addr10, align 4
  call void @x(i8* %5)
  %block.capture.addr11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %6 = load i8** %block.capture.addr11, align 4
  call void @x(i8* %6)
  %block.capture.addr12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %7 = load i8** %block.capture.addr12, align 4
  call void @x(i8* %7)
  %block.capture.addr13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %8 = load i8** %block.capture.addr13
  %byref.addr14 = bitcast i8* %8 to %struct.__block_byref_byref_bab.1*
  %byref.forwarding15 = getelementptr inbounds %struct.__block_byref_byref_bab.1* %byref.addr14, i32 0, i32 1
  %byref.addr.forwarded16 = load %struct.__block_byref_byref_bab.1** %byref.forwarding15
  %byref_bab = getelementptr inbounds %struct.__block_byref_byref_bab.1* %byref.addr.forwarded16, i32 0, i32 6
  %9 = load i8** %byref_bab, align 4
  call void @x(i8* %9)
  ret void
}

define internal void @__copy_helper_block_(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 4
  %.addr1 = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  store i8* %1, i8** %.addr1, align 4
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  %6 = bitcast i8** %5 to i8*
  call void @_Block_object_assign(i8* %6, i8* %blockcopy.src, i32 8)
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 6
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 6
  %blockcopy.src2 = load i8** %7
  store i8* null, i8** %8
  call void @objc_storeStrong(i8** %8, i8* %blockcopy.src2) nounwind
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 7
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 7
  %blockcopy.src3 = load i8** %9
  store i8* null, i8** %10
  call void @objc_storeStrong(i8** %10, i8* %blockcopy.src3) nounwind
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 8
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 8
  %blockcopy.src4 = load i8** %11
  store i8* null, i8** %12
  call void @objc_storeStrong(i8** %12, i8* %blockcopy.src4) nounwind
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 9
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 9
  %blockcopy.src5 = load i8** %13
  %15 = bitcast i8** %14 to i8*
  call void @_Block_object_assign(i8* %15, i8* %blockcopy.src5, i32 8)
  ret void
}

declare void @_Block_object_assign(i8*, i8*, i32)

define internal void @__destroy_helper_block_(i8*) {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %3 = load i8** %2
  call void @_Block_object_dispose(i8* %3, i32 8)
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  call void @objc_storeStrong(i8** %4, i8* null) nounwind
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  call void @objc_storeStrong(i8** %5, i8* null) nounwind
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  call void @objc_storeStrong(i8** %6, i8* null) nounwind
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %8 = load i8** %7
  call void @_Block_object_dispose(i8* %8, i32 8)
  ret void
}

declare void @_Block_object_dispose(i8*, i32)

declare extern_weak i8* @objc_retainBlock(i8*)

define internal void @__f_block_invoke1(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 12
  %0 = load i16* %block.capture.addr, align 2
  %conv = sext i16 %0 to i32
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 13
  %1 = load i8* %block.capture.addr1, align 1
  %conv2 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv2
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 14
  %2 = load i8* %block.capture.addr3, align 1
  %conv4 = sext i8 %2 to i32
  %add5 = add nsw i32 %add, %conv4
  %block.capture.addr6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 15
  %3 = load i8* %block.capture.addr6, align 1
  %conv7 = sext i8 %3 to i32
  %add8 = add nsw i32 %add5, %conv7
  %block.capture.addr9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %4 = load i8** %block.capture.addr9
  %byref.addr = bitcast i8* %4 to %struct.__block_byref_byref_int.2*
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_byref_int.2* %byref.addr, i32 0, i32 1
  %byref.addr.forwarded = load %struct.__block_byref_byref_int.2** %byref.forwarding
  %byref_int = getelementptr inbounds %struct.__block_byref_byref_int.2* %byref.addr.forwarded, i32 0, i32 4
  store i32 %add8, i32* %byref_int, align 4
  %block.capture.addr10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %5 = load i8** %block.capture.addr10, align 4
  call void @x(i8* %5)
  %block.capture.addr11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %6 = load i8** %block.capture.addr11, align 4
  call void @x(i8* %6)
  %block.capture.addr12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %7 = load i8** %block.capture.addr12, align 4
  call void @x(i8* %7)
  %block.capture.addr13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %8 = call i8* @objc_loadWeak(i8** %block.capture.addr13) nounwind
  call void @x(i8* %8)
  %block.capture.addr14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %9 = load i8** %block.capture.addr14
  %byref.addr15 = bitcast i8* %9 to %struct.__block_byref_bl_var1.3*
  %byref.forwarding16 = getelementptr inbounds %struct.__block_byref_bl_var1.3* %byref.addr15, i32 0, i32 1
  %byref.addr.forwarded17 = load %struct.__block_byref_bl_var1.3** %byref.forwarding16
  %bl_var1 = getelementptr inbounds %struct.__block_byref_bl_var1.3* %byref.addr.forwarded17, i32 0, i32 6
  call void @objc_storeStrong(i8** %bl_var1, i8* null) nounwind
  %block.capture.addr18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 11
  %10 = load i8** %block.capture.addr18
  %byref.addr19 = bitcast i8* %10 to %struct.__block_byref_byref_bab.4*
  %byref.forwarding20 = getelementptr inbounds %struct.__block_byref_byref_bab.4* %byref.addr19, i32 0, i32 1
  %byref.addr.forwarded21 = load %struct.__block_byref_byref_bab.4** %byref.forwarding20
  %byref_bab = getelementptr inbounds %struct.__block_byref_byref_bab.4* %byref.addr.forwarded21, i32 0, i32 6
  %11 = load i8** %byref_bab, align 4
  call void @x(i8* %11)
  ret void
}

declare extern_weak i8* @objc_loadWeak(i8**)

define internal void @__copy_helper_block_2(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 4
  %.addr1 = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  store i8* %1, i8** %.addr1, align 4
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  %6 = bitcast i8** %5 to i8*
  call void @_Block_object_assign(i8* %6, i8* %blockcopy.src, i32 8)
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 6
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 6
  %blockcopy.src2 = load i8** %7
  store i8* null, i8** %8
  call void @objc_storeStrong(i8** %8, i8* %blockcopy.src2) nounwind
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 7
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 7
  %blockcopy.src3 = load i8** %9
  store i8* null, i8** %10
  call void @objc_storeStrong(i8** %10, i8* %blockcopy.src3) nounwind
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 8
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 8
  %blockcopy.src4 = load i8** %11
  store i8* null, i8** %12
  call void @objc_storeStrong(i8** %12, i8* %blockcopy.src4) nounwind
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 9
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 9
  call void @objc_copyWeak(i8** %14, i8** %13) nounwind
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 10
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 10
  %blockcopy.src5 = load i8** %15
  %17 = bitcast i8** %16 to i8*
  call void @_Block_object_assign(i8* %17, i8* %blockcopy.src5, i32 8)
  %18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 11
  %19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 11
  %blockcopy.src6 = load i8** %18
  %20 = bitcast i8** %19 to i8*
  call void @_Block_object_assign(i8* %20, i8* %blockcopy.src6, i32 8)
  ret void
}

declare extern_weak void @objc_copyWeak(i8**, i8**)

define internal void @__destroy_helper_block_3(i8*) {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %3 = load i8** %2
  call void @_Block_object_dispose(i8* %3, i32 8)
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  call void @objc_storeStrong(i8** %4, i8* null) nounwind
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  call void @objc_storeStrong(i8** %5, i8* null) nounwind
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  call void @objc_storeStrong(i8** %6, i8* null) nounwind
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  call void @objc_destroyWeak(i8** %7) nounwind
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %9 = load i8** %8
  call void @_Block_object_dispose(i8* %9, i32 8)
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 11
  %11 = load i8** %10
  call void @_Block_object_dispose(i8* %11, i32 8)
  ret void
}

declare extern_weak void @objc_destroyWeak(i8**)

declare extern_weak i8* @objc_initWeak(i8**, i8*)

define void @g() nounwind {
entry:
  %foo = alloca %0*, align 4
  %bar = alloca %1*, align 4
  %bletch = alloca i32, align 4
  %weak_delegate = alloca i8*, align 4
  %i = alloca i32, align 4
  %y = alloca %0*, align 4
  %z = alloca %0*, align 4
  %c = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>, align 4
  store %0* null, %0** %foo, align 4
  store %1* null, %1** %bar, align 4
  store i8* null, i8** %weak_delegate
  store %0* null, %0** %y, align 4
  store %0* null, %0** %z, align 4
  %0 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 7
  %1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 8
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 9
  %3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 10
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 11
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__g_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp9 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 5
  %5 = load i32* %i, align 4
  store i32 %5, i32* %block.captured, align 4
  %block.captured1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 6
  %6 = load i32* %bletch, align 4
  store i32 %6, i32* %block.captured1, align 4
  %block.captured2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 7
  %7 = load %0** %foo, align 4
  %8 = bitcast %0* %7 to i8*
  %9 = call i8* @objc_retain(i8* %8) nounwind
  %10 = bitcast i8* %9 to %0*
  store %0* %10, %0** %block.captured2, align 4
  %block.captured3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 8
  %11 = load %1** %bar, align 4
  %12 = bitcast %1* %11 to i8*
  %13 = call i8* @objc_retain(i8* %12) nounwind
  %14 = bitcast i8* %13 to %1*
  store %1* %14, %1** %block.captured3, align 4
  %block.captured4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 9
  %15 = call i8* @objc_loadWeak(i8** %weak_delegate) nounwind
  %16 = call i8* @objc_initWeak(i8** %block.captured4, i8* %15) nounwind
  %block.captured5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 10
  %17 = load %0** %y, align 4
  %18 = bitcast %0* %17 to i8*
  %19 = call i8* @objc_retain(i8* %18) nounwind
  %20 = bitcast i8* %19 to %0*
  store %0* %20, %0** %block.captured5, align 4
  %block.captured6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 11
  %21 = load %0** %z, align 4
  %22 = bitcast %0* %21 to i8*
  %23 = call i8* @objc_retain(i8* %22) nounwind
  %24 = bitcast i8* %23 to %0*
  store %0* %24, %0** %block.captured6, align 4
  %25 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block to void ()*
  %26 = bitcast void ()* %25 to void (...)*
  %27 = bitcast void (...)* %26 to i8*
  %28 = call i8* @objc_retainBlock(i8* %27) nounwind, !clang.arc.copy_on_escape !4
  %29 = bitcast i8* %28 to void (...)*
  store void (...)* %29, void (...)** %c, align 4
  %30 = load void (...)** %c, align 4
  %block.literal = bitcast void (...)* %30 to %struct.__block_literal_generic*
  %31 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %32 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %33 = load i8** %31
  %34 = bitcast i8* %33 to void (i8*)*
  call void %34(i8* %32)
  %35 = bitcast void (...)** %c to i8**
  call void @objc_storeStrong(i8** %35, i8* null) nounwind
  %36 = bitcast %0** %4 to i8**
  call void @objc_storeStrong(i8** %36, i8* null) nounwind
  %37 = bitcast %0** %3 to i8**
  call void @objc_storeStrong(i8** %37, i8* null) nounwind
  call void @objc_destroyWeak(i8** %2) nounwind
  %38 = bitcast %1** %1 to i8**
  call void @objc_storeStrong(i8** %38, i8* null) nounwind
  %39 = bitcast %0** %0 to i8**
  call void @objc_storeStrong(i8** %39, i8* null) nounwind
  %40 = bitcast %0** %z to i8**
  call void @objc_storeStrong(i8** %40, i8* null) nounwind
  %41 = bitcast %0** %y to i8**
  call void @objc_storeStrong(i8** %41, i8* null) nounwind
  call void @objc_destroyWeak(i8** %weak_delegate) nounwind
  %42 = bitcast %1** %bar to i8**
  call void @objc_storeStrong(i8** %42, i8* null) nounwind
  %43 = bitcast %0** %foo to i8**
  call void @objc_storeStrong(i8** %43, i8* null) nounwind
  ret void
}

define internal void @__g_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %j = alloca i32, align 4
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 5
  %0 = load i32* %block.capture.addr, align 4
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 6
  %1 = load i32* %block.capture.addr1, align 4
  %add = add i32 %0, %1
  store i32 %add, i32* %j, align 4
  %block.capture.addr2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 7
  %2 = load %0** %block.capture.addr2, align 4
  %3 = bitcast %0* %2 to i8*
  call void @x(i8* %3)
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 8
  %4 = load %1** %block.capture.addr3, align 4
  %5 = bitcast %1* %4 to i8*
  call void @x(i8* %5)
  %block.capture.addr4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 9
  %6 = call i8* @objc_loadWeak(i8** %block.capture.addr4) nounwind
  call void @x(i8* %6)
  %block.capture.addr5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 10
  %7 = load %0** %block.capture.addr5, align 4
  %8 = bitcast %0* %7 to i8*
  call void @x(i8* %8)
  %block.capture.addr6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 11
  %9 = load %0** %block.capture.addr6, align 4
  %10 = bitcast %0* %9 to i8*
  call void @x(i8* %10)
  ret void
}

define internal void @__copy_helper_block_6(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 4
  %.addr1 = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  store i8* %1, i8** %.addr1, align 4
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.source, i32 0, i32 7
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.dest, i32 0, i32 7
  %blockcopy.src = load %0** %4
  store %0* null, %0** %5
  %6 = bitcast %0** %5 to i8**
  %7 = bitcast %0* %blockcopy.src to i8*
  call void @objc_storeStrong(i8** %6, i8* %7) nounwind
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.source, i32 0, i32 8
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.dest, i32 0, i32 8
  %blockcopy.src2 = load %1** %8
  store %1* null, %1** %9
  %10 = bitcast %1** %9 to i8**
  %11 = bitcast %1* %blockcopy.src2 to i8*
  call void @objc_storeStrong(i8** %10, i8* %11) nounwind
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.source, i32 0, i32 9
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.dest, i32 0, i32 9
  call void @objc_copyWeak(i8** %13, i8** %12) nounwind
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.source, i32 0, i32 10
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.dest, i32 0, i32 10
  %blockcopy.src3 = load %0** %14
  store %0* null, %0** %15
  %16 = bitcast %0** %15 to i8**
  %17 = bitcast %0* %blockcopy.src3 to i8*
  call void @objc_storeStrong(i8** %16, i8* %17) nounwind
  %18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.source, i32 0, i32 11
  %19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block.dest, i32 0, i32 11
  %blockcopy.src4 = load %0** %18
  store %0* null, %0** %19
  %20 = bitcast %0** %19 to i8**
  %21 = bitcast %0* %blockcopy.src4 to i8*
  call void @objc_storeStrong(i8** %20, i8* %21) nounwind
  ret void
}

define internal void @__destroy_helper_block_7(i8*) {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 7
  %3 = bitcast %0** %2 to i8**
  call void @objc_storeStrong(i8** %3, i8* null) nounwind
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 8
  %5 = bitcast %1** %4 to i8**
  call void @objc_storeStrong(i8** %5, i8* null) nounwind
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 9
  call void @objc_destroyWeak(i8** %6) nounwind
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 10
  %8 = bitcast %0** %7 to i8**
  call void @objc_storeStrong(i8** %8, i8* null) nounwind
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i32, i32, %0*, %1*, i8*, %0*, %0* }>* %block, i32 0, i32 11
  %10 = bitcast %0** %9 to i8**
  call void @objc_storeStrong(i8** %10, i8* null) nounwind
  ret void
}

define void @h() nounwind {
entry:
  %ui = alloca %union.U, align 4
  %s2 = alloca %struct.S5, align 4
  %u2 = alloca %union.U, align 4
  %block_id = alloca %struct.__block_byref_block_id, align 4
  %c = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>, align 4
  %byref.isa = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 0
  store i8* null, i8** %byref.isa
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 1
  store %struct.__block_byref_block_id* %block_id, %struct.__block_byref_block_id** %byref.forwarding
  %byref.flags = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 2
  store i32 33554432, i32* %byref.flags
  %byref.size = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 3
  store i32 28, i32* %byref.size
  %0 = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 4
  store i8* bitcast (void (i8*, i8*)* @__Block_byref_object_copy_ to i8*), i8** %0
  %1 = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 5
  store i8* bitcast (void (i8*)* @__Block_byref_object_dispose_ to i8*), i8** %1
  %block_id1 = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 6
  store i8* null, i8** %block_id1, align 4
  %block_id2 = getelementptr inbounds %struct.__block_byref_block_id* %block_id, i32 0, i32 6
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__h_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp13 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 5
  %2 = bitcast %struct.S5* %block.captured to i8*
  %3 = bitcast %struct.S5* %s2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* %3, i32 24, i32 4, i1 false)
  %block.captured3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 6
  %4 = bitcast %union.U* %block.captured3 to i8*
  %5 = bitcast %union.U* %u2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %4, i8* %5, i32 4, i32 4, i1 false)
  %block.captured4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 7
  %6 = bitcast %struct.__block_byref_block_id* %block_id to i8*
  store i8* %6, i8** %block.captured4
  %7 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block to void ()*
  %8 = bitcast void ()* %7 to void (...)*
  %9 = bitcast void (...)* %8 to i8*
  %10 = call i8* @objc_retainBlock(i8* %9) nounwind, !clang.arc.copy_on_escape !4
  %11 = bitcast i8* %10 to void (...)*
  store void (...)* %11, void (...)** %c, align 4
  %12 = load void (...)** %c, align 4
  %block.literal = bitcast void (...)* %12 to %struct.__block_literal_generic*
  %13 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %14 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %15 = load i8** %13
  %16 = bitcast i8* %15 to void (i8*)*
  call void %16(i8* %14)
  %17 = bitcast void (...)** %c to i8**
  call void @objc_storeStrong(i8** %17, i8* null) nounwind
  %18 = bitcast %struct.__block_byref_block_id* %block_id to i8*
  call void @_Block_object_dispose(i8* %18, i32 8)
  call void @objc_storeStrong(i8** %block_id2, i8* null) nounwind
  ret void
}

define internal void @__h_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 5
  %ui = getelementptr inbounds %struct.S5* %block.capture.addr, i32 0, i32 4
  %o1 = bitcast %union.UI* %ui to i8**
  %0 = load i8** %o1, align 4
  call void @x(i8* %0)
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 6
  %o12 = bitcast %union.U* %block.capture.addr1 to i8**
  %1 = load i8** %o12, align 4
  call void @x(i8* %1)
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 7
  %2 = load i8** %block.capture.addr3
  %byref.addr = bitcast i8* %2 to %struct.__block_byref_block_id.5*
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_block_id.5* %byref.addr, i32 0, i32 1
  %byref.addr.forwarded = load %struct.__block_byref_block_id.5** %byref.forwarding
  %block_id = getelementptr inbounds %struct.__block_byref_block_id.5* %byref.addr.forwarded, i32 0, i32 6
  call void @objc_storeStrong(i8** %block_id, i8* null) nounwind
  ret void
}

define internal void @__copy_helper_block_10(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 4
  %.addr1 = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  store i8* %1, i8** %.addr1, align 4
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block.source, i32 0, i32 7
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block.dest, i32 0, i32 7
  %blockcopy.src = load i8** %4
  %6 = bitcast i8** %5 to i8*
  call void @_Block_object_assign(i8* %6, i8* %blockcopy.src, i32 8)
  ret void
}

define internal void @__destroy_helper_block_11(i8*) {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U, i8* }>* %block, i32 0, i32 7
  %3 = load i8** %2
  call void @_Block_object_dispose(i8* %3, i32 8)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define void @arr1() nounwind {
entry:
  %imported_s = alloca %struct.S, align 4
  %c = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__arr1_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp15 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S* %block.captured to i8*
  %1 = bitcast %struct.S* %imported_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 16, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block to void ()*
  %3 = bitcast void ()* %2 to void (...)*
  %4 = bitcast void (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to void (...)*
  store void (...)* %6, void (...)** %c, align 4
  %7 = load void (...)** %c, align 4
  %block.literal = bitcast void (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to void (i8*)*
  call void %11(i8* %9)
  %12 = bitcast void (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal void @__arr1_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 5
  %unsafe_unretained_var = getelementptr inbounds %struct.S* %block.capture.addr, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i8*]* %unsafe_unretained_var, i32 0, i32 2
  %0 = load i8** %arrayidx, align 4
  call void @x(i8* %0)
  ret void
}

define void @arr2() nounwind {
entry:
  %imported_s = alloca %struct.S.6, align 4
  %c = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__arr2_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp17 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S.6* %block.captured to i8*
  %1 = bitcast %struct.S.6* %imported_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 20, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block to void ()*
  %3 = bitcast void ()* %2 to void (...)*
  %4 = bitcast void (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to void (...)*
  store void (...)* %6, void (...)** %c, align 4
  %7 = load void (...)** %c, align 4
  %block.literal = bitcast void (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to void (i8*)*
  call void %11(i8* %9)
  %12 = bitcast void (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal void @__arr2_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.6 }>* %block, i32 0, i32 5
  %unsafe_unretained_var = getelementptr inbounds %struct.S.6* %block.capture.addr, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i8*]* %unsafe_unretained_var, i32 0, i32 2
  %0 = load i8** %arrayidx, align 4
  call void @x(i8* %0)
  ret void
}

define void @arr3() nounwind {
entry:
  %imported_s = alloca %struct.S.7, align 4
  %c = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__arr3_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp19 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S.7* %block.captured to i8*
  %1 = bitcast %struct.S.7* %imported_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 4, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block to void ()*
  %3 = bitcast void ()* %2 to void (...)*
  %4 = bitcast void (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to void (...)*
  store void (...)* %6, void (...)** %c, align 4
  %7 = load void (...)** %c, align 4
  %block.literal = bitcast void (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to void (i8*)*
  call void %11(i8* %9)
  %12 = bitcast void (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal void @__arr3_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %i = alloca i32, align 4
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.7 }>* %block, i32 0, i32 5
  %a = getelementptr inbounds %struct.S.7* %block.capture.addr, i32 0, i32 0
  %0 = load i32* %a, align 4
  store i32 %0, i32* %i, align 4
  ret void
}

define void @arr4() nounwind {
entry:
  %captured_s = alloca %struct.S.8, align 4
  %c = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__arr4_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp21 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S.8* %block.captured to i8*
  %1 = bitcast %struct.S.8* %captured_s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 44, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block to void ()*
  %3 = bitcast void ()* %2 to void (...)*
  %4 = bitcast void (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to void (...)*
  store void (...)* %6, void (...)** %c, align 4
  %7 = load void (...)** %c, align 4
  %block.literal = bitcast void (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to void (i8*)*
  call void %11(i8* %9)
  %12 = bitcast void (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal void @__arr4_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %i = alloca i8*, align 4
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.8 }>* %block, i32 0, i32 5
  %f0 = getelementptr inbounds %struct.S.8* %block.capture.addr, i32 0, i32 0
  %s_f1 = getelementptr inbounds %struct.s0* %f0, i32 0, i32 1
  %0 = load i8** %s_f1, align 4
  %1 = call i8* @objc_retain(i8* %0) nounwind
  store i8* %1, i8** %i, align 4
  call void @objc_storeStrong(i8** %i, i8* null) nounwind
  ret void
}

define void @bf1() nounwind {
entry:
  %s = alloca %struct.S.9, align 4
  %c = alloca i32 (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block, i32 0, i32 3
  store i8* bitcast (i32 (i8*)* @__bf1_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp24 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S.9* %block.captured to i8*
  %1 = bitcast %struct.S.9* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 8, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block to i32 ()*
  %3 = bitcast i32 ()* %2 to i32 (...)*
  %4 = bitcast i32 (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to i32 (...)*
  store i32 (...)* %6, i32 (...)** %c, align 4
  %7 = load i32 (...)** %c, align 4
  %block.literal = bitcast i32 (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to i32 (i8*)*
  %call = call i32 %11(i8* %9)
  %12 = bitcast i32 (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal i32 @__bf1_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.9 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S.9* %block.capture.addr to i32*
  %1 = load i32* %0, align 4
  %bf.clear = and i32 %1, 33554431
  %2 = shl i32 %bf.clear, 7
  %bf.val.sext = ashr i32 %2, 7
  ret i32 %bf.val.sext
}

define void @bf2() nounwind {
entry:
  %s = alloca %struct.S.10, align 4
  %c = alloca i32 (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block, i32 0, i32 3
  store i8* bitcast (i32 (i8*)* @__bf2_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp26 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S.10* %block.captured to i8*
  %1 = bitcast %struct.S.10* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 4, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block to i32 ()*
  %3 = bitcast i32 ()* %2 to i32 (...)*
  %4 = bitcast i32 (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to i32 (...)*
  store i32 (...)* %6, i32 (...)** %c, align 4
  %7 = load i32 (...)** %c, align 4
  %block.literal = bitcast i32 (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to i32 (i8*)*
  %call = call i32 %11(i8* %9)
  %12 = bitcast i32 (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal i32 @__bf2_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S.10 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S.10* %block.capture.addr to i32*
  %1 = load i32* %0, align 4
  %bf.clear = and i32 %1, 1
  %2 = shl i32 %bf.clear, 31
  %bf.val.sext = ashr i32 %2, 31
  ret i32 %bf.val.sext
}

define void @bf3() nounwind {
entry:
  %_flags = alloca %struct.anon, align 4
  %c = alloca i8 (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block, i32 0, i32 3
  store i8* bitcast (i8 (i8*)* @__bf3_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp29 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon* %block.captured to i8*
  %1 = bitcast %struct.anon* %_flags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 8, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block to i8 ()*
  %3 = bitcast i8 ()* %2 to i8 (...)*
  %4 = bitcast i8 (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to i8 (...)*
  store i8 (...)* %6, i8 (...)** %c, align 4
  %7 = load i8 (...)** %c, align 4
  %block.literal = bitcast i8 (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to i8 (i8*)*
  %call = call zeroext i8 %11(i8* %9)
  %12 = bitcast i8 (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal zeroext i8 @__bf3_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon* %block.capture.addr to i8*
  %bf.field.offs = getelementptr i8* %0, i32 2
  %1 = load i8* %bf.field.offs, align 2
  %bf.clear = and i8 %1, 1
  ret i8 %bf.clear
}

define void @bf4() nounwind {
entry:
  %_flags = alloca %struct.anon.11, align 4
  %c = alloca i8 (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block, i32 0, i32 3
  store i8* bitcast (i8 (i8*)* @__bf4_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp31 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon.11* %block.captured to i8*
  %1 = bitcast %struct.anon.11* %_flags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 20, i32 4, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block to i8 ()*
  %3 = bitcast i8 ()* %2 to i8 (...)*
  %4 = bitcast i8 (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to i8 (...)*
  store i8 (...)* %6, i8 (...)** %c, align 4
  %7 = load i8 (...)** %c, align 4
  %block.literal = bitcast i8 (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to i8 (i8*)*
  %call = call zeroext i8 %11(i8* %9)
  %12 = bitcast i8 (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal zeroext i8 @__bf4_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.11 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon.11* %block.capture.addr to i8*
  %bf.field.offs = getelementptr i8* %0, i32 2
  %1 = load i8* %bf.field.offs, align 2
  %bf.clear = and i8 %1, 1
  ret i8 %bf.clear
}

define void @bf5() nounwind {
entry:
  %_flags = alloca %struct.anon.12, align 1
  %c = alloca i8 (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block, i32 0, i32 3
  store i8* bitcast (i8 (i8*)* @__bf5_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp33 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon.12* %block.captured to i8*
  %1 = bitcast %struct.anon.12* %_flags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 9, i32 1, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block to i8 ()*
  %3 = bitcast i8 ()* %2 to i8 (...)*
  %4 = bitcast i8 (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to i8 (...)*
  store i8 (...)* %6, i8 (...)** %c, align 4
  %7 = load i8 (...)** %c, align 4
  %block.literal = bitcast i8 (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to i8 (i8*)*
  %call = call zeroext i8 %11(i8* %9)
  %12 = bitcast i8 (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal zeroext i8 @__bf5_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.12 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon.12* %block.capture.addr to i8*
  %1 = load i8* %0, align 1
  %bf.clear = and i8 %1, 1
  ret i8 %bf.clear
}

define void @bf6() nounwind {
entry:
  %_flags = alloca %struct.anon.13, align 1
  %c = alloca i8 (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>, align 4
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block, i32 0, i32 1
  store i32 -1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block, i32 0, i32 3
  store i8* bitcast (i8 (i8*)* @__bf6_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8* }* @__block_descriptor_tmp35 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon.13* %block.captured to i8*
  %1 = bitcast %struct.anon.13* %_flags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 5, i32 1, i1 false)
  %2 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block to i8 ()*
  %3 = bitcast i8 ()* %2 to i8 (...)*
  %4 = bitcast i8 (...)* %3 to i8*
  %5 = call i8* @objc_retainBlock(i8* %4) nounwind, !clang.arc.copy_on_escape !4
  %6 = bitcast i8* %5 to i8 (...)*
  store i8 (...)* %6, i8 (...)** %c, align 4
  %7 = load i8 (...)** %c, align 4
  %block.literal = bitcast i8 (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to i8 (i8*)*
  %call = call zeroext i8 %11(i8* %9)
  %12 = bitcast i8 (...)** %c to i8**
  call void @objc_storeStrong(i8** %12, i8* null) nounwind
  ret void
}

define internal zeroext i8 @__bf6_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.anon.13 }>* %block, i32 0, i32 5
  %0 = bitcast %struct.anon.13* %block.capture.addr to i8*
  %1 = load i8* %0, align 1
  %bf.clear = and i8 %1, 1
  ret i8 %bf.clear
}

define void @Test7() nounwind {
entry:
  %wid = alloca i8*, align 4
  %wid1 = alloca i8*, align 4
  %wid2 = alloca i8*, align 4
  %wid3 = alloca i8*, align 4
  %wid4 = alloca i8*, align 4
  %wid5 = alloca i8*, align 4
  %wid6 = alloca i8*, align 4
  %wid7 = alloca i8*, align 4
  %wid8 = alloca i8*, align 4
  %wid9 = alloca i8*, align 4
  %wid10 = alloca i8*, align 4
  %wid11 = alloca i8*, align 4
  %wid12 = alloca i8*, align 4
  %wid13 = alloca i8*, align 4
  %wid14 = alloca i8*, align 4
  %wid15 = alloca i8*, align 4
  %wid16 = alloca i8*, align 4
  %bar = alloca i8*, align 4
  %b = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>, align 4
  store i8* null, i8** %wid
  store i8* null, i8** %wid1
  store i8* null, i8** %wid2
  store i8* null, i8** %wid3
  store i8* null, i8** %wid4
  store i8* null, i8** %wid5
  store i8* null, i8** %wid6
  store i8* null, i8** %wid7
  store i8* null, i8** %wid8
  store i8* null, i8** %wid9
  store i8* null, i8** %wid10
  store i8* null, i8** %wid11
  store i8* null, i8** %wid12
  store i8* null, i8** %wid13
  store i8* null, i8** %wid14
  store i8* null, i8** %wid15
  store i8* null, i8** %wid16
  %call = call i8* bitcast (i8* (...)* @opaque_id to i8* ()*)()
  %0 = call i8* @objc_retainAutoreleasedReturnValue(i8* %call) nounwind
  store i8* %0, i8** %bar, align 4
  %1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  %3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__Test7_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp39 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  %18 = load i8** %bar, align 4
  %19 = call i8* @objc_retain(i8* %18) nounwind
  store i8* %19, i8** %block.captured, align 4
  %block.captured1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  %20 = call i8* @objc_loadWeak(i8** %wid1) nounwind
  %21 = call i8* @objc_initWeak(i8** %block.captured1, i8* %20) nounwind
  %block.captured2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  %22 = call i8* @objc_loadWeak(i8** %wid2) nounwind
  %23 = call i8* @objc_initWeak(i8** %block.captured2, i8* %22) nounwind
  %block.captured3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  %24 = call i8* @objc_loadWeak(i8** %wid3) nounwind
  %25 = call i8* @objc_initWeak(i8** %block.captured3, i8* %24) nounwind
  %block.captured4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  %26 = call i8* @objc_loadWeak(i8** %wid4) nounwind
  %27 = call i8* @objc_initWeak(i8** %block.captured4, i8* %26) nounwind
  %block.captured5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  %28 = call i8* @objc_loadWeak(i8** %wid5) nounwind
  %29 = call i8* @objc_initWeak(i8** %block.captured5, i8* %28) nounwind
  %block.captured6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  %30 = call i8* @objc_loadWeak(i8** %wid6) nounwind
  %31 = call i8* @objc_initWeak(i8** %block.captured6, i8* %30) nounwind
  %block.captured7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  %32 = call i8* @objc_loadWeak(i8** %wid7) nounwind
  %33 = call i8* @objc_initWeak(i8** %block.captured7, i8* %32) nounwind
  %block.captured8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  %34 = call i8* @objc_loadWeak(i8** %wid8) nounwind
  %35 = call i8* @objc_initWeak(i8** %block.captured8, i8* %34) nounwind
  %block.captured9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  %36 = call i8* @objc_loadWeak(i8** %wid9) nounwind
  %37 = call i8* @objc_initWeak(i8** %block.captured9, i8* %36) nounwind
  %block.captured10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  %38 = call i8* @objc_loadWeak(i8** %wid10) nounwind
  %39 = call i8* @objc_initWeak(i8** %block.captured10, i8* %38) nounwind
  %block.captured11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  %40 = call i8* @objc_loadWeak(i8** %wid11) nounwind
  %41 = call i8* @objc_initWeak(i8** %block.captured11, i8* %40) nounwind
  %block.captured12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  %42 = call i8* @objc_loadWeak(i8** %wid12) nounwind
  %43 = call i8* @objc_initWeak(i8** %block.captured12, i8* %42) nounwind
  %block.captured13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  %44 = call i8* @objc_loadWeak(i8** %wid13) nounwind
  %45 = call i8* @objc_initWeak(i8** %block.captured13, i8* %44) nounwind
  %block.captured14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  %46 = call i8* @objc_loadWeak(i8** %wid14) nounwind
  %47 = call i8* @objc_initWeak(i8** %block.captured14, i8* %46) nounwind
  %block.captured15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  %48 = call i8* @objc_loadWeak(i8** %wid15) nounwind
  %49 = call i8* @objc_initWeak(i8** %block.captured15, i8* %48) nounwind
  %block.captured16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  %50 = call i8* @objc_loadWeak(i8** %wid16) nounwind
  %51 = call i8* @objc_initWeak(i8** %block.captured16, i8* %50) nounwind
  %52 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block to void ()*
  %53 = bitcast void ()* %52 to void (...)*
  %54 = bitcast void (...)* %53 to i8*
  %55 = call i8* @objc_retainBlock(i8* %54) nounwind, !clang.arc.copy_on_escape !4
  %56 = bitcast i8* %55 to void (...)*
  store void (...)* %56, void (...)** %b, align 4
  %57 = bitcast void (...)** %b to i8**
  call void @objc_storeStrong(i8** %57, i8* null) nounwind
  call void @objc_destroyWeak(i8** %17) nounwind
  call void @objc_destroyWeak(i8** %16) nounwind
  call void @objc_destroyWeak(i8** %15) nounwind
  call void @objc_destroyWeak(i8** %14) nounwind
  call void @objc_destroyWeak(i8** %13) nounwind
  call void @objc_destroyWeak(i8** %12) nounwind
  call void @objc_destroyWeak(i8** %11) nounwind
  call void @objc_destroyWeak(i8** %10) nounwind
  call void @objc_destroyWeak(i8** %9) nounwind
  call void @objc_destroyWeak(i8** %8) nounwind
  call void @objc_destroyWeak(i8** %7) nounwind
  call void @objc_destroyWeak(i8** %6) nounwind
  call void @objc_destroyWeak(i8** %5) nounwind
  call void @objc_destroyWeak(i8** %4) nounwind
  call void @objc_destroyWeak(i8** %3) nounwind
  call void @objc_destroyWeak(i8** %2) nounwind
  call void @objc_storeStrong(i8** %1, i8* null) nounwind
  call void @objc_storeStrong(i8** %bar, i8* null) nounwind
  call void @objc_destroyWeak(i8** %wid16) nounwind
  call void @objc_destroyWeak(i8** %wid15) nounwind
  call void @objc_destroyWeak(i8** %wid14) nounwind
  call void @objc_destroyWeak(i8** %wid13) nounwind
  call void @objc_destroyWeak(i8** %wid12) nounwind
  call void @objc_destroyWeak(i8** %wid11) nounwind
  call void @objc_destroyWeak(i8** %wid10) nounwind
  call void @objc_destroyWeak(i8** %wid9) nounwind
  call void @objc_destroyWeak(i8** %wid8) nounwind
  call void @objc_destroyWeak(i8** %wid7) nounwind
  call void @objc_destroyWeak(i8** %wid6) nounwind
  call void @objc_destroyWeak(i8** %wid5) nounwind
  call void @objc_destroyWeak(i8** %wid4) nounwind
  call void @objc_destroyWeak(i8** %wid3) nounwind
  call void @objc_destroyWeak(i8** %wid2) nounwind
  call void @objc_destroyWeak(i8** %wid1) nounwind
  call void @objc_destroyWeak(i8** %wid) nounwind
  ret void
}

define internal void @__Test7_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  %0 = load i8** %block.capture.addr, align 4
  call void @x(i8* %0)
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  %1 = call i8* @objc_loadWeak(i8** %block.capture.addr1) nounwind
  call void @x(i8* %1)
  %block.capture.addr2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  %2 = call i8* @objc_loadWeak(i8** %block.capture.addr2) nounwind
  call void @x(i8* %2)
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  %3 = call i8* @objc_loadWeak(i8** %block.capture.addr3) nounwind
  call void @x(i8* %3)
  %block.capture.addr4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  %4 = call i8* @objc_loadWeak(i8** %block.capture.addr4) nounwind
  call void @x(i8* %4)
  %block.capture.addr5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  %5 = call i8* @objc_loadWeak(i8** %block.capture.addr5) nounwind
  call void @x(i8* %5)
  %block.capture.addr6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  %6 = call i8* @objc_loadWeak(i8** %block.capture.addr6) nounwind
  call void @x(i8* %6)
  %block.capture.addr7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  %7 = call i8* @objc_loadWeak(i8** %block.capture.addr7) nounwind
  call void @x(i8* %7)
  %block.capture.addr8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  %8 = call i8* @objc_loadWeak(i8** %block.capture.addr8) nounwind
  call void @x(i8* %8)
  %block.capture.addr9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  %9 = call i8* @objc_loadWeak(i8** %block.capture.addr9) nounwind
  call void @x(i8* %9)
  %block.capture.addr10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  %10 = call i8* @objc_loadWeak(i8** %block.capture.addr10) nounwind
  call void @x(i8* %10)
  %block.capture.addr11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  %11 = call i8* @objc_loadWeak(i8** %block.capture.addr11) nounwind
  call void @x(i8* %11)
  %block.capture.addr12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  %12 = call i8* @objc_loadWeak(i8** %block.capture.addr12) nounwind
  call void @x(i8* %12)
  %block.capture.addr13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  %13 = call i8* @objc_loadWeak(i8** %block.capture.addr13) nounwind
  call void @x(i8* %13)
  %block.capture.addr14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  %14 = call i8* @objc_loadWeak(i8** %block.capture.addr14) nounwind
  call void @x(i8* %14)
  %block.capture.addr15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  %15 = call i8* @objc_loadWeak(i8** %block.capture.addr15) nounwind
  call void @x(i8* %15)
  %block.capture.addr16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  %16 = call i8* @objc_loadWeak(i8** %block.capture.addr16) nounwind
  call void @x(i8* %16)
  ret void
}

define internal void @__copy_helper_block_36(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 4
  %.addr1 = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  store i8* %1, i8** %.addr1, align 4
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  store i8* null, i8** %5
  call void @objc_storeStrong(i8** %5, i8* %blockcopy.src) nounwind
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 6
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 6
  call void @objc_copyWeak(i8** %7, i8** %6) nounwind
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 7
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 7
  call void @objc_copyWeak(i8** %9, i8** %8) nounwind
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 8
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 8
  call void @objc_copyWeak(i8** %11, i8** %10) nounwind
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 9
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 9
  call void @objc_copyWeak(i8** %13, i8** %12) nounwind
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 10
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 10
  call void @objc_copyWeak(i8** %15, i8** %14) nounwind
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 11
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 11
  call void @objc_copyWeak(i8** %17, i8** %16) nounwind
  %18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 12
  %19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 12
  call void @objc_copyWeak(i8** %19, i8** %18) nounwind
  %20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 13
  %21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 13
  call void @objc_copyWeak(i8** %21, i8** %20) nounwind
  %22 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 14
  %23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 14
  call void @objc_copyWeak(i8** %23, i8** %22) nounwind
  %24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 15
  %25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 15
  call void @objc_copyWeak(i8** %25, i8** %24) nounwind
  %26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 16
  %27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 16
  call void @objc_copyWeak(i8** %27, i8** %26) nounwind
  %28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 17
  %29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 17
  call void @objc_copyWeak(i8** %29, i8** %28) nounwind
  %30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 18
  %31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 18
  call void @objc_copyWeak(i8** %31, i8** %30) nounwind
  %32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 19
  %33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 19
  call void @objc_copyWeak(i8** %33, i8** %32) nounwind
  %34 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 20
  %35 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 20
  call void @objc_copyWeak(i8** %35, i8** %34) nounwind
  %36 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 21
  %37 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 21
  call void @objc_copyWeak(i8** %37, i8** %36) nounwind
  ret void
}

define internal void @__destroy_helper_block_37(i8*) {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  call void @objc_storeStrong(i8** %2, i8* null) nounwind
  %3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  call void @objc_destroyWeak(i8** %3) nounwind
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  call void @objc_destroyWeak(i8** %4) nounwind
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  call void @objc_destroyWeak(i8** %5) nounwind
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  call void @objc_destroyWeak(i8** %6) nounwind
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  call void @objc_destroyWeak(i8** %7) nounwind
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  call void @objc_destroyWeak(i8** %8) nounwind
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  call void @objc_destroyWeak(i8** %9) nounwind
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  call void @objc_destroyWeak(i8** %10) nounwind
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  call void @objc_destroyWeak(i8** %11) nounwind
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  call void @objc_destroyWeak(i8** %12) nounwind
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  call void @objc_destroyWeak(i8** %13) nounwind
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  call void @objc_destroyWeak(i8** %14) nounwind
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  call void @objc_destroyWeak(i8** %15) nounwind
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  call void @objc_destroyWeak(i8** %16) nounwind
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  call void @objc_destroyWeak(i8** %17) nounwind
  %18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  call void @objc_destroyWeak(i8** %18) nounwind
  ret void
}

define void @Test8() nounwind {
entry:
  %wid = alloca i8*, align 4
  %wid1 = alloca i8*, align 4
  %wid2 = alloca i8*, align 4
  %wid3 = alloca i8*, align 4
  %wid4 = alloca i8*, align 4
  %wid5 = alloca i8*, align 4
  %wid6 = alloca i8*, align 4
  %wid7 = alloca i8*, align 4
  %wid8 = alloca i8*, align 4
  %wid9 = alloca i8*, align 4
  %wid10 = alloca i8*, align 4
  %wid11 = alloca i8*, align 4
  %wid12 = alloca i8*, align 4
  %wid13 = alloca i8*, align 4
  %wid14 = alloca i8*, align 4
  %wid15 = alloca i8*, align 4
  %wid16 = alloca i8*, align 4
  %w1 = alloca i8*, align 4
  %w2 = alloca i8*, align 4
  %w3 = alloca i8*, align 4
  %w4 = alloca i8*, align 4
  %w5 = alloca i8*, align 4
  %w6 = alloca i8*, align 4
  %w7 = alloca i8*, align 4
  %w8 = alloca i8*, align 4
  %w9 = alloca i8*, align 4
  %w10 = alloca i8*, align 4
  %w11 = alloca i8*, align 4
  %w12 = alloca i8*, align 4
  %w13 = alloca i8*, align 4
  %w14 = alloca i8*, align 4
  %w15 = alloca i8*, align 4
  %w16 = alloca i8*, align 4
  %bar = alloca i8*, align 4
  %b = alloca void (...)*, align 4
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>, align 4
  store i8* null, i8** %wid
  store i8* null, i8** %wid1
  store i8* null, i8** %wid2
  store i8* null, i8** %wid3
  store i8* null, i8** %wid4
  store i8* null, i8** %wid5
  store i8* null, i8** %wid6
  store i8* null, i8** %wid7
  store i8* null, i8** %wid8
  store i8* null, i8** %wid9
  store i8* null, i8** %wid10
  store i8* null, i8** %wid11
  store i8* null, i8** %wid12
  store i8* null, i8** %wid13
  store i8* null, i8** %wid14
  store i8* null, i8** %wid15
  store i8* null, i8** %wid16
  store i8* null, i8** %w1
  store i8* null, i8** %w2
  store i8* null, i8** %w3
  store i8* null, i8** %w4
  store i8* null, i8** %w5
  store i8* null, i8** %w6
  store i8* null, i8** %w7
  store i8* null, i8** %w8
  store i8* null, i8** %w9
  store i8* null, i8** %w10
  store i8* null, i8** %w11
  store i8* null, i8** %w12
  store i8* null, i8** %w13
  store i8* null, i8** %w14
  store i8* null, i8** %w15
  store i8* null, i8** %w16
  %call = call i8* bitcast (i8* (...)* @opaque_id to i8* ()*)()
  %0 = call i8* @objc_retainAutoreleasedReturnValue(i8* %call) nounwind
  store i8* %0, i8** %bar, align 4
  %1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  %3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  %18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 22
  %19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 23
  %20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 24
  %21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 25
  %22 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 26
  %23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 27
  %24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 28
  %25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 29
  %26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 30
  %27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 31
  %28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 32
  %29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 33
  %30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 34
  %31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 35
  %32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 36
  %33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 37
  %34 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 38
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__Test8_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i32, i32, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp43 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  %35 = load i8** %bar, align 4
  %36 = call i8* @objc_retain(i8* %35) nounwind
  store i8* %36, i8** %block.captured, align 4
  %block.captured1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  %37 = call i8* @objc_loadWeak(i8** %wid1) nounwind
  %38 = call i8* @objc_initWeak(i8** %block.captured1, i8* %37) nounwind
  %block.captured2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  %39 = call i8* @objc_loadWeak(i8** %wid2) nounwind
  %40 = call i8* @objc_initWeak(i8** %block.captured2, i8* %39) nounwind
  %block.captured3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  %41 = call i8* @objc_loadWeak(i8** %wid3) nounwind
  %42 = call i8* @objc_initWeak(i8** %block.captured3, i8* %41) nounwind
  %block.captured4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  %43 = call i8* @objc_loadWeak(i8** %wid4) nounwind
  %44 = call i8* @objc_initWeak(i8** %block.captured4, i8* %43) nounwind
  %block.captured5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  %45 = call i8* @objc_loadWeak(i8** %wid5) nounwind
  %46 = call i8* @objc_initWeak(i8** %block.captured5, i8* %45) nounwind
  %block.captured6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  %47 = call i8* @objc_loadWeak(i8** %wid6) nounwind
  %48 = call i8* @objc_initWeak(i8** %block.captured6, i8* %47) nounwind
  %block.captured7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  %49 = call i8* @objc_loadWeak(i8** %wid7) nounwind
  %50 = call i8* @objc_initWeak(i8** %block.captured7, i8* %49) nounwind
  %block.captured8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  %51 = call i8* @objc_loadWeak(i8** %wid8) nounwind
  %52 = call i8* @objc_initWeak(i8** %block.captured8, i8* %51) nounwind
  %block.captured9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  %53 = call i8* @objc_loadWeak(i8** %wid9) nounwind
  %54 = call i8* @objc_initWeak(i8** %block.captured9, i8* %53) nounwind
  %block.captured10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  %55 = call i8* @objc_loadWeak(i8** %wid10) nounwind
  %56 = call i8* @objc_initWeak(i8** %block.captured10, i8* %55) nounwind
  %block.captured11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  %57 = call i8* @objc_loadWeak(i8** %wid11) nounwind
  %58 = call i8* @objc_initWeak(i8** %block.captured11, i8* %57) nounwind
  %block.captured12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  %59 = call i8* @objc_loadWeak(i8** %wid12) nounwind
  %60 = call i8* @objc_initWeak(i8** %block.captured12, i8* %59) nounwind
  %block.captured13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  %61 = call i8* @objc_loadWeak(i8** %wid13) nounwind
  %62 = call i8* @objc_initWeak(i8** %block.captured13, i8* %61) nounwind
  %block.captured14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  %63 = call i8* @objc_loadWeak(i8** %wid14) nounwind
  %64 = call i8* @objc_initWeak(i8** %block.captured14, i8* %63) nounwind
  %block.captured15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  %65 = call i8* @objc_loadWeak(i8** %wid15) nounwind
  %66 = call i8* @objc_initWeak(i8** %block.captured15, i8* %65) nounwind
  %block.captured16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  %67 = call i8* @objc_loadWeak(i8** %wid16) nounwind
  %68 = call i8* @objc_initWeak(i8** %block.captured16, i8* %67) nounwind
  %block.captured17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 22
  %69 = call i8* @objc_loadWeak(i8** %w1) nounwind
  %70 = call i8* @objc_initWeak(i8** %block.captured17, i8* %69) nounwind
  %block.captured18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 23
  %71 = call i8* @objc_loadWeak(i8** %w2) nounwind
  %72 = call i8* @objc_initWeak(i8** %block.captured18, i8* %71) nounwind
  %block.captured19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 24
  %73 = call i8* @objc_loadWeak(i8** %w3) nounwind
  %74 = call i8* @objc_initWeak(i8** %block.captured19, i8* %73) nounwind
  %block.captured20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 25
  %75 = call i8* @objc_loadWeak(i8** %w4) nounwind
  %76 = call i8* @objc_initWeak(i8** %block.captured20, i8* %75) nounwind
  %block.captured21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 26
  %77 = call i8* @objc_loadWeak(i8** %w5) nounwind
  %78 = call i8* @objc_initWeak(i8** %block.captured21, i8* %77) nounwind
  %block.captured22 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 27
  %79 = call i8* @objc_loadWeak(i8** %w6) nounwind
  %80 = call i8* @objc_initWeak(i8** %block.captured22, i8* %79) nounwind
  %block.captured23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 28
  %81 = call i8* @objc_loadWeak(i8** %w7) nounwind
  %82 = call i8* @objc_initWeak(i8** %block.captured23, i8* %81) nounwind
  %block.captured24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 29
  %83 = call i8* @objc_loadWeak(i8** %w8) nounwind
  %84 = call i8* @objc_initWeak(i8** %block.captured24, i8* %83) nounwind
  %block.captured25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 30
  %85 = call i8* @objc_loadWeak(i8** %w9) nounwind
  %86 = call i8* @objc_initWeak(i8** %block.captured25, i8* %85) nounwind
  %block.captured26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 31
  %87 = call i8* @objc_loadWeak(i8** %w10) nounwind
  %88 = call i8* @objc_initWeak(i8** %block.captured26, i8* %87) nounwind
  %block.captured27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 32
  %89 = call i8* @objc_loadWeak(i8** %w11) nounwind
  %90 = call i8* @objc_initWeak(i8** %block.captured27, i8* %89) nounwind
  %block.captured28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 33
  %91 = call i8* @objc_loadWeak(i8** %w12) nounwind
  %92 = call i8* @objc_initWeak(i8** %block.captured28, i8* %91) nounwind
  %block.captured29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 34
  %93 = call i8* @objc_loadWeak(i8** %w13) nounwind
  %94 = call i8* @objc_initWeak(i8** %block.captured29, i8* %93) nounwind
  %block.captured30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 35
  %95 = call i8* @objc_loadWeak(i8** %w14) nounwind
  %96 = call i8* @objc_initWeak(i8** %block.captured30, i8* %95) nounwind
  %block.captured31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 36
  %97 = call i8* @objc_loadWeak(i8** %w15) nounwind
  %98 = call i8* @objc_initWeak(i8** %block.captured31, i8* %97) nounwind
  %block.captured32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 37
  %99 = call i8* @objc_loadWeak(i8** %w16) nounwind
  %100 = call i8* @objc_initWeak(i8** %block.captured32, i8* %99) nounwind
  %block.captured33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 38
  %101 = call i8* @objc_loadWeak(i8** %wid) nounwind
  %102 = call i8* @objc_initWeak(i8** %block.captured33, i8* %101) nounwind
  %103 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block to void ()*
  %104 = bitcast void ()* %103 to void (...)*
  %105 = bitcast void (...)* %104 to i8*
  %106 = call i8* @objc_retainBlock(i8* %105) nounwind, !clang.arc.copy_on_escape !4
  %107 = bitcast i8* %106 to void (...)*
  store void (...)* %107, void (...)** %b, align 4
  %108 = bitcast void (...)** %b to i8**
  call void @objc_storeStrong(i8** %108, i8* null) nounwind
  call void @objc_destroyWeak(i8** %34) nounwind
  call void @objc_destroyWeak(i8** %33) nounwind
  call void @objc_destroyWeak(i8** %32) nounwind
  call void @objc_destroyWeak(i8** %31) nounwind
  call void @objc_destroyWeak(i8** %30) nounwind
  call void @objc_destroyWeak(i8** %29) nounwind
  call void @objc_destroyWeak(i8** %28) nounwind
  call void @objc_destroyWeak(i8** %27) nounwind
  call void @objc_destroyWeak(i8** %26) nounwind
  call void @objc_destroyWeak(i8** %25) nounwind
  call void @objc_destroyWeak(i8** %24) nounwind
  call void @objc_destroyWeak(i8** %23) nounwind
  call void @objc_destroyWeak(i8** %22) nounwind
  call void @objc_destroyWeak(i8** %21) nounwind
  call void @objc_destroyWeak(i8** %20) nounwind
  call void @objc_destroyWeak(i8** %19) nounwind
  call void @objc_destroyWeak(i8** %18) nounwind
  call void @objc_destroyWeak(i8** %17) nounwind
  call void @objc_destroyWeak(i8** %16) nounwind
  call void @objc_destroyWeak(i8** %15) nounwind
  call void @objc_destroyWeak(i8** %14) nounwind
  call void @objc_destroyWeak(i8** %13) nounwind
  call void @objc_destroyWeak(i8** %12) nounwind
  call void @objc_destroyWeak(i8** %11) nounwind
  call void @objc_destroyWeak(i8** %10) nounwind
  call void @objc_destroyWeak(i8** %9) nounwind
  call void @objc_destroyWeak(i8** %8) nounwind
  call void @objc_destroyWeak(i8** %7) nounwind
  call void @objc_destroyWeak(i8** %6) nounwind
  call void @objc_destroyWeak(i8** %5) nounwind
  call void @objc_destroyWeak(i8** %4) nounwind
  call void @objc_destroyWeak(i8** %3) nounwind
  call void @objc_destroyWeak(i8** %2) nounwind
  call void @objc_storeStrong(i8** %1, i8* null) nounwind
  call void @objc_storeStrong(i8** %bar, i8* null) nounwind
  call void @objc_destroyWeak(i8** %w16) nounwind
  call void @objc_destroyWeak(i8** %w15) nounwind
  call void @objc_destroyWeak(i8** %w14) nounwind
  call void @objc_destroyWeak(i8** %w13) nounwind
  call void @objc_destroyWeak(i8** %w12) nounwind
  call void @objc_destroyWeak(i8** %w11) nounwind
  call void @objc_destroyWeak(i8** %w10) nounwind
  call void @objc_destroyWeak(i8** %w9) nounwind
  call void @objc_destroyWeak(i8** %w8) nounwind
  call void @objc_destroyWeak(i8** %w7) nounwind
  call void @objc_destroyWeak(i8** %w6) nounwind
  call void @objc_destroyWeak(i8** %w5) nounwind
  call void @objc_destroyWeak(i8** %w4) nounwind
  call void @objc_destroyWeak(i8** %w3) nounwind
  call void @objc_destroyWeak(i8** %w2) nounwind
  call void @objc_destroyWeak(i8** %w1) nounwind
  call void @objc_destroyWeak(i8** %wid16) nounwind
  call void @objc_destroyWeak(i8** %wid15) nounwind
  call void @objc_destroyWeak(i8** %wid14) nounwind
  call void @objc_destroyWeak(i8** %wid13) nounwind
  call void @objc_destroyWeak(i8** %wid12) nounwind
  call void @objc_destroyWeak(i8** %wid11) nounwind
  call void @objc_destroyWeak(i8** %wid10) nounwind
  call void @objc_destroyWeak(i8** %wid9) nounwind
  call void @objc_destroyWeak(i8** %wid8) nounwind
  call void @objc_destroyWeak(i8** %wid7) nounwind
  call void @objc_destroyWeak(i8** %wid6) nounwind
  call void @objc_destroyWeak(i8** %wid5) nounwind
  call void @objc_destroyWeak(i8** %wid4) nounwind
  call void @objc_destroyWeak(i8** %wid3) nounwind
  call void @objc_destroyWeak(i8** %wid2) nounwind
  call void @objc_destroyWeak(i8** %wid1) nounwind
  call void @objc_destroyWeak(i8** %wid) nounwind
  ret void
}

define internal void @__Test8_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  %0 = load i8** %block.capture.addr, align 4
  call void @x(i8* %0)
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  %1 = call i8* @objc_loadWeak(i8** %block.capture.addr1) nounwind
  call void @x(i8* %1)
  %block.capture.addr2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  %2 = call i8* @objc_loadWeak(i8** %block.capture.addr2) nounwind
  call void @x(i8* %2)
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  %3 = call i8* @objc_loadWeak(i8** %block.capture.addr3) nounwind
  call void @x(i8* %3)
  %block.capture.addr4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  %4 = call i8* @objc_loadWeak(i8** %block.capture.addr4) nounwind
  call void @x(i8* %4)
  %block.capture.addr5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  %5 = call i8* @objc_loadWeak(i8** %block.capture.addr5) nounwind
  call void @x(i8* %5)
  %block.capture.addr6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  %6 = call i8* @objc_loadWeak(i8** %block.capture.addr6) nounwind
  call void @x(i8* %6)
  %block.capture.addr7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  %7 = call i8* @objc_loadWeak(i8** %block.capture.addr7) nounwind
  call void @x(i8* %7)
  %block.capture.addr8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  %8 = call i8* @objc_loadWeak(i8** %block.capture.addr8) nounwind
  call void @x(i8* %8)
  %block.capture.addr9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  %9 = call i8* @objc_loadWeak(i8** %block.capture.addr9) nounwind
  call void @x(i8* %9)
  %block.capture.addr10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  %10 = call i8* @objc_loadWeak(i8** %block.capture.addr10) nounwind
  call void @x(i8* %10)
  %block.capture.addr11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  %11 = call i8* @objc_loadWeak(i8** %block.capture.addr11) nounwind
  call void @x(i8* %11)
  %block.capture.addr12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  %12 = call i8* @objc_loadWeak(i8** %block.capture.addr12) nounwind
  call void @x(i8* %12)
  %block.capture.addr13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  %13 = call i8* @objc_loadWeak(i8** %block.capture.addr13) nounwind
  call void @x(i8* %13)
  %block.capture.addr14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  %14 = call i8* @objc_loadWeak(i8** %block.capture.addr14) nounwind
  call void @x(i8* %14)
  %block.capture.addr15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  %15 = call i8* @objc_loadWeak(i8** %block.capture.addr15) nounwind
  call void @x(i8* %15)
  %block.capture.addr16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  %16 = call i8* @objc_loadWeak(i8** %block.capture.addr16) nounwind
  call void @x(i8* %16)
  %block.capture.addr17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 22
  %17 = call i8* @objc_loadWeak(i8** %block.capture.addr17) nounwind
  call void @x(i8* %17)
  %block.capture.addr18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 23
  %18 = call i8* @objc_loadWeak(i8** %block.capture.addr18) nounwind
  call void @x(i8* %18)
  %block.capture.addr19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 24
  %19 = call i8* @objc_loadWeak(i8** %block.capture.addr19) nounwind
  call void @x(i8* %19)
  %block.capture.addr20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 25
  %20 = call i8* @objc_loadWeak(i8** %block.capture.addr20) nounwind
  call void @x(i8* %20)
  %block.capture.addr21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 26
  %21 = call i8* @objc_loadWeak(i8** %block.capture.addr21) nounwind
  call void @x(i8* %21)
  %block.capture.addr22 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 27
  %22 = call i8* @objc_loadWeak(i8** %block.capture.addr22) nounwind
  call void @x(i8* %22)
  %block.capture.addr23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 28
  %23 = call i8* @objc_loadWeak(i8** %block.capture.addr23) nounwind
  call void @x(i8* %23)
  %block.capture.addr24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 29
  %24 = call i8* @objc_loadWeak(i8** %block.capture.addr24) nounwind
  call void @x(i8* %24)
  %block.capture.addr25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 30
  %25 = call i8* @objc_loadWeak(i8** %block.capture.addr25) nounwind
  call void @x(i8* %25)
  %block.capture.addr26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 31
  %26 = call i8* @objc_loadWeak(i8** %block.capture.addr26) nounwind
  call void @x(i8* %26)
  %block.capture.addr27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 32
  %27 = call i8* @objc_loadWeak(i8** %block.capture.addr27) nounwind
  call void @x(i8* %27)
  %block.capture.addr28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 33
  %28 = call i8* @objc_loadWeak(i8** %block.capture.addr28) nounwind
  call void @x(i8* %28)
  %block.capture.addr29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 34
  %29 = call i8* @objc_loadWeak(i8** %block.capture.addr29) nounwind
  call void @x(i8* %29)
  %block.capture.addr30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 35
  %30 = call i8* @objc_loadWeak(i8** %block.capture.addr30) nounwind
  call void @x(i8* %30)
  %block.capture.addr31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 36
  %31 = call i8* @objc_loadWeak(i8** %block.capture.addr31) nounwind
  call void @x(i8* %31)
  %block.capture.addr32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 37
  %32 = call i8* @objc_loadWeak(i8** %block.capture.addr32) nounwind
  call void @x(i8* %32)
  %block.capture.addr33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 38
  %33 = call i8* @objc_loadWeak(i8** %block.capture.addr33) nounwind
  call void @x(i8* %33)
  ret void
}

define internal void @__copy_helper_block_40(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 4
  %.addr1 = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  store i8* %1, i8** %.addr1, align 4
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  store i8* null, i8** %5
  call void @objc_storeStrong(i8** %5, i8* %blockcopy.src) nounwind
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 6
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 6
  call void @objc_copyWeak(i8** %7, i8** %6) nounwind
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 7
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 7
  call void @objc_copyWeak(i8** %9, i8** %8) nounwind
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 8
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 8
  call void @objc_copyWeak(i8** %11, i8** %10) nounwind
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 9
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 9
  call void @objc_copyWeak(i8** %13, i8** %12) nounwind
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 10
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 10
  call void @objc_copyWeak(i8** %15, i8** %14) nounwind
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 11
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 11
  call void @objc_copyWeak(i8** %17, i8** %16) nounwind
  %18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 12
  %19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 12
  call void @objc_copyWeak(i8** %19, i8** %18) nounwind
  %20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 13
  %21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 13
  call void @objc_copyWeak(i8** %21, i8** %20) nounwind
  %22 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 14
  %23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 14
  call void @objc_copyWeak(i8** %23, i8** %22) nounwind
  %24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 15
  %25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 15
  call void @objc_copyWeak(i8** %25, i8** %24) nounwind
  %26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 16
  %27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 16
  call void @objc_copyWeak(i8** %27, i8** %26) nounwind
  %28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 17
  %29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 17
  call void @objc_copyWeak(i8** %29, i8** %28) nounwind
  %30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 18
  %31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 18
  call void @objc_copyWeak(i8** %31, i8** %30) nounwind
  %32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 19
  %33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 19
  call void @objc_copyWeak(i8** %33, i8** %32) nounwind
  %34 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 20
  %35 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 20
  call void @objc_copyWeak(i8** %35, i8** %34) nounwind
  %36 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 21
  %37 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 21
  call void @objc_copyWeak(i8** %37, i8** %36) nounwind
  %38 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 22
  %39 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 22
  call void @objc_copyWeak(i8** %39, i8** %38) nounwind
  %40 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 23
  %41 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 23
  call void @objc_copyWeak(i8** %41, i8** %40) nounwind
  %42 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 24
  %43 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 24
  call void @objc_copyWeak(i8** %43, i8** %42) nounwind
  %44 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 25
  %45 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 25
  call void @objc_copyWeak(i8** %45, i8** %44) nounwind
  %46 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 26
  %47 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 26
  call void @objc_copyWeak(i8** %47, i8** %46) nounwind
  %48 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 27
  %49 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 27
  call void @objc_copyWeak(i8** %49, i8** %48) nounwind
  %50 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 28
  %51 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 28
  call void @objc_copyWeak(i8** %51, i8** %50) nounwind
  %52 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 29
  %53 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 29
  call void @objc_copyWeak(i8** %53, i8** %52) nounwind
  %54 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 30
  %55 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 30
  call void @objc_copyWeak(i8** %55, i8** %54) nounwind
  %56 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 31
  %57 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 31
  call void @objc_copyWeak(i8** %57, i8** %56) nounwind
  %58 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 32
  %59 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 32
  call void @objc_copyWeak(i8** %59, i8** %58) nounwind
  %60 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 33
  %61 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 33
  call void @objc_copyWeak(i8** %61, i8** %60) nounwind
  %62 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 34
  %63 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 34
  call void @objc_copyWeak(i8** %63, i8** %62) nounwind
  %64 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 35
  %65 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 35
  call void @objc_copyWeak(i8** %65, i8** %64) nounwind
  %66 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 36
  %67 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 36
  call void @objc_copyWeak(i8** %67, i8** %66) nounwind
  %68 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 37
  %69 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 37
  call void @objc_copyWeak(i8** %69, i8** %68) nounwind
  %70 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.source, i32 0, i32 38
  %71 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block.dest, i32 0, i32 38
  call void @objc_copyWeak(i8** %71, i8** %70) nounwind
  ret void
}

define internal void @__destroy_helper_block_41(i8*) {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 5
  call void @objc_storeStrong(i8** %2, i8* null) nounwind
  %3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 6
  call void @objc_destroyWeak(i8** %3) nounwind
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 7
  call void @objc_destroyWeak(i8** %4) nounwind
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 8
  call void @objc_destroyWeak(i8** %5) nounwind
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 9
  call void @objc_destroyWeak(i8** %6) nounwind
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 10
  call void @objc_destroyWeak(i8** %7) nounwind
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 11
  call void @objc_destroyWeak(i8** %8) nounwind
  %9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 12
  call void @objc_destroyWeak(i8** %9) nounwind
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 13
  call void @objc_destroyWeak(i8** %10) nounwind
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 14
  call void @objc_destroyWeak(i8** %11) nounwind
  %12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 15
  call void @objc_destroyWeak(i8** %12) nounwind
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 16
  call void @objc_destroyWeak(i8** %13) nounwind
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 17
  call void @objc_destroyWeak(i8** %14) nounwind
  %15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 18
  call void @objc_destroyWeak(i8** %15) nounwind
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 19
  call void @objc_destroyWeak(i8** %16) nounwind
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 20
  call void @objc_destroyWeak(i8** %17) nounwind
  %18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 21
  call void @objc_destroyWeak(i8** %18) nounwind
  %19 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 22
  call void @objc_destroyWeak(i8** %19) nounwind
  %20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 23
  call void @objc_destroyWeak(i8** %20) nounwind
  %21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 24
  call void @objc_destroyWeak(i8** %21) nounwind
  %22 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 25
  call void @objc_destroyWeak(i8** %22) nounwind
  %23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 26
  call void @objc_destroyWeak(i8** %23) nounwind
  %24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 27
  call void @objc_destroyWeak(i8** %24) nounwind
  %25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 28
  call void @objc_destroyWeak(i8** %25) nounwind
  %26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 29
  call void @objc_destroyWeak(i8** %26) nounwind
  %27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 30
  call void @objc_destroyWeak(i8** %27) nounwind
  %28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 31
  call void @objc_destroyWeak(i8** %28) nounwind
  %29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 32
  call void @objc_destroyWeak(i8** %29) nounwind
  %30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 33
  call void @objc_destroyWeak(i8** %30) nounwind
  %31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 34
  call void @objc_destroyWeak(i8** %31) nounwind
  %32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 35
  call void @objc_destroyWeak(i8** %32) nounwind
  %33 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 36
  call void @objc_destroyWeak(i8** %33) nounwind
  %34 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 37
  call void @objc_destroyWeak(i8** %34) nounwind
  %35 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>* %block, i32 0, i32 38
  call void @objc_destroyWeak(i8** %35) nounwind
  ret void
}

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = metadata !{i32 1, metadata !"Objective-C Version", i32 2}
!1 = metadata !{i32 1, metadata !"Objective-C Image Info Version", i32 0}
!2 = metadata !{i32 1, metadata !"Objective-C Image Info Section", metadata !"__DATA, __objc_imageinfo, regular, no_dead_strip"}
!3 = metadata !{i32 4, metadata !"Objective-C Garbage Collection", i32 0}
!4 = metadata !{}
