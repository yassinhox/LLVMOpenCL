; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/local-static-block.m'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%0 = type opaque
%struct.__block_descriptor = type { i64, i64 }
%struct._objc_module = type { i64, i64, i8*, %struct._objc_symtab* }
%struct._objc_symtab = type { i64, i8*, i16, i16, [0 x i8*] }
%struct.__objcFastEnumerationState = type { i64, i8**, i64*, [5 x i64] }
%struct.__block_literal_generic = type { i8*, i32, i32, i8*, %struct.__block_descriptor* }

@"\01L_OBJC_METH_VAR_NAME_" = internal global [43 x i8] c"countByEnumeratingWithState:objects:count:\00", section "__TEXT,__cstring,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_" = internal global i8* getelementptr inbounds ([43 x i8]* @"\01L_OBJC_METH_VAR_NAME_", i32 0, i32 0), section "__OBJC,__message_refs,literal_pointers,no_dead_strip", align 4
@ArrayRecurs = internal global %0* (%0*, i64)* bitcast ({ i8**, i32, i32, i8*, %struct.__block_descriptor* }* @__block_literal_global to %0* (%0*, i64)*), align 8
@_NSConcreteGlobalBlock = external global i8*
@.str = private unnamed_addr constant [12 x i8] c"@24@?0@8Q16\00", align 1
@__block_descriptor_tmp = internal constant { i64, i64, i8*, i8* } { i64 0, i64 32, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i8* null }
@__block_literal_global = internal constant { i8**, i32, i32, i8*, %struct.__block_descriptor* } { i8** @_NSConcreteGlobalBlock, i32 1342177280, i32 0, i8* bitcast (%0* (i8*, %0*, i64)* @ArrayRecurs_block_invoke to i8*), %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @__block_descriptor_tmp to %struct.__block_descriptor*) }, align 8
@FUNC.ArrayRecurs = internal global %0* (%0*, i64)* bitcast ({ i8**, i32, i32, i8*, %struct.__block_descriptor* }* @__block_literal_global2 to %0* (%0*, i64)*), align 8
@__block_descriptor_tmp1 = internal constant { i64, i64, i8*, i8* } { i64 0, i64 32, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i8* null }
@__block_literal_global2 = internal constant { i8**, i32, i32, i8*, %struct.__block_descriptor* } { i8** @_NSConcreteGlobalBlock, i32 1342177280, i32 0, i8* bitcast (%0* (i8*, %0*, i64)* @ArrayRecurs_block_invoke_2 to i8*), %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @__block_descriptor_tmp1 to %struct.__block_descriptor*) }, align 8
@FUNC.ArrayRecurs3 = internal global %0* (%0*, i64)* bitcast ({ i8**, i32, i32, i8*, %struct.__block_descriptor* }* @__block_literal_global5 to %0* (%0*, i64)*), align 8
@__block_descriptor_tmp4 = internal constant { i64, i64, i8*, i8* } { i64 0, i64 32, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i8* null }
@__block_literal_global5 = internal constant { i8**, i32, i32, i8*, %struct.__block_descriptor* } { i8** @_NSConcreteGlobalBlock, i32 1342177280, i32 0, i8* bitcast (%0* (i8*, %0*, i64)* @ArrayRecurs_block_invoke_3 to i8*), %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @__block_descriptor_tmp4 to %struct.__block_descriptor*) }, align 8
@FUNC1.ArrayRecurs = internal global %0* (%0*, i64)* bitcast ({ i8**, i32, i32, i8*, %struct.__block_descriptor* }* @__block_literal_global7 to %0* (%0*, i64)*), align 8
@__block_descriptor_tmp6 = internal constant { i64, i64, i8*, i8* } { i64 0, i64 32, i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i8* null }
@__block_literal_global7 = internal constant { i8**, i32, i32, i8*, %struct.__block_descriptor* } { i8** @_NSConcreteGlobalBlock, i32 1342177280, i32 0, i8* bitcast (%0* (i8*, %0*, i64)* @ArrayRecurs_block_invoke_4 to i8*), %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8* }* @__block_descriptor_tmp6 to %struct.__block_descriptor*) }, align 8
@"\01L_OBJC_CLASS_NAME_" = internal global [1 x i8] zeroinitializer, section "__TEXT,__cstring,cstring_literals", align 1
@"\01L_OBJC_MODULES" = internal global %struct._objc_module { i64 7, i64 32, i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_", i32 0, i32 0), %struct._objc_symtab* null }, section "__OBJC,__module_info,regular,no_dead_strip", align 4
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([43 x i8]* @"\01L_OBJC_METH_VAR_NAME_", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_" to i8*), i8* getelementptr inbounds ([1 x i8]* @"\01L_OBJC_CLASS_NAME_", i32 0, i32 0), i8* bitcast (%struct._objc_module* @"\01L_OBJC_MODULES" to i8*)], section "llvm.metadata"

define internal %0* @ArrayRecurs_block_invoke(i8* %.block_descriptor, %0* %addresses, i64 %level) nounwind {
entry:
  %addresses.addr = alloca %0*, align 8
  %level.addr = alloca i64, align 8
  %rawAddress = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %separatedAddresses = alloca %0*, align 8
  store %0* %addresses, %0** %addresses.addr, align 8
  store i64 %level, i64* %level.addr, align 8
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor* }>*
  %0 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = load %0** %addresses.addr, align 8
  %2 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %3 = bitcast %0* %1 to i8*
  %call = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %3, i8* %2, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %15, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call3, %forcoll.refetch ]
  %mutationsptr1 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr1
  %4 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %4, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %5 = bitcast %0* %1 to i8*
  call void @objc_enumerationMutation(i8* %5)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %6 = load i8** %currentitem.ptr
  store i8* %6, i8** %rawAddress, align 8
  store %0* null, %0** %separatedAddresses, align 8
  %7 = load %0* (%0*, i64)** @ArrayRecurs, align 8
  %block.literal = bitcast %0* (%0*, i64)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %rawAddress, align 8
  %11 = bitcast i8* %10 to %0*
  %12 = load i64* %level.addr, align 8
  %add = add i64 %12, 1
  %13 = load i8** %8
  %14 = bitcast i8* %13 to %0* (i8*, %0*, i64)*
  %call2 = call %0* %14(i8* %9, %0* %11, i64 %add)
  store %0* %call2, %0** %separatedAddresses, align 8
  br label %forcoll.next

forcoll.next:                                     ; preds = %forcoll.notmutated
  %15 = add i64 %forcoll.index, 1
  %16 = icmp ult i64 %15, %forcoll.count
  br i1 %16, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %17 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %18 = bitcast %0* %1 to i8*
  %call3 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %18, i8* %17, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %19 = icmp eq i64 %call3, 0
  br i1 %19, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  ret %0* null
}

declare void @objc_enumerationMutation(i8*)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i8* @objc_msgSend(i8*, i8*, ...) nonlazybind

define void @FUNC() nounwind {
entry:
  %0 = load %0* (%0*, i64)** @FUNC.ArrayRecurs, align 8
  %tobool = icmp ne %0* (%0*, i64)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define internal %0* @ArrayRecurs_block_invoke_2(i8* %.block_descriptor, %0* %addresses, i64 %level) nounwind {
entry:
  %addresses.addr = alloca %0*, align 8
  %level.addr = alloca i64, align 8
  %rawAddress = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %separatedAddresses = alloca %0*, align 8
  store %0* %addresses, %0** %addresses.addr, align 8
  store i64 %level, i64* %level.addr, align 8
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor* }>*
  %0 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = load %0** %addresses.addr, align 8
  %2 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %3 = bitcast %0* %1 to i8*
  %call = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %3, i8* %2, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %15, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call3, %forcoll.refetch ]
  %mutationsptr1 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr1
  %4 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %4, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %5 = bitcast %0* %1 to i8*
  call void @objc_enumerationMutation(i8* %5)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %6 = load i8** %currentitem.ptr
  store i8* %6, i8** %rawAddress, align 8
  store %0* null, %0** %separatedAddresses, align 8
  %7 = load %0* (%0*, i64)** @FUNC.ArrayRecurs, align 8
  %block.literal = bitcast %0* (%0*, i64)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %rawAddress, align 8
  %11 = bitcast i8* %10 to %0*
  %12 = load i64* %level.addr, align 8
  %add = add i64 %12, 1
  %13 = load i8** %8
  %14 = bitcast i8* %13 to %0* (i8*, %0*, i64)*
  %call2 = call %0* %14(i8* %9, %0* %11, i64 %add)
  store %0* %call2, %0** %separatedAddresses, align 8
  br label %forcoll.next

forcoll.next:                                     ; preds = %forcoll.notmutated
  %15 = add i64 %forcoll.index, 1
  %16 = icmp ult i64 %15, %forcoll.count
  br i1 %16, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %17 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %18 = bitcast %0* %1 to i8*
  %call3 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %18, i8* %17, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %19 = icmp eq i64 %call3, 0
  br i1 %19, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  ret %0* null
}

define internal %0* @ArrayRecurs_block_invoke_3(i8* %.block_descriptor, %0* %addresses, i64 %level) nounwind {
entry:
  %addresses.addr = alloca %0*, align 8
  %level.addr = alloca i64, align 8
  %rawAddress = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %separatedAddresses = alloca %0*, align 8
  store %0* %addresses, %0** %addresses.addr, align 8
  store i64 %level, i64* %level.addr, align 8
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor* }>*
  %0 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = load %0** %addresses.addr, align 8
  %2 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %3 = bitcast %0* %1 to i8*
  %call = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %3, i8* %2, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %15, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call3, %forcoll.refetch ]
  %mutationsptr1 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr1
  %4 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %4, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %5 = bitcast %0* %1 to i8*
  call void @objc_enumerationMutation(i8* %5)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %6 = load i8** %currentitem.ptr
  store i8* %6, i8** %rawAddress, align 8
  store %0* null, %0** %separatedAddresses, align 8
  %7 = load %0* (%0*, i64)** @FUNC.ArrayRecurs3, align 8
  %block.literal = bitcast %0* (%0*, i64)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %rawAddress, align 8
  %11 = bitcast i8* %10 to %0*
  %12 = load i64* %level.addr, align 8
  %add = add i64 %12, 1
  %13 = load i8** %8
  %14 = bitcast i8* %13 to %0* (i8*, %0*, i64)*
  %call2 = call %0* %14(i8* %9, %0* %11, i64 %add)
  store %0* %call2, %0** %separatedAddresses, align 8
  br label %forcoll.next

forcoll.next:                                     ; preds = %forcoll.notmutated
  %15 = add i64 %forcoll.index, 1
  %16 = icmp ult i64 %15, %forcoll.count
  br i1 %16, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %17 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %18 = bitcast %0* %1 to i8*
  %call3 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %18, i8* %17, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %19 = icmp eq i64 %call3, 0
  br i1 %19, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  ret %0* null
}

define void @FUNC1() nounwind {
entry:
  ret void
}

define internal %0* @ArrayRecurs_block_invoke_4(i8* %.block_descriptor, %0* %addresses, i64 %level) nounwind {
entry:
  %addresses.addr = alloca %0*, align 8
  %level.addr = alloca i64, align 8
  %rawAddress = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %separatedAddresses = alloca %0*, align 8
  store %0* %addresses, %0** %addresses.addr, align 8
  store i64 %level, i64* %level.addr, align 8
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor* }>*
  %0 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = load %0** %addresses.addr, align 8
  %2 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %3 = bitcast %0* %1 to i8*
  %call = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %3, i8* %2, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %15, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call3, %forcoll.refetch ]
  %mutationsptr1 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr1
  %4 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %4, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %5 = bitcast %0* %1 to i8*
  call void @objc_enumerationMutation(i8* %5)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %6 = load i8** %currentitem.ptr
  store i8* %6, i8** %rawAddress, align 8
  store %0* null, %0** %separatedAddresses, align 8
  %7 = load %0* (%0*, i64)** @FUNC1.ArrayRecurs, align 8
  %block.literal = bitcast %0* (%0*, i64)* %7 to %struct.__block_literal_generic*
  %8 = getelementptr inbounds %struct.__block_literal_generic* %block.literal, i32 0, i32 3
  %9 = bitcast %struct.__block_literal_generic* %block.literal to i8*
  %10 = load i8** %rawAddress, align 8
  %11 = bitcast i8* %10 to %0*
  %12 = load i64* %level.addr, align 8
  %add = add i64 %12, 1
  %13 = load i8** %8
  %14 = bitcast i8* %13 to %0* (i8*, %0*, i64)*
  %call2 = call %0* %14(i8* %9, %0* %11, i64 %add)
  store %0* %call2, %0** %separatedAddresses, align 8
  br label %forcoll.next

forcoll.next:                                     ; preds = %forcoll.notmutated
  %15 = add i64 %forcoll.index, 1
  %16 = icmp ult i64 %15, %forcoll.count
  br i1 %16, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %17 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_"
  %18 = bitcast %0* %1 to i8*
  %call3 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %18, i8* %17, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %19 = icmp eq i64 %call3, 0
  br i1 %19, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  ret %0* null
}

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = metadata !{i32 1, metadata !"Objective-C Version", i32 1}
!1 = metadata !{i32 1, metadata !"Objective-C Image Info Version", i32 0}
!2 = metadata !{i32 1, metadata !"Objective-C Image Info Section", metadata !"__OBJC, __image_info,regular"}
!3 = metadata !{i32 4, metadata !"Objective-C Garbage Collection", i32 0}
