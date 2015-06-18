	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$236, %esp
	leal	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1MC1Ev$stub
	leal	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1M2prEv$stub
	leal	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1MD1Ev$stub
	movl	$0, %eax
	addl	$236, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1MC1Ev
	.weak_definition	__ZN1MC1Ev
	.align	4, 0x90
__ZN1MC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1MC2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1M2prEv
	.weak_definition	__ZN1M2prEv
	.align	4, 0x90
__ZN1M2prEv:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	calll	L2$pb
L2$pb:
	popl	%eax
	movl	112(%esp), %ecx
	movl	%ecx, 88(%esp)
	movl	88(%esp), %ecx
	movl	$0, 84(%esp)
	movl	%eax, 68(%esp)
	movl	%ecx, 64(%esp)
LBB2_1:
	cmpl	$3, 84(%esp)
	jge	LBB2_4
	movl	68(%esp), %eax
	leal	L_.str1-L2$pb(%eax), %ecx
	movl	84(%esp), %edx
	movl	64(%esp), %esi
	movl	8(%esi,%edx,8), %edi
	flds	12(%esi,%edx,8)
	movl	%edx, %ebx
	movl	%esp, %ebp
	fstpl	16(%ebp)
	movl	%edx, 12(%ebp)
	movl	%edi, 8(%ebp)
	movl	%ebx, 4(%ebp)
	leal	L_.str1-L2$pb(%eax), %edx
	movl	%edx, (%ebp)
	movl	%ecx, 60(%esp)
	calll	L_printf$stub
	movl	%eax, 56(%esp)
	movl	84(%esp), %eax
	addl	$1, %eax
	movl	%eax, 84(%esp)
	jmp	LBB2_1
LBB2_4:
	movl	$0, 80(%esp)
LBB2_5:
	cmpl	$2, 80(%esp)
	jge	LBB2_16
	movl	$0, 76(%esp)
LBB2_7:
	cmpl	$3, 76(%esp)
	jge	LBB2_14
	movl	$0, 72(%esp)
LBB2_9:
	cmpl	$4, 72(%esp)
	jge	LBB2_12
	movl	68(%esp), %eax
	leal	L_.str2-L2$pb(%eax), %ecx
	movl	80(%esp), %edx
	movl	76(%esp), %esi
	movl	72(%esp), %edi
	imull	$96, %edx, %ebx
	movl	%esi, %ebp
	shll	$5, %ebp
	movl	64(%esp), %eax
	addl	%ebx, %eax
	addl	%ebp, %eax
	movl	32(%eax,%edi,8), %ebx
	flds	36(%eax,%edi,8)
	movl	%edi, %eax
	movl	%esi, %ebp
	movl	%eax, 52(%esp)
	movl	%edx, %eax
	movl	%eax, 48(%esp)
	movl	%esp, %eax
	fstpl	32(%eax)
	movl	%edi, 28(%eax)
	movl	%esi, 24(%eax)
	movl	%edx, 20(%eax)
	movl	%ebx, 16(%eax)
	movl	52(%esp), %edx
	movl	%edx, 12(%eax)
	movl	%ebp, 8(%eax)
	movl	48(%esp), %esi
	movl	%esi, 4(%eax)
	movl	68(%esp), %edi
	leal	L_.str2-L2$pb(%edi), %ebx
	movl	%ebx, (%eax)
	movl	%ecx, 44(%esp)
	calll	L_printf$stub
	movl	%eax, 40(%esp)
	movl	72(%esp), %eax
	addl	$1, %eax
	movl	%eax, 72(%esp)
	jmp	LBB2_9
LBB2_12:
	jmp	LBB2_13
LBB2_13:
	movl	76(%esp), %eax
	addl	$1, %eax
	movl	%eax, 76(%esp)
	jmp	LBB2_7
LBB2_14:
	jmp	LBB2_15
LBB2_15:
	movl	80(%esp), %eax
	addl	$1, %eax
	movl	%eax, 80(%esp)
	jmp	LBB2_5
LBB2_16:
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.globl	__ZN1MD1Ev
	.weak_definition	__ZN1MD1Ev
	.align	4, 0x90
__ZN1MD1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1MD2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1MD2Ev
	.weak_definition	__ZN1MD2Ev
	.align	4, 0x90
__ZN1MD2Ev:
	subl	$44, %esp
	movl	48(%esp), %eax
	movl	%eax, 40(%esp)
	movl	40(%esp), %eax
	movl	%eax, %ecx
	addl	$32, %ecx
	movl	%ecx, %edx
	addl	$192, %edx
	movl	%eax, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	%edx, 28(%esp)
LBB4_1:
	movl	28(%esp), %eax
	addl	$-8, %eax
	movl	%eax, (%esp)
	movl	%eax, 24(%esp)
	calll	L__ZN1SD1Ev$stub
	movl	24(%esp), %eax
	movl	32(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 28(%esp)
	jne	LBB4_1
	movl	36(%esp), %eax
	addl	$8, %eax
	movl	%eax, %ecx
	addl	$24, %ecx
	movl	%eax, 20(%esp)
	movl	%ecx, 16(%esp)
LBB4_3:
	movl	16(%esp), %eax
	addl	$-8, %eax
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	calll	L__ZN1SD1Ev$stub
	movl	12(%esp), %eax
	movl	20(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 16(%esp)
	jne	LBB4_3
	addl	$44, %esp
	ret

	.globl	__ZN1SD1Ev
	.weak_definition	__ZN1SD1Ev
	.align	4, 0x90
__ZN1SD1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1SD2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1SD2Ev
	.weak_definition	__ZN1SD2Ev
	.align	4, 0x90
__ZN1SD2Ev:
	pushl	%esi
	subl	$40, %esp
	calll	L6$pb
L6$pb:
	popl	%eax
	movl	48(%esp), %ecx
	leal	L_.str-L6$pb(%eax), %edx
	movl	%ecx, 36(%esp)
	movl	(%ecx), %esi
	flds	4(%ecx)
	movl	%esp, %ecx
	fstpl	8(%ecx)
	movl	%esi, 4(%ecx)
	leal	L_.str-L6$pb(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 32(%esp)
	calll	L_printf$stub
	movl	%eax, 28(%esp)
	addl	$40, %esp
	popl	%esi
	ret

	.globl	__ZN1MC2Ev
	.weak_definition	__ZN1MC2Ev
	.align	4, 0x90
__ZN1MC2Ev:
	subl	$44, %esp
	movl	48(%esp), %eax
	movl	%eax, 40(%esp)
	movl	40(%esp), %eax
	movl	%eax, %ecx
	addl	$8, %ecx
	movl	%ecx, %edx
	addl	$24, %edx
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
LBB7_1:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 24(%esp)
	calll	L__ZN1SC1Ev$stub
	movl	24(%esp), %eax
	addl	$8, %eax
	movl	32(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 28(%esp)
	jne	LBB7_1
	movl	36(%esp), %eax
	addl	$32, %eax
	movl	%eax, %ecx
	addl	$192, %ecx
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
LBB7_3:
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	calll	L__ZN1SC1Ev$stub
	movl	12(%esp), %eax
	addl	$8, %eax
	movl	20(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 16(%esp)
	jne	LBB7_3
	addl	$44, %esp
	ret

	.globl	__ZN1SC1Ev
	.weak_definition	__ZN1SC1Ev
	.align	4, 0x90
__ZN1SC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1SC2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1SC2Ev
	.weak_definition	__ZN1SC2Ev
	.align	4, 0x90
__ZN1SC2Ev:
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	calll	L9$pb
L9$pb:
	popl	%eax
	movl	32(%esp), %ecx
	leal	L_.str3-L9$pb(%eax), %edx
	movl	%ecx, 16(%esp)
	movl	_i-L9$pb(%eax), %esi
	movl	%esi, %edi
	incl	%edi
	movl	%edi, _i-L9$pb(%eax)
	movl	%esi, (%ecx)
	flds	_vf-L9$pb(%eax)
	fld1
	fadd	%st(1)
	fstps	_vf-L9$pb(%eax)
	fstps	4(%ecx)
	movl	%edx, (%esp)
	calll	L_printf$stub
	movl	%eax, 12(%esp)
	addl	$20, %esp
	popl	%esi
	popl	%edi
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


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1M2prEv$stub:
	.indirect_symbol	__ZN1M2prEv
	.ascii	 "\364\364\364\364\364"
L__ZN1MC1Ev$stub:
	.indirect_symbol	__ZN1MC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1MC2Ev$stub:
	.indirect_symbol	__ZN1MC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1MD1Ev$stub:
	.indirect_symbol	__ZN1MD1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1MD2Ev$stub:
	.indirect_symbol	__ZN1MD2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SC1Ev$stub:
	.indirect_symbol	__ZN1SC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SC2Ev$stub:
	.indirect_symbol	__ZN1SC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SD1Ev$stub:
	.indirect_symbol	__ZN1SD1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SD2Ev$stub:
	.indirect_symbol	__ZN1SD2Ev
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
