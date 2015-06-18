	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$76, %esp
	leal	64(%esp), %eax
	movl	$10, %ecx
	movl	%eax, (%esp)
	movl	$10, 4(%esp)
	movl	%ecx, 28(%esp)
	calll	L__ZN1AC1Ei$stub
	leal	72(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1BC1E1A$stub
	leal	48(%esp), %eax
	movl	$10, %ecx
	movl	%eax, (%esp)
	movl	$10, 4(%esp)
	movl	%ecx, 24(%esp)
	calll	L__ZN1AC1Ei$stub
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1BC1E1A$stub
	leal	32(%esp), %eax
	movl	$10, %ecx
	movl	%eax, (%esp)
	movl	$10, 4(%esp)
	movl	%ecx, 20(%esp)
	calll	L__ZN1AC1Ei$stub
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1BC1E1A$stub
	movl	$0, %eax
	addl	$76, %esp
	ret


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1AC1Ei$stub:
	.indirect_symbol	__ZN1AC1Ei
	.ascii	 "\364\364\364\364\364"
L__ZN1BC1E1A$stub:
	.indirect_symbol	__ZN1BC1E1A
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
