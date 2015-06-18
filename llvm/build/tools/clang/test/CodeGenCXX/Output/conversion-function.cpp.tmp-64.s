	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN1ScviEv
	.align	4, 0x90
__ZN1ScviEv:
	movl	$10, %eax
	movq	%rdi, -8(%rsp)
	ret

	.globl	__Z1f1S
	.align	4, 0x90
__Z1f1S:
	pushq	%rax
	leaq	(%rsp), %rdi
	callq	__ZN1ScviEv
	popq	%rdx
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init:
	pushq	%rax
	leaq	_x(%rip), %rdi
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
	leaq	_z(%rip), %rdi
	callq	__ZN1ZC1Ev
	popq	%rax
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1ZC1Ev
	.weak_definition	__ZN1ZC1Ev
	.align	4, 0x90
__ZN1ZC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1ZC2Ev
	popq	%rax
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1g1OS_
	.align	4, 0x90
__Z1g1OS_:
	subq	$40, %rsp
	leaq	32(%rsp), %rax
	movl	%edi, 32(%rsp)
	movl	%esi, 24(%rsp)
	movq	%rax, %rdi
	callq	__ZN1OcviEv
	cmpl	$0, %eax
	je	LBB6_2
	leaq	32(%rsp), %rdi
	callq	__ZN1OcviEv
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	jmp	LBB6_3
LBB6_2:
	movl	$0, %eax
	movl	%eax, 12(%rsp)
	jmp	LBB6_3
LBB6_3:
	movl	12(%rsp), %eax
	leaq	32(%rsp), %rdi
	movl	%eax, 20(%rsp)
	callq	__ZN1OcviEv
	cmpl	$0, %eax
	je	LBB6_6
	leaq	24(%rsp), %rdi
	callq	__ZN1OcviEv
	cmpl	$0, %eax
	je	LBB6_6
	leaq	32(%rsp), %rdi
	callq	__ZN1OcviEv
	leaq	24(%rsp), %rdi
	movl	%eax, 8(%rsp)
	callq	__ZN1OcviEv
	movl	8(%rsp), %ecx
	addl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	jmp	LBB6_7
LBB6_6:
	movl	20(%rsp), %eax
	movl	%eax, 4(%rsp)
LBB6_7:
	movl	4(%rsp), %eax
	leaq	32(%rsp), %rdi
	movl	%eax, 16(%rsp)
	callq	__ZN1OcviEv
	cmpl	$0, %eax
	je	LBB6_9
	jmp	LBB6_9
LBB6_9:
	leaq	L_.str(%rip), %rdi
	movl	20(%rsp), %esi
	movl	16(%rsp), %edx
	movl	32(%rsp), %ecx
	movl	24(%rsp), %r8d
	movb	$0, %al
	callq	_printf
	movl	%eax, (%rsp)
	addq	$40, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1OcviEv
	.weak_definition	__ZN1OcviEv
	.align	4, 0x90
__ZN1OcviEv:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rdi
	movl	(%rdi), %eax
	addl	$1, %eax
	movl	%eax, (%rdi)
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$248, %rsp
	leaq	120(%rsp), %rdi
	leaq	_y(%rip), %rax
	movq	%rdi, 72(%rsp)
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	callq	__ZN1Ycv1ZEv
	leaq	224(%rsp), %rdi
	movq	%rax, 224(%rsp)
	callq	__ZN1Zcv1XEv
	leaq	232(%rsp), %rdi
	movq	%rax, 232(%rsp)
	callq	__ZN1XcviEv
	movl	%eax, 244(%rsp)
	xorb	%cl, %cl
	leaq	L_.str2(%rip), %rdi
	movl	%eax, %esi
	movb	%cl, %al
	movb	%cl, 63(%rsp)
	callq	_printf
	movq	64(%rsp), %rdi
	movl	%eax, 56(%rsp)
	callq	__ZN1Ycv1ZEv
	leaq	200(%rsp), %rdi
	movq	%rax, 200(%rsp)
	callq	__ZN1Zcv1XEv
	leaq	208(%rsp), %rdi
	movq	%rax, 208(%rsp)
	callq	__ZN1XcvfEv
	movss	%xmm0, 220(%rsp)
	movss	220(%rsp), %xmm0
	movb	$1, %cl
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str3(%rip), %rdi
	movb	%cl, %al
	movb	%cl, 55(%rsp)
	callq	_printf
	leaq	_x(%rip), %rdi
	movq	%rdi, 40(%rsp)
	movl	%eax, 36(%rsp)
	callq	__ZN1XcviEv
	movl	%eax, 196(%rsp)
	movq	40(%rsp), %rdi
	movl	%eax, 32(%rsp)
	callq	__ZN1XcvfEv
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str4(%rip), %rdi
	movq	%rdi, 24(%rsp)
	movl	32(%rsp), %esi
	movb	55(%rsp), %al
	callq	_printf
	movq	64(%rsp), %rdi
	movl	%eax, 20(%rsp)
	callq	__ZN1Ycv1ZEv
	leaq	176(%rsp), %rdi
	movq	%rax, 176(%rsp)
	callq	__ZN1Zcv1XEv
	leaq	184(%rsp), %rdi
	movq	%rax, 184(%rsp)
	callq	__ZN1XcviEv
	movl	%eax, 196(%rsp)
	movq	64(%rsp), %rdi
	callq	__ZN1Ycv1ZEv
	leaq	160(%rsp), %rdi
	movq	%rax, 160(%rsp)
	callq	__ZN1Zcv1XEv
	leaq	168(%rsp), %rdi
	movq	%rax, 168(%rsp)
	callq	__ZN1XcvfEv
	movss	%xmm0, 220(%rsp)
	movl	196(%rsp), %esi
	movss	220(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	24(%rsp), %rdi
	movb	55(%rsp), %al
	callq	_printf
	movq	40(%rsp), %rdi
	movl	%eax, 16(%rsp)
	callq	__ZN1XcvfEv
	movss	%xmm0, 220(%rsp)
	movq	40(%rsp), %rdi
	callq	__ZN1XcviEv
	movl	%eax, 196(%rsp)
	movss	220(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	24(%rsp), %rdi
	movl	%eax, %esi
	movb	55(%rsp), %al
	callq	_printf
	movq	64(%rsp), %rdi
	movl	%eax, 12(%rsp)
	callq	__ZN1Ycv1ZEv
	leaq	136(%rsp), %rdi
	movq	%rax, 136(%rsp)
	callq	__ZN1Zcv1XEv
	leaq	144(%rsp), %rdi
	movq	%rax, 144(%rsp)
	callq	__ZN1XcviEv
	movl	%eax, 156(%rsp)
	leaq	L_.str5(%rip), %rdi
	movl	%eax, %esi
	movb	63(%rsp), %al
	callq	_printf
	movq	64(%rsp), %rdi
	movl	%eax, 8(%rsp)
	callq	__ZN1Ycv1ZEv
	leaq	112(%rsp), %rdi
	movq	%rax, 112(%rsp)
	callq	__ZN1Zcv1XEv
	movq	%rax, 120(%rsp)
	movq	72(%rsp), %rdi
	callq	__ZN1XcviEv
	leaq	L_.str6(%rip), %rdi
	movl	%eax, 132(%rsp)
	movl	132(%rsp), %esi
	movb	$0, %al
	callq	_printf
	leaq	104(%rsp), %rdi
	movl	%eax, 4(%rsp)
	callq	__ZN1OC1Ev
	leaq	96(%rsp), %rdi
	callq	__ZN1OC1Ev
	movl	104(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 80(%rsp)
	movl	88(%rsp), %edi
	movl	80(%rsp), %esi
	callq	__Z1g1OS_
	movl	$0, %eax
	addq	$248, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1Ycv1ZEv
	.weak_definition	__ZN1Ycv1ZEv
	.align	4, 0x90
__ZN1Ycv1ZEv:
	subq	$24, %rsp
	leaq	L_.str10(%rip), %rax
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movq	_z(%rip), %rdi
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movl	%eax, 4(%rsp)
	movq	%rdi, %rax
	addq	$24, %rsp
	ret

	.globl	__ZN1Zcv1XEv
	.weak_definition	__ZN1Zcv1XEv
	.align	4, 0x90
__ZN1Zcv1XEv:
	subq	$40, %rsp
	leaq	L_.str9(%rip), %rax
	movq	%rdi, 24(%rsp)
	movq	24(%rsp), %rdi
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movq	16(%rsp), %rdi
	movl	(%rdi), %ecx
	movl	_x(%rip), %edx
	addl	%ecx, %edx
	movl	%edx, _x(%rip)
	movss	4(%rdi), %xmm0
	movss	_x+4(%rip), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, _x+4(%rip)
	movq	_x(%rip), %rsi
	movq	%rsi, 32(%rsp)
	movq	32(%rsp), %rsi
	movl	%eax, 12(%rsp)
	movq	%rsi, %rax
	addq	$40, %rsp
	ret

	.globl	__ZN1XcviEv
	.weak_definition	__ZN1XcviEv
	.align	4, 0x90
__ZN1XcviEv:
	subq	$24, %rsp
	leaq	L_.str8(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movq	8(%rsp), %rdi
	movl	(%rdi), %ecx
	movl	%eax, 4(%rsp)
	movl	%ecx, %eax
	addq	$24, %rsp
	ret

	.globl	__ZN1XcvfEv
	.weak_definition	__ZN1XcvfEv
	.align	4, 0x90
__ZN1XcvfEv:
	subq	$24, %rsp
	leaq	L_.str7(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movq	8(%rsp), %rdi
	movss	4(%rdi), %xmm0
	movl	%eax, 4(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1OC1Ev
	.weak_definition	__ZN1OC1Ev
	.align	4, 0x90
__ZN1OC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1OC2Ev
	popq	%rax
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1fR2Yb
	.align	4, 0x90
__Z1fR2Yb:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	callq	__ZN2XBcviEv
	movl	%eax, 12(%rsp)
	movq	16(%rsp), %rdi
	callq	__ZN2YbcvcEv
	movb	%al, 11(%rsp)
	addq	$24, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1OC2Ev
	.weak_definition	__ZN1OC2Ev
	.align	4, 0x90
__ZN1OC2Ev:
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rdi
	movl	_count(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _count(%rip)
	movl	%eax, (%rdi)
	ret

	.globl	__ZN1ZC2Ev
	.weak_definition	__ZN1ZC2Ev
	.align	4, 0x90
__ZN1ZC2Ev:
	movabsq	$1, %rax
	cvtsi2ssq	%rax, %xmm0
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	movl	$1, (%rax)
	movss	%xmm0, 4(%rax)
	ret

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI17_0:
	.long	1067316150
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC2Ev
	.weak_definition	__ZN1XC2Ev
	.align	4, 0x90
__ZN1XC2Ev:
	movss	LCPI17_0(%rip), %xmm0
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rdi
	movl	$100, (%rdi)
	movss	%xmm0, 4(%rdi)
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I_a:
	pushq	%rax
	callq	___cxx_global_var_init
	callq	___cxx_global_var_init1
	popq	%rax
	ret

	.globl	_x
.zerofill __DATA,__common,_x,8,2
	.globl	_z
.zerofill __DATA,__common,_z,8,2
	.section	__DATA,__data
	.globl	_y
_y:
	.space	1

	.globl	_count
.zerofill __DATA,__common,_count,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "i = %d j = %d a.iO = %d b.iO = %d\n"

L_.str2:
	.asciz	 "c = %d\n"

L_.str3:
	.asciz	 "f = %f\n"

L_.str4:
	.asciz	 "i = %d float = %f\n"

L_.str5:
	.asciz	 "d = %d\n"

L_.str6:
	.asciz	 "e = %d\n"

L_.str7:
	.asciz	 "operator float()\n"

L_.str8:
	.asciz	 "operator int()\n"

L_.str9:
	.asciz	 "perator X()\n"

L_.str10:
	.asciz	 "perator Z()\n"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	3
	.quad	__GLOBAL__I_a

.subsections_via_symbols
