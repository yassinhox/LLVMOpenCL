; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenCXX/eh.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%struct.test1_D = type { double }
%struct.test2_D = type { i32 (...)**, i32, i32 }
%struct.test3_D = type { i32 (...)** }
%"struct.test5::A" = type { i8 }
%"struct.test6::allocator" = type { i8 }
%"struct.test8::A" = type { i8 }
%"struct.test9::A" = type { i8 }
%"struct.test10::A" = type { i8 }
%"struct.test10::B" = type { i32 }
%"struct.test11::A" = type { i8 }
%"struct.test12::A" = type { i8 }
%"struct.test13::A" = type { i8 }
%"struct.test14::A" = type { i8 }
%"struct.test14::B" = type { i8 }
%"struct.test15::A" = type { i8 }
%"struct.test16::A" = type { i8 }
%"struct.test16::B" = type { i32 }

@d1 = global %struct.test1_D zeroinitializer, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7test1_D = linkonce_odr constant [9 x i8] c"7test1_D\00"
@_ZTI7test1_D = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7test1_D, i32 0, i32 0) }
@d2 = global %struct.test2_D zeroinitializer, align 8
@_ZTS7test2_D = linkonce_odr constant [9 x i8] c"7test2_D\00"
@_ZTI7test2_D = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8]* @_ZTS7test2_D, i32 0, i32 0) }
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global i8*
@_ZTSPV7test3_D = linkonce_odr constant [11 x i8] c"PV7test3_D\00"
@_ZTI7test3_D = external constant i8*
@_ZTIPV7test3_D = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTSPV7test3_D, i32 0, i32 0), i32 2, i8* bitcast (i8** @_ZTI7test3_D to i8*) }
@_ZTSN5test51AE = linkonce_odr constant [11 x i8] c"N5test51AE\00"
@_ZTIN5test51AE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTSN5test51AE, i32 0, i32 0) }
@_ZTIi = external constant i8*
@_ZTSN5test81AE = linkonce_odr constant [11 x i8] c"N5test81AE\00"
@_ZTIN5test81AE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8]* @_ZTSN5test81AE, i32 0, i32 0) }
@_ZTSN6test101BE = linkonce_odr constant [12 x i8] c"N6test101BE\00"
@_ZTIN6test101BE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8]* @_ZTSN6test101BE, i32 0, i32 0) }
@_ZTSPPi = linkonce_odr constant [4 x i8] c"PPi\00"
@_ZTIPi = external constant i8*
@_ZTIPPi = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([4 x i8]* @_ZTSPPi, i32 0, i32 0), i32 0, i8* bitcast (i8** @_ZTIPi to i8*) }
@_ZTSPN6test111AE = linkonce_odr constant [13 x i8] c"PN6test111AE\00"
@_ZTSN6test111AE = linkonce_odr constant [12 x i8] c"N6test111AE\00"
@_ZTIN6test111AE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8]* @_ZTSN6test111AE, i32 0, i32 0) }
@_ZTIPN6test111AE = linkonce_odr unnamed_addr constant { i8*, i8*, i32, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8]* @_ZTSPN6test111AE, i32 0, i32 0), i32 0, i8* bitcast ({ i8*, i8* }* @_ZTIN6test111AE to i8*) }
@_ZTSN6test161BE = linkonce_odr constant [12 x i8] c"N6test161BE\00"
@_ZTIN6test161BE = linkonce_odr unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8]* @_ZTSN6test161BE, i32 0, i32 0) }
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define void @_Z5test1v() {
entry:
  %exception = call i8* @__cxa_allocate_exception(i64 8) nounwind
  %0 = bitcast i8* %exception to %struct.test1_D*
  %1 = bitcast %struct.test1_D* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.test1_D* @d1 to i8*), i64 8, i32 8, i1 false)
  call void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8* }* @_ZTI7test1_D to i8*), i8* null) noreturn
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i8* @__cxa_allocate_exception(i64)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__cxa_throw(i8*, i8*, i8*)

define internal void @__cxx_global_var_init() section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @_ZN7test2_DC1Ev(%struct.test2_D* @d2)
  ret void
}

declare void @_ZN7test2_DC1Ev(%struct.test2_D*)

define void @_Z5test2v() {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %exception = call i8* @__cxa_allocate_exception(i64 16) nounwind
  %0 = bitcast i8* %exception to %struct.test2_D*
  invoke void @_ZN7test2_DC1ERKS_(%struct.test2_D* %0, %struct.test2_D* @d2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8* }* @_ZTI7test2_D to i8*), i8* null) noreturn
  unreachable

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  call void @__cxa_free_exception(i8* %exception) nounwind
  br label %eh.resume

return:                                           ; No predecessors!
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

declare void @_ZN7test2_DC1ERKS_(%struct.test2_D*, %struct.test2_D*)

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(i8*)

define void @_Z5test3v() {
entry:
  %exception = call i8* @__cxa_allocate_exception(i64 8) nounwind
  %0 = bitcast i8* %exception to %struct.test3_D**
  store %struct.test3_D* null, %struct.test3_D** %0
  call void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPV7test3_D to i8*), i8* null) noreturn
  unreachable

return:                                           ; No predecessors!
  ret void
}

define void @_Z5test4v() {
entry:
  call void @__cxa_rethrow() noreturn
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @__cxa_rethrow()

define void @_ZN5test54testEv() {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %x = alloca %"struct.test5::A"*, align 8
  %exception = call i8* @__cxa_allocate_exception(i64 1) nounwind
  %0 = bitcast i8* %exception to %"struct.test5::A"*
  invoke void @_ZN5test51AC1Ev(%"struct.test5::A"* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8* }* @_ZTIN5test51AE to i8*), i8* bitcast (void (%"struct.test5::A"*)* @_ZN5test51AD1Ev to i8*)) noreturn
          to label %unreachable unwind label %lpad1

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
          catch i8* bitcast ({ i8*, i8* }* @_ZTIN5test51AE to i8*)
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  call void @__cxa_free_exception(i8* %exception) nounwind
  br label %catch.dispatch

lpad1:                                            ; preds = %invoke.cont
  %4 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* bitcast ({ i8*, i8* }* @_ZTIN5test51AE to i8*)
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad1, %lpad
  %sel = load i32* %ehselector.slot
  %7 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8* }* @_ZTIN5test51AE to i8*)) nounwind
  %matches = icmp eq i32 %sel, %7
  br i1 %matches, label %catch, label %eh.resume

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %8 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  %exn.byref = bitcast i8* %8 to %"struct.test5::A"*
  store %"struct.test5::A"* %exn.byref, %"struct.test5::A"** %x
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %catch
  ret void

eh.resume:                                        ; preds = %catch.dispatch
  %exn2 = load i8** %exn.slot
  %sel3 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn2, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel3, 1
  resume { i8*, i32 } %lpad.val4

unreachable:                                      ; preds = %invoke.cont
  unreachable
}

declare void @_ZN5test51AC1Ev(%"struct.test5::A"*)

declare void @_ZN5test51AD1Ev(%"struct.test5::A"*) nounwind

declare i32 @llvm.eh.typeid.for(i8*) nounwind readnone

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

define void @_ZN5test63fooEv() nounwind {
entry:
  %a = alloca %"struct.test6::allocator", align 1
  call void @_ZN5test69allocatorIiED1Ev(%"struct.test6::allocator"* %a) nounwind
  ret void
}

define linkonce_odr void @_ZN5test69allocatorIiED1Ev(%"struct.test6::allocator"* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %"struct.test6::allocator"*, align 8
  store %"struct.test6::allocator"* %this, %"struct.test6::allocator"** %this.addr, align 8
  %this1 = load %"struct.test6::allocator"** %this.addr
  call void @_ZN5test69allocatorIiED2Ev(%"struct.test6::allocator"* %this1) nounwind
  ret void
}

define i32 @_ZN5test73fooEv() {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %0 = alloca i32, align 4
  %exception = call i8* @__cxa_allocate_exception(i64 4) nounwind
  %1 = bitcast i8* %exception to i32*
  store i32 1, i32* %1
  invoke void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTIi to i8*), i8* null) noreturn
          to label %unreachable unwind label %lpad

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* bitcast (i8** @_ZTIi to i8*)
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32* %ehselector.slot
  %5 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %matches = icmp eq i32 %sel, %5
  br i1 %matches, label %catch, label %catch2

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %6 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  %7 = bitcast i8* %6 to i32*
  %exn.scalar = load i32* %7
  store i32 %exn.scalar, i32* %0, align 4
  invoke void @__cxa_rethrow() noreturn
          to label %unreachable unwind label %lpad1

lpad1:                                            ; preds = %catch
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot
  call void @__cxa_end_catch() nounwind
  br label %catch2

catch2:                                           ; preds = %lpad1, %catch.dispatch
  %exn3 = load i8** %exn.slot
  %11 = call i8* @__cxa_begin_catch(i8* %exn3) nounwind
  call void @__cxa_end_catch()
  br label %try.cont4

try.cont4:                                        ; preds = %catch2, %try.cont
  ret i32 0

try.cont:                                         ; No predecessors!
  br label %try.cont4

unreachable:                                      ; preds = %catch, %entry
  unreachable
}

define void @_ZN5test83fooEv() {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %a = alloca %"struct.test8::A", align 1
  invoke void @_ZN5test83barEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* bitcast ({ i8*, i8* }* @_ZTIN5test81AE to i8*)
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32* %ehselector.slot
  %3 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8* }* @_ZTIN5test81AE to i8*)) nounwind
  %matches = icmp eq i32 %sel, %3
  br i1 %matches, label %catch, label %eh.resume

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %4 = call i8* @__cxa_get_exception_ptr(i8* %exn) nounwind
  %5 = bitcast i8* %4 to %"struct.test8::A"*
  invoke void @_ZN5test81AC1ERKS0_(%"struct.test8::A"* %a, %"struct.test8::A"* %5)
          to label %invoke.cont1 unwind label %terminate.lpad

invoke.cont1:                                     ; preds = %catch
  %6 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  call void @_ZN5test81AD1Ev(%"struct.test8::A"* %a) nounwind
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %invoke.cont1, %invoke.cont
  ret void

eh.resume:                                        ; preds = %catch.dispatch
  %exn2 = load i8** %exn.slot
  %sel3 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn2, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel3, 1
  resume { i8*, i32 } %lpad.val4

terminate.lpad:                                   ; preds = %catch
  %7 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare void @_ZN5test83barEv()

declare i8* @__cxa_get_exception_ptr(i8*)

declare void @_ZN5test81AC1ERKS0_(%"struct.test8::A"*, %"struct.test8::A"*)

declare void @_ZSt9terminatev()

declare void @_ZN5test81AD1Ev(%"struct.test8::A"*) nounwind

define void @_ZN5test91AC1Ev(%"struct.test9::A"* %this) unnamed_addr align 2 {
entry:
  %this.addr = alloca %"struct.test9::A"*, align 8
  store %"struct.test9::A"* %this, %"struct.test9::A"** %this.addr, align 8
  %this1 = load %"struct.test9::A"** %this.addr
  call void @_ZN5test91AC2Ev(%"struct.test9::A"* %this1)
  ret void
}

define void @_ZN5test91AC2Ev(%"struct.test9::A"* %this) unnamed_addr align 2 {
entry:
  %this.addr = alloca %"struct.test9::A"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %x = alloca i32, align 4
  store %"struct.test9::A"* %this, %"struct.test9::A"** %this.addr, align 8
  %this1 = load %"struct.test9::A"** %this.addr
  invoke void @_ZN5test96opaqueEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32* %ehselector.slot
  %3 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %matches = icmp eq i32 %sel, %3
  br i1 %matches, label %catch, label %eh.resume

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %4 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  %5 = bitcast i8* %4 to i32*
  %exn.scalar = load i32* %5
  store i32 %exn.scalar, i32* %x, align 4
  invoke void @_ZN5test96opaqueEv()
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %catch
  invoke void @__cxa_rethrow()
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %invoke.cont3
  unreachable

lpad2:                                            ; preds = %invoke.cont3, %catch
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot
  call void @__cxa_end_catch() nounwind
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  ret void

eh.resume:                                        ; preds = %lpad2, %catch.dispatch
  %exn5 = load i8** %exn.slot
  %sel6 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn5, 0
  %lpad.val7 = insertvalue { i8*, i32 } %lpad.val, i32 %sel6, 1
  resume { i8*, i32 } %lpad.val7
}

declare void @_ZN5test96opaqueEv()

define void @_ZN6test103fooEv() {
entry:
  %a = alloca %"struct.test10::A", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %a5 = alloca %"struct.test10::B", align 4
  %i = alloca i32, align 4
  invoke void @_ZN6test106opaqueEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* bitcast (i8** @_ZTIi to i8*)
          catch i8* bitcast ({ i8*, i8* }* @_ZTIN6test101BE to i8*)
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32* %ehselector.slot
  %3 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %matches = icmp eq i32 %sel, %3
  br i1 %matches, label %catch8, label %catch.fallthrough

catch8:                                           ; preds = %catch.dispatch
  %exn9 = load i8** %exn.slot
  %4 = call i8* @__cxa_begin_catch(i8* %exn9) nounwind
  %5 = bitcast i8* %4 to i32*
  %exn.scalar = load i32* %5
  store i32 %exn.scalar, i32* %i, align 4
  call void @__cxa_end_catch() nounwind
  br label %try.cont

try.cont:                                         ; preds = %catch8, %invoke.cont7, %invoke.cont3, %invoke.cont
  call void @_ZN6test101AD1Ev(%"struct.test10::A"* %a) nounwind
  ret void

catch.fallthrough:                                ; preds = %catch.dispatch
  %6 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8* }* @_ZTIN6test101BE to i8*)) nounwind
  %matches1 = icmp eq i32 %sel, %6
  br i1 %matches1, label %catch4, label %catch

catch4:                                           ; preds = %catch.fallthrough
  %exn6 = load i8** %exn.slot
  %7 = call i8* @__cxa_begin_catch(i8* %exn6) nounwind
  %8 = bitcast i8* %7 to %"struct.test10::B"*
  %9 = bitcast %"struct.test10::B"* %a5 to i8*
  %10 = bitcast %"struct.test10::B"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 4, i32 4, i1 false)
  invoke void @__cxa_end_catch()
          to label %invoke.cont7 unwind label %lpad2

invoke.cont7:                                     ; preds = %catch4
  br label %try.cont

catch:                                            ; preds = %catch.fallthrough
  %exn = load i8** %exn.slot
  %11 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %catch
  br label %try.cont

lpad2:                                            ; preds = %catch4, %catch
  %12 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot
  call void @_ZN6test101AD1Ev(%"struct.test10::A"* %a) nounwind
  br label %eh.resume

eh.resume:                                        ; preds = %lpad2
  %exn10 = load i8** %exn.slot
  %sel11 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn10, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel11, 1
  resume { i8*, i32 } %lpad.val12
}

declare void @_ZN6test106opaqueEv()

declare void @_ZN6test101AD1Ev(%"struct.test10::A"*) nounwind

define void @_ZN6test113fooEv() {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %p = alloca i32***, align 8
  invoke void @_ZN6test116opaqueEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPPi to i8*)
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32* %ehselector.slot
  %3 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPPi to i8*)) nounwind
  %matches = icmp eq i32 %sel, %3
  br i1 %matches, label %catch, label %eh.resume

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %4 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  %5 = getelementptr i8* %exn, i32 32
  %exn.byref = bitcast i8* %5 to i32***
  store i32*** %exn.byref, i32**** %p
  call void @__cxa_end_catch() nounwind
  br label %try.cont

try.cont:                                         ; preds = %catch, %invoke.cont
  ret void

eh.resume:                                        ; preds = %catch.dispatch
  %exn1 = load i8** %exn.slot
  %sel2 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn1, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel2, 1
  resume { i8*, i32 } %lpad.val3
}

declare void @_ZN6test116opaqueEv()

define void @_ZN6test113barEv() {
entry:
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %p = alloca %"struct.test11::A"**, align 8
  %exn.byref.tmp = alloca %"struct.test11::A"*
  invoke void @_ZN6test116opaqueEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPN6test111AE to i8*)
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32* %ehselector.slot
  %3 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPN6test111AE to i8*)) nounwind
  %matches = icmp eq i32 %sel, %3
  br i1 %matches, label %catch, label %eh.resume

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %4 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  %5 = bitcast i8* %4 to %"struct.test11::A"*
  store %"struct.test11::A"* %5, %"struct.test11::A"** %exn.byref.tmp
  store %"struct.test11::A"** %exn.byref.tmp, %"struct.test11::A"*** %p
  call void @__cxa_end_catch() nounwind
  br label %try.cont

try.cont:                                         ; preds = %catch, %invoke.cont
  ret void

eh.resume:                                        ; preds = %catch.dispatch
  %exn1 = load i8** %exn.slot
  %sel2 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn1, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel2, 1
  resume { i8*, i32 } %lpad.val3
}

define void @_ZN6test124testEv() {
entry:
  %x = alloca %"struct.test12::A", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %y = alloca %"struct.test12::A", align 1
  %z = alloca %"struct.test12::A", align 1
  %cleanup.dest.slot = alloca i32
  %_ = alloca i8, align 1
  %call = invoke zeroext i1 @_ZN6test126opaqueERKNS_1AE(%"struct.test12::A"* %x)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  store i32 2, i32* %cleanup.dest.slot
  invoke void @_ZN6test121AD1Ev(%"struct.test12::A"* %z)
          to label %invoke.cont2 unwind label %lpad1

lpad:                                             ; preds = %invoke.cont2, %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %ehcleanup

invoke.cont2:                                     ; preds = %if.then
  invoke void @_ZN6test121AD1Ev(%"struct.test12::A"* %y)
          to label %invoke.cont3 unwind label %lpad

lpad1:                                            ; preds = %if.then
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  invoke void @_ZN6test121AD1Ev(%"struct.test12::A"* %y)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont2
  br label %success

invoke.cont4:                                     ; preds = %lpad1
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont
  br label %success

success:                                          ; preds = %invoke.cont3, %if.end
  store i8 1, i8* %_, align 1
  call void @_ZN6test121AD1Ev(%"struct.test12::A"* %x)
  ret void

ehcleanup:                                        ; preds = %invoke.cont4, %lpad
  invoke void @_ZN6test121AD1Ev(%"struct.test12::A"* %x)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont5
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val6 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val6

terminate.lpad:                                   ; preds = %ehcleanup, %lpad1
  %6 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

declare zeroext i1 @_ZN6test126opaqueERKNS_1AE(%"struct.test12::A"*)

declare void @_ZN6test121AD1Ev(%"struct.test12::A"*)

define void @_ZN6test135test0Ei(i32 %x) nounwind {
entry:
  %x.addr = alloca i32, align 4
  %a = alloca %"struct.test13::A", align 1
  %cleanup.dest.slot = alloca i32
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32* %x.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* %cleanup.dest.slot
  call void @_ZN6test131AD1Ev(%"struct.test13::A"* %a) nounwind
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

declare void @_ZN6test131AD1Ev(%"struct.test13::A"*) nounwind

define void @_ZN6test135test1Ei(i32 %x) nounwind {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca %"struct.test13::A", align 1
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32* %x.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @_ZN6test131AD1Ev(%"struct.test13::A"* %y) nounwind
  ret void
}

define void @_ZN6test143fooEv() {
entry:
  %a = alloca %"struct.test14::A", align 1
  %str = alloca %"struct.test14::B", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %x = alloca i32, align 4
  invoke void @_ZN6test141bEv(%"struct.test14::B"* sret %str)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN6test146opaqueEv()
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZN6test141BD1Ev(%"struct.test14::B"* %str) nounwind
  br label %try.cont

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot
  br label %catch.dispatch

lpad1:                                            ; preds = %invoke.cont
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot
  call void @_ZN6test141BD1Ev(%"struct.test14::B"* %str) nounwind
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad1, %lpad
  %sel = load i32* %ehselector.slot
  %6 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %matches = icmp eq i32 %sel, %6
  br i1 %matches, label %catch, label %ehcleanup

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %7 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  %8 = bitcast i8* %7 to i32*
  %exn.scalar = load i32* %8
  store i32 %exn.scalar, i32* %x, align 4
  call void @__cxa_end_catch() nounwind
  br label %try.cont

try.cont:                                         ; preds = %catch, %invoke.cont2
  call void @_ZN6test141AD1Ev(%"struct.test14::A"* %a) nounwind
  ret void

ehcleanup:                                        ; preds = %catch.dispatch
  call void @_ZN6test141AD1Ev(%"struct.test14::A"* %a) nounwind
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn3 = load i8** %exn.slot
  %sel4 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn3, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel4, 1
  resume { i8*, i32 } %lpad.val5
}

declare void @_ZN6test141bEv(%"struct.test14::B"* sret)

declare void @_ZN6test146opaqueEv()

declare void @_ZN6test141BD1Ev(%"struct.test14::B"*) nounwind

declare void @_ZN6test141AD1Ev(%"struct.test14::A"*) nounwind

define void @_ZN6test153fooEv() {
entry:
  %a = alloca %"struct.test15::A", align 1
  %x = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %x1 = alloca i32, align 4
  store i32 10, i32* %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i32* %x, align 4
  %call = invoke zeroext i1 @_ZN6test156opaqueEi(i32 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  br label %while.end

lpad:                                             ; preds = %while.body
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
          catch i8* bitcast (i8** @_ZTIi to i8*)
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32* %ehselector.slot
  %4 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %matches = icmp eq i32 %sel, %4
  br i1 %matches, label %catch, label %ehcleanup

catch:                                            ; preds = %catch.dispatch
  %exn = load i8** %exn.slot
  %5 = call i8* @__cxa_begin_catch(i8* %exn) nounwind
  %6 = bitcast i8* %5 to i32*
  %exn.scalar = load i32* %6
  store i32 %exn.scalar, i32* %x1, align 4
  call void @__cxa_end_catch() nounwind
  br label %try.cont

try.cont:                                         ; preds = %catch, %while.end
  call void @_ZN6test151AD1Ev(%"struct.test15::A"* %a) nounwind
  ret void

if.end:                                           ; preds = %invoke.cont
  br label %while.cond

while.end:                                        ; preds = %if.then
  br label %try.cont

ehcleanup:                                        ; preds = %catch.dispatch
  call void @_ZN6test151AD1Ev(%"struct.test15::A"* %a) nounwind
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn2 = load i8** %exn.slot
  %sel3 = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn2, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel3, 1
  resume { i8*, i32 } %lpad.val4
}

declare zeroext i1 @_ZN6test156opaqueEi(i32)

declare void @_ZN6test151AD1Ev(%"struct.test15::A"*) nounwind

define void @_ZN6test163barEv() {
entry:
  %cond-cleanup.save = alloca i8*
  %cleanup.cond = alloca i1
  %ref.tmp = alloca %"struct.test16::A", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %cleanup.cond1 = alloca i1
  %call = call zeroext i1 @_ZN6test164condEv()
  store i1 false, i1* %cleanup.cond
  store i1 false, i1* %cleanup.cond1
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %exception = call i8* @__cxa_allocate_exception(i64 4) nounwind
  store i8* %exception, i8** %cond-cleanup.save
  store i1 true, i1* %cleanup.cond
  %0 = bitcast i8* %exception to %"struct.test16::B"*
  invoke void @_ZN6test161AC1Ev(%"struct.test16::A"* %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %cond.true
  store i1 true, i1* %cleanup.cond1
  invoke void @_ZN6test161BC1ERKNS_1AE(%"struct.test16::B"* %0, %"struct.test16::A"* %ref.tmp)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  store i1 false, i1* %cleanup.cond
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8* }* @_ZTIN6test161BE to i8*), i8* bitcast (void (%"struct.test16::B"*)* @_ZN6test161BD1Ev to i8*)) noreturn
          to label %unreachable unwind label %lpad2

throw.cont:                                       ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  invoke void @_ZN6test163fooEv()
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %invoke.cont4, %throw.cont
  %cleanup.is_active = load i1* %cleanup.cond1
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %cond.end
  invoke void @_ZN6test161AD1Ev(%"struct.test16::A"* %ref.tmp)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %cleanup.action
  br label %cleanup.done

cleanup.done:                                     ; preds = %invoke.cont5, %cond.end
  ret void

lpad:                                             ; preds = %cleanup.action, %cond.true
  %1 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot
  br label %ehcleanup

lpad2:                                            ; preds = %cond.false, %invoke.cont3, %invoke.cont
  %4 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot
  %cleanup.is_active6 = load i1* %cleanup.cond1
  br i1 %cleanup.is_active6, label %cleanup.action7, label %cleanup.done9

cleanup.action7:                                  ; preds = %lpad2
  invoke void @_ZN6test161AD1Ev(%"struct.test16::A"* %ref.tmp)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %cleanup.action7
  br label %cleanup.done9

cleanup.done9:                                    ; preds = %invoke.cont8, %lpad2
  br label %ehcleanup

ehcleanup:                                        ; preds = %cleanup.done9, %lpad
  %cleanup.is_active10 = load i1* %cleanup.cond
  br i1 %cleanup.is_active10, label %cleanup.action11, label %cleanup.done12

cleanup.action11:                                 ; preds = %ehcleanup
  %7 = load i8** %cond-cleanup.save
  call void @__cxa_free_exception(i8* %7) nounwind
  br label %cleanup.done12

cleanup.done12:                                   ; preds = %cleanup.action11, %ehcleanup
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.done12
  %exn = load i8** %exn.slot
  %sel = load i32* %ehselector.slot
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val13

terminate.lpad:                                   ; preds = %cleanup.action7
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

declare zeroext i1 @_ZN6test164condEv()

declare void @_ZN6test161BC1ERKNS_1AE(%"struct.test16::B"*, %"struct.test16::A"*)

declare void @_ZN6test161AC1Ev(%"struct.test16::A"*)

declare void @_ZN6test161BD1Ev(%"struct.test16::B"*)

declare void @_ZN6test163fooEv()

declare void @_ZN6test161AD1Ev(%"struct.test16::A"*)

define linkonce_odr void @_ZN5test69allocatorIiED2Ev(%"struct.test6::allocator"* %this) unnamed_addr nounwind align 2 {
entry:
  %this.addr = alloca %"struct.test6::allocator"*, align 8
  store %"struct.test6::allocator"* %this, %"struct.test6::allocator"** %this.addr, align 8
  %this1 = load %"struct.test6::allocator"** %this.addr
  ret void
}

define internal void @_GLOBAL__I_a() section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  ret void
}
