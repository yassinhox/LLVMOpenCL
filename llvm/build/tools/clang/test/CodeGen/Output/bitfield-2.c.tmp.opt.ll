; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/bitfield-2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.s5 = type { i8, [3 x i8] }
%struct.s6 = type { i8 }
%struct.s0 = type <{ [3 x i8] }>
%struct.s1 = type <{ [2 x i8], i8 }>
%union.u2 = type <{ i8 }>
%struct.s3 = type { [4 x i8], [4 x i8] }
%struct.s4 = type <{ [2 x i8], [4 x i8], [2 x i8] }>
%struct.s7 = type { i32, i32, i32, i8, [3 x i8], [4 x i8], [12 x i8] }
%struct.s8 = type <{ i8, i8, i8 }>
%struct.s9 = type <{ i8, i8, i8, i8, i8, i8, i8 }>

@g0 = global { i8, i8, i8 } { i8 -17, i8 -66, i8 -83 }, align 1
@g1 = global { i8, i8, i8 } { i8 -17, i8 -66, i8 11 }, align 1
@g2 = global { i8 } { i8 7 }, align 1
@g3 = global { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -17, i8 -66, i8 -83, i8 -34, i8 -17, i8 -66, i8 -83, i8 -34 }, align 8
@g4 = global { i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 -17, i8 -66, i8 -17, i8 -66, i8 -83, i8 14, [2 x i8] undef }, align 4
@g5 = global %struct.s5 { i8 7, [3 x i8] undef }, align 4
@g6 = global %struct.s6 { i8 1 }, align 1
@g8 = global { i8, i8, i8 } { i8 15, i8 0, i8 0 }, align 1

define i32 @f0_load(%struct.s0* nocapture %a0) nounwind readonly {
entry:
  %0 = bitcast %struct.s0* %a0 to i16*
  %1 = load i16* %0, align 1
  %2 = zext i16 %1 to i32
  %bf.field.offs = getelementptr %struct.s0* %a0, i64 0, i32 0, i64 2
  %3 = load i8* %bf.field.offs, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 16
  %6 = or i32 %5, %2
  %7 = shl nuw i32 %6, 8
  %bf.val.sext = ashr exact i32 %7, 8
  ret i32 %bf.val.sext
}

define i32 @f0_store(%struct.s0* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s0* %a0 to i16*
  store i16 1, i16* %0, align 1
  %bf.field.offs = getelementptr %struct.s0* %a0, i64 0, i32 0, i64 2
  store i8 0, i8* %bf.field.offs, align 1
  ret i32 1
}

define i32 @f0_reload(%struct.s0* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s0* %a0 to i16*
  %1 = load i16* %0, align 1
  %2 = zext i16 %1 to i32
  %bf.field.offs = getelementptr %struct.s0* %a0, i64 0, i32 0, i64 2
  %3 = load i8* %bf.field.offs, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 16
  %6 = or i32 %5, %2
  %add = add nsw i32 %6, 1
  %7 = shl i32 %add, 8
  %bf.reload.sext = ashr exact i32 %7, 8
  %8 = trunc i32 %add to i16
  store i16 %8, i16* %0, align 1
  %bf.value = lshr i32 %add, 16
  %9 = trunc i32 %bf.value to i8
  store i8 %9, i8* %bf.field.offs, align 1
  ret i32 %bf.reload.sext
}

define i64 @test_0() nounwind readnone {
entry:
  ret i64 1
}

define i32 @f1_load(%struct.s1* nocapture %a0) nounwind readonly {
entry:
  %0 = bitcast %struct.s1* %a0 to i16*
  %1 = load i16* %0, align 1
  %2 = lshr i16 %1, 10
  %3 = zext i16 %2 to i32
  %bf.field.offs = getelementptr %struct.s1* %a0, i64 0, i32 0, i64 2
  %4 = load i8* %bf.field.offs, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 6
  %7 = or i32 %6, %3
  %8 = shl i32 %7, 22
  %bf.val.sext = ashr exact i32 %8, 22
  ret i32 %bf.val.sext
}

define i32 @f1_store(%struct.s1* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s1* %a0 to i16*
  %1 = load i16* %0, align 1
  %2 = and i16 %1, 1023
  %3 = or i16 %2, 18432
  store i16 %3, i16* %0, align 1
  %bf.field.offs = getelementptr %struct.s1* %a0, i64 0, i32 0, i64 2
  %4 = load i8* %bf.field.offs, align 1
  %5 = and i8 %4, -16
  %6 = or i8 %5, 3
  store i8 %6, i8* %bf.field.offs, align 1
  ret i32 210
}

define i32 @f1_reload(%struct.s1* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s1* %a0 to i16*
  %1 = load i16* %0, align 1
  %2 = lshr i16 %1, 10
  %3 = zext i16 %2 to i32
  %bf.field.offs = getelementptr %struct.s1* %a0, i64 0, i32 0, i64 2
  %4 = load i8* %bf.field.offs, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 6
  %.masked = and i32 %6, 960
  %bf.val.sext3 = or i32 %.masked, %3
  %add = add nsw i32 %bf.val.sext3, 210
  %7 = shl i32 %add, 22
  %bf.reload.sext = ashr exact i32 %7, 22
  %fold = shl nuw i16 %2, 10
  %8 = add i16 %fold, 18432
  %9 = and i16 %1, 1023
  %10 = or i16 %8, %9
  store i16 %10, i16* %0, align 1
  %bf.value = lshr i32 %add, 6
  %bf.value.tr = trunc i32 %bf.value to i8
  %11 = and i8 %bf.value.tr, 15
  %12 = and i8 %4, -16
  %13 = or i8 %11, %12
  store i8 %13, i8* %bf.field.offs, align 1
  ret i32 %bf.reload.sext
}

define i64 @test_1() nounwind readnone {
entry:
  ret i64 210
}

define i32 @f2_load(%union.u2* nocapture %a0) nounwind readonly {
entry:
  %0 = getelementptr inbounds %union.u2* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %bf.clear = and i8 %1, 7
  %conv = zext i8 %bf.clear to i32
  ret i32 %conv
}

define i32 @f2_store(%union.u2* nocapture %a0) nounwind {
entry:
  %0 = getelementptr inbounds %union.u2* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %2 = and i8 %1, -8
  %3 = or i8 %2, 2
  store i8 %3, i8* %0, align 1
  ret i32 2
}

define i32 @f2_reload(%union.u2* nocapture %a0) nounwind {
entry:
  %0 = getelementptr inbounds %union.u2* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %conv = zext i8 %1 to i64
  %add = add i64 %conv, 2
  %bf.value = and i64 %add, 7
  %2 = trunc i64 %bf.value to i8
  %3 = and i8 %1, -8
  %4 = or i8 %2, %3
  store i8 %4, i8* %0, align 1
  %conv2 = trunc i64 %bf.value to i32
  ret i32 %conv2
}

define i64 @test_2() nounwind readnone {
entry:
  ret i64 2
}

define i32 @f3_load(%struct.s3* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s3* %a0 to i64*
  %1 = load i64* %0, align 8
  %2 = and i64 %1, -4294967296
  %3 = or i64 %2, 1
  store i64 %3, i64* %0, align 8
  ret i32 1
}

define i32 @f3_store(%struct.s3* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s3* %a0 to i64*
  %1 = load i64* %0, align 8
  %2 = and i64 %1, -4294967296
  %3 = or i64 %2, 1234
  store i64 %3, i64* %0, align 8
  ret i32 1234
}

define i32 @f3_reload(%struct.s3* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s3* %a0 to i64*
  %1 = load i64* %0, align 8
  %2 = and i64 %1, -4294967296
  %3 = or i64 %2, 1235
  store i64 %3, i64* %0, align 8
  ret i32 1235
}

define i64 @test_3() nounwind readnone {
entry:
  ret i64 -559039940
}

define i32 @f4_load(%struct.s4* nocapture %a0) nounwind readonly {
entry:
  %0 = bitcast %struct.s4* %a0 to i32*
  %1 = load i32* %0, align 4
  %bf.clear = and i32 %1, 65535
  %2 = lshr i32 %1, 16
  %bf.field.offs = getelementptr %struct.s4* %a0, i64 0, i32 0, i64 4
  %3 = bitcast i8* %bf.field.offs to i32*
  %4 = load i32* %3, align 4
  %bf.clear2 = shl i32 %4, 16
  %5 = and i32 %bf.clear2, 268369920
  %6 = or i32 %5, %2
  %xor = xor i32 %6, %bf.clear
  ret i32 %xor
}

define i32 @f4_store(%struct.s4* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s4* %a0 to i32*
  store i32 372114642, i32* %0, align 4
  %bf.field.offs = getelementptr %struct.s4* %a0, i64 0, i32 0, i64 4
  %1 = bitcast i8* %bf.field.offs to i32*
  %2 = load i32* %1, align 4
  %3 = and i32 %2, -4096
  store i32 %3, i32* %1, align 4
  ret i32 4860
}

define i32 @f4_reload(%struct.s4* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s4* %a0 to i32*
  %1 = load i32* %0, align 4
  %add = add nsw i32 %1, 1234
  %bf.value = and i32 %add, 65535
  %2 = lshr i32 %1, 16
  %bf.field.offs = getelementptr %struct.s4* %a0, i64 0, i32 0, i64 4
  %3 = bitcast i8* %bf.field.offs to i32*
  %4 = load i32* %3, align 4
  %bf.clear2 = shl i32 %4, 16
  %5 = or i32 %bf.clear2, %2
  %add3 = add nsw i32 %5, 5678
  %bf.value4 = and i32 %add3, 268435455
  %6 = shl i32 %add3, 16
  %7 = or i32 %6, %bf.value
  store i32 %7, i32* %0, align 4
  %8 = lshr i32 %add3, 16
  %9 = and i32 %8, 4095
  %10 = and i32 %4, -4096
  %11 = or i32 %9, %10
  store i32 %11, i32* %3, align 4
  %xor = xor i32 %bf.value4, %bf.value
  ret i32 %xor
}

define i64 @test_4() nounwind readnone {
entry:
  ret i64 4860
}

define i32 @f5_load(%struct.s5* nocapture %a0) nounwind readonly {
entry:
  %0 = bitcast %struct.s5* %a0 to i32*
  %1 = load i32* %0, align 4
  %bf.clear = and i32 %1, 3
  %2 = lshr i32 %1, 2
  %3 = and i32 %2, 1
  %xor = xor i32 %3, %bf.clear
  ret i32 %xor
}

define i32 @f5_store(%struct.s5* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s5* %a0 to i32*
  %1 = load i32* %0, align 4
  %2 = or i32 %1, 3
  store i32 %2, i32* %0, align 4
  %3 = getelementptr inbounds %struct.s5* %a0, i64 0, i32 0
  %trunc = trunc i32 %2 to i8
  %4 = or i8 %trunc, 12
  store i8 %4, i8* %3, align 4
  ret i32 3
}

define i32 @f5_reload(%struct.s5* nocapture %a0) nounwind {
entry:
  %0 = bitcast %struct.s5* %a0 to i32*
  %1 = load i32* %0, align 4
  %add = add nsw i32 %1, 3
  %bf.value = and i32 %add, 3
  %2 = and i32 %1, -4
  %3 = or i32 %bf.value, %2
  store i32 %3, i32* %0, align 4
  %4 = getelementptr inbounds %struct.s5* %a0, i64 0, i32 0
  %trunc = trunc i32 %3 to i8
  %5 = or i8 %trunc, 12
  store i8 %5, i8* %4, align 4
  ret i32 %bf.value
}

define i64 @test_5() nounwind readnone {
entry:
  ret i64 2
}

define i32 @f6_load(%struct.s6* nocapture %a0) nounwind readonly {
entry:
  %0 = getelementptr inbounds %struct.s6* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %2 = and i8 %1, 1
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

define i32 @f6_store(%struct.s6* nocapture %a0) nounwind {
entry:
  %0 = getelementptr inbounds %struct.s6* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %2 = and i8 %1, -4
  store i8 %2, i8* %0, align 1
  ret i32 0
}

define i32 @f6_reload(%struct.s6* nocapture %a0) nounwind {
entry:
  %0 = getelementptr inbounds %struct.s6* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %2 = and i8 %1, -4
  %3 = or i8 %2, 1
  store i8 %3, i8* %0, align 1
  ret i32 1
}

define zeroext i1 @test_6() nounwind readnone {
entry:
  ret i1 true
}

define i32 @f7_load(%struct.s7* nocapture %a0) nounwind readonly {
entry:
  %0 = getelementptr %struct.s7* %a0, i64 0, i32 3
  %1 = bitcast i8* %0 to i32*
  %2 = load i32* %1, align 4
  %3 = shl i32 %2, 27
  %bf.val.sext = ashr exact i32 %3, 27
  ret i32 %bf.val.sext
}

define i32 @f8_load(%struct.s8* nocapture %a0) nounwind readonly {
entry:
  %0 = getelementptr inbounds %struct.s8* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %2 = shl i8 %1, 4
  %bf.field.offs = getelementptr i8* %0, i64 2
  %3 = load i8* %bf.field.offs, align 1
  %4 = zext i8 %3 to i32
  %5 = shl i32 %4, 28
  %bf.val.sext2 = ashr exact i32 %5, 28
  %bf.val.sext511 = xor i8 %3, %2
  %xor10 = ashr i8 %bf.val.sext511, 4
  %xor = sext i8 %xor10 to i32
  %xor7 = xor i32 %xor, %bf.val.sext2
  ret i32 %xor7
}

define i32 @f8_store(%struct.s8* nocapture %a0) nounwind {
entry:
  %0 = getelementptr inbounds %struct.s8* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %2 = and i8 %1, -16
  %3 = or i8 %2, 13
  store i8 %3, i8* %0, align 1
  %bf.field.offs = getelementptr i8* %0, i64 2
  store i8 -35, i8* %bf.field.offs, align 1
  ret i32 -3
}

define i32 @f8_reload(%struct.s8* nocapture %a0) nounwind {
entry:
  %0 = getelementptr inbounds %struct.s8* %a0, i64 0, i32 0
  %1 = load i8* %0, align 1
  %2 = shl i8 %1, 4
  %bf.val.sext = ashr exact i8 %2, 4
  %add = add i8 %bf.val.sext, 13
  %bf.value = and i8 %add, 15
  %3 = shl i8 %add, 4
  %bf.reload.sext = ashr exact i8 %3, 4
  %4 = and i8 %1, -16
  %5 = or i8 %bf.value, %4
  store i8 %5, i8* %0, align 1
  %conv2 = sext i8 %bf.reload.sext to i32
  %bf.field.offs = getelementptr i8* %0, i64 2
  %6 = load i8* %bf.field.offs, align 1
  %7 = zext i8 %6 to i32
  %bf.val.sext423 = and i32 %7, 15
  %add5 = add nsw i32 %bf.val.sext423, 13
  %8 = shl i32 %add5, 28
  %bf.reload.sext7 = ashr exact i32 %8, 28
  %add5.tr = trunc i32 %add5 to i8
  %9 = and i8 %add5.tr, 15
  %bf.val.sext112526 = add i8 %6, -48
  %10 = and i8 %bf.val.sext112526, -16
  %bf.reload.sext16 = ashr exact i8 %10, 4
  %11 = or i8 %9, %10
  store i8 %11, i8* %bf.field.offs, align 1
  %conv18 = sext i8 %bf.reload.sext16 to i32
  %xor = xor i32 %bf.reload.sext7, %conv18
  %xor19 = xor i32 %xor, %conv2
  ret i32 %xor19
}

define i32 @test_8() nounwind readnone {
entry:
  ret i32 -3
}

define i32 @f9_load(%struct.s9* nocapture %a0) nounwind readonly {
entry:
  %0 = getelementptr inbounds %struct.s9* %a0, i64 0, i32 0
  %bf.field.offs = getelementptr i8* %0, i64 6
  %1 = load i8* %bf.field.offs, align 1
  %2 = lshr i8 %1, 1
  %3 = zext i8 %2 to i32
  ret i32 %3
}
