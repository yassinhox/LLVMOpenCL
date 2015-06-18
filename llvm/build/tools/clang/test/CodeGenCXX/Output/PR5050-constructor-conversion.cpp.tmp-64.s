	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1fRK1B
	.align	4, 0x90
__Z1fRK1B:
	subq	$24, %rsp
	movq	%rdi, %rax
	movl	$1, %edx
	movq	%rsi, 16(%rsp)
	movq	16(%rsp), %rsi
	movq	%rax, 8(%rsp)
	callq	__ZN1AC1ERKS_i
	movq	8(%rsp), %rax
	addq	$24, %rsp
	ret


.subsections_via_symbols
