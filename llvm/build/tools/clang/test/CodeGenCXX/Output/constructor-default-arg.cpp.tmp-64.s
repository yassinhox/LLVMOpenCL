	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z3foov
	.align	4, 0x90
__Z3foov:
	movl	$6, %eax
	ret

	.globl	_main
	.align	4, 0x90
_main:
	subq	$40, %rsp
	leaq	32(%rsp), %rdi
	movl	$1, %esi
	callq	__ZN1XC1Ei
	callq	__Z3foov
	leaq	24(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movl	$2, %ecx
	movl	%ecx, %edx
	movl	%eax, %r8d
	callq	__ZN1XC1ERKS_iii
	callq	__Z3foov
	leaq	16(%rsp), %rdi
	leaq	24(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	movl	%eax, %r8d
	callq	__ZN1XC1ERKS_iii
	callq	__Z3foov
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movl	$5, %edx
	movl	$6, %ecx
	movl	%eax, %r8d
	callq	__ZN1XC1ERKS_iii
	movl	$0, %eax
	addq	$40, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC1Ei
	.weak_definition	__ZN1XC1Ei
	.align	4, 0x90
__ZN1XC1Ei:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movq	16(%rsp), %rdi
	movl	12(%rsp), %esi
	callq	__ZN1XC2Ei
	addq	$24, %rsp
	ret

	.globl	__ZN1XC1ERKS_iii
	.weak_definition	__ZN1XC1ERKS_iii
	.align	4, 0x90
__ZN1XC1ERKS_iii:
	subq	$40, %rsp
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	%edx, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%r8d, 12(%rsp)
	movq	32(%rsp), %rdi
	movl	20(%rsp), %edx
	movl	16(%rsp), %ecx
	movl	12(%rsp), %r8d
	movq	24(%rsp), %rsi
	callq	__ZN1XC2ERKS_iii
	addq	$40, %rsp
	ret

	.globl	__ZN1XC2ERKS_iii
	.weak_definition	__ZN1XC2ERKS_iii
	.align	4, 0x90
__ZN1XC2ERKS_iii:
	subq	$40, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	%edx, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%r8d, 12(%rsp)
	movl	20(%rsp), %esi
	movl	16(%rsp), %edx
	movl	12(%rsp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 8(%rsp)
	addq	$40, %rsp
	ret

	.globl	__ZN1XC2Ei
	.weak_definition	__ZN1XC2Ei
	.align	4, 0x90
__ZN1XC2Ei:
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "X(const X&, %d, %d, %d)\n"


.subsections_via_symbols
