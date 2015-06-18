	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z3foo3obj
	.align	4, 0x90
__Z3foo3obj:
	pushl	%esi
	subl	$40, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	leal	48(%esp), %ecx
	leal	L_.str-L0$pb(%eax), %edx
	movl	(%ecx), %esi
	fldl	8(%ecx)
	flds	4(%ecx)
	movl	%esp, %ecx
	fxch
	fstpl	16(%ecx)
	fstpl	8(%ecx)
	movl	%esi, 4(%ecx)
	leal	L_.str-L0$pb(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 36(%esp)
	calll	L_printf$stub
	movl	%eax, 32(%esp)
	addl	$40, %esp
	popl	%esi
	ret

	.globl	_main
	.align	4, 0x90
_main:
	subl	$76, %esp
	movl	$0, %eax
	movl	$16, %ecx
	leal	56(%esp), %edx
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	$16, 8(%esp)
	movl	%eax, 36(%esp)
	movl	%ecx, 32(%esp)
	calll	_memset$stub
	movl	$0, %eax
	movl	$16, %ecx
	leal	40(%esp), %edx
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	$16, 8(%esp)
	movl	%eax, 28(%esp)
	movl	%ecx, 24(%esp)
	calll	_memset$stub
	leal	40(%esp), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%esp)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%esp)
	movl	12(%eax), %eax
	movl	%eax, 12(%esp)
	calll	__Z3foo3obj
	movl	$0, %eax
	addl	$76, %esp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "%d  %f  %f\n"


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"
_memset$stub:
	.indirect_symbol	_memset
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
