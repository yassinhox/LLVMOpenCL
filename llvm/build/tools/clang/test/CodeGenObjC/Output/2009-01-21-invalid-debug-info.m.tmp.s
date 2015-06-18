	.file	"/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/2009-01-21-invalid-debug-info.m"
	.file	1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/<unknown>"
	.file	2 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/2009-01-21-invalid-debug-info.m"
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
	.align	16, 0x90
	.type	_2D__5B_I1_20_im0_5D_,@function
_2D__5B_I1_20_im0_5D_:
	.cfi_startproc
.Lfunc_begin0:
	.loc	2 13 0
	movabsq	$0, %rax
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	.loc	2 13 0 prologue_end
.Ltmp0:
	ret
.Ltmp1:
.Ltmp2:
	.size	_2D__5B_I1_20_im0_5D_, .Ltmp2-_2D__5B_I1_20_im0_5D_
.Lfunc_end0:
	.cfi_endproc

	.globl	f1
	.align	16, 0x90
	.type	f1,@function
f1:
	.cfi_startproc
.Lfunc_begin1:
	.loc	2 16 0
	movabsq	$0, %rax
	.loc	2 16 0 prologue_end
.Ltmp3:
	ret
.Ltmp4:
.Ltmp5:
	.size	f1, .Ltmp5-f1
.Lfunc_end1:
	.cfi_endproc

	.type	OBJC_CLASS_$_I1,@object
	.section	"__DATA, __objc_data","aw",@progbits
	.globl	OBJC_CLASS_$_I1
	.align	8
OBJC_CLASS_$_I1:
	.quad	OBJC_METACLASS_$_I1
	.quad	0
	.quad	_objc_empty_cache
	.quad	_objc_empty_vtable
	.quad	l_OBJC_CLASS_RO_$_I1
	.size	OBJC_CLASS_$_I1, 40

	.type	OBJC_METACLASS_$_I1,@object
	.globl	OBJC_METACLASS_$_I1
	.align	8
OBJC_METACLASS_$_I1:
	.quad	OBJC_METACLASS_$_I1
	.quad	OBJC_CLASS_$_I1
	.quad	_objc_empty_cache
	.quad	_objc_empty_vtable
	.quad	l_OBJC_METACLASS_RO_$_I1
	.size	OBJC_METACLASS_$_I1, 40

	.type	L_OBJC_CLASS_NAME_,@object
	.section	"__TEXT,__objc_classname,cstring_literals","aw",@progbits
L_OBJC_CLASS_NAME_:
	.asciz	 "I1"
	.size	L_OBJC_CLASS_NAME_, 3

	.type	l_OBJC_METACLASS_RO_$_I1,@object
	.section	"__DATA, __objc_const","aw",@progbits
	.align	8
l_OBJC_METACLASS_RO_$_I1:
	.long	3
	.long	40
	.long	40
	.zero	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	l_OBJC_METACLASS_RO_$_I1, 72

	.type	L_OBJC_METH_VAR_NAME_,@object
	.section	"__TEXT,__objc_methname,cstring_literals","aw",@progbits
L_OBJC_METH_VAR_NAME_:
	.asciz	 "im0"
	.size	L_OBJC_METH_VAR_NAME_, 4

	.type	L_OBJC_METH_VAR_TYPE_,@object
	.section	"__TEXT,__objc_methtype,cstring_literals","aw",@progbits
L_OBJC_METH_VAR_TYPE_:
	.asciz	 "@16@0:8"
	.size	L_OBJC_METH_VAR_TYPE_, 8

	.type	l_OBJC_$_INSTANCE_METHODS_I1,@object
	.section	"__DATA, __objc_const","aw",@progbits
	.align	8
l_OBJC_$_INSTANCE_METHODS_I1:
	.long	24
	.long	1
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	_2D__5B_I1_20_im0_5D_
	.size	l_OBJC_$_INSTANCE_METHODS_I1, 32

	.type	l_OBJC_CLASS_RO_$_I1,@object
	.align	8
l_OBJC_CLASS_RO_$_I1:
	.long	2
	.long	0
	.long	0
	.zero	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_I1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	l_OBJC_CLASS_RO_$_I1, 72

	.type	L_OBJC_LABEL_CLASS_$,@object
	.section	"__DATA, __objc_classlist, regular, no_dead_strip","aw",@progbits
	.align	8
L_OBJC_LABEL_CLASS_$:
	.quad	OBJC_CLASS_$_I1
	.size	L_OBJC_LABEL_CLASS_$, 8

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	208
	.short	2
	.long	.Labbrev_begin
	.byte	8
	.byte	1
	.long	.Lstring0
	.short	16
	.long	.Lstring1
	.quad	0
	.long	.Lsection_line
	.long	.Lstring2
	.byte	2
	.byte	2
	.long	.Lstring3
	.byte	2
	.byte	13

	.long	136
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.byte	1
	.byte	87
	.long	72

	.byte	3
	.long	.Lstring10
	.byte	2
	.byte	13
	.long	185

	.byte	2
	.byte	145
	.byte	120
	.byte	3
	.long	.Lstring11
	.byte	2
	.byte	13
	.long	200

	.byte	2
	.byte	145
	.byte	112
	.byte	0
	.byte	4
	.long	.Lstring5

	.byte	5
	.long	101
	.byte	6
	.long	.Lstring6
	.byte	0
	.byte	7
	.long	.Lstring4
	.long	106
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	5
	.long	111
	.byte	8
	.long	131
	.long	.Lstring7
	.byte	2
	.byte	13
	.byte	9
	.long	.Lstring8
	.byte	2
	.byte	16

	.long	185

	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.byte	1
	.byte	87

	.byte	10

	.long	.Lstring9
	.byte	0
	.byte	2
	.byte	10
	.byte	16
	.byte	5
	.long	176
	.byte	4
	.long	.Lstring12

	.byte	5
	.long	190
	.byte	8
	.long	195
	.long	.Lstring13
	.byte	2
	.byte	13
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
	.ascii	 "\345\177"
	.byte	11
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
	.byte	39
	.byte	25
	.byte	73
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.byte	100
	.byte	19
	.ascii	 "\347\177"
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	5
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	52
	.byte	25
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	4
	.byte	19
	.byte	0
	.byte	3
	.byte	14
	.byte	60
	.byte	25
	.byte	0
	.byte	0
	.byte	5
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	6
	.byte	19
	.byte	1
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	7
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	56
	.byte	10
	.byte	50
	.byte	11
	.byte	0
	.byte	0
	.byte	8
	.byte	22
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	9
	.byte	46
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	25
	.byte	73
	.byte	19
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
	.byte	10
	.byte	19
	.byte	0
	.ascii	 "\354\177"
	.byte	25
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.ascii	 "\346\177"
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
	.asciz	 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenObjC/<unknown>"
.Lstring2:
	.asciz	 "/home/jazouani/llvm/build/tools/clang/test/CodeGenObjC"
.Lstring3:
	.asciz	 "-[I1 im0]"
.Lstring4:
	.asciz	 "isa"
.Lstring5:
	.asciz	 "objc_class"
.Lstring6:
	.asciz	 "objc_object"
.Lstring7:
	.asciz	 "id"
.Lstring8:
	.asciz	 "f1"
.Lstring9:
	.asciz	 "I1"
.Lstring10:
	.asciz	 "self"
.Lstring11:
	.asciz	 "_cmd"
.Lstring12:
	.asciz	 "objc_selector"
.Lstring13:
	.asciz	 "SEL"

	.section	".note.GNU-stack","",@progbits
