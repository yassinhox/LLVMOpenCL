; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/arc-foreach.m'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%0 = type opaque
%1 = type opaque
%struct.__objcFastEnumerationState = type { i64, i8**, i64*, [5 x i64] }
%struct.__block_descriptor = type { i64, i64 }

@"\01L_OBJC_METH_VAR_NAME_" = internal global [43 x i8] c"countByEnumeratingWithState:objects:count:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_" = internal global i8* getelementptr inbounds ([43 x i8]* @"\01L_OBJC_METH_VAR_NAME_", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@_NSConcreteStackBlock = external global i8*
@.str = private unnamed_addr constant [6 x i8] c"v8@?0\00", align 1
@__block_descriptor_tmp = internal constant { i64, i64, i8*, i8*, i8*, i64 } { i64 0, i64 40, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_ to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_ to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i64 256 }
@__block_descriptor_tmp3 = internal constant { i64, i64, i8*, i8*, i8*, i64 } { i64 0, i64 40, i8* bitcast (void (i8*, i8*)* @__copy_helper_block_1 to i8*), i8* bitcast (void (i8*)* @__destroy_helper_block_2 to i8*), i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i64 1 }
@"\01L_OBJC_METH_VAR_NAME_4" = internal global [6 x i8] c"array\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_5" = internal global i8* getelementptr inbounds ([6 x i8]* @"\01L_OBJC_METH_VAR_NAME_4", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([43 x i8]* @"\01L_OBJC_METH_VAR_NAME_", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_" to i8*), i8* getelementptr inbounds ([6 x i8]* @"\01L_OBJC_METH_VAR_NAME_4", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_5" to i8*)], section "llvm.metadata"

define void @test0(%0* %array) nounwind {
entry:
  %array.addr = alloca %0*, align 8
  %x = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>, align 8
  %0 = bitcast %0* %array to i8*
  %1 = call i8* @objc_retain(i8* %0) nounwind
  %2 = bitcast i8* %1 to %0*
  store %0* %2, %0** %array.addr, align 8
  %3 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 64, i32 8, i1 false)
  %4 = load %0** %array.addr, align 8
  %5 = bitcast %0* %4 to i8*
  %6 = call i8* @objc_retain(i8* %5) nounwind
  %7 = bitcast i8* %6 to %0*
  %8 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %9 = bitcast %0* %7 to i8*
  %call = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %9, i8* %8, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %17, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call2, %forcoll.refetch ]
  %mutationsptr1 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr1
  %10 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %10, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %11 = bitcast %0* %7 to i8*
  call void @objc_enumerationMutation(i8* %11)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %12 = load i8** %currentitem.ptr
  store i8* %12, i8** %x, align 8
  %13 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__test0_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8*, i8*, i64 }* @__block_descriptor_tmp to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  %14 = load i8** %x, align 8
  %15 = call i8* @objc_retain(i8* %14) nounwind
  store i8* %15, i8** %block.captured, align 8
  %16 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block to void ()*
  call void @use_block(void ()* %16)
  call void @objc_storeStrong(i8** %13, i8* null) nounwind
  br label %forcoll.next

forcoll.next:                                     ; preds = %forcoll.notmutated
  %17 = add i64 %forcoll.index, 1
  %18 = icmp ult i64 %17, %forcoll.count
  br i1 %18, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %19 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %20 = bitcast %0* %7 to i8*
  %call2 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %20, i8* %19, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %21 = icmp eq i64 %call2, 0
  br i1 %21, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  %22 = bitcast %0* %7 to i8*
  call void @objc_release(i8* %22) nounwind
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  %23 = bitcast %0** %array.addr to i8**
  call void @objc_storeStrong(i8** %23, i8* null) nounwind
  ret void
}

declare extern_weak i8* @objc_retain(i8*) nonlazybind

declare void @objc_enumerationMutation(i8*)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i8* @objc_msgSend(i8*, i8*, ...) nonlazybind

declare void @use_block(void ()*)

define internal void @__test0_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  %0 = load i8** %block.capture.addr, align 8
  call void @use(i8* %0)
  ret void
}

declare void @use(i8*)

define internal void @__copy_helper_block_(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  store i8* %1, i8** %.addr1, align 8
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block.dest, i32 0, i32 5
  %blockcopy.src = load i8** %4
  store i8* null, i8** %5
  call void @objc_storeStrong(i8** %5, i8* %blockcopy.src) nounwind
  ret void
}

declare extern_weak void @objc_storeStrong(i8**, i8*)

define internal void @__destroy_helper_block_(i8*) {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  call void @objc_storeStrong(i8** %2, i8* null) nounwind
  ret void
}

declare extern_weak void @objc_release(i8*) nonlazybind

define void @test1(%0* %array) nounwind {
entry:
  %array.addr = alloca %0*, align 8
  %x = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %block = alloca <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>, align 8
  %0 = bitcast %0* %array to i8*
  %1 = call i8* @objc_retain(i8* %0) nounwind
  %2 = bitcast i8* %1 to %0*
  store %0* %2, %0** %array.addr, align 8
  %3 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 64, i32 8, i1 false)
  %4 = load %0** %array.addr, align 8
  %5 = bitcast %0* %4 to i8*
  %6 = call i8* @objc_retain(i8* %5) nounwind
  %7 = bitcast i8* %6 to %0*
  %8 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %9 = bitcast %0* %7 to i8*
  %call = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %9, i8* %8, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %18, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call2, %forcoll.refetch ]
  %mutationsptr1 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr1
  %10 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %10, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %11 = bitcast %0* %7 to i8*
  call void @objc_enumerationMutation(i8* %11)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %12 = load i8** %currentitem.ptr
  %13 = call i8* @objc_initWeak(i8** %x, i8* %12) nounwind
  %14 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  %block.isa = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 0
  store i8* bitcast (i8** @_NSConcreteStackBlock to i8*), i8** %block.isa
  %block.flags = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 1
  store i32 -1040187392, i32* %block.flags
  %block.reserved = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 2
  store i32 0, i32* %block.reserved
  %block.invoke = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 3
  store i8* bitcast (void (i8*)* @__test1_block_invoke to i8*), i8** %block.invoke
  %block.descriptor = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 4
  store %struct.__block_descriptor* bitcast ({ i64, i64, i8*, i8*, i8*, i64 }* @__block_descriptor_tmp3 to %struct.__block_descriptor*), %struct.__block_descriptor** %block.descriptor
  %block.captured = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  %15 = call i8* @objc_loadWeak(i8** %x) nounwind
  %16 = call i8* @objc_initWeak(i8** %block.captured, i8* %15) nounwind
  %17 = bitcast <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block to void ()*
  call void @use_block(void ()* %17)
  call void @objc_destroyWeak(i8** %14) nounwind
  call void @objc_destroyWeak(i8** %x) nounwind
  br label %forcoll.next

forcoll.next:                                     ; preds = %forcoll.notmutated
  %18 = add i64 %forcoll.index, 1
  %19 = icmp ult i64 %18, %forcoll.count
  br i1 %19, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %20 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %21 = bitcast %0* %7 to i8*
  %call2 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %21, i8* %20, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %22 = icmp eq i64 %call2, 0
  br i1 %22, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  %23 = bitcast %0* %7 to i8*
  call void @objc_release(i8* %23) nounwind
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  %24 = bitcast %0** %array.addr to i8**
  call void @objc_storeStrong(i8** %24, i8* null) nounwind
  ret void
}

declare extern_weak i8* @objc_initWeak(i8**, i8*)

define internal void @__test1_block_invoke(i8* %.block_descriptor) nounwind {
entry:
  %block = bitcast i8* %.block_descriptor to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %block.capture.addr = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  %0 = call i8* @objc_loadWeak(i8** %block.capture.addr) nounwind
  call void @use(i8* %0)
  ret void
}

declare extern_weak i8* @objc_loadWeak(i8**)

define internal void @__copy_helper_block_1(i8*, i8*) {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  store i8* %1, i8** %.addr1, align 8
  %2 = load i8** %.addr1
  %block.source = bitcast i8* %2 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %3 = load i8** %.addr
  %block.dest = bitcast i8* %3 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %4 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block.source, i32 0, i32 5
  %5 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block.dest, i32 0, i32 5
  call void @objc_copyWeak(i8** %5, i8** %4) nounwind
  ret void
}

declare extern_weak void @objc_copyWeak(i8**, i8**)

define internal void @__destroy_helper_block_2(i8*) {
entry:
  %.addr = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  %1 = load i8** %.addr
  %block = bitcast i8* %1 to <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>*
  %2 = getelementptr inbounds <{ i8*, i32, i32, i8*, %struct.__block_descriptor*, i8* }>* %block, i32 0, i32 5
  call void @objc_destroyWeak(i8** %2) nounwind
  ret void
}

declare extern_weak void @objc_destroyWeak(i8**)

define void @test2(%1* %a) nounwind {
entry:
  %a.addr = alloca %1*, align 8
  %x = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %0 = bitcast %1* %a to i8*
  %1 = call i8* @objc_retain(i8* %0) nounwind
  %2 = bitcast i8* %1 to %1*
  store %1* %2, %1** %a.addr, align 8
  %3 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 64, i32 8, i1 false)
  %4 = load %1** %a.addr, align 8
  %5 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_5", !invariant.load !4
  %6 = bitcast %1* %4 to i8*
  %call = call %0* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %0* (i8*, i8*)*)(i8* %6, i8* %5)
  %7 = bitcast %0* %call to i8*
  %8 = call i8* @objc_retainAutoreleasedReturnValue(i8* %7) nounwind
  %9 = bitcast i8* %8 to %0*
  %10 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %11 = bitcast %0* %9 to i8*
  %call1 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %11, i8* %10, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call1, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %16, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call1, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call3, %forcoll.refetch ]
  %mutationsptr2 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr2
  %12 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %12, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %13 = bitcast %0* %9 to i8*
  call void @objc_enumerationMutation(i8* %13)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %14 = load i8** %currentitem.ptr
  store i8* %14, i8** %x, align 8
  %15 = load i8** %x, align 8
  call void @use(i8* %15)
  br label %forcoll.next

forcoll.next:                                     ; preds = %forcoll.notmutated
  %16 = add i64 %forcoll.index, 1
  %17 = icmp ult i64 %16, %forcoll.count
  br i1 %17, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %18 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %19 = bitcast %0* %9 to i8*
  %call3 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %19, i8* %18, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %20 = icmp eq i64 %call3, 0
  br i1 %20, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  %21 = bitcast %0* %9 to i8*
  call void @objc_release(i8* %21) nounwind
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  %22 = bitcast %1** %a.addr to i8**
  call void @objc_storeStrong(i8** %22, i8* null) nounwind
  ret void
}

declare extern_weak i8* @objc_retainAutoreleasedReturnValue(i8*)

define void @test3(%0* %array) nounwind {
entry:
  %array.addr = alloca %0*, align 8
  %x = alloca i8*, align 8
  %state.ptr = alloca %struct.__objcFastEnumerationState, align 8
  %items.ptr = alloca [16 x i8*], align 8
  %0 = bitcast %0* %array to i8*
  %1 = call i8* @objc_retain(i8* %0) nounwind
  %2 = bitcast i8* %1 to %0*
  store %0* %2, %0** %array.addr, align 8
  %3 = bitcast %struct.__objcFastEnumerationState* %state.ptr to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 64, i32 8, i1 false)
  %4 = load %0** %array.addr, align 8
  %5 = bitcast %0* %4 to i8*
  %6 = call i8* @objc_retain(i8* %5) nounwind
  %7 = bitcast i8* %6 to %0*
  %8 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %9 = bitcast %0* %7 to i8*
  %call = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %9, i8* %8, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %iszero = icmp eq i64 %call, 0
  br i1 %iszero, label %forcoll.empty, label %forcoll.loopinit

forcoll.loopinit:                                 ; preds = %entry
  %mutationsptr.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 2
  %mutationsptr = load i64** %mutationsptr.ptr
  %forcoll.initial-mutations = load i64* %mutationsptr
  br label %forcoll.loopbody

forcoll.loopbody:                                 ; preds = %forcoll.refetch, %forcoll.next, %forcoll.loopinit
  %forcoll.index = phi i64 [ 0, %forcoll.loopinit ], [ %15, %forcoll.next ], [ 0, %forcoll.refetch ]
  %forcoll.count = phi i64 [ %call, %forcoll.loopinit ], [ %forcoll.count, %forcoll.next ], [ %call2, %forcoll.refetch ]
  %mutationsptr1 = load i64** %mutationsptr.ptr
  %statemutations = load i64* %mutationsptr1
  %10 = icmp eq i64 %statemutations, %forcoll.initial-mutations
  br i1 %10, label %forcoll.notmutated, label %forcoll.mutated

forcoll.mutated:                                  ; preds = %forcoll.loopbody
  %11 = bitcast %0* %7 to i8*
  call void @objc_enumerationMutation(i8* %11)
  br label %forcoll.notmutated

forcoll.notmutated:                               ; preds = %forcoll.mutated, %forcoll.loopbody
  %stateitems.ptr = getelementptr inbounds %struct.__objcFastEnumerationState* %state.ptr, i32 0, i32 1
  %stateitems = load i8*** %stateitems.ptr
  %currentitem.ptr = getelementptr i8** %stateitems, i64 %forcoll.index
  %12 = load i8** %currentitem.ptr
  store i8* %12, i8** %x, align 8
  %13 = load i8** %x, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %forcoll.notmutated
  br label %forcoll.next

if.end:                                           ; preds = %forcoll.notmutated
  %14 = load i8** %x, align 8
  call void @use(i8* %14)
  br label %forcoll.next

forcoll.next:                                     ; preds = %if.end, %if.then
  %15 = add i64 %forcoll.index, 1
  %16 = icmp ult i64 %15, %forcoll.count
  br i1 %16, label %forcoll.loopbody, label %forcoll.refetch

forcoll.refetch:                                  ; preds = %forcoll.next
  %17 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %18 = bitcast %0* %7 to i8*
  %call2 = call i64 bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i64 (i8*, i8*, %struct.__objcFastEnumerationState*, [16 x i8*]*, i64)*)(i8* %18, i8* %17, %struct.__objcFastEnumerationState* %state.ptr, [16 x i8*]* %items.ptr, i64 16)
  %19 = icmp eq i64 %call2, 0
  br i1 %19, label %forcoll.empty, label %forcoll.loopbody

forcoll.empty:                                    ; preds = %forcoll.refetch, %entry
  %20 = bitcast %0* %7 to i8*
  call void @objc_release(i8* %20) nounwind
  br label %forcoll.end

forcoll.end:                                      ; preds = %forcoll.empty
  %21 = bitcast %0** %array.addr to i8**
  call void @objc_storeStrong(i8** %21, i8* null) nounwind
  ret void
}

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = metadata !{i32 1, metadata !"Objective-C Version", i32 2}
!1 = metadata !{i32 1, metadata !"Objective-C Image Info Version", i32 0}
!2 = metadata !{i32 1, metadata !"Objective-C Image Info Section", metadata !"__DATA, __objc_imageinfo, regular, no_dead_strip"}
!3 = metadata !{i32 4, metadata !"Objective-C Garbage Collection", i32 0}
!4 = metadata !{}
