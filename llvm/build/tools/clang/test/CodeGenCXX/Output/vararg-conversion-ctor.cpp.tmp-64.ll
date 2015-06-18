; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenCXX/vararg-conversion-ctor.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%struct.A = type { i8 }

@a = global %struct.A zeroinitializer, align 1
@b = global %struct.A zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"A::A(...)\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define internal void @__cxx_global_var_init() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void (%struct.A*, ...)* @_ZN1AC1Ez(%struct.A* @a, double 1.340000e+00)
  ret void
}

define linkonce_odr void @_ZN1AC1Ez(%struct.A* %this, ...) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A** %this.addr
  %call = call i32 (...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0))
  ret void
}

define internal void @__cxx_global_var_init1() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void (%struct.A*, ...)* @_ZN1AC1Ez(%struct.A* @b, double 2.340000e+00)
  ret void
}

define i32 @main() nounwind {
entry:
  %retval = alloca i32, align 4
  %c = alloca [3 x %struct.A], align 1
  store i32 0, i32* %retval
  %array.begin = getelementptr inbounds [3 x %struct.A]* %c, i32 0, i32 0
  %arrayctor.end = getelementptr inbounds %struct.A* %array.begin, i64 3
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %struct.A* [ %array.begin, %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void (%struct.A*, ...)* @_ZN1AC1Ez(%struct.A* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %struct.A* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.A* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  %0 = load i32* %retval
  ret i32 %0
}

declare i32 @printf(...)

define internal void @_GLOBAL__I_a() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  ret void
}
