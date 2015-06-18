; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/block-var-layout.m'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%struct.__block_descriptor = type { i64, i64 }
%struct._objc_module = type { i64, i64, i8*, %struct._objc_symtab* }
%struct._objc_symtab = type { i64, i8*, i16, i16, [0 x i8*] }
%struct.__block_byref_byref_int = type { i8*, %struct.__block_byref_byref_int*, i32, i32, i32 }
%struct.__block_byref_byref_bab = type { i8*, %struct.__block_byref_byref_bab*, i32, i32, i8*, i8*, i8* }
%struct.__block_byref_bl_var1 = type { i8*, %struct.__block_byref_bl_var1*, i32, i32, i8* }
%struct.S = type { i32, i8*, %struct.V, i32, i8* }
%struct.V = type { i32, i8* }
%struct.__block_literal_generic = type { i8*, i32, i32, i8*, %struct.__block_descriptor* }
%struct.__block_byref_byref_int.0 = type { i8*, %struct.__block_byref_byref_int.0*, i32, i32, i32 }
%struct.__block_byref_byref_bab.1 = type { i8*, %struct.__block_byref_byref_bab.1*, i32, i32, i8*, i8*, i8* }
%struct.__block_byref_byref_int.2 = type { i8*, %struct.__block_byref_byref_int.2*, i32, i32, i32 }
%struct.__block_byref_bl_var1.3 = type { i8*, %struct.__block_byref_bl_var1.3*, i32, i32, i8* }
%struct.__block_byref_byref_bab.4 = type { i8*, %struct.__block_byref_byref_bab.4*, i32, i32, i8*, i8*, i8* }
%struct.__block_byref_byref_int.5 = type { i8*, %struct.__block_byref_byref_int.5*, i32, i32, i32 }
%struct.__block_byref_bl_var1.6 = type { i8*, %struct.__block_byref_bl_var1.6*, i32, i32, i8* }
%struct.__block_byref_byref_bab.7 = type { i8*, %struct.__block_byref_byref_bab.7*, i32, i32, i8*, i8*, i8* }
%union.U = type { i8* }
%struct.S5 = type { i32, i8*, %struct.V.8, i32, %union.UI }
%struct.V.8 = type { i32, i8* }
%union.UI = type { i8* }

@_NSConcreteStackBlock = external global i8*
@.str = private unnamed_addr constant [6 x i8] c"v8@?0\00", align 1
@"\01L_OBJC_CLASS_NAME_" = internal global [4 x i8] c"\015\10\00", section "__TEXT,__cstring,cstring_literals", align 1
@__block_descriptor_tmp = internal constant { i64, i64, i8*, i8*, i8*, i8* } { i64 0, i64 77, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_ to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_ to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @"\01L_OBJC_CLASS_NAME_", i32 0, i32 0) }
@wid = common global i8* null, align 8
@"\01L_OBJC_CLASS_NAME_4" = internal global [4 x i8] c"\016\10\00", section "__TEXT,__cstring,cstring_literals", align 1
@__block_descriptor_tmp5 = internal constant { i64, i64, i8*, i8*, i8*, i8* } { i64 0, i64 85, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_2 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_3 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @"\01L_OBJC_CLASS_NAME_4", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_9" = internal global [5 x i8] c"\014\11 \00", section "__TEXT,__cstring,cstring_literals", align 1
@__block_descriptor_tmp10 = internal constant { i64, i64, i8*, i8*, i8*, i8* } { i64 0, i64 89, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_7 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_8 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_9", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_12" = internal global [5 x i8] c"\01A\11\11\00", section "__TEXT,__cstring,cstring_literals", align 1
@__block_descriptor_tmp13 = internal constant { i64, i64, i8*, i8* } { i64 0, i64 80, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_12", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_14" = internal global [5 x i8] c"\01A\11\12\00", section "__TEXT,__cstring,cstring_literals", align 1
@__block_descriptor_tmp15 = internal constant { i64, i64, i8*, i8* } { i64 0, i64 88, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_14", i32 0, i32 0) }
@"\01L_OBJC_CLASS_NAME_18" = internal global [3 x i8] c"\013\00", section "__TEXT,__cstring,cstring_literals", align 1
@__block_descriptor_tmp19 = internal constant { i64, i64, i8*, i8*, i8*, i8* } { i64 0, i64 56, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_16 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_17 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @"\01L_OBJC_CLASS_NAME_18", i32 0, i32 0) }
@_NSConcreteGlobalBlock = external global i8*
@"\01L_OBJC_CLASS_NAME_20" = internal global [2 x i8] c"\01\00", section "__TEXT,__cstring,cstring_literals", align 1
@__block_descriptor_tmp21 = internal constant { i64, i64, i8*, i8* } { i64 0, i64 32, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @"\01L_OBJC_CLASS_NAME_20", i32 0, i32 0) }
@__block_literal_global = internal constant { i8**, i32, i32, i8*, %struct.__block_descriptor* } { i8** @_NSConcreteGlobalBlock, i32 1342177280, i32 0, i8* bitcast (void (i8*)* @__test_empty_block_block_invoke to i8*), %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @__block_descriptor_tmp21 to %struct.__block_descriptor*) }, align 8
@"\01L_OBJC_CLASS_NAME_22" = internal global [1 x i8] zeroinitializer, section "__TEXT,__cstring,cstring_literals", align 1
@"\01L_OBJC_MODULES" = internal global %struct._objc_module { i64 7, i64 32, i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_22", i32 0, i32 0), %struct._objc_symtab* null }, section "__OBJC,__module_info,regular,no_dead_strip", align 4
@llvm.used = appending global [9 x i8*] [i8* getelementptr inbounds ([4 x i8]* @"\01L_OBJC_CLASS_NAME_", i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @"\01L_OBJC_CLASS_NAME_4", i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_9", i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_12", i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @"\01L_OBJC_CLASS_NAME_14", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @"\01L_OBJC_CLASS_NAME_18", i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @"\01L_OBJC_CLASS_NAME_20", i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_22", i32 0, i32 0), i8* bitcast (%struct._objc_module* @"\01L_OBJC_MODULES" to i8*)], section "llvm.metadata"

define void @x(i8* %y) nounwind {
entry:
  %y.addr = alloca i8*, align 8
  store i8* %y, i8** %y.addr, align 8
  ret void
}

define void @y(i32 %a) nounwind {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  ret void
}

define void @f() nounwind {
entry:
  %byref_int = alloca %struct.__block_byref_byref_int, align 8
  %ch = alloca i8, align 1
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  %sh = alloca i16, align 2
  %bar = alloca i8*, align 8
  %baz = alloca i8*, align 8
  %strong_void_sta = alloca i8*, align 8
  %byref_bab = alloca %struct.__block_byref_byref_bab, align 8
  %bl_var1 = alloca %struct.__block_byref_bl_var1, align 8
  %i = alloca i32, align 4
  %dob = alloca double, align 8
  %b = alloca void (...)*, align 8
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>, align 8
  %c = alloca void (...)*, align 8
  %block21 = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>, align 8
  %d = alloca void (...)*, align 8
  %block41 = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>, align 8
  %s2 = alloca %struct.S, align 8
  %e = alloca void (...)*, align 8
  %block61 = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>, align 8
  %byref.isa = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 0
  store i8* null, i8** %byref.isa
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 1
  store %struct.__block_byref_byref_int* %byref_int, %struct.__block_byref_byref_int** %byref.forwarding
  %byref.flags = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 2
  store i32 0, i32* %byref.flags
  %byref.size = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 3
  store i32 32, i32* %byref.size
  %byref_int1 = getelementptr inbounds %struct.__block_byref_byref_int* %byref_int, i32 0, i32 4
  store i32 0, i32* %byref_int1, align 4
  store i8 97, i8* %ch, align 1
  store i8 98, i8* %ch1, align 1
  store i8 99, i8* %ch2, align 1
  store i16 2, i16* %sh, align 2
  %call = call i8* (...)* @opaque_id()
  store i8* %call, i8** %bar, align 8
  store i8* null, i8** %baz, align 8
  %byref.isa2 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 0
  store i8* null, i8** %byref.isa2
  %byref.forwarding3 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 1
  store %struct.__block_byref_byref_bab* %byref_bab, %struct.__block_byref_byref_bab** %byref.forwarding3
  %byref.flags4 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 2
  store i32 33554432, i32* %byref.flags4
  %byref.size5 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 3
  store i32 48, i32* %byref.size5
  %0 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 4
  store i8* bitcast (void (i8*, i8*)* @__Block_byref_object_copy_ to i8*), i8** %0
  %1 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 5
  store i8* bitcast (void (i8*)* @__Block_byref_object_dispose_ to i8*), i8** %1
  %byref_bab6 = getelementptr inbounds %struct.__block_byref_byref_bab* %byref_bab, i32 0, i32 6
  store i8* null, i8** %byref_bab6, align 8
  %byref.isa7 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 0
  store i8* null, i8** %byref.isa7
  %byref.forwarding8 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 1
  store %struct.__block_byref_bl_var1* %bl_var1, %struct.__block_byref_bl_var1** %byref.forwarding8
  %byref.flags9 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 2
  store i32 0, i32* %byref.flags9
  %byref.size10 = getelementptr inbounds %struct.__block_byref_bl_var1* %bl_var1, i32 0, i32 3
  store i32 32, i32* %byref.size10
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 1
  store i32 1107296256, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__f_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %2 = bitcast %struct.__block_byref_byref_int* %byref_int to i8*
  store i8* %2, i8** %block.captured
  %block.captured11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %3 = load i16* %sh, align 2
  store i16 %3, i16* %block.captured11, align 2
  %block.captured12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 11
  %4 = load i8* %ch, align 1
  store i8 %4, i8* %block.captured12, align 1
  %block.captured13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 12
  %5 = load i8* %ch1, align 1
  store i8 %5, i8* %block.captured13, align 1
  %block.captured14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 13
  %6 = load i8* %ch2, align 1
  store i8 %6, i8* %block.captured14, align 1
  %block.captured15 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %7 = load i8** %bar, align 8
  %weakassign = call i8* @objc_assign_strongCast(i8* %7, i8** %block.captured15)
  %block.captured16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %8 = load i8** %baz, align 8
  %weakassign17 = call i8* @objc_assign_strongCast(i8* %8, i8** %block.captured16)
  %block.captured18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %9 = load i8** %strong_void_sta, align 8
  %weakassign19 = call i8* @objc_assign_strongCast(i8* %9, i8** %block.captured18)
  %block.captured20 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %10 = bitcast %struct.__block_byref_byref_bab* %byref_bab to i8*
  store i8* %10, i8** %block.captured20
  %11 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block to void ()*
  %12 = bitcast void ()* %11 to void (...)*
  store void (...)* %12, void (...)** %b, align 8
  %13 = load void (...)** %b, align 8
  %block.literal = bitcast void (...)* %13 to %struct.__block_literal_generic*
  %14 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %15 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %16 = load i8** %14
  %17 = bitcast i8* %16 to void (i8*, ...)*
  call void (i8*, ...)* %17(i8* %15)
  %block.isa22 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa22
  %block.flags23 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 1
  store i32 1107296256, i32* %block.flags23
  %block.reserved24 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 2
  store i32 0, i32* %block.reserved24
  %block.invoke25 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__f_block_invoke1 to i8*), i8** %block.invoke25
  %block.descriptor26 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp5 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor26
  %block.captured27 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 5
  %18 = bitcast %struct.__block_byref_byref_int* %byref_int to i8*
  store i8* %18, i8** %block.captured27
  %block.captured28 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 11
  %19 = load i16* %sh, align 2
  store i16 %19, i16* %block.captured28, align 2
  %block.captured29 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 12
  %20 = load i8* %ch, align 1
  store i8 %20, i8* %block.captured29, align 1
  %block.captured30 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 13
  %21 = load i8* %ch1, align 1
  store i8 %21, i8* %block.captured30, align 1
  %block.captured31 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 14
  %22 = load i8* %ch2, align 1
  store i8 %22, i8* %block.captured31, align 1
  %block.captured32 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 6
  %23 = load i8** %bar, align 8
  %weakassign33 = call i8* @objc_assign_strongCast(i8* %23, i8** %block.captured32)
  %block.captured34 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 7
  %24 = load i8** %baz, align 8
  %weakassign35 = call i8* @objc_assign_strongCast(i8* %24, i8** %block.captured34)
  %block.captured36 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 8
  %25 = load i8** %strong_void_sta, align 8
  %weakassign37 = call i8* @objc_assign_strongCast(i8* %25, i8** %block.captured36)
  %block.captured38 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 9
  %26 = bitcast %struct.__block_byref_bl_var1* %bl_var1 to i8*
  store i8* %26, i8** %block.captured38
  %block.captured39 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21, i32 0, i32 10
  %27 = bitcast %struct.__block_byref_byref_bab* %byref_bab to i8*
  store i8* %27, i8** %block.captured39
  %28 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block21 to void ()*
  %29 = bitcast void ()* %28 to void (...)*
  store void (...)* %29, void (...)** %c, align 8
  %30 = load void (...)** %c, align 8
  %block.literal40 = bitcast void (...)* %30 to %struct.__block_literal_generic*
  %31 = getelementptr inbounds %struct.__block_literal_generic* %block.literal40, i32 0, i32 3
  %32 = bitcast %struct.__block_literal_generic* %block.literal40 to i8*
  %33 = load i8** %31
  %34 = bitcast i8* %33 to void (i8*, ...)*
  call void (i8*, ...)* %34(i8* %32)
  %block.isa42 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa42
  %block.flags43 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 1
  store i32 1107296256, i32* %block.flags43
  %block.reserved44 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 2
  store i32 0, i32* %block.reserved44
  %block.invoke45 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__f_block_invoke6 to i8*), i8** %block.invoke45
  %block.descriptor46 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp10 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor46
  %block.captured47 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 5
  %35 = bitcast %struct.__block_byref_byref_int* %byref_int to i8*
  store i8* %35, i8** %block.captured47
  %block.captured48 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 12
  %36 = load i16* %sh, align 2
  store i16 %36, i16* %block.captured48, align 2
  %block.captured49 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 13
  %37 = load i8* %ch, align 1
  store i8 %37, i8* %block.captured49, align 1
  %block.captured50 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 14
  %38 = load i8* %ch1, align 1
  store i8 %38, i8* %block.captured50, align 1
  %block.captured51 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 15
  %39 = load i8* %ch2, align 1
  store i8 %39, i8* %block.captured51, align 1
  %block.captured52 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 6
  %40 = load i8** %bar, align 8
  %weakassign53 = call i8* @objc_assign_strongCast(i8* %40, i8** %block.captured52)
  %block.captured54 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 7
  %41 = load i8** %baz, align 8
  %weakassign55 = call i8* @objc_assign_strongCast(i8* %41, i8** %block.captured54)
  %block.captured56 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 8
  %42 = bitcast %struct.__block_byref_bl_var1* %bl_var1 to i8*
  store i8* %42, i8** %block.captured56
  %block.captured57 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 11
  %43 = load i32* %i, align 4
  store i32 %43, i32* %block.captured57, align 4
  %block.captured58 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 9
  %44 = load double* %dob, align 8
  store double %44, double* %block.captured58, align 8
  %block.captured59 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41, i32 0, i32 10
  %45 = bitcast %struct.__block_byref_byref_bab* %byref_bab to i8*
  store i8* %45, i8** %block.captured59
  %46 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block41 to void ()*
  %47 = bitcast void ()* %46 to void (...)*
  store void (...)* %47, void (...)** %d, align 8
  %48 = load void (...)** %d, align 8
  %block.literal60 = bitcast void (...)* %48 to %struct.__block_literal_generic*
  %49 = getelementptr inbounds %struct.__block_literal_generic* %block.literal60, i32 0, i32 3
  %50 = bitcast %struct.__block_literal_generic* %block.literal60 to i8*
  %51 = load i8** %49
  %52 = bitcast i8* %51 to void (i8*, ...)*
  call void (i8*, ...)* %52(i8* %50)
  %block.isa62 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block61, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa62
  %block.flags63 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block61, i32 0, i32 1
  store i32 1073741824, i32* %block.flags63
  %block.reserved64 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block61, i32 0, i32 2
  store i32 0, i32* %block.reserved64
  %block.invoke65 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block61, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__f_block_invoke11 to i8*), i8** %block.invoke65
  %block.descriptor66 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block61, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @__block_descriptor_tmp13 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor66
  %block.captured67 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block61, i32 0, i32 5
  %53 = bitcast %struct.S* %block.captured67 to i8*
  %54 = bitcast %struct.S* %s2 to i8*
  %55 = call i8* @objc_memmove_collectable(i8* %53, i8* %54, i64 48)
  %56 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block61 to void ()*
  %57 = bitcast void ()* %56 to void (...)*
  store void (...)* %57, void (...)** %e, align 8
  %58 = load void (...)** %e, align 8
  %block.literal68 = bitcast void (...)* %58 to %struct.__block_literal_generic*
  %59 = getelementptr inbounds %struct.__block_literal_generic* %block.literal68, i32 0, i32 3
  %60 = bitcast %struct.__block_literal_generic* %block.literal68 to i8*
  %61 = load i8** %59
  %62 = bitcast i8* %61 to void (i8*, ...)*
  call void (i8*, ...)* %62(i8* %60)
  %63 = bitcast %struct.__block_byref_bl_var1* %bl_var1 to i8*
  call void @_Block_object_dispose(i8* %63, i32 8)
  %64 = bitcast %struct.__block_byref_byref_bab* %byref_bab to i8*
  call void @_Block_object_dispose(i8* %64, i32 8)
  %65 = bitcast %struct.__block_byref_byref_int* %byref_int to i8*
  call void @_Block_object_dispose(i8* %65, i32 8)
  ret void
}

declare i8* @opaque_id(...)

define internal void @__Block_byref_object_copy_(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  store i8* %1, i8** %.addr1, align 8
  %2 = load i8** %.addr
  %3 = bitcast i8* %2 to %struct.__block_byref_byref_bab*
  %x = getelementptr inbounds %struct.__block_byref_byref_bab* %3, i32 0, i32 6
  %4 = load i8** %.addr1
  %5 = bitcast i8* %4 to %struct.__block_byref_byref_bab*
  %x2 = getelementptr inbounds %struct.__block_byref_byref_bab* %5, i32 0, i32 6
  %6 = bitcast i8** %x to i8*
  %7 = load i8** %x2
  call void @_Block_object_assign(i8* %6, i8* %7, i32 131)
  ret void
}

declare void @_Block_object_assign(i8*, i8*, i32)

define internal void @__Block_byref_object_dispose_(i8*) {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8** %.addr
  %2 = bitcast i8* %1 to %struct.__block_byref_byref_bab*
  %x = getelementptr inbounds %struct.__block_byref_byref_bab* %2, i32 0, i32 6
  %3 = load i8** %x
  call void @_Block_object_dispose(i8* %3, i32 131)
  ret void
}

declare void @_Block_object_dispose(i8*, i32)

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
  %5 = load i8** %block.capture.addr10, align 8
  call void @x(i8* %5)
  %block.capture.addr11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %6 = load i8** %block.capture.addr11, align 8
  call void @x(i8* %6)
  %block.capture.addr12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %7 = load i8** %block.capture.addr12, align 8
  call void @x(i8* %7)
  %block.capture.addr13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %8 = load i8** %block.capture.addr13
  %byref.addr14 = bitcast i8* %8 to %struct.__block_byref_byref_bab.1*
  %byref.forwarding15 = getelementptr inbounds %struct.__block_byref_byref_bab.1* %byref.addr14, i32 0, i32 1
  %byref.addr.forwarded16 = load %struct.__block_byref_byref_bab.1** %byref.forwarding15
  %byref_bab = getelementptr inbounds %struct.__block_byref_byref_bab.1* %byref.addr.forwarded16, i32 0, i32 6
  %9 = load i8** %byref_bab, align 8
  call void @x(i8* %9)
  ret void
}

define internal void @__copy_helper_block_(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  store i8* %1, i8** %.addr1, align 8
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
  %9 = bitcast i8** %8 to i8*
  call void @_Block_object_assign(i8* %9, i8* %blockcopy.src2, i32 3)
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 7
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 7
  %blockcopy.src3 = load i8** %10
  %12 = bitcast i8** %11 to i8*
  call void @_Block_object_assign(i8* %12, i8* %blockcopy.src3, i32 3)
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 9
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 9
  %blockcopy.src4 = load i8** %13
  %15 = bitcast i8** %14 to i8*
  call void @_Block_object_assign(i8* %15, i8* %blockcopy.src4, i32 8)
  ret void
}

define internal void @__destroy_helper_block_(i8*) {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %3 = load i8** %2
  call void @_Block_object_dispose(i8* %3, i32 8)
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %5 = load i8** %4
  call void @_Block_object_dispose(i8* %5, i32 3)
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %7 = load i8** %6
  call void @_Block_object_dispose(i8* %7, i32 3)
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %9 = load i8** %8
  call void @_Block_object_dispose(i8* %9, i32 8)
  ret void
}

declare i8* @objc_assign_strongCast(i8*, i8**)

define internal void @__f_block_invoke1(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 11
  %0 = load i16* %block.capture.addr, align 2
  %conv = sext i16 %0 to i32
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 12
  %1 = load i8* %block.capture.addr1, align 1
  %conv2 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv2
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 13
  %2 = load i8* %block.capture.addr3, align 1
  %conv4 = sext i8 %2 to i32
  %add5 = add nsw i32 %add, %conv4
  %block.capture.addr6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 14
  %3 = load i8* %block.capture.addr6, align 1
  %conv7 = sext i8 %3 to i32
  %add8 = add nsw i32 %add5, %conv7
  %block.capture.addr9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %4 = load i8** %block.capture.addr9
  %byref.addr = bitcast i8* %4 to %struct.__block_byref_byref_int.2*
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_byref_int.2* %byref.addr, i32 0, i32 1
  %byref.addr.forwarded = load %struct.__block_byref_byref_int.2** %byref.forwarding
  %byref_int = getelementptr inbounds %struct.__block_byref_byref_int.2* %byref.addr.forwarded, i32 0, i32 4
  store i32 %add8, i32* %byref_int, align 4
  %block.capture.addr10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %5 = load i8** %block.capture.addr10, align 8
  call void @x(i8* %5)
  %block.capture.addr11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %6 = load i8** %block.capture.addr11, align 8
  call void @x(i8* %6)
  %block.capture.addr12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %7 = load i8** %block.capture.addr12, align 8
  call void @x(i8* %7)
  %weakread = call i8* @objc_read_weak(i8** @wid)
  call void @x(i8* %weakread)
  %block.capture.addr13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %8 = load i8** %block.capture.addr13
  %byref.addr14 = bitcast i8* %8 to %struct.__block_byref_bl_var1.3*
  %byref.forwarding15 = getelementptr inbounds %struct.__block_byref_bl_var1.3* %byref.addr14, i32 0, i32 1
  %byref.addr.forwarded16 = load %struct.__block_byref_bl_var1.3** %byref.forwarding15
  %bl_var1 = getelementptr inbounds %struct.__block_byref_bl_var1.3* %byref.addr.forwarded16, i32 0, i32 4
  store i8* null, i8** %bl_var1, align 8
  %block.capture.addr17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %9 = load i8** %block.capture.addr17
  %byref.addr18 = bitcast i8* %9 to %struct.__block_byref_byref_bab.4*
  %byref.forwarding19 = getelementptr inbounds %struct.__block_byref_byref_bab.4* %byref.addr18, i32 0, i32 1
  %byref.addr.forwarded20 = load %struct.__block_byref_byref_bab.4** %byref.forwarding19
  %byref_bab = getelementptr inbounds %struct.__block_byref_byref_bab.4* %byref.addr.forwarded20, i32 0, i32 6
  %10 = load i8** %byref_bab, align 8
  call void @x(i8* %10)
  ret void
}

declare i8* @objc_read_weak(i8**)

define internal void @__copy_helper_block_2(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  store i8* %1, i8** %.addr1, align 8
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  %6 = bitcast i8** %5 to i8*
  call void @_Block_object_assign(i8* %6, i8* %blockcopy.src, i32 8)
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 6
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 6
  %blockcopy.src2 = load i8** %7
  %9 = bitcast i8** %8 to i8*
  call void @_Block_object_assign(i8* %9, i8* %blockcopy.src2, i32 3)
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 7
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 7
  %blockcopy.src3 = load i8** %10
  %12 = bitcast i8** %11 to i8*
  call void @_Block_object_assign(i8* %12, i8* %blockcopy.src3, i32 3)
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 9
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 9
  %blockcopy.src4 = load i8** %13
  %15 = bitcast i8** %14 to i8*
  call void @_Block_object_assign(i8* %15, i8* %blockcopy.src4, i32 8)
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.source, i32 0, i32 10
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 10
  %blockcopy.src5 = load i8** %16
  %18 = bitcast i8** %17 to i8*
  call void @_Block_object_assign(i8* %18, i8* %blockcopy.src5, i32 8)
  ret void
}

define internal void @__destroy_helper_block_3(i8*) {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %3 = load i8** %2
  call void @_Block_object_dispose(i8* %3, i32 8)
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %5 = load i8** %4
  call void @_Block_object_dispose(i8* %5, i32 3)
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %7 = load i8** %6
  call void @_Block_object_dispose(i8* %7, i32 3)
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %9 = load i8** %8
  call void @_Block_object_dispose(i8* %9, i32 8)
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, i8*, i8*, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %11 = load i8** %10
  call void @_Block_object_dispose(i8* %11, i32 8)
  ret void
}

define internal void @__f_block_invoke6(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 12
  %0 = load i16* %block.capture.addr, align 2
  %conv = sext i16 %0 to i32
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 13
  %1 = load i8* %block.capture.addr1, align 1
  %conv2 = sext i8 %1 to i32
  %add = add nsw i32 %conv, %conv2
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 14
  %2 = load i8* %block.capture.addr3, align 1
  %conv4 = sext i8 %2 to i32
  %add5 = add nsw i32 %add, %conv4
  %block.capture.addr6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 15
  %3 = load i8* %block.capture.addr6, align 1
  %conv7 = sext i8 %3 to i32
  %add8 = add nsw i32 %add5, %conv7
  %block.capture.addr9 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %4 = load i8** %block.capture.addr9
  %byref.addr = bitcast i8* %4 to %struct.__block_byref_byref_int.5*
  %byref.forwarding = getelementptr inbounds %struct.__block_byref_byref_int.5* %byref.addr, i32 0, i32 1
  %byref.addr.forwarded = load %struct.__block_byref_byref_int.5** %byref.forwarding
  %byref_int = getelementptr inbounds %struct.__block_byref_byref_int.5* %byref.addr.forwarded, i32 0, i32 4
  store i32 %add8, i32* %byref_int, align 4
  %block.capture.addr10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %5 = load i8** %block.capture.addr10, align 8
  call void @x(i8* %5)
  %block.capture.addr11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %6 = load i8** %block.capture.addr11, align 8
  call void @x(i8* %6)
  %weakread = call i8* @objc_read_weak(i8** @wid)
  call void @x(i8* %weakread)
  %block.capture.addr12 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %7 = load i8** %block.capture.addr12
  %byref.addr13 = bitcast i8* %7 to %struct.__block_byref_bl_var1.6*
  %byref.forwarding14 = getelementptr inbounds %struct.__block_byref_bl_var1.6* %byref.addr13, i32 0, i32 1
  %byref.addr.forwarded15 = load %struct.__block_byref_bl_var1.6** %byref.forwarding14
  %bl_var1 = getelementptr inbounds %struct.__block_byref_bl_var1.6* %byref.addr.forwarded15, i32 0, i32 4
  store i8* null, i8** %bl_var1, align 8
  %block.capture.addr16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 11
  %8 = load i32* %block.capture.addr16, align 4
  %conv17 = sitofp i32 %8 to double
  %block.capture.addr18 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 9
  %9 = load double* %block.capture.addr18, align 8
  %add19 = fadd double %conv17, %9
  %conv20 = fptosi double %add19 to i32
  call void @y(i32 %conv20)
  %block.capture.addr21 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %10 = load i8** %block.capture.addr21
  %byref.addr22 = bitcast i8* %10 to %struct.__block_byref_byref_bab.7*
  %byref.forwarding23 = getelementptr inbounds %struct.__block_byref_byref_bab.7* %byref.addr22, i32 0, i32 1
  %byref.addr.forwarded24 = load %struct.__block_byref_byref_bab.7** %byref.forwarding23
  %byref_bab = getelementptr inbounds %struct.__block_byref_byref_bab.7* %byref.addr.forwarded24, i32 0, i32 6
  %11 = load i8** %byref_bab, align 8
  call void @x(i8* %11)
  ret void
}

define internal void @__copy_helper_block_7(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  store i8* %1, i8** %.addr1, align 8
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  %6 = bitcast i8** %5 to i8*
  call void @_Block_object_assign(i8* %6, i8* %blockcopy.src, i32 8)
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.source, i32 0, i32 6
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 6
  %blockcopy.src2 = load i8** %7
  %9 = bitcast i8** %8 to i8*
  call void @_Block_object_assign(i8* %9, i8* %blockcopy.src2, i32 3)
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.source, i32 0, i32 7
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 7
  %blockcopy.src3 = load i8** %10
  %12 = bitcast i8** %11 to i8*
  call void @_Block_object_assign(i8* %12, i8* %blockcopy.src3, i32 3)
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.source, i32 0, i32 8
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 8
  %blockcopy.src4 = load i8** %13
  %15 = bitcast i8** %14 to i8*
  call void @_Block_object_assign(i8* %15, i8* %blockcopy.src4, i32 8)
  %16 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.source, i32 0, i32 10
  %17 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block.dest, i32 0, i32 10
  %blockcopy.src5 = load i8** %16
  %18 = bitcast i8** %17 to i8*
  call void @_Block_object_assign(i8* %18, i8* %blockcopy.src5, i32 8)
  ret void
}

define internal void @__destroy_helper_block_8(i8*) {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 5
  %3 = load i8** %2
  call void @_Block_object_dispose(i8* %3, i32 8)
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 6
  %5 = load i8** %4
  call void @_Block_object_dispose(i8* %5, i32 3)
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 7
  %7 = load i8** %6
  call void @_Block_object_dispose(i8* %7, i32 3)
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 8
  %9 = load i8** %8
  call void @_Block_object_dispose(i8* %9, i32 8)
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, i8*, i8*, double, i8*, i32, i16, i8, i8, i8 }>* %block, i32 0, i32 10
  %11 = load i8** %10
  call void @_Block_object_dispose(i8* %11, i32 8)
  ret void
}

define internal void @__f_block_invoke11(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S }>* %block, i32 0, i32 5
  %o1 = getelementptr inbounds %struct.S* %block.capture.addr, i32 0, i32 1
  %0 = load i8** %o1, align 8
  call void @x(i8* %0)
  ret void
}

declare i8* @objc_memmove_collectable(i8*, i8*, i64)

define void @Test5() nounwind {
entry:
  %ui = alloca %union.U, align 8
  %s2 = alloca %struct.S5, align 8
  %u2 = alloca %union.U, align 8
  %c = alloca void (...)*, align 8
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>, align 8
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 1
  store i32 1073741824, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__Test5_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @__block_descriptor_tmp15 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 5
  %0 = bitcast %struct.S5* %block.captured to i8*
  %1 = bitcast %struct.S5* %s2 to i8*
  %2 = call i8* @objc_memmove_collectable(i8* %0, i8* %1, i64 48)
  %block.captured1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 6
  %3 = bitcast %union.U* %block.captured1 to i8*
  %4 = bitcast %union.U* %u2 to i8*
  %5 = call i8* @objc_memmove_collectable(i8* %3, i8* %4, i64 8)
  %6 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block to void ()*
  %7 = bitcast void ()* %6 to void (...)*
  store void (...)* %7, void (...)** %c, align 8
  %8 = load void (...)** %c, align 8
  %block.literal = bitcast void (...)* %8 to %struct.__block_literal_generic*
  %9 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %10 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %11 = load i8** %9
  %12 = bitcast i8* %11 to void (i8*, ...)*
  call void (i8*, ...)* %12(i8* %10)
  ret void
}

define internal void @__Test5_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 5
  %ui = getelementptr inbounds %struct.S5* %block.capture.addr, i32 0, i32 4
  %o1 = bitcast %union.UI* %ui to i8**
  %0 = load i8** %o1, align 8
  call void @x(i8* %0)
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, %struct.S5, %union.U }>* %block, i32 0, i32 6
  %o12 = bitcast %union.U* %block.capture.addr1 to i8**
  %1 = load i8** %o12, align 8
  call void @x(i8* %1)
  ret void
}

define void @notifyBlock(i8* %dependentBlock) nounwind {
entry:
  %dependentBlock.addr = alloca i8*, align 8
  %singleObservationToken = alloca i8*, align 8
  %token = alloca i8*, align 8
  %b = alloca void (...)*, align 8
  %wrapperBlock = alloca void (...)*, align 8
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>, align 8
  store i8* %dependentBlock, i8** %dependentBlock.addr, align 8
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 1
  store i32 1107296256, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__notifyBlock_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8*, i8*, i8* }* @__block_descriptor_tmp19 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 5
  %0 = load i8** %singleObservationToken, align 8
  %weakassign = call i8* @objc_assign_strongCast(i8* %0, i8** %block.captured)
  %block.captured1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 6
  %1 = load i8** %token, align 8
  %weakassign2 = call i8* @objc_assign_strongCast(i8* %1, i8** %block.captured1)
  %block.captured3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 7
  %2 = load void (...)** %b, align 8
  %3 = bitcast void (...)* %2 to i8*
  %4 = bitcast void (...)** %block.captured3 to i8**
  %weakassign4 = call i8* @objc_assign_strongCast(i8* %3, i8** %4)
  %5 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block to void ()*
  %6 = bitcast void ()* %5 to void (...)*
  store void (...)* %6, void (...)** %wrapperBlock, align 8
  %7 = load void (...)** %wrapperBlock, align 8
  %block.literal = bitcast void (...)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %8
  %11 = bitcast i8* %10 to void (i8*, ...)*
  call void (i8*, ...)* %11(i8* %9)
  ret void
}

define internal void @__notifyBlock_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 5
  %0 = load i8** %block.capture.addr, align 8
  call void @CFRelease(i8* %0)
  %block.capture.addr1 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 5
  %1 = load i8** %block.capture.addr1, align 8
  call void @CFRelease(i8* %1)
  %block.capture.addr2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 6
  %2 = load i8** %block.capture.addr2, align 8
  call void @CFRelease(i8* %2)
  %block.capture.addr3 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 5
  %3 = load i8** %block.capture.addr3, align 8
  call void @CFRelease(i8* %3)
  %block.capture.addr4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 7
  %4 = load void (...)** %block.capture.addr4, align 8
  %block.literal = bitcast void (...)* %4 to %struct.__block_literal_generic*
  %5 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %6 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %7 = load i8** %5
  %8 = bitcast i8* %7 to void (i8*, ...)*
  call void (i8*, ...)* %8(i8* %6)
  ret void
}

declare void @CFRelease(i8*)

define internal void @__copy_helper_block_16(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  store i8* %1, i8** %.addr1, align 8
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  %6 = bitcast i8** %5 to i8*
  call void @_Block_object_assign(i8* %6, i8* %blockcopy.src, i32 3)
  %7 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block.source, i32 0, i32 6
  %8 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block.dest, i32 0, i32 6
  %blockcopy.src2 = load i8** %7
  %9 = bitcast i8** %8 to i8*
  call void @_Block_object_assign(i8* %9, i8* %blockcopy.src2, i32 3)
  %10 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block.source, i32 0, i32 7
  %11 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block.dest, i32 0, i32 7
  %blockcopy.src3 = load void (...)** %10
  %12 = bitcast void (...)* %blockcopy.src3 to i8*
  %13 = bitcast void (...)** %11 to i8*
  call void @_Block_object_assign(i8* %13, i8* %12, i32 7)
  ret void
}

define internal void @__destroy_helper_block_17(i8*) {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 5
  %3 = load i8** %2
  call void @_Block_object_dispose(i8* %3, i32 3)
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 6
  %5 = load i8** %4
  call void @_Block_object_dispose(i8* %5, i32 3)
  %6 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8*, i8*, void (...)* }>* %block, i32 0, i32 7
  %7 = load void (...)** %6
  %8 = bitcast void (...)* %7 to i8*
  call void @_Block_object_dispose(i8* %8, i32 7)
  ret void
}

define void @test_empty_block() nounwind {
entry:
  %wrapperBlock = alloca void (...)*, align 8
  store void (...)* bitcast ({ i8**, i32, i32, i8*, %struct.__block_descriptor* }* @__block_literal_global to void (...)*), void (...)** %wrapperBlock, align 8
  %0 = load void (...)** %wrapperBlock, align 8
  %block.literal = bitcast void (...)* %0 to %struct.__block_literal_generic*
  %1 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %2 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %3 = load i8** %1
  %4 = bitcast i8* %3 to void (i8*, ...)*
  call void (i8*, ...)* %4(i8* %2)
  ret void
}

define internal void @__test_empty_block_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor* }>*
  ret void
}

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = metadata !{i32 1, metadata !"Objective-C Version", i32 1}
!1 = metadata !{i32 1, metadata !"Objective-C Image Info Version", i32 0}
!2 = metadata !{i32 1, metadata !"Objective-C Image Info Section", metadata !"__OBJC, __image_info,regular"}
!3 = metadata !{i32 1, metadata !"Objective-C Garbage Collection", i32 2}
