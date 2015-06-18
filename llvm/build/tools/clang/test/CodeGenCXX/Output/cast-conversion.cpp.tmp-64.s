	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$56, %rsp
	leaq	40(%rsp), %rdi
	movl	$10, %esi
	callq	__ZN1AC1Ei
	leaq	48(%rsp), %rdi
	callq	__ZN1BC1E1A
	leaq	24(%rsp), %rdi
	movl	$10, %esi
	callq	__ZN1AC1Ei
	leaq	32(%rsp), %rdi
	callq	__ZN1BC1E1A
	leaq	8(%rsp), %rdi
	movl	$10, %esi
	callq	__ZN1AC1Ei
	leaq	16(%rsp), %rdi
	callq	__ZN1BC1E1A
	movl	$0, %eax
	addq	$56, %rsp
	ret


.subsections_via_symbols
