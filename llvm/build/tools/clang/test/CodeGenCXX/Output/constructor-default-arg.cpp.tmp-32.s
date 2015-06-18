	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z3foov
	.align	4, 0x90
__Z3foov:
	movl	$6, %eax
	ret

	.globl	_main
	.align	4, 0x90
_main:
	pushl	%edi
	pushl	%esi
	subl	$84, %esp
	leal	80(%esp), %eax
	movl	$1, %ecx
	movl	%eax, (%esp)
	movl	$1, 4(%esp)
	movl	%ecx, 52(%esp)
	calll	L__ZN1XC1Ei$stub
	calll	__Z3foov
	leal	72(%esp), %ecx
	leal	80(%esp), %edx
	movl	$2, %esi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	$2, 8(%esp)
	movl	$2, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 48(%esp)
	calll	L__ZN1XC1ERKS_iii$stub
	calll	__Z3foov
	leal	64(%esp), %ecx
	leal	72(%esp), %edx
	movl	$1, %esi
	movl	$2, %edi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	$1, 8(%esp)
	movl	$2, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 44(%esp)
	movl	%edi, 40(%esp)
	calll	L__ZN1XC1ERKS_iii$stub
	calll	__Z3foov
	leal	56(%esp), %ecx
	leal	80(%esp), %edx
	movl	$5, %esi
	movl	$6, %edi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	$5, 8(%esp)
	movl	$6, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 36(%esp)
	movl	%edi, 32(%esp)
	calll	L__ZN1XC1ERKS_iii$stub
	movl	$0, %eax
	addl	$84, %esp
	popl	%esi
	popl	%edi
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC1Ei
	.weak_definition	__ZN1XC1Ei
	.align	4, 0x90
__ZN1XC1Ei:
	subl	$28, %esp
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	L__ZN1XC2Ei$stub
	addl	$28, %esp
	ret

	.globl	__ZN1XC1ERKS_iii
	.weak_definition	__ZN1XC1ERKS_iii
	.align	4, 0x90
__ZN1XC1ERKS_iii:
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	80(%esp), %eax
	movl	76(%esp), %ecx
	movl	72(%esp), %edx
	movl	68(%esp), %esi
	movl	64(%esp), %edi
	movl	%edi, 48(%esp)
	movl	%esi, 44(%esp)
	movl	%edx, 40(%esp)
	movl	%ecx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	48(%esp), %eax
	movl	40(%esp), %ecx
	movl	36(%esp), %edx
	movl	32(%esp), %esi
	movl	44(%esp), %edi
	movl	%eax, (%esp)
	movl	%edi, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	calll	L__ZN1XC2ERKS_iii$stub
	addl	$52, %esp
	popl	%esi
	popl	%edi
	ret

	.globl	__ZN1XC2ERKS_iii
	.weak_definition	__ZN1XC2ERKS_iii
	.align	4, 0x90
__ZN1XC2ERKS_iii:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	calll	L4$pb
L4$pb:
	popl	%eax
	movl	80(%esp), %ecx
	movl	76(%esp), %edx
	movl	72(%esp), %esi
	movl	68(%esp), %edi
	movl	64(%esp), %ebx
	leal	L_.str-L4$pb(%eax), %eax
	movl	%ebx, 44(%esp)
	movl	%edi, 40(%esp)
	movl	%esi, 36(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	36(%esp), %ecx
	movl	32(%esp), %edx
	movl	28(%esp), %esi
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%esi, 12(%esp)
	calll	L_printf$stub
	movl	%eax, 24(%esp)
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	ret

	.globl	__ZN1XC2Ei
	.weak_definition	__ZN1XC2Ei
	.align	4, 0x90
__ZN1XC2Ei:
	subl	$8, %esp
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	addl	$8, %esp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "X(const X&, %d, %d, %d)\n"


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1XC1ERKS_iii$stub:
	.indirect_symbol	__ZN1XC1ERKS_iii
	.ascii	 "\364\364\364\364\364"
L__ZN1XC1Ei$stub:
	.indirect_symbol	__ZN1XC1Ei
	.ascii	 "\364\364\364\364\364"
L__ZN1XC2ERKS_iii$stub:
	.indirect_symbol	__ZN1XC2ERKS_iii
	.ascii	 "\364\364\364\364\364"
L__ZN1XC2Ei$stub:
	.indirect_symbol	__ZN1XC2Ei
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
