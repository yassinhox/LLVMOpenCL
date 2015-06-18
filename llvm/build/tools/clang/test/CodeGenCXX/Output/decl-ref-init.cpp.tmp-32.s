	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$28, %esp
	calll	L__Z1fv$stub
	leal	16(%esp), %ecx
	movb	%al, 16(%esp)
	movl	%ecx, (%esp)
	calll	L__ZN1BcvR1AEv$stub
	movl	%eax, 24(%esp)
	calll	L__Z1dv$stub
	leal	8(%esp), %ecx
	movb	%al, 8(%esp)
	movl	%ecx, (%esp)
	calll	L__ZN1BcvR1AEv$stub
	movl	$0, %ecx
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	addl	$28, %esp
	ret


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__Z1dv$stub:
	.indirect_symbol	__Z1dv
	.ascii	 "\364\364\364\364\364"
L__Z1fv$stub:
	.indirect_symbol	__Z1fv
	.ascii	 "\364\364\364\364\364"
L__ZN1BcvR1AEv$stub:
	.indirect_symbol	__ZN1BcvR1AEv
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
