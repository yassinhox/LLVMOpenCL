	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1g1X
	.align	4, 0x90
__Z1g1X:
	subq	$24, %rsp
	leaq	8(%rsp), %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rax, %rdi
	callq	__ZN1X2prEv
	addq	$24, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1X2prEv
	.weak_definition	__ZN1X2prEv
	.align	4, 0x90
__ZN1X2prEv:
	subq	$24, %rsp
	leaq	L_.str2(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movl	(%rdi), %esi
	cvtss2sd	4(%rdi), %xmm0
	movq	8(%rdi), %rdx
	movq	%rax, %rdi
	movb	$1, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1f1X
	.align	4, 0x90
__Z1f1X:
	subq	$72, %rsp
	leaq	40(%rsp), %rax
	movl	$1, %ecx
	movq	%rdi, 56(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	__ZN1XC1Ei
	leaq	40(%rsp), %rdi
	callq	__ZN1X2prEv
	leaq	24(%rsp), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$0, %edx
	callq	__ZN1XC1EPKci
	leaq	24(%rsp), %rdi
	callq	__ZN1X2prEv
	leaq	8(%rsp), %rdi
	movl	$2, %esi
	callq	__ZN1XC1Ei
	movq	8(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	40(%rsp), %rdi
	callq	__ZN1X2prEv
	addq	$72, %rsp
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

	.globl	__ZN1XC1EPKci
	.weak_definition	__ZN1XC1EPKci
	.align	4, 0x90
__ZN1XC1EPKci:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 4(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	4(%rsp), %edx
	callq	__ZN1XC2EPKci
	addq	$24, %rsp
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$56, %rsp
	leaq	40(%rsp), %rdi
	callq	__ZN1XC1Ev
	movq	40(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	movq	48(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	movq	24(%rsp), %rdi
	movq	32(%rsp), %rsi
	callq	__Z1f1X
	leaq	8(%rsp), %rdi
	movl	$3, %esi
	callq	__ZN1XC1Ei
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	__Z1g1X
	movl	$0, %eax
	addq	$56, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC1Ev
	.weak_definition	__ZN1XC1Ev
	.align	4, 0x90
__ZN1XC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1XC2Ev
	popq	%rax
	ret

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI7_0:
	.long	1067030938
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC2Ev
	.weak_definition	__ZN1XC2Ev
	.align	4, 0x90
__ZN1XC2Ev:
	movss	LCPI7_0(%rip), %xmm0
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rdi
	movl	$100, (%rdi)
	movss	%xmm0, 4(%rdi)
	ret

	.globl	__ZN1XC2EPKci
	.weak_definition	__ZN1XC2EPKci
	.align	4, 0x90
__ZN1XC2EPKci:
	movabsq	$6, %rax
	cvtsi2ssq	%rax, %xmm0
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movl	%edx, -20(%rsp)
	movq	-8(%rsp), %rax
	movl	-20(%rsp), %edx
	movl	%edx, (%rax)
	movss	%xmm0, 4(%rax)
	movq	-16(%rsp), %rsi
	movslq	-20(%rsp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, 8(%rax)
	ret

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI9_0:
	.long	1075000115
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC2Ei
	.weak_definition	__ZN1XC2Ei
	.align	4, 0x90
__ZN1XC2Ei:
	leaq	L_.str1(%rip), %rax
	movss	LCPI9_0(%rip), %xmm0
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
	movq	-8(%rsp), %rdi
	movl	$2, (%rdi)
	movss	%xmm0, 4(%rdi)
	movq	%rax, 8(%rdi)
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Jessie"

L_.str1:
	.asciz	 "HELLO\n"

L_.str2:
	.asciz	 "iX = %d  fX = %f name = %s\n"


.subsections_via_symbols
