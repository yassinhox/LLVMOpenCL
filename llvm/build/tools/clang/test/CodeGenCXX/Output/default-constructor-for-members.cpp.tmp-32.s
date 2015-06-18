	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$12, %esp
	leal	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1MC1Ev$stub
	movl	$0, %eax
	addl	$12, %esp
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

	.globl	__ZN1MC2Ev
	.weak_definition	__ZN1MC2Ev
	.align	4, 0x90
__ZN1MC2Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1SC1Ev$stub
	addl	$12, %esp
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
	subl	$12, %esp
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	16(%esp), %ecx
	leal	L_.str-L4$pb(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	calll	L_printf$stub
	movl	%eax, 4(%esp)
	addl	$12, %esp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "S::S()\n"


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1MC1Ev$stub:
	.indirect_symbol	__ZN1MC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1MC2Ev$stub:
	.indirect_symbol	__ZN1MC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SC1Ev$stub:
	.indirect_symbol	__ZN1SC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SC2Ev$stub:
	.indirect_symbol	__ZN1SC2Ev
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
