; ModuleID = '/home/jazouani/llvm/build/tools/clang/test/Rewriter/Output/rewrite-static-block.mm.tmp-rw.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__myblock_block_desc_0 = type { i64, i64 }
%struct.__myblock_block_impl_0 = type { %struct.__block_impl, %struct.__myblock_block_desc_0* }
%struct.__block_impl = type { i8*, i32, i32, i8* }

@_ZL7myblock = internal global void ()* null, align 8
@_ZL27__myblock_block_desc_0_DATA = internal global %struct.__myblock_block_desc_0 { i64 0, i64 32 }, align 8
@_NSConcreteGlobalBlock = external global [32 x i8*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() nounwind section ".text.startup" {
entry:
  %tmp = alloca %struct.__myblock_block_impl_0, align 8
  call void @_ZN22__myblock_block_impl_0C1EPvP22__myblock_block_desc_0i(%struct.__myblock_block_impl_0* %tmp, i8* bitcast (void (%struct.__myblock_block_impl_0*)* @_ZL22__myblock_block_func_0P22__myblock_block_impl_0 to i8*), %struct.__myblock_block_desc_0* @_ZL27__myblock_block_desc_0_DATA, i32 0)
  %0 = bitcast %struct.__myblock_block_impl_0* %tmp to void ()*
  store void ()* %0, void ()** @_ZL7myblock, align 8
  ret void
}

define linkonce_odr void @_ZN22__myblock_block_impl_0C1EPvP22__myblock_block_desc_0i(%struct.__myblock_block_impl_0* %this, i8* %fp, %struct.__myblock_block_desc_0* %desc, i32 %flags) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %struct.__myblock_block_impl_0*, align 8
  %fp.addr = alloca i8*, align 8
  %desc.addr = alloca %struct.__myblock_block_desc_0*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.__myblock_block_impl_0* %this, %struct.__myblock_block_impl_0** %this.addr, align 8
  store i8* %fp, i8** %fp.addr, align 8
  store %struct.__myblock_block_desc_0* %desc, %struct.__myblock_block_desc_0** %desc.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %this1 = load %struct.__myblock_block_impl_0** %this.addr
  %0 = load i8** %fp.addr, align 8
  %1 = load %struct.__myblock_block_desc_0** %desc.addr, align 8
  %2 = load i32* %flags.addr, align 4
  call void @_ZN22__myblock_block_impl_0C2EPvP22__myblock_block_desc_0i(%struct.__myblock_block_impl_0* %this1, i8* %0, %struct.__myblock_block_desc_0* %1, i32 %2)
  ret void
}

define internal void @_ZL22__myblock_block_func_0P22__myblock_block_impl_0(%struct.__myblock_block_impl_0* %__cself) nounwind {
entry:
  %__cself.addr = alloca %struct.__myblock_block_impl_0*, align 8
  store %struct.__myblock_block_impl_0* %__cself, %struct.__myblock_block_impl_0** %__cself.addr, align 8
  ret void
}

define linkonce_odr void @_ZN22__myblock_block_impl_0C2EPvP22__myblock_block_desc_0i(%struct.__myblock_block_impl_0* %this, i8* %fp, %struct.__myblock_block_desc_0* %desc, i32 %flags) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %struct.__myblock_block_impl_0*, align 8
  %fp.addr = alloca i8*, align 8
  %desc.addr = alloca %struct.__myblock_block_desc_0*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.__myblock_block_impl_0* %this, %struct.__myblock_block_impl_0** %this.addr, align 8
  store i8* %fp, i8** %fp.addr, align 8
  store %struct.__myblock_block_desc_0* %desc, %struct.__myblock_block_desc_0** %desc.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %this1 = load %struct.__myblock_block_impl_0** %this.addr
  %impl = getelementptr inbounds %struct.__myblock_block_impl_0* %this1, i32 0, i32 0
  %impl2 = getelementptr inbounds %struct.__myblock_block_impl_0* %this1, i32 0, i32 0
  %isa = getelementptr inbounds %struct.__block_impl* %impl2, i32 0, i32 0
  store i8* bitcast ([32 x i8*]* @_NSConcreteGlobalBlock to i8*), i8** %isa, align 8
  %0 = load i32* %flags.addr, align 4
  %impl3 = getelementptr inbounds %struct.__myblock_block_impl_0* %this1, i32 0, i32 0
  %Flags = getelementptr inbounds %struct.__block_impl* %impl3, i32 0, i32 1
  store i32 %0, i32* %Flags, align 4
  %1 = load i8** %fp.addr, align 8
  %impl4 = getelementptr inbounds %struct.__myblock_block_impl_0* %this1, i32 0, i32 0
  %FuncPtr = getelementptr inbounds %struct.__block_impl* %impl4, i32 0, i32 3
  store i8* %1, i8** %FuncPtr, align 8
  %2 = load %struct.__myblock_block_desc_0** %desc.addr, align 8
  %Desc = getelementptr inbounds %struct.__myblock_block_impl_0* %this1, i32 0, i32 1
  store %struct.__myblock_block_desc_0* %2, %struct.__myblock_block_desc_0** %Desc, align 8
  ret void
}

define internal void @_GLOBAL__I_a() nounwind section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}
