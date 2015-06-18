	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z2f1i
	.align	4, 0x90
__Z2f1i:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	movl	(%esp), %eax
	popl	%edx
	ret

	.globl	__Z2f2f
	.align	4, 0x90
__Z2f2f:
	subl	$16, %esp
	flds	20(%esp)
	fsts	12(%esp)
	fnstcw	6(%esp)
	movw	6(%esp), %ax
	movw	$3199, 6(%esp)
	fldcw	6(%esp)
	movw	%ax, 6(%esp)
	fistl	8(%esp)
	fldcw	6(%esp)
	movl	8(%esp), %eax
	fstps	(%esp)
	addl	$16, %esp
	ret

	.globl	_main
	.align	4, 0x90
_main:
	pushl	%esi
	subl	$56, %esp
	calll	L2$pb
L2$pb:
	popl	%eax
	leal	_a-L2$pb(%eax), %ecx
	movl	$0, 52(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 40(%esp)
	calll	L__ZN1AcvPFiiEEv$stub
	movl	40(%esp), %ecx
	leal	L_.str-L2$pb(%ecx), %edx
	movl	$10, %esi
	movl	$10, (%esp)
	movl	%esi, 36(%esp)
	movl	%edx, 32(%esp)
	calll	*%eax
	movl	%eax, 48(%esp)
	movl	48(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	L_printf$stub
	movl	40(%esp), %ecx
	leal	_b-L2$pb(%ecx), %edx
	movl	%edx, (%esp)
	movl	%eax, 28(%esp)
	calll	L__ZN1BcvRFiiEEv$stub
	movl	40(%esp), %ecx
	leal	L_.str1-L2$pb(%ecx), %edx
	movl	$20, %esi
	movl	$20, (%esp)
	movl	%esi, 24(%esp)
	movl	%edx, 20(%esp)
	calll	*%eax
	movl	%eax, 44(%esp)
	movl	44(%esp), %eax
	movl	20(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	L_printf$stub
	movl	$0, %ecx
	movl	%eax, 16(%esp)
	movl	%ecx, %eax
	addl	$56, %esp
	popl	%esi
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1AcvPFiiEEv
	.weak_definition	__ZN1AcvPFiiEEv
	.align	4, 0x90
__ZN1AcvPFiiEEv:
	pushl	%eax
	calll	L3$pb
L3$pb:
	popl	%eax
	movl	8(%esp), %ecx
	leal	__Z2f1i-L3$pb(%eax), %eax
	movl	%ecx, (%esp)
	popl	%edx
	ret

	.globl	__ZN1BcvRFiiEEv
	.weak_definition	__ZN1BcvRFiiEEv
	.align	4, 0x90
__ZN1BcvRFiiEEv:
	pushl	%eax
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	8(%esp), %ecx
	leal	__Z2f1i-L4$pb(%eax), %eax
	movl	%ecx, (%esp)
	popl	%edx
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


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1AcvPFiiEEv$stub:
	.indirect_symbol	__ZN1AcvPFiiEEv
	.ascii	 "\364\364\364\364\364"
L__ZN1BcvRFiiEEv$stub:
	.indirect_symbol	__ZN1BcvRFiiEEv
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
