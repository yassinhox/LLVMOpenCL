	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z2f1i
	.align	4, 0x90
__Z2f1i:
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	ret

	.globl	__Z2f2f
	.align	4, 0x90
__Z2f2f:
	movss	%xmm0, -4(%rsp)
	cvttss2si	-4(%rsp), %eax
	ret

	.globl	_main
	.align	4, 0x90
_main:
	subq	$56, %rsp
	leaq	_a(%rip), %rdi
	movl	$0, 52(%rsp)
	callq	__ZN1AcvPFiiEEv
	leaq	L_.str(%rip), %rdi
	movl	$10, %ecx
	movq	%rdi, 32(%rsp)
	movl	%ecx, %edi
	callq	*%rax
	movl	%eax, 48(%rsp)
	movl	48(%rsp), %esi
	movq	32(%rsp), %rdi
	movb	$0, %al
	callq	_printf
	leaq	_b(%rip), %rdi
	movl	%eax, 28(%rsp)
	callq	__ZN1BcvRFiiEEv
	leaq	L_.str1(%rip), %rdi
	movl	$20, %ecx
	movq	%rdi, 16(%rsp)
	movl	%ecx, %edi
	callq	*%rax
	movl	%eax, 44(%rsp)
	movl	44(%rsp), %esi
	movq	16(%rsp), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, %ecx
	movl	%eax, 12(%rsp)
	movl	%ecx, %eax
	addq	$56, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1AcvPFiiEEv
	.weak_definition	__ZN1AcvPFiiEEv
	.align	4, 0x90
__ZN1AcvPFiiEEv:
	leaq	__Z2f1i(%rip), %rax
	movq	%rdi, -8(%rsp)
	ret

	.globl	__ZN1BcvRFiiEEv
	.weak_definition	__ZN1BcvRFiiEEv
	.align	4, 0x90
__ZN1BcvRFiiEEv:
	leaq	__Z2f1i(%rip), %rax
	movq	%rdi, -8(%rsp)
	ret

	.section	__DATA,__data
	.globl	_a
_a:
	.space	1

	.globl	_b
_b:
	.space	1

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "i = %d\n"

L_.str1:
	.asciz	 "j = %d\n"


.subsections_via_symbols
