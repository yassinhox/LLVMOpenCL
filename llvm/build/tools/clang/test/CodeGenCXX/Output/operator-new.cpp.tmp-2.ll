; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenCXX/operator-new.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i686-pc-linux-gnu"

%class.teste = type { i32 }

define void @_Z2f1v() nounwind {
entry:
  %call = call i8* @_Znwj(i32 4)
  %0 = bitcast i8* %call to %class.teste*
  call void @_ZN5testeC1Ev(%class.teste* %0)
  ret void
}

declare i8* @_Znwj(i32)

define linkonce_odr void @_ZN5testeC1Ev(%class.teste* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %class.teste*, align 4
  store %class.teste* %this, %class.teste** %this.addr, align 4
  %this1 = load %class.teste** %this.addr
  call void @_ZN5testeC2Ev(%class.teste* %this1)
  ret void
}

define i8* @_Z2f2l(i32 %N) nounwind {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32* %N.addr, align 4
  %1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4)
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %4 = select i1 %2, i32 -1, i32 %3
  %call = call i8* @_Znaj(i32 %4)
  %5 = bitcast i8* %call to i32*
  %6 = bitcast i32* %5 to i8*
  ret i8* %6
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @_Znaj(i32)

define linkonce_odr void @_ZN5testeC2Ev(%class.teste* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %class.teste*, align 4
  store %class.teste* %this, %class.teste** %this.addr, align 4
  %this1 = load %class.teste** %this.addr
  %A = getelementptr inbounds %class.teste* %this1, i32 0, i32 0
  store i32 2, i32* %A, align 4
  ret void
}
