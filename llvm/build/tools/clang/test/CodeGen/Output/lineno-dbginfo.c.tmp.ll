; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/lineno-dbginfo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outer = global i32 42, align 4

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/lineno-dbginfo.c", metadata !"/home/jazouani/llvm/build/tools/clang/test/CodeGen", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !1, metadata !3} ; [ DW_TAG_compile_unit ] [/home/jazouani/llvm/build/tools/clang/test/CodeGen//home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/lineno-dbginfo.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786484, i32 0, null, metadata !"outer", metadata !"outer", metadata !"", metadata !6, i32 5, metadata !7, i32 0, i32 1, i32* @outer} ; [ DW_TAG_variable ] [outer] [line 5] [def]
!6 = metadata !{i32 786473, metadata !"/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/lineno-dbginfo.c", metadata !"/home/jazouani/llvm/build/tools/clang/test/CodeGen", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
