; ModuleID = 'file.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @foo(i32 %c, float %r, i32* %u, i8* %list) nounwind uwtable {
entry:
  %c.addr = alloca i32, align 4
  %r.addr = alloca float, align 4
  %u.addr = alloca i32*, align 8
  %list.addr = alloca i8*, align 8
  %sum = alloca i32, align 4
  %buffer = alloca [2 x i32], align 4
  %test = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  store float %r, float* %r.addr, align 4
  store i32* %u, i32** %u.addr, align 8
  store i8* %list, i8** %list.addr, align 8
  store i32 0, i32* %sum, align 4
  store i8 97, i8* %test, align 1
  %arrayidx = getelementptr inbounds [2 x i32]* %buffer, i32 0, i64 0
  store i32 22, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [2 x i32]* %buffer, i32 0, i64 1
  store i32 23, i32* %arrayidx1, align 4
  ret void
}
