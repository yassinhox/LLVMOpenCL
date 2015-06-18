	.file	"/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/2009-07-31-DbgDeclare.c"
	.file	1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/<unknown>"
	.file	2 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/2009-07-31-DbgDeclare.c"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.text
	.globl	foo
	.align	16, 0x90
	.type	foo,@function
foo:
	.cfi_startproc
.Lfunc_begin0:
	.loc	2 2 0
	.loc	2 3 0 prologue_end
	movl	$0, -4(%rsp)
	.loc	2 4 0
	movl	$42, -4(%rsp)
	.loc	2 5 0
	ret
.Ltmp0:
.Ltmp1:
	.size	foo, .Ltmp1-foo
.Lfunc_end0:
	.cfi_endproc

	.cfi_sections .debug_frame
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	100
	.short	2
	.long	.Labbrev_begin
	.byte	8
	.byte	1
	.long	.Lstring0
	.short	12
	.long	.Lstring1
	.quad	0
	.long	.Lsection_line
	.long	.Lstring2
	.byte	2
	.long	.Lstring3
	.byte	2
	.byte	2

	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.byte	1
	.byte	87

	.byte	3
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.byte	4
	.long	.Lstring4
	.byte	2
	.byte	3
	.long	96
	.byte	2
	.byte	145
	.byte	124
	.byte	0
	.byte	0
	.byte	5
	.long	.Lstring5
	.byte	5
	.byte	4
	.byte	0
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	17
	.byte	1
	.byte	16
	.byte	6
	.byte	27
	.byte	14
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	63
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.ascii	 "\347\177"
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	4
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	5
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	0
.Labbrev_end:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 3.2 (tags/RELEASE_32/final)"
.Lstring1:
	.asciz	 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGen/<unknown>"
.Lstring2:
	.asciz	 "/home/jazouani/llvm/build/tools/clang/test/CodeGen"
.Lstring3:
	.asciz	 "foo"
.Lstring4:
	.asciz	 "i"
.Lstring5:
	.asciz	 "int"

	.section	".note.GNU-stack","",@progbits
