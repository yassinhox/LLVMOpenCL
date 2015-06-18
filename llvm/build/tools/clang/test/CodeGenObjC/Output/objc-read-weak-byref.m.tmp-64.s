	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	pushq	%rbx
	subq	$128, %rsp
	movl	$8, %esi
	leaq	64(%rsp), %rax
	leaq	16(%rsp), %rcx
	leaq	___block_descriptor_tmp(%rip), %rdx
	leaq	___main_block_invoke(%rip), %rdi
	movq	__NSConcreteStackBlock@GOTPCREL(%rip), %r8
	leaq	___Block_byref_object_dispose_(%rip), %r9
	leaq	___Block_byref_object_copy_(%rip), %r10
	movl	$1, %r11d
	movl	%r11d, %ebx
	movl	$0, 124(%rsp)
	movq	$0, 112(%rsp)
	movq	%rbx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movl	$33554432, 80(%rsp)
	movl	$48, 84(%rsp)
	movq	%r10, 88(%rsp)
	movq	%r9, 96(%rsp)
	movq	112(%rsp), %r9
	movq	%r9, 104(%rsp)
	movq	%r8, 16(%rsp)
	movl	$1107296256, 24(%rsp)
	movl	$0, 28(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rax, %rdx
	movq	%rdx, 48(%rsp)
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rdx
	movq	%rcx, %rdi
	movl	%esi, 8(%rsp)
	movq	%rdx, %rsi
	movq	%rax, (%rsp)
	callq	_objc_msgSend
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	movq	%rcx, %rdi
	callq	*16(%rax)
	movl	$0, 124(%rsp)
	movl	$1, 12(%rsp)
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movl	8(%rsp), %esi
	callq	__Block_object_dispose
	movl	124(%rsp), %eax
	addq	$128, %rsp
	popq	%rbx
	ret

	.align	4, 0x90
___Block_byref_object_copy_:
	.cfi_startproc
	subq	$24, %rsp
Ltmp1:
	.cfi_def_cfa_offset 32
	movl	$147, %edx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	addq	$40, %rsi
	movq	8(%rsp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, (%rsp)
	movq	%rsi, %rdi
	movq	(%rsp), %rsi
	callq	__Block_object_assign
	addq	$24, %rsp
	ret
	.cfi_endproc

	.align	4, 0x90
___Block_byref_object_dispose_:
	.cfi_startproc
	pushq	%rax
Ltmp3:
	.cfi_def_cfa_offset 16
	movl	$147, %esi
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	movq	40(%rdi), %rdi
	callq	__Block_object_dispose
	popq	%rax
	ret
	.cfi_endproc

	.align	4, 0x90
___main_block_invoke:
	subq	$24, %rsp
	movq	%rdi, %rax
	movq	32(%rdi), %rdi
	movq	8(%rdi), %rdi
	addq	$40, %rdi
	movq	%rax, 16(%rsp)
	callq	_objc_read_weak
	cmpq	$0, %rax
	je	LBB3_2
	movq	16(%rsp), %rax
	movq	32(%rax), %rcx
	movq	8(%rcx), %rcx
	addq	$40, %rcx
	movq	%rcx, %rdi
	callq	_objc_read_weak
	movq	L_OBJC_SELECTOR_REFERENCES_(%rip), %rsi
	movq	%rax, %rdi
	callq	_objc_msgSend
	movq	%rax, 8(%rsp)
LBB3_2:
	addq	$24, %rsp
	ret

	.align	4, 0x90
___copy_helper_block_:
	.cfi_startproc
	subq	$24, %rsp
Ltmp5:
	.cfi_def_cfa_offset 32
	movl	$24, %edx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	addq	$32, %rdi
	movq	32(%rsi), %rsi
	callq	__Block_object_assign
	addq	$24, %rsp
	ret
	.cfi_endproc

	.align	4, 0x90
___destroy_helper_block_:
	.cfi_startproc
	pushq	%rax
Ltmp7:
	.cfi_def_cfa_offset 16
	movl	$24, %esi
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	movq	32(%rdi), %rdi
	callq	__Block_object_dispose
	popq	%rax
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_:
	.asciz	 "copy"

	.section	__OBJC,__message_refs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_:
	.quad	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "v8@?0"

L_OBJC_CLASS_NAME_:
	.asciz	 "\0011"

	.section	__DATA,__const
	.align	4
___block_descriptor_tmp:
	.quad	0
	.quad	40
	.quad	___copy_helper_block_
	.quad	___destroy_helper_block_
	.quad	L_.str
	.quad	L_OBJC_CLASS_NAME_

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_1:
	.space	1

	.section	__OBJC,__module_info,regular,no_dead_strip
	.align	2
L_OBJC_MODULES:
	.quad	7
	.quad	32
	.quad	L_OBJC_CLASS_NAME_1
	.quad	0

	.section	__OBJC,__image_info
L_OBJC_IMAGE_INFO:
	.long	0
	.long	2


.subsections_via_symbols
