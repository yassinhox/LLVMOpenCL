	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$232, %rsp
	leaq	8(%rsp), %rdi
	callq	__ZN1MC1Ev
	leaq	8(%rsp), %rdi
	callq	__ZN1M2prEv
	leaq	8(%rsp), %rdi
	callq	__ZN1MD1Ev
	movl	$0, %eax
	addq	$232, %rsp
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

	.globl	__ZN1M2prEv
	.weak_definition	__ZN1M2prEv
	.align	4, 0x90
__ZN1M2prEv:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, 56(%rsp)
	movq	56(%rsp), %rdi
	movl	$0, 52(%rsp)
	movq	%rdi, 32(%rsp)
LBB2_1:
	cmpl	$3, 52(%rsp)
	jge	LBB2_4
	leaq	L_.str1(%rip), %rdi
	movl	52(%rsp), %esi
	movslq	52(%rsp), %rax
	movq	32(%rsp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movl	52(%rsp), %ecx
	movslq	52(%rsp), %rax
	movq	32(%rsp), %r8
	cvtss2sd	12(%r8,%rax,8), %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, 28(%rsp)
	movl	52(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 52(%rsp)
	jmp	LBB2_1
LBB2_4:
	movl	$0, 48(%rsp)
LBB2_5:
	cmpl	$2, 48(%rsp)
	jge	LBB2_16
	movl	$0, 44(%rsp)
LBB2_7:
	cmpl	$3, 44(%rsp)
	jge	LBB2_14
	movl	$0, 40(%rsp)
LBB2_9:
	cmpl	$4, 40(%rsp)
	jge	LBB2_12
	leaq	L_.str2(%rip), %rdi
	movl	48(%rsp), %esi
	movl	44(%rsp), %edx
	movl	40(%rsp), %ecx
	movslq	40(%rsp), %rax
	movslq	44(%rsp), %r8
	movslq	48(%rsp), %r9
	movq	32(%rsp), %r10
	addq	$32, %r10
	imulq	$96, %r9, %r9
	addq	%r9, %r10
	shlq	$5, %r8
	addq	%r8, %r10
	movl	(%r10,%rax,8), %r8d
	movl	48(%rsp), %r9d
	movl	44(%rsp), %r11d
	movl	40(%rsp), %ebx
	movslq	40(%rsp), %rax
	movslq	44(%rsp), %r10
	movslq	48(%rsp), %r14
	movq	32(%rsp), %r15
	addq	$32, %r15
	imulq	$96, %r14, %r14
	addq	%r14, %r15
	shlq	$5, %r10
	addq	%r10, %r15
	cvtss2sd	4(%r15,%rax,8), %xmm0
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movb	$1, %al
	callq	_printf
	movl	%eax, 24(%rsp)
	movl	40(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 40(%rsp)
	jmp	LBB2_9
LBB2_12:
	jmp	LBB2_13
LBB2_13:
	movl	44(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 44(%rsp)
	jmp	LBB2_7
LBB2_14:
	jmp	LBB2_15
LBB2_15:
	movl	48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 48(%rsp)
	jmp	LBB2_5
LBB2_16:
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret

	.globl	__ZN1MD1Ev
	.weak_definition	__ZN1MD1Ev
	.align	4, 0x90
__ZN1MD1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1MD2Ev
	popq	%rax
	ret

	.globl	__ZN1MD2Ev
	.weak_definition	__ZN1MD2Ev
	.align	4, 0x90
__ZN1MD2Ev:
	subq	$72, %rsp
	movq	%rdi, 64(%rsp)
	movq	64(%rsp), %rdi
	movq	%rdi, %rax
	addq	$32, %rax
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	%rdi, 56(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rcx, 40(%rsp)
LBB4_1:
	movq	40(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	callq	__ZN1SD1Ev
	movq	32(%rsp), %rax
	movq	48(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 40(%rsp)
	jne	LBB4_1
	movq	56(%rsp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	%rax, 24(%rsp)
	movq	%rcx, 16(%rsp)
LBB4_3:
	movq	16(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	callq	__ZN1SD1Ev
	movq	8(%rsp), %rax
	movq	24(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 16(%rsp)
	jne	LBB4_3
	addq	$72, %rsp
	ret

	.globl	__ZN1SD1Ev
	.weak_definition	__ZN1SD1Ev
	.align	4, 0x90
__ZN1SD1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1SD2Ev
	popq	%rax
	ret

	.globl	__ZN1SD2Ev
	.weak_definition	__ZN1SD2Ev
	.align	4, 0x90
__ZN1SD2Ev:
	subq	$24, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movl	(%rdi), %esi
	cvtss2sd	4(%rdi), %xmm0
	movq	%rax, %rdi
	movb	$1, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1MC2Ev
	.weak_definition	__ZN1MC2Ev
	.align	4, 0x90
__ZN1MC2Ev:
	subq	$72, %rsp
	movq	%rdi, 64(%rsp)
	movq	64(%rsp), %rdi
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	%rdi, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%rax, 40(%rsp)
LBB7_1:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	callq	__ZN1SC1Ev
	movq	32(%rsp), %rax
	addq	$8, %rax
	movq	48(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 40(%rsp)
	jne	LBB7_1
	movq	56(%rsp), %rax
	addq	$32, %rax
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	%rcx, 24(%rsp)
	movq	%rax, 16(%rsp)
LBB7_3:
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	callq	__ZN1SC1Ev
	movq	8(%rsp), %rax
	addq	$8, %rax
	movq	24(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 16(%rsp)
	jne	LBB7_3
	addq	$72, %rsp
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
	leaq	L_.str3(%rip), %rax
	movabsq	$1, %rcx
	cvtsi2ssq	%rcx, %xmm0
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rcx
	movl	_i(%rip), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, _i(%rip)
	movl	%edx, (%rcx)
	movss	_vf(%rip), %xmm1
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, _vf(%rip)
	movss	%xmm1, 4(%rcx)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.section	__DATA,__data
	.globl	_i
	.align	2
_i:
	.long	1234

	.globl	_vf
	.align	2
_vf:
	.long	1065353216

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "S::~S(iS = %d  f1 = %f)\n"

L_.str1:
	.asciz	 "ARR_S[%d].iS = %d ARR_S[%d].f1 = %f\n"

L_.str2:
	.asciz	 "MULTI_ARR[%d][%d][%d].iS = %d MULTI_ARR[%d][%d][%d].f1 = %f\n"

L_.str3:
	.asciz	 "S::S()\n"


.subsections_via_symbols
