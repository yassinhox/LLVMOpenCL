	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1fRK1B
	.align	4, 0x90
__Z1fRK1B:
	subl	$28, %esp
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%eax, 24(%esp)
	movl	%esp, %edx
	movl	%eax, 4(%edx)
	movl	%ecx, (%edx)
	movl	$1, 8(%edx)
	calll	L__ZN1AC1ERKS_i$stub
	addl	$28, %esp
	ret	$4


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1AC1ERKS_i$stub:
	.indirect_symbol	__ZN1AC1ERKS_i
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
