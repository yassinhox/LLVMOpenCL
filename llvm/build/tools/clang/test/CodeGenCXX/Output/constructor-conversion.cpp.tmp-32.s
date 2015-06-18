	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1g1X
	.align	4, 0x90
__Z1g1X:
	subl	$12, %esp
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1X2prEv$stub
	addl	$12, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1X2prEv
	.weak_definition	__ZN1X2prEv
	.align	4, 0x90
__ZN1X2prEv:
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	calll	L1$pb
L1$pb:
	popl	%eax
	movl	48(%esp), %ecx
	leal	L_.str2-L1$pb(%eax), %edx
	movl	%ecx, 32(%esp)
	movl	(%ecx), %esi
	flds	4(%ecx)
	movl	8(%ecx), %ecx
	movl	%esp, %edi
	movl	%ecx, 16(%edi)
	fstpl	8(%edi)
	movl	%esi, 4(%edi)
	leal	L_.str2-L1$pb(%eax), %eax
	movl	%eax, (%edi)
	movl	%edx, 28(%esp)
	calll	L_printf$stub
	movl	%eax, 24(%esp)
	addl	$36, %esp
	popl	%esi
	popl	%edi
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z1f1X
	.align	4, 0x90
__Z1f1X:
	pushl	%esi
	subl	$88, %esp
	calll	L2$pb
L2$pb:
	popl	%eax
	leal	72(%esp), %ecx
	movl	$1, %edx
	movl	%ecx, (%esp)
	movl	$1, 4(%esp)
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	calll	L__ZN1XC1Ei$stub
	leal	72(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1X2prEv$stub
	leal	56(%esp), %eax
	movl	36(%esp), %ecx
	leal	L_.str-L2$pb(%ecx), %edx
	movl	$0, %esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 28(%esp)
	calll	L__ZN1XC1EPKci$stub
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1X2prEv$stub
	leal	40(%esp), %eax
	movl	$2, %ecx
	movl	%eax, (%esp)
	movl	$2, 4(%esp)
	movl	%ecx, 24(%esp)
	calll	L__ZN1XC1Ei$stub
	movl	40(%esp), %eax
	movl	%eax, 72(%esp)
	movl	44(%esp), %eax
	movl	%eax, 76(%esp)
	movl	48(%esp), %eax
	movl	%eax, 80(%esp)
	leal	72(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1X2prEv$stub
	addl	$88, %esp
	popl	%esi
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

	.globl	__ZN1XC1EPKci
	.weak_definition	__ZN1XC1EPKci
	.align	4, 0x90
__ZN1XC1EPKci:
	subl	$28, %esp
	movl	40(%esp), %eax
	movl	36(%esp), %ecx
	movl	32(%esp), %edx
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	L__ZN1XC2EPKci$stub
	addl	$28, %esp
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$60, %esp
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1XC1Ev$stub
	movl	48(%esp), %eax
	movl	%eax, 32(%esp)
	movl	52(%esp), %eax
	movl	%eax, 36(%esp)
	movl	56(%esp), %eax
	movl	%eax, 40(%esp)
	leal	32(%esp), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%esp)
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	calll	__Z1f1X
	leal	16(%esp), %eax
	movl	$3, %ecx
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	movl	%ecx, 12(%esp)
	calll	L__ZN1XC1Ei$stub
	leal	16(%esp), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%esp)
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	calll	__Z1g1X
	movl	$0, %eax
	addl	$60, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XC1Ev
	.weak_definition	__ZN1XC1Ev
	.align	4, 0x90
__ZN1XC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1XC2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1XC2Ev
	.weak_definition	__ZN1XC2Ev
	.align	4, 0x90
__ZN1XC2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	movl	$100, (%eax)
	movl	$1067030938, 4(%eax)
	popl	%eax
	ret

	.globl	__ZN1XC2EPKci
	.weak_definition	__ZN1XC2EPKci
	.align	4, 0x90
__ZN1XC2EPKci:
	subl	$12, %esp
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	8(%esp), %ecx
	movl	%eax, (%ecx)
	movl	$1086324736, 4(%ecx)
	movl	4(%esp), %eax
	addl	(%esp), %eax
	movl	%eax, 8(%ecx)
	addl	$12, %esp
	ret

	.globl	__ZN1XC2Ei
	.weak_definition	__ZN1XC2Ei
	.align	4, 0x90
__ZN1XC2Ei:
	subl	$8, %esp
	calll	L9$pb
L9$pb:
	popl	%eax
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
	leal	L_.str1-L9$pb(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	movl	4(%esp), %ecx
	movl	$2, (%ecx)
	movl	$1075000115, 4(%ecx)
	movl	%eax, 8(%ecx)
	addl	$8, %esp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Jessie"

L_.str1:
	.asciz	 "HELLO\n"

L_.str2:
	.asciz	 "iX = %d  fX = %f name = %s\n"


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1X2prEv$stub:
	.indirect_symbol	__ZN1X2prEv
	.ascii	 "\364\364\364\364\364"
L__ZN1XC1EPKci$stub:
	.indirect_symbol	__ZN1XC1EPKci
	.ascii	 "\364\364\364\364\364"
L__ZN1XC1Ei$stub:
	.indirect_symbol	__ZN1XC1Ei
	.ascii	 "\364\364\364\364\364"
L__ZN1XC1Ev$stub:
	.indirect_symbol	__ZN1XC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1XC2EPKci$stub:
	.indirect_symbol	__ZN1XC2EPKci
	.ascii	 "\364\364\364\364\364"
L__ZN1XC2Ei$stub:
	.indirect_symbol	__ZN1XC2Ei
	.ascii	 "\364\364\364\364\364"
L__ZN1XC2Ev$stub:
	.indirect_symbol	__ZN1XC2Ev
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
