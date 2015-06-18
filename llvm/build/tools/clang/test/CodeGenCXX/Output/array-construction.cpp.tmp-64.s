	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$280, %rsp
	leaq	80(%rsp), %rax
	movl	$0, 276(%rsp)
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	%rcx, 56(%rsp)
	movq	%rax, 48(%rsp)
LBB0_1:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	callq	__ZN4xptoC1Ev
	movq	40(%rsp), %rax
	addq	$8, %rax
	movq	56(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 48(%rsp)
	jne	LBB0_1
	movl	$0, 76(%rsp)
LBB0_3:
	cmpl	$2, 76(%rsp)
	jge	LBB0_14
	movl	$0, 72(%rsp)
LBB0_5:
	cmpl	$3, 72(%rsp)
	jge	LBB0_12
	movl	$0, 68(%rsp)
LBB0_7:
	cmpl	$4, 68(%rsp)
	jge	LBB0_10
	leaq	L_.str(%rip), %rdi
	leaq	80(%rsp), %rax
	movl	76(%rsp), %esi
	movl	72(%rsp), %edx
	movl	68(%rsp), %ecx
	movslq	68(%rsp), %r8
	movslq	72(%rsp), %r9
	movslq	76(%rsp), %r10
	imulq	$96, %r10, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	shlq	$5, %r9
	addq	%r9, %r11
	movl	(%r11,%r8,8), %r8d
	movslq	68(%rsp), %r9
	movslq	72(%rsp), %r10
	movslq	76(%rsp), %r11
	imulq	$96, %r11, %r11
	addq	%r11, %rax
	shlq	$5, %r10
	addq	%r10, %rax
	cvtss2sd	4(%rax,%r9,8), %xmm0
	movb	$1, %al
	callq	_printf
	movl	%eax, 36(%rsp)
	movl	68(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 68(%rsp)
	jmp	LBB0_7
LBB0_10:
	jmp	LBB0_11
LBB0_11:
	movl	72(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 72(%rsp)
	jmp	LBB0_5
LBB0_12:
	jmp	LBB0_13
LBB0_13:
	movl	76(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 76(%rsp)
	jmp	LBB0_3
LBB0_14:
	leaq	80(%rsp), %rax
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	%rax, 24(%rsp)
	movq	%rcx, 16(%rsp)
LBB0_15:
	movq	16(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	callq	__ZN4xptoD1Ev
	movq	8(%rsp), %rax
	movq	24(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 16(%rsp)
	jne	LBB0_15
	movl	276(%rsp), %eax
	addq	$280, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4xptoC1Ev
	.weak_definition	__ZN4xptoC1Ev
	.align	4, 0x90
__ZN4xptoC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN4xptoC2Ev
	popq	%rax
	ret

	.globl	__ZN4xptoD1Ev
	.weak_definition	__ZN4xptoD1Ev
	.align	4, 0x90
__ZN4xptoD1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN4xptoD2Ev
	popq	%rax
	ret

	.globl	__ZN4xptoD2Ev
	.weak_definition	__ZN4xptoD2Ev
	.align	4, 0x90
__ZN4xptoD2Ev:
	subq	$24, %rsp
	leaq	L_.str1(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN4xptoC2Ev
	.weak_definition	__ZN4xptoC2Ev
	.align	4, 0x90
__ZN4xptoC2Ev:
	subq	$24, %rsp
	leaq	L_.str2(%rip), %rax
	movabsq	$1, %rcx
	cvtsi2ssq	%rcx, %xmm0
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rcx
	movl	__ZL5count(%rip), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, __ZL5count(%rip)
	movl	%edx, (%rcx)
	movss	__ZL6fcount(%rip), %xmm1
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, __ZL6fcount(%rip)
	movss	%xmm1, 4(%rcx)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "array[%d][%d][%d] = {%d, %f}\n"

L_.str1:
	.asciz	 "xpto::~xpto()\n"

.zerofill __DATA,__bss,__ZL5count,4,2
.zerofill __DATA,__bss,__ZL6fcount,4,2
L_.str2:
	.asciz	 "xpto::xpto()\n"


.subsections_via_symbols
