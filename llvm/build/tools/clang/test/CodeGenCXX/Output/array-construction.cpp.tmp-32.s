	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$284, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	leal	88(%esp), %ecx
	movl	$0, 280(%esp)
	movl	%ecx, %edx
	addl	$192, %edx
	movl	%eax, 72(%esp)
	movl	%edx, 68(%esp)
	movl	%ecx, 64(%esp)
LBB0_1:
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 60(%esp)
	calll	L__ZN4xptoC1Ev$stub
	movl	60(%esp), %eax
	addl	$8, %eax
	movl	68(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 64(%esp)
	jne	LBB0_1
	movl	$0, 84(%esp)
LBB0_3:
	cmpl	$2, 84(%esp)
	jge	LBB0_14
	movl	$0, 80(%esp)
LBB0_5:
	cmpl	$3, 80(%esp)
	jge	LBB0_12
	movl	$0, 76(%esp)
LBB0_7:
	cmpl	$4, 76(%esp)
	jge	LBB0_10
	movl	72(%esp), %eax
	leal	L_.str-L0$pb(%eax), %ecx
	movl	84(%esp), %edx
	movl	80(%esp), %esi
	movl	76(%esp), %edi
	imull	$96, %edx, %ebx
	leal	88(%esp,%ebx), %ebx
	movl	%esi, %ebp
	shll	$5, %ebp
	addl	%ebp, %ebx
	movl	(%ebx,%edi,8), %ebp
	flds	4(%ebx,%edi,8)
	movl	%esp, %ebx
	fstpl	20(%ebx)
	movl	%ebp, 16(%ebx)
	movl	%edi, 12(%ebx)
	movl	%esi, 8(%ebx)
	movl	%edx, 4(%ebx)
	leal	L_.str-L0$pb(%eax), %edx
	movl	%edx, (%ebx)
	movl	%ecx, 56(%esp)
	calll	L_printf$stub
	movl	%eax, 52(%esp)
	movl	76(%esp), %eax
	addl	$1, %eax
	movl	%eax, 76(%esp)
	jmp	LBB0_7
LBB0_10:
	jmp	LBB0_11
LBB0_11:
	movl	80(%esp), %eax
	addl	$1, %eax
	movl	%eax, 80(%esp)
	jmp	LBB0_5
LBB0_12:
	jmp	LBB0_13
LBB0_13:
	movl	84(%esp), %eax
	addl	$1, %eax
	movl	%eax, 84(%esp)
	jmp	LBB0_3
LBB0_14:
	leal	88(%esp), %eax
	movl	%eax, %ecx
	addl	$192, %ecx
	movl	%eax, 48(%esp)
	movl	%ecx, 44(%esp)
LBB0_15:
	movl	44(%esp), %eax
	addl	$-8, %eax
	movl	%eax, (%esp)
	movl	%eax, 40(%esp)
	calll	L__ZN4xptoD1Ev$stub
	movl	40(%esp), %eax
	movl	48(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 44(%esp)
	jne	LBB0_15
	movl	280(%esp), %eax
	addl	$284, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4xptoC1Ev
	.weak_definition	__ZN4xptoC1Ev
	.align	4, 0x90
__ZN4xptoC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN4xptoC2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN4xptoD1Ev
	.weak_definition	__ZN4xptoD1Ev
	.align	4, 0x90
__ZN4xptoD1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN4xptoD2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN4xptoD2Ev
	.weak_definition	__ZN4xptoD2Ev
	.align	4, 0x90
__ZN4xptoD2Ev:
	subl	$12, %esp
	calll	L3$pb
L3$pb:
	popl	%eax
	movl	16(%esp), %ecx
	leal	L_.str1-L3$pb(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	calll	L_printf$stub
	movl	%eax, 4(%esp)
	addl	$12, %esp
	ret

	.globl	__ZN4xptoC2Ev
	.weak_definition	__ZN4xptoC2Ev
	.align	4, 0x90
__ZN4xptoC2Ev:
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	32(%esp), %ecx
	leal	L_.str2-L4$pb(%eax), %edx
	movl	%ecx, 16(%esp)
	movl	__ZL5count-L4$pb(%eax), %esi
	movl	%esi, %edi
	incl	%edi
	movl	%edi, __ZL5count-L4$pb(%eax)
	movl	%esi, (%ecx)
	flds	__ZL6fcount-L4$pb(%eax)
	fld1
	fadd	%st(1)
	fstps	__ZL6fcount-L4$pb(%eax)
	fstps	4(%ecx)
	movl	%edx, (%esp)
	calll	L_printf$stub
	movl	%eax, 12(%esp)
	addl	$20, %esp
	popl	%esi
	popl	%edi
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


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN4xptoC1Ev$stub:
	.indirect_symbol	__ZN4xptoC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4xptoC2Ev$stub:
	.indirect_symbol	__ZN4xptoC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4xptoD1Ev$stub:
	.indirect_symbol	__ZN4xptoD1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4xptoD2Ev$stub:
	.indirect_symbol	__ZN4xptoD2Ev
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
