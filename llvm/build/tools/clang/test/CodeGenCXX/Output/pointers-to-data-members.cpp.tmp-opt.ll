; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenCXX/pointers-to-data-members.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin10"

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
%"struct.ValueInit::A" = type { i64, i8 }
%"struct.BoolPtrToMember::X" = type { i8 }
%"struct.PR8507::S" = type opaque
%"struct.PR13097::X" = type { i32 }
%"struct.PR13097::A" = type { i32, %"struct.PR13097::X" }

@_ZN8ZeroInit1aE = global i64 -1, align 8
@_ZN8ZeroInit2aaE = global [2 x i64] [i64 -1, i64 -1], align 16
@_ZN8ZeroInit3aaaE = global [2 x [2 x i64]] [[2 x i64] [i64 -1, i64 -1], [2 x i64] [i64 -1, i64 -1]], align 16
@_ZN8ZeroInit1bE = global i64 -1, align 8
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
@_ZTVN12VirtualBases1DE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 24 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12VirtualBases1DE to i8*)]
@_ZTSN12VirtualBases1DE = linkonce_odr constant [19 x i8] c"N12VirtualBases1DE\00"
@_ZTSN12VirtualBases1CE = linkonce_odr constant [19 x i8] c"N12VirtualBases1CE\00"
@_ZTSN12VirtualBases1AE = linkonce_odr constant [19 x i8] c"N12VirtualBases1AE\00"
@_ZTIN12VirtualBases1AE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1AE, i32 0, i32 0) }
@_ZTIN12VirtualBases1CE = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1CE, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTIN12VirtualBases1AE to i8*), i64 -6141 }
@_ZTIN12VirtualBases1DE = linkonce_odr unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1DE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN12VirtualBases1CE to i8*) }
@_ZTVN12VirtualBases1CE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 16 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN12VirtualBases1CE to i8*)]
@_ZTVN12VirtualBases1BE = linkonce_odr unnamed_addr constant [3 x i8*] [i8* inttoptr (i64 8 to i8*), i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTIN12VirtualBases1BE to i8*)]
@_ZTSN12VirtualBases1BE = linkonce_odr constant [19 x i8] c"N12VirtualBases1BE\00"
@_ZTIN12VirtualBases1BE = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8]* @_ZTSN12VirtualBases1BE, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8* }* @_ZTIN12VirtualBases1AE to i8*), i64 -6141 }
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define void @_ZN8ZeroInit7test_saEv() nounwind readnone {
entry:
  ret void
}

define void @_ZN8ZeroInit8test_ssaEv() nounwind readnone {
entry:
  ret void
}

define void @_ZN8ZeroInit7test_ssEv() nounwind readnone {
entry:
  ret void
}

define void @_ZN5Casts1fEv() nounwind {
entry:
  store i64 -1, i64* @_ZN5Casts2pcE, align 8, !tbaa !0
  store i64 -1, i64* @_ZN5Casts2paE, align 8, !tbaa !0
  ret void
}

define void @_ZN11Comparisons1fEv() nounwind readnone {
entry:
  ret void
}

define void @_ZN9ValueInit1AC1Ev(%"struct.ValueInit::A"* nocapture %this) unnamed_addr nounwind align 2 {
entry:
  %a.i = getelementptr inbounds %"struct.ValueInit::A"* %this, i64 0, i32 0
  store i64 -1, i64* %a.i, align 8, !tbaa !0
  ret void
}

define void @_ZN9ValueInit1AC2Ev(%"struct.ValueInit::A"* nocapture %this) unnamed_addr nounwind align 2 {
entry:
  %a = getelementptr inbounds %"struct.ValueInit::A"* %this, i64 0, i32 0
  store i64 -1, i64* %a, align 8, !tbaa !0
  ret void
}

define zeroext i1 @_ZN6PR71395checkEv() nounwind readnone {
entry:
  ret i1 true
}

define zeroext i1 @_ZN6PR71396check2Ev() nounwind readnone {
entry:
  ret i1 true
}

define i8* @_ZN15BoolPtrToMember1fERNS_1XEMS0_b(%"struct.BoolPtrToMember::X"* %x, i64 %member) nounwind readnone {
entry:
  %memptr.offset = getelementptr inbounds %"struct.BoolPtrToMember::X"* %x, i64 %member, i32 0
  ret i8* %memptr.offset
}

define void @_ZN6PR85071fEPNS_1SEMS0_d(%"struct.PR8507::S"* nocapture %p, i64 %pm) nounwind readnone {
entry:
  ret void
}

define void @_ZN7PR130971gEv(%"struct.PR13097::X"* noalias sret %agg.result) nounwind {
entry:
  %ref.tmp = alloca %"struct.PR13097::A", align 4
  call void @_ZN7PR130971fEv(%"struct.PR13097::A"* sret %ref.tmp) nounwind
  %memptr.offset = getelementptr inbounds %"struct.PR13097::A"* %ref.tmp, i64 0, i32 1
  call void @_ZN7PR130971XC1ERKS0_(%"struct.PR13097::X"* %agg.result, %"struct.PR13097::X"* %memptr.offset) nounwind
  ret void
}

declare void @_ZN7PR130971XC1ERKS0_(%"struct.PR13097::X"*, %"struct.PR13097::X"*)

declare void @_ZN7PR130971fEv(%"struct.PR13097::A"* sret)

define internal void @_GLOBAL__I_a() nounwind section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1BE, i64 1, i64 0) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"struct.VirtualBases::B"* @_ZN12VirtualBases1bE, i64 0, i32 0), align 8, !tbaa !2
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1CE, i64 1, i64 0) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"struct.VirtualBases::C"* @_ZN12VirtualBases1cE, i64 0, i32 0), align 8, !tbaa !2
  store i32 (...)** bitcast (i8** getelementptr inbounds ([3 x i8*]* @_ZTVN12VirtualBases1DE, i64 1, i64 0) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"struct.VirtualBases::D"* @_ZN12VirtualBases1dE, i64 0, i32 0, i32 0), align 8, !tbaa !2
  store i32 (...)** bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41DE, i64 0, i64 4) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"struct.test4::D"* @_ZN5test41dE, i64 0, i32 0, i32 0), align 8, !tbaa !2
  store i32 (...)** bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTVN5test41DE, i64 1, i64 0) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"struct.test4::D"* @_ZN5test41dE, i64 0, i32 2, i32 0), align 8, !tbaa !2
  ret void
}

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"vtable pointer", metadata !1}
