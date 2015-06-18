	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$40, %rsp
	callq	__Z1fv
	leaq	24(%rsp), %rdi
	callq	__ZN1BcvR1AEv
	movq	%rax, 32(%rsp)
	callq	__Z1dv
	leaq	8(%rsp), %rax
	movq	%rax, %rdi
	callq	__ZN1BcvR1AEv
	movl	$0, %ecx
	movq	%rax, 16(%rsp)
	movl	%ecx, %eax
	addq	$40, %rsp
	ret


.subsections_via_symbols
