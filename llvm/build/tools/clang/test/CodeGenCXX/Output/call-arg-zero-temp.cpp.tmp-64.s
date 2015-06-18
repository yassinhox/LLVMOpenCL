	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z3foo3obj
	.align	4, 0x90
__Z3foo3obj:
	subq	$24, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, 8(%rsp)
	movsd	%xmm0, 16(%rsp)
	movl	8(%rsp), %esi
	cvtss2sd	12(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	movq	%rax, %rdi
	movb	$2, %al
	callq	_printf
	movl	%eax, 4(%rsp)
	addq	$24, %rsp
	ret

	.globl	_main
	.align	4, 0x90
_main:
	subq	$40, %rsp
	movl	$0, %esi
	movabsq	$16, %rdx
	leaq	24(%rsp), %rax
	movq	%rax, %rdi
	callq	_memset
	movl	$0, %esi
	movabsq	$16, %rdx
	leaq	8(%rsp), %rax
	movq	%rax, %rdi
	callq	_memset
	movq	8(%rsp), %rdi
	movsd	16(%rsp), %xmm0
	callq	__Z3foo3obj
	movl	$0, %eax
	addq	$40, %rsp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "%d  %f  %f\n"


.subsections_via_symbols
