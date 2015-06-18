; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenCXX/pointers-to-data-members.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin10"

%struct.anon = type { i64 }
%struct.anon.0 = type { [2 x i64] }
%struct.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i64 }
%"struct.ZeroInit::C" = type { %"struct.ZeroInit::A", %"struct.ZeroInit::B", i32 }
%"struct.ZeroInit::A" = type { i64, i32 }
%"struct.ZeroInit::B" = type { [10 x %"struct.ZeroInit::A"], i8, i64 }
%"struct.VirtualBases::B" = type { i32 (...)**, %"struct.VirtualBases::A" }
%"struct.VirtualBases::A" = type { i8, i64 }
%"struct.VirtualBases::C" = type { i32 (...)**, i64, %"struct.VirtualBases::A" }
%"struct.VirtualBases::D" = type { %"struct.VirtualBases::C.base", i64, %"struct.VirtualBases::A" }
%"struct.VirtualBases::C.base" = type { i32 (...)**, i64 }
%"struct.Test1::A" = type { i64, [2 x i8] }
%"struct.test4::D" = type { %"struct.test4::C.base", i32*, %"struct.test4::B.base", %"struct.test4::A" }
%"struct.test4::C.base" = type { i32 (...)**, i32* }
%"struct.test4::B.base" = type { i32 (...)**, i64 }
%"struct.test4::A" = type { i32 }
%"union.PR11487::U" = type { i64, [8 x i8] }
%"struct.PR7139::ptr_to_member_struct" = type { i64, i32 }
%"struct.ValueInit::A" = type { i64, i8 }
%"struct.PR7139::A" = type { %"struct.PR7139::ptr_to_member_struct" }
%"struct.BoolPtrToMember::X" = type { i8 }
%"struct.PR8507::S" = type opaque
%"struct.test4::B" = type { i32 (...)**, i64, %"struct.test4::A" }
%"struct.test4::C" = type { i32 (...)**, i32*, %"struct.test4::B.base", %"struct.test4::A" }
%"struct.PR13097::X" = type { i32 }
%"struct.PR13097::A" = type { i32, %"struct.PR13097::X" }

@_ZN8ZeroInit1aE = global i64 -1, align 8
@_ZN8ZeroInit2aaE = global [2 x i64] [i64 -1, i64 -1], align 16
@_ZN8ZeroInit3aaaE = global [2 x [2 x i64]] [[2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]], align 16
@_ZN8ZeroInit1bE = global i64 -1, align 8
@_ZN8ZeroInit2saE = internal global %struct.anon { i64 -1 }, align 8
@_ZN8ZeroInit3ssaE = internal global [2 x %struct.anon.0] [%struct.anon.0 { [2 x i64] [i64 -1, i64 -1] }, %struct.anon.0 { [2 x i64] [i64 -1, i64 -1] }], align 16
@_ZN8ZeroInit2ssE = internal global %struct.anon.1 { %struct.anon.2 { i64 -1 } }, align 8
@_ZN8ZeroInit1cE = global %"struct.ZeroInit::C" { %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::B" { [10 x %"struct.ZeroInit::A"] [%"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }, %"struct.ZeroInit::A" { i64 -1, i32 0 }], i8 0, i64 -1 }, i32 0 }, align 8
@_ZN6PR56742pbE = global i64 4, align 8
@_ZN5Casts2paE = global i64 -1, align 8
@_ZN5Casts2pcE = global i64 -1, align 8
@_ZN12VirtualBases1bE = global %"struct.VirtualBases::B" { i32 (...)** null, %"struct.VirtualBases::A" { i8 0, i64 -1 } }, align 8
@_ZN12VirtualBases1cE = global %"struct.VirtualBases::C" { i32 (...)** null, i64 -1, %"struct.VirtualBases::A" { i8 0, i64 -1 } }, align 8
@_ZN12VirtualBases1dE = global %"struct.VirtualBases::D" { %"struct.VirtualBases::C.base" { i32 (...)** null, i64 -1 }, i64 -1, %"struct.VirtualBases::A" { i8 0, i64 -1 } }, align 8
@_ZN5Test11aE = global %"struct.Test1::A" { i64 -1, [2 x i8] zeroinitializer }, align 8
@_ZN5test41dE = global %"struct.test4::D" { %"struct.test4::C.base" zeroinitializer, i32* null, %"struct.test4::B.base" { i32 (...)** null, i64 -1 }, %"struct.test4::A" zeroinitializer }, align 8
@_ZN7PR114871xE = global %"union.PR11487::U" { i64 -1, [8 x i8] zeroinitializer }, align 8
@_ZTVN5test41DE = linkonce_odr unnamed_addr constant [7 x i8*] [i8* inttoptr (i64 40 to i8*), i8* inttoptr (i64 24 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5test41DE to i8*), i8* inttoptr (i64 16 to i8*), i8* inttoptr (i64 -24 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5test41DE to i8*)]
@_ZTTN5test41DE = linkonce_odr unnamed_addr constant [5 x i8*] [i8* bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41DE, i64 0, i64 4) to i8*), i8* bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTCN5test41DE0_NS_1CE, i64 0, i64 4) to i8*), i8* bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTCN5test41DE0_NS_1CE, i64 1, i64 0) to i8*), i8* bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41DE, i64 1, i64 0) to i8*), i8* bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTCN5test41DE24_NS_1BE, i64 1, i64 0) to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSN5test41DE = linkonce_odr constant [11 x i8] c"N5test41DE\00"
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global i8*
@_ZTSN5test41CE = linkonce_odr constant [11 x i8] c"N5test41CE\00"
@_ZTSN5test41BE = linkonce_odr constant [11 x i8] c"N5test41BE\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN5test41AE = linkonce_odr constant [11 x i8] c"N5test41AE\00"
@_ZTIN5test41AE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTSN5test41AE, i32 0, i32 0) }
@_ZTIN5test41BE = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTSN5test41BE, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTIN5test41AE to i8*), i64 -6141 }
@_ZTIN5test41CE = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTSN5test41CE, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41BE to i8*), i64 -6141 }
@_ZTIN5test41DE = linkonce_odr unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTSN5test41DE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41CE to i8*) }
@_ZTCN5test41DE0_NS_1CE = linkonce_odr unnamed_addr constant [7 x i8*] [i8* inttoptr (i64 40 to i8*), i8* inttoptr (i64 24 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41CE to i8*), i8* inttoptr (i64 16 to i8*), i8* inttoptr (i64 -24 to i8*), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41CE to i8*)]
@_ZTCN5test41DE24_NS_1BE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 16 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41BE to i8*)]
@_ZTVN5test41CE = linkonce_odr unnamed_addr constant [7 x i8*] [i8* inttoptr (i64 32 to i8*), i8* inttoptr (i64 16 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41CE to i8*), i8* inttoptr (i64 16 to i8*), i8* inttoptr (i64 -16 to i8*), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41CE to i8*)]
@_ZTTN5test41CE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41CE, i64 0, i64 4) to i8*), i8* bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41CE, i64 1, i64 0) to i8*), i8* bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTCN5test41CE16_NS_1BE, i64 1, i64 0) to i8*)]
@_ZTCN5test41CE16_NS_1BE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 16 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41BE to i8*)]
@_ZTVN5test41BE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 16 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN5test41BE to i8*)]
@_ZTTN5test41BE = linkonce_odr unnamed_addr constant [1 x i8*] [i8* bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTVN5test41BE, i64 1, i64 0) to i8*)]
@_ZTVN12VirtualBases1DE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 24 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12VirtualBases1DE to i8*)]
@_ZTTN12VirtualBases1DE = linkonce_odr unnamed_addr constant [2 x i8*] [i8* bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1DE, i64 1, i64 0) to i8*), i8* bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTCN12VirtualBases1DE0_NS_1CE, i64 1, i64 0) to i8*)]
@_ZTSN12VirtualBases1DE = linkonce_odr constant [19 x i8] c"N12VirtualBases1DE\00"
@_ZTSN12VirtualBases1CE = linkonce_odr constant [19 x i8] c"N12VirtualBases1CE\00"
@_ZTSN12VirtualBases1AE = linkonce_odr constant [19 x i8] c"N12VirtualBases1AE\00"
@_ZTIN12VirtualBases1AE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1AE, i32 0, i32 0) }
@_ZTIN12VirtualBases1CE = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1CE, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTIN12VirtualBases1AE to i8*), i64 -6141 }
@_ZTIN12VirtualBases1DE = linkonce_odr unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1DE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN12VirtualBases1CE to i8*) }
@_ZTCN12VirtualBases1DE0_NS_1CE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 24 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN12VirtualBases1CE to i8*)]
@_ZTVN12VirtualBases1CE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 16 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN12VirtualBases1CE to i8*)]
@_ZTTN12VirtualBases1CE = linkonce_odr unnamed_addr constant [1 x i8*] [i8* bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1CE, i64 1, i64 0) to i8*)]
@_ZTVN12VirtualBases1BE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 8 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN12VirtualBases1BE to i8*)]
@_ZTSN12VirtualBases1BE = linkonce_odr constant [19 x i8] c"N12VirtualBases1BE\00"
@_ZTIN12VirtualBases1BE = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1BE, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTIN12VirtualBases1AE to i8*), i64 -6141 }
@_ZTTN12VirtualBases1BE = linkonce_odr unnamed_addr constant [1 x i8*] [i8* bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1BE, i64 1, i64 0) to i8*)]
@0 = private constant %"struct.PR7139::ptr_to_member_struct" { i64 -1, i32 0 }
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define void @_ZN8ZeroInit7test_saEv() nounwind {
entry:
  ret void
}

define void @_ZN8ZeroInit8test_ssaEv() nounwind {
entry:
  ret void
}

define void @_ZN8ZeroInit7test_ssEv() nounwind {
entry:
  ret void
}

define void @_ZN5Casts1fEv() nounwind {
entry:
  store i64 -1, i64* @_ZN5Casts2paE, align 8
  %0 = load i64* @_ZN5Casts2paE, align 8
  %adj = add nsw i64 %0, 4
  %memptr.isnull = icmp eq i64 %0, -1
  %1 = select i1 %memptr.isnull, i64 %0, i64 %adj
  store i64 %1, i64* @_ZN5Casts2pcE, align 8
  %2 = load i64* @_ZN5Casts2pcE, align 8
  %adj1 = sub nsw i64 %2, 4
  %memptr.isnull2 = icmp eq i64 %2, -1
  %3 = select i1 %memptr.isnull2, i64 %2, i64 %adj1
  store i64 %3, i64* @_ZN5Casts2paE, align 8
  ret void
}

define void @_ZN11Comparisons1fEv() nounwind {
entry:
  %a = alloca i64, align 8
  %0 = load i64* %a, align 8
  %memptr.tobool = icmp ne i64 %0, -1
  br i1 %memptr.tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64* %a, align 8
  %2 = icmp ne i64 %1, -1
  br i1 %2, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load i64* %a, align 8
  %4 = icmp ne i64 -1, %3
  br i1 %4, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end2
  %5 = load i64* %a, align 8
  %6 = icmp eq i64 %5, -1
  br i1 %6, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4
  %7 = load i64* %a, align 8
  %8 = icmp eq i64 -1, %7
  br i1 %8, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6
  ret void
}

define void @_ZN9ValueInit1AC1Ev(%"struct.ValueInit::A"* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %"struct.ValueInit::A"*, align 8
  store %"struct.ValueInit::A"* %this, %"struct.ValueInit::A"** %this.addr, align 8
  %this1 = load %"struct.ValueInit::A"** %this.addr
  call void @_ZN9ValueInit1AC2Ev(%"struct.ValueInit::A"* %this1)
  ret void
}

define void @_ZN9ValueInit1AC2Ev(%"struct.ValueInit::A"* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %"struct.ValueInit::A"*, align 8
  store %"struct.ValueInit::A"* %this, %"struct.ValueInit::A"** %this.addr, align 8
  %this1 = load %"struct.ValueInit::A"** %this.addr
  %a = getelementptr inbounds %"struct.ValueInit::A"* %this1, i32 0, i32 0
  store i64 -1, i64* %a, align 8
  ret void
}

define zeroext i1 @_ZN6PR71395checkEv() nounwind {
entry:
  %tmp = alloca %"struct.PR7139::A", align 8
  call void @_ZN6PR71391AC1Ev(%"struct.PR7139::A"* %tmp)
  %a = getelementptr inbounds %"struct.PR7139::A"* %tmp, i32 0, i32 0
  %data = getelementptr inbounds %"struct.PR7139::ptr_to_member_struct"* %a, i32 0, i32 0
  %0 = load i64* %data, align 8
  %1 = icmp eq i64 %0, -1
  ret i1 %1
}

define linkonce_odr void @_ZN6PR71391AC1Ev(%"struct.PR7139::A"* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %"struct.PR7139::A"*, align 8
  store %"struct.PR7139::A"* %this, %"struct.PR7139::A"** %this.addr, align 8
  %this1 = load %"struct.PR7139::A"** %this.addr
  call void @_ZN6PR71391AC2Ev(%"struct.PR7139::A"* %this1)
  ret void
}

define zeroext i1 @_ZN6PR71396check2Ev() nounwind {
entry:
  ret i1 true
}

define internal void @__cxx_global_var_init() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @_ZN12VirtualBases1BC1Ev(%"struct.VirtualBases::B"* @_ZN12VirtualBases1bE) nounwind
  ret void
}

define linkonce_odr void @_ZN12VirtualBases1BC1Ev(%"struct.VirtualBases::B"* %this) unnamed_addr nounwind inlinehint align 2 {
entry:
  %this.addr = alloca %"struct.VirtualBases::B"*, align 8
  store %"struct.VirtualBases::B"* %this, %"struct.VirtualBases::B"** %this.addr, align 8
  %this1 = load %"struct.VirtualBases::B"** %this.addr
  %0 = bitcast %"struct.VirtualBases::B"* %this1 to i8*
  %1 = getelementptr inbounds i8* %0, i64 8
  %2 = bitcast i8* %1 to %"struct.VirtualBases::A"*
  %3 = bitcast %"struct.VirtualBases::B"* %this1 to i8***
  store i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1BE, i64 1, i64 0), i8*** %3
  ret void
}

define internal void @__cxx_global_var_init1() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @_ZN12VirtualBases1CC1Ev(%"struct.VirtualBases::C"* @_ZN12VirtualBases1cE) nounwind
  ret void
}

define linkonce_odr void @_ZN12VirtualBases1CC1Ev(%"struct.VirtualBases::C"* %this) unnamed_addr nounwind inlinehint align 2 {
entry:
  %this.addr = alloca %"struct.VirtualBases::C"*, align 8
  store %"struct.VirtualBases::C"* %this, %"struct.VirtualBases::C"** %this.addr, align 8
  %this1 = load %"struct.VirtualBases::C"** %this.addr
  %0 = bitcast %"struct.VirtualBases::C"* %this1 to i8*
  %1 = getelementptr inbounds i8* %0, i64 16
  %2 = bitcast i8* %1 to %"struct.VirtualBases::A"*
  %3 = bitcast %"struct.VirtualBases::C"* %this1 to i8***
  store i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1CE, i64 1, i64 0), i8*** %3
  ret void
}

define internal void @__cxx_global_var_init2() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @_ZN12VirtualBases1DC1Ev(%"struct.VirtualBases::D"* @_ZN12VirtualBases1dE) nounwind
  ret void
}

define linkonce_odr void @_ZN12VirtualBases1DC1Ev(%"struct.VirtualBases::D"* %this) unnamed_addr nounwind inlinehint align 2 {
entry:
  %this.addr = alloca %"struct.VirtualBases::D"*, align 8
  store %"struct.VirtualBases::D"* %this, %"struct.VirtualBases::D"** %this.addr, align 8
  %this1 = load %"struct.VirtualBases::D"** %this.addr
  %0 = bitcast %"struct.VirtualBases::D"* %this1 to i8*
  %1 = getelementptr inbounds i8* %0, i64 24
  %2 = bitcast i8* %1 to %"struct.VirtualBases::A"*
  %3 = bitcast %"struct.VirtualBases::D"* %this1 to %"struct.VirtualBases::C"*
  call void @_ZN12VirtualBases1CC2Ev(%"struct.VirtualBases::C"* %3, i8** getelementptr inbounds ([2 x i8*]* @_ZTTN12VirtualBases1DE, i64 0, i64 1)) nounwind
  %4 = bitcast %"struct.VirtualBases::D"* %this1 to i8***
  store i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1DE, i64 1, i64 0), i8*** %4
  ret void
}

define i8* @_ZN15BoolPtrToMember1fERNS_1XEMS0_b(%"struct.BoolPtrToMember::X"* %x, i64 %member) nounwind {
entry:
  %x.addr = alloca %"struct.BoolPtrToMember::X"*, align 8
  %member.addr = alloca i64, align 8
  store %"struct.BoolPtrToMember::X"* %x, %"struct.BoolPtrToMember::X"** %x.addr, align 8
  store i64 %member, i64* %member.addr, align 8
  %0 = load %"struct.BoolPtrToMember::X"** %x.addr, align 8
  %1 = load i64* %member.addr, align 8
  %2 = bitcast %"struct.BoolPtrToMember::X"* %0 to i8*
  %memptr.offset = getelementptr inbounds i8* %2, i64 %1
  ret i8* %memptr.offset
}

define void @_ZN6PR85071fEPNS_1SEMS0_d(%"struct.PR8507::S"* %p, i64 %pm) nounwind {
entry:
  %p.addr = alloca %"struct.PR8507::S"*, align 8
  %pm.addr = alloca i64, align 8
  store %"struct.PR8507::S"* %p, %"struct.PR8507::S"** %p.addr, align 8
  store i64 %pm, i64* %pm.addr, align 8
  %0 = load %"struct.PR8507::S"** %p.addr, align 8
  %1 = load i64* %pm.addr, align 8
  %2 = bitcast %"struct.PR8507::S"* %0 to i8*
  %memptr.offset = getelementptr inbounds i8* %2, i64 %1
  %3 = bitcast i8* %memptr.offset to double*
  %4 = load double* %3
  %cmp = fcmp olt double 0.000000e+00, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

define internal void @__cxx_global_var_init3() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @_ZN5test41DC1Ev(%"struct.test4::D"* @_ZN5test41dE) nounwind
  ret void
}

define linkonce_odr void @_ZN5test41DC1Ev(%"struct.test4::D"* %this) unnamed_addr nounwind inlinehint align 2 {
entry:
  %this.addr = alloca %"struct.test4::D"*, align 8
  store %"struct.test4::D"* %this, %"struct.test4::D"** %this.addr, align 8
  %this1 = load %"struct.test4::D"** %this.addr
  %0 = bitcast %"struct.test4::D"* %this1 to i8*
  %1 = getelementptr inbounds i8* %0, i64 40
  %2 = bitcast i8* %1 to %"struct.test4::A"*
  %3 = bitcast %"struct.test4::D"* %this1 to i8*
  %4 = getelementptr inbounds i8* %3, i64 24
  %5 = bitcast i8* %4 to %"struct.test4::B"*
  call void @_ZN5test41BC2Ev(%"struct.test4::B"* %5, i8** getelementptr inbounds ([5 x i8*]* @_ZTTN5test41DE, i64 0, i64 4)) nounwind
  %6 = bitcast %"struct.test4::D"* %this1 to %"struct.test4::C"*
  call void @_ZN5test41CC2Ev(%"struct.test4::C"* %6, i8** getelementptr inbounds ([5 x i8*]* @_ZTTN5test41DE, i64 0, i64 1)) nounwind
  %7 = bitcast %"struct.test4::D"* %this1 to i8***
  store i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41DE, i64 0, i64 4), i8*** %7
  %8 = bitcast %"struct.test4::D"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8* %8, i64 24
  %9 = bitcast i8* %add.ptr to i8***
  store i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41DE, i64 1, i64 0), i8*** %9
  ret void
}

define void @_ZN7PR130971gEv(%"struct.PR13097::X"* noalias sret %agg.result) nounwind {
entry:
  %ref.tmp = alloca %"struct.PR13097::A", align 4
  call void @_ZN7PR130971fEv(%"struct.PR13097::A"* sret %ref.tmp)
  %0 = bitcast %"struct.PR13097::A"* %ref.tmp to i8*
  %memptr.offset = getelementptr inbounds i8* %0, i64 4
  %1 = bitcast i8* %memptr.offset to %"struct.PR13097::X"*
  call void @_ZN7PR130971XC1ERKS0_(%"struct.PR13097::X"* %agg.result, %"struct.PR13097::X"* %1)
  ret void
}

declare void @_ZN7PR130971XC1ERKS0_(%"struct.PR13097::X"*, %"struct.PR13097::X"*)

declare void @_ZN7PR130971fEv(%"struct.PR13097::A"* sret)

define linkonce_odr void @_ZN5test41BC2Ev(%"struct.test4::B"* %this, i8** %vtt) unnamed_addr nounwind inlinehint align 2 {
entry:
  %this.addr = alloca %"struct.test4::B"*, align 8
  %vtt.addr = alloca i8**, align 8
  store %"struct.test4::B"* %this, %"struct.test4::B"** %this.addr, align 8
  store i8** %vtt, i8*** %vtt.addr, align 8
  %this1 = load %"struct.test4::B"** %this.addr
  %vtt2 = load i8*** %vtt.addr
  %0 = load i8** %vtt2
  %1 = bitcast %"struct.test4::B"* %this1 to i8**
  store i8* %0, i8** %1
  ret void
}

define linkonce_odr void @_ZN5test41CC2Ev(%"struct.test4::C"* %this, i8** %vtt) unnamed_addr nounwind inlinehint align 2 {
entry:
  %this.addr = alloca %"struct.test4::C"*, align 8
  %vtt.addr = alloca i8**, align 8
  store %"struct.test4::C"* %this, %"struct.test4::C"** %this.addr, align 8
  store i8** %vtt, i8*** %vtt.addr, align 8
  %this1 = load %"struct.test4::C"** %this.addr
  %vtt2 = load i8*** %vtt.addr
  %0 = load i8** %vtt2
  %1 = bitcast %"struct.test4::C"* %this1 to i8**
  store i8* %0, i8** %1
  %2 = getelementptr inbounds i8** %vtt2, i64 1
  %3 = load i8** %2
  %4 = bitcast %"struct.test4::C"* %this1 to i8**
  %vtable = load i8** %4
  %vbase.offset.ptr = getelementptr i8* %vtable, i64 -24
  %5 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64* %5
  %6 = bitcast %"struct.test4::C"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8* %6, i64 %vbase.offset
  %7 = bitcast i8* %add.ptr to i8**
  store i8* %3, i8** %7
  ret void
}

define linkonce_odr void @_ZN12VirtualBases1CC2Ev(%"struct.VirtualBases::C"* %this, i8** %vtt) unnamed_addr nounwind inlinehint align 2 {
entry:
  %this.addr = alloca %"struct.VirtualBases::C"*, align 8
  %vtt.addr = alloca i8**, align 8
  store %"struct.VirtualBases::C"* %this, %"struct.VirtualBases::C"** %this.addr, align 8
  store i8** %vtt, i8*** %vtt.addr, align 8
  %this1 = load %"struct.VirtualBases::C"** %this.addr
  %vtt2 = load i8*** %vtt.addr
  %0 = load i8** %vtt2
  %1 = bitcast %"struct.VirtualBases::C"* %this1 to i8**
  store i8* %0, i8** %1
  ret void
}

define linkonce_odr void @_ZN6PR71391AC2Ev(%"struct.PR7139::A"* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %"struct.PR7139::A"*, align 8
  store %"struct.PR7139::A"* %this, %"struct.PR7139::A"** %this.addr, align 8
  %this1 = load %"struct.PR7139::A"** %this.addr
  %a = getelementptr inbounds %"struct.PR7139::A"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.PR7139::ptr_to_member_struct"* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%"struct.PR7139::ptr_to_member_struct"* @0 to i8*), i64 16, i32 8, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define internal void @_GLOBAL__I_a() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  call void @__cxx_global_var_init2()
  call void @__cxx_global_var_init3()
  ret void
}
