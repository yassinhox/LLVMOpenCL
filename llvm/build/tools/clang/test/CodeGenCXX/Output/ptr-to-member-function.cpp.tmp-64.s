	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK1A3fooEPi
	.align	4, 0x90
__ZNK1A3fooEPi:
	subq	$24, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	8(%rsp), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%eax, 4(%rsp)
	movl	%esi, %eax
	addq	$24, %rsp
	ret

	.globl	__Z1gM1CFvvE
	.align	4, 0x90
__Z1gM1CFvvE:
	subq	$72, %rsp
	leaq	32(%rsp), %rax
	movq	%rdi, 56(%rsp)
	movq	%rsi, 64(%rsp)
	movq	56(%rsp), %rdi
	movq	%rsi, 48(%rsp)
	movq	%rdi, 40(%rsp)
	movq	40(%rsp), %rsi
	movq	48(%rsp), %rdi
	addq	%rdi, %rax
	movq	%rsi, %rdi
	andq	$1, %rdi
	cmpq	$0, %rdi
	movq	%rsi, 24(%rsp)
	movq	%rax, 16(%rsp)
	je	LBB1_2
	movq	16(%rsp), %rax
	movq	(%rax), %rcx
	movq	24(%rsp), %rdx
	subq	$1, %rdx
	movq	(%rcx,%rdx), %rcx
	movq	%rcx, 8(%rsp)
	jmp	LBB1_3
LBB1_2:
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
LBB1_3:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdi
	callq	*%rax
	addq	$72, %rsp
	ret

	.globl	__Z5test21X
	.align	4, 0x90
__Z5test21X:
	subq	$24, %rsp
	leaq	16(%rsp), %rdi
	callq	__ZN1XcvM1BFvvEEv
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	__Z1gM1CFvvE
	addq	$24, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XcvM1BFvvEEv
	.weak_definition	__ZN1XcvM1BFvvEEv
	.align	4, 0x90
__ZN1XcvM1BFvvEEv:
	movq	%rdi, -8(%rsp)
	movq	__ZN1B2bfEv@GOTPCREL(%rip), %rax
	xorl	%edx, %edx
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$72, %rsp
	callq	__Z5test21X
	leaq	32(%rsp), %rdi
	movl	$1, %esi
	callq	__ZN2B1C1Ei
	leaq	8(%rsp), %rdi
	movl	$2, %esi
	callq	__ZN2B1C1Ei
	movl	$0, %eax
	addq	$72, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN2B1C1Ei
	.weak_definition	__ZN2B1C1Ei
	.align	4, 0x90
__ZN2B1C1Ei:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movq	16(%rsp), %rdi
	movl	12(%rsp), %esi
	callq	__ZN2B1C2Ei
	addq	$24, %rsp
	ret

	.globl	__ZN2B1C2Ei
	.weak_definition	__ZN2B1C2Ei
	.align	4, 0x90
__ZN2B1C2Ei:
	subq	$56, %rsp
	movq	%rdi, 48(%rsp)
	movl	%esi, 44(%rsp)
	movq	48(%rsp), %rdi
	leaq	__ZNK1A3fooEPi(%rip), %rax
	movq	%rax, (%rdi)
	movq	$0, 8(%rdi)
	movl	44(%rsp), %esi
	movl	%esi, 16(%rdi)
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rdi, %rdx
	addq	%rcx, %rdx
	movq	%rax, %rcx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rdi, 32(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rdx, 16(%rsp)
	je	LBB6_2
	movq	16(%rsp), %rax
	movq	(%rax), %rcx
	movq	24(%rsp), %rdx
	subq	$1, %rdx
	movq	(%rcx,%rdx), %rcx
	movq	%rcx, 8(%rsp)
	jmp	LBB6_3
LBB6_2:
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
LBB6_3:
	movq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	addq	$16, %rcx
	movq	16(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*%rax
	movb	%al, 7(%rsp)
	addq	$56, %rsp
	ret

	.globl	__ZN1B2bfEv
	.weak_definition	__ZN1B2bfEv
	.align	4, 0x90
__ZN1B2bfEv:
	subq	$24, %rsp
	leaq	L_.str1(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "A::foo(%d)\n"

L_.str1:
	.asciz	 "B::bf called\n"


.subsections_via_symbols
