	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init:
	pushq	%rax
	leaq	_srcX(%rip), %rdi
	callq	__ZN1XC1Ev
	popq	%rax
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

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init1:
	pushq	%rax
	leaq	_dstX(%rip), %rdi
	callq	__ZN1XC1Ev
	popq	%rax
	ret

	.align	4, 0x90
___cxx_global_var_init2:
	pushq	%rax
	leaq	_dstY(%rip), %rdi
	callq	__ZN1XC1Ev
	popq	%rax
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	pushq	%rax
	leaq	_dstX(%rip), %rdi
	leaq	_srcX(%rip), %rsi
	callq	__ZN1XaSERKS_
	leaq	_dstY(%rip), %rdi
	movq	%rax, %rsi
	callq	__ZN1XaSERKS_
	leaq	_srcX(%rip), %rdi
	movq	%rax, (%rsp)
	callq	__ZN1X2prEv
	leaq	_dstX(%rip), %rdi
	callq	__ZN1X2prEv
	leaq	_dstY(%rip), %rdi
	callq	__ZN1X2prEv
	movl	$0, %eax
	popq	%rdx
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XaSERKS_
	.weak_definition	__ZN1XaSERKS_
	.align	4, 0x90
__ZN1XaSERKS_:
	subq	$72, %rsp
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	64(%rsp), %rsi
	movq	56(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	movl	8(%rdi), %ecx
	movl	%ecx, 8(%rsi)
	movq	%rsi, %rax
	addq	$12, %rax
	movq	56(%rsp), %rdi
	addq	$12, %rdi
	movq	%rdi, 48(%rsp)
	movq	%rax, %rdi
	movq	48(%rsp), %rax
	movq	%rsi, 40(%rsp)
	movq	%rax, %rsi
	callq	__ZN1NaSERKS_
	movq	56(%rsp), %rsi
	movsd	104(%rsi), %xmm0
	movq	40(%rsp), %rsi
	movsd	%xmm0, 104(%rsi)
	movq	56(%rsp), %rdi
	movsd	112(%rdi), %xmm0
	movsd	%xmm0, 112(%rsi)
	movq	56(%rsp), %rdi
	movsd	120(%rdi), %xmm0
	movsd	%xmm0, 120(%rsi)
	movq	56(%rsp), %rdi
	movsd	128(%rdi), %xmm0
	movsd	%xmm0, 128(%rsi)
	addq	$136, %rsi
	movq	56(%rsp), %rdi
	addq	$136, %rdi
	movq	%rdi, 32(%rsp)
	movq	%rsi, %rdi
	movq	32(%rsp), %rsi
	movq	%rax, 24(%rsp)
	callq	__ZN1QaSERKS_
	movq	40(%rsp), %rsi
	addq	$156, %rsi
	movq	56(%rsp), %rdi
	addq	$156, %rdi
	movq	%rdi, 16(%rsp)
	movq	%rsi, %rdi
	movq	16(%rsp), %rsi
	movq	%rax, 8(%rsp)
	callq	__ZN1QaSERKS_
	movq	40(%rsp), %rsi
	movq	%rax, (%rsp)
	movq	%rsi, %rax
	addq	$72, %rsp
	ret

	.globl	__ZN1X2prEv
	.weak_definition	__ZN1X2prEv
	.align	4, 0x90
__ZN1X2prEv:
	subq	$24, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movsd	104(%rdi), %xmm0
	movsd	112(%rdi), %xmm1
	movsd	120(%rdi), %xmm2
	movsd	128(%rdi), %xmm3
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	movb	$4, %al
	callq	_printf
	movq	8(%rsp), %rdi
	movl	%eax, 4(%rsp)
	callq	__ZN1M2prEv
	movq	8(%rsp), %rdi
	addq	$12, %rdi
	callq	__ZN1N2prEv
	movq	8(%rsp), %rdi
	addq	$136, %rdi
	callq	__ZN1Q2prEv
	movq	8(%rsp), %rdi
	addq	$156, %rdi
	callq	__ZN1Q2prEv
	addq	$24, %rsp
	ret

	.globl	__ZN1M2prEv
	.weak_definition	__ZN1M2prEv
	.align	4, 0x90
__ZN1M2prEv:
	subq	$24, %rsp
	leaq	L_.str7(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movl	(%rdi), %esi
	movl	4(%rdi), %edx
	movl	8(%rdi), %ecx
	movl	8(%rdi), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1N2prEv
	.weak_definition	__ZN1N2prEv
	.align	4, 0x90
__ZN1N2prEv:
	subq	$40, %rsp
	leaq	L_.str4(%rip), %rax
	movq	%rdi, 32(%rsp)
	movq	32(%rsp), %rdi
	movl	12(%rdi), %esi
	movl	16(%rdi), %edx
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, 28(%rsp)
	movl	%eax, 12(%rsp)
LBB8_1:
	cmpl	$3, 28(%rsp)
	jae	LBB8_8
	movl	$0, 24(%rsp)
LBB8_3:
	cmpl	$2, 24(%rsp)
	jae	LBB8_6
	leaq	L_.str5(%rip), %rdi
	movl	28(%rsp), %esi
	movl	24(%rsp), %edx
	movl	24(%rsp), %eax
	movl	28(%rsp), %ecx
	movq	16(%rsp), %r8
	addq	$20, %r8
	imulq	$24, %rcx, %rcx
	addq	%rcx, %r8
	imulq	$12, %rax, %rax
	addq	%rax, %r8
	cvtss2sd	(%r8), %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, 8(%rsp)
	movl	24(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 24(%rsp)
	jmp	LBB8_3
LBB8_6:
	jmp	LBB8_7
LBB8_7:
	movl	28(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rsp)
	jmp	LBB8_1
LBB8_8:
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	callq	__ZN1B2prEv
	addq	$40, %rsp
	ret

	.globl	__ZN1Q2prEv
	.weak_definition	__ZN1Q2prEv
	.align	4, 0x90
__ZN1Q2prEv:
	subq	$24, %rsp
	leaq	L_.str3(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movl	12(%rdi), %esi
	movl	16(%rdi), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1B2prEv
	.weak_definition	__ZN1B2prEv
	.align	4, 0x90
__ZN1B2prEv:
	subq	$24, %rsp
	leaq	L_.str6(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	cvtss2sd	(%rdi), %xmm0
	cvtss2sd	4(%rdi), %xmm1
	cvtss2sd	8(%rdi), %xmm2
	movq	%rax, %rdi
	movb	$3, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1NaSERKS_
	.weak_definition	__ZN1NaSERKS_
	.align	4, 0x90
__ZN1NaSERKS_:
	subq	$40, %rsp
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdi
	movl	12(%rdi), %eax
	movl	%eax, 12(%rsi)
	movq	24(%rsp), %rdi
	movl	16(%rdi), %eax
	movl	%eax, 16(%rsi)
	movl	$0, 20(%rsp)
	movq	%rsi, 8(%rsp)
LBB11_1:
	cmpl	$3, 20(%rsp)
	jae	LBB11_8
	movl	$0, 16(%rsp)
LBB11_3:
	cmpl	$2, 16(%rsp)
	jae	LBB11_6
	movl	16(%rsp), %eax
	movl	20(%rsp), %ecx
	movq	8(%rsp), %rdx
	addq	$20, %rdx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	imulq	$12, %rax, %rax
	addq	%rax, %rdx
	movl	16(%rsp), %eax
	movl	20(%rsp), %ecx
	movq	24(%rsp), %rsi
	addq	$20, %rsi
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rsi
	imulq	$12, %rax, %rax
	addq	%rax, %rsi
	movq	%rdx, %rdi
	callq	__ZN1BaSERKS_
	movq	%rax, (%rsp)
	movl	16(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 16(%rsp)
	jmp	LBB11_3
LBB11_6:
	jmp	LBB11_7
LBB11_7:
	movl	20(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rsp)
	jmp	LBB11_1
LBB11_8:
	movq	8(%rsp), %rax
	addq	$40, %rsp
	ret

	.globl	__ZN1QaSERKS_
	.weak_definition	__ZN1QaSERKS_
	.align	4, 0x90
__ZN1QaSERKS_:
	subq	$40, %rsp
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	32(%rsp), %rsi
	movq	%rsi, %rdi
	movq	24(%rsp), %rax
	movq	%rsi, 16(%rsp)
	movq	%rax, %rsi
	callq	__ZN1BaSERKS_
	movq	24(%rsp), %rsi
	movl	12(%rsi), %ecx
	movq	16(%rsp), %rsi
	movl	%ecx, 12(%rsi)
	movq	24(%rsp), %rdi
	movl	16(%rdi), %ecx
	movl	%ecx, 16(%rsi)
	movq	%rax, 8(%rsp)
	movq	%rsi, %rax
	addq	$40, %rsp
	ret

	.globl	__ZN1BaSERKS_
	.weak_definition	__ZN1BaSERKS_
	.align	4, 0x90
__ZN1BaSERKS_:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	-8(%rsp), %rsi
	movq	-16(%rsp), %rdi
	movss	(%rdi), %xmm0
	movss	%xmm0, (%rsi)
	movq	-16(%rsp), %rdi
	movss	4(%rdi), %xmm0
	movss	%xmm0, 4(%rsi)
	movq	-16(%rsp), %rdi
	movss	8(%rdi), %xmm0
	movss	%xmm0, 8(%rsi)
	movq	%rsi, %rax
	ret

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI14_0:
	.quad	4608533498688228557
LCPI14_1:
	.quad	4608083138725491507
LCPI14_2:
	.quad	4607632778762754458
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC2Ev
	.weak_definition	__ZN1XC2Ev
	.align	4, 0x90
__ZN1XC2Ev:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, %rax
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	callq	__ZN1MC2Ev
	movq	8(%rsp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	callq	__ZN1NC2Ev
	movsd	LCPI14_0(%rip), %xmm0
	movsd	LCPI14_1(%rip), %xmm1
	movsd	LCPI14_2(%rip), %xmm2
	xorps	%xmm3, %xmm3
	movq	8(%rsp), %rax
	movsd	%xmm3, 104(%rax)
	movsd	%xmm2, 112(%rax)
	movsd	%xmm1, 120(%rax)
	movsd	%xmm0, 128(%rax)
	addq	$136, %rax
	movq	%rax, %rdi
	callq	__ZN1QC1Ev
	movq	8(%rsp), %rax
	addq	$156, %rax
	movq	%rax, %rdi
	callq	__ZN1QC1Ev
	addq	$24, %rsp
	ret

	.globl	__ZN1MC2Ev
	.weak_definition	__ZN1MC2Ev
	.align	4, 0x90
__ZN1MC2Ev:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rdi
	movl	$10, (%rdi)
	movl	$11, 4(%rdi)
	movl	$12, 8(%rdi)
	ret

	.globl	__ZN1NC2Ev
	.weak_definition	__ZN1NC2Ev
	.align	4, 0x90
__ZN1NC2Ev:
	subq	$40, %rsp
	movq	%rdi, 32(%rsp)
	movq	32(%rsp), %rdi
	movq	%rdi, %rax
	movq	%rdi, 24(%rsp)
	movq	%rax, %rdi
	callq	__ZN1BC2Ev
	movq	24(%rsp), %rax
	movl	$20, 12(%rax)
	movl	$21, 16(%rax)
	addq	$20, %rax
	movq	%rax, %rdi
	addq	$72, %rdi
	movq	%rdi, 16(%rsp)
	movq	%rax, 8(%rsp)
LBB16_1:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	callq	__ZN1BC1Ev
	movq	(%rsp), %rax
	addq	$12, %rax
	movq	16(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 8(%rsp)
	jne	LBB16_1
	addq	$40, %rsp
	ret

	.globl	__ZN1QC1Ev
	.weak_definition	__ZN1QC1Ev
	.align	4, 0x90
__ZN1QC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1QC2Ev
	popq	%rax
	ret

	.globl	__ZN1QC2Ev
	.weak_definition	__ZN1QC2Ev
	.align	4, 0x90
__ZN1QC2Ev:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, %rax
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	callq	__ZN1BC2Ev
	movq	8(%rsp), %rax
	movl	$30, 12(%rax)
	movl	$31, 16(%rax)
	addq	$24, %rsp
	ret

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI19_0:
	.long	1078607217
LCPI19_1:
	.long	1078565274
LCPI19_2:
	.long	1078523331
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1BC2Ev
	.weak_definition	__ZN1BC2Ev
	.align	4, 0x90
__ZN1BC2Ev:
	movss	LCPI19_0(%rip), %xmm0
	movss	LCPI19_1(%rip), %xmm1
	movss	LCPI19_2(%rip), %xmm2
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rdi
	movss	%xmm2, (%rdi)
	movss	%xmm1, 4(%rdi)
	movss	%xmm0, 8(%rdi)
	ret

	.globl	__ZN1BC1Ev
	.weak_definition	__ZN1BC1Ev
	.align	4, 0x90
__ZN1BC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1BC2Ev
	popq	%rax
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I_a:
	pushq	%rax
	callq	___cxx_global_var_init
	callq	___cxx_global_var_init1
	callq	___cxx_global_var_init2
	popq	%rax
	ret

	.globl	_srcX
.zerofill __DATA,__common,_srcX,176,3
	.globl	_dstX
.zerofill __DATA,__common,_dstX,176,3
	.globl	_dstY
.zerofill __DATA,__common,_dstY,176,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "d = %f d1 = %f d2 = %f d3 = %f\n"

L_.str3:
	.asciz	 "Q1 = %d Q2 = %d\n"

L_.str4:
	.asciz	 "N1 = %d N2 = %d\n"

L_.str5:
	.asciz	 "arr_b[%d][%d] = %f\n"

L_.str6:
	.asciz	 "B1 = %f B2 = %f auB1 = %f\n"

L_.str7:
	.asciz	 "M1 = %d M2 = %d auM1 = %d auM2 = %d\n"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	3
	.quad	__GLOBAL__I_a

.subsections_via_symbols
