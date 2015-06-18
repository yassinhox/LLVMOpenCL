	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	pushq	%rax
	leaq	(%rsp), %rdi
	callq	__ZN1MC1Ev
	movl	$0, %eax
	popq	%rdx
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1MC1Ev
	.weak_definition	__ZN1MC1Ev
	.align	4, 0x90
__ZN1MC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1MC2Ev
	popq	%rax
	ret

	.globl	__ZN1MC2Ev
	.weak_definition	__ZN1MC2Ev
	.align	4, 0x90
__ZN1MC2Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1SC1Ev
	popq	%rax
	ret

	.globl	__ZN1SC1Ev
	.weak_definition	__ZN1SC1Ev
	.align	4, 0x90
__ZN1SC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1SC2Ev
	popq	%rax
	ret

	.globl	__ZN1SC2Ev
	.weak_definition	__ZN1SC2Ev
	.align	4, 0x90
__ZN1SC2Ev:
	subq	$24, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "S::S()\n"


.subsections_via_symbols
