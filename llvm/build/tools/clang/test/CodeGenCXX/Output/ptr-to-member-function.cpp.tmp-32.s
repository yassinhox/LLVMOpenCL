	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK1A3fooEPi
	.align	4, 0x90
__ZNK1A3fooEPi:
	pushl	%ebx
	subl	$24, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	36(%esp), %ecx
	movl	32(%esp), %edx
	leal	L_.str-L0$pb(%eax), %eax
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	16(%esp), %ecx
	movl	(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	L_printf$stub
	movb	$1, %bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	addl	$24, %esp
	popl	%ebx
	ret

	.globl	__Z1gM1CFvvE
	.align	4, 0x90
__Z1gM1CFvvE:
	subl	$44, %esp
	leal	48(%esp), %eax
	leal	24(%esp), %ecx
	movl	(%eax), %edx
	movl	4(%eax), %eax
	movl	%eax, 36(%esp)
	movl	%edx, 32(%esp)
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, 20(%esp)
	movl	%ecx, 16(%esp)
	je	LBB1_2
	movl	16(%esp), %eax
	movl	(%eax), %ecx
	movl	20(%esp), %edx
	subl	$1, %edx
	movl	(%ecx,%edx), %ecx
	movl	%ecx, 12(%esp)
	jmp	LBB1_3
LBB1_2:
	movl	20(%esp), %eax
	movl	%eax, 12(%esp)
LBB1_3:
	movl	12(%esp), %eax
	movl	16(%esp), %ecx
	movl	%ecx, (%esp)
	calll	*%eax
	addl	$44, %esp
	ret

	.globl	__Z5test21X
	.align	4, 0x90
__Z5test21X:
	subl	$44, %esp
	leal	24(%esp), %eax
	leal	40(%esp), %ecx
	movl	%esp, %edx
	movl	%ecx, (%edx)
	movl	%eax, 20(%esp)
	calll	L__ZN1XcvM1BFvvEEv$stub
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	20(%esp), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%esp)
	calll	__Z1gM1CFvvE
	addl	$44, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XcvM1BFvvEEv
	.weak_definition	__ZN1XcvM1BFvvEEv
	.align	4, 0x90
__ZN1XcvM1BFvvEEv:
	subl	$20, %esp
	calll	L3$pb
L3$pb:
	popl	%eax
	movl	24(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	L__ZN1B2bfEv$non_lazy_ptr-L3$pb(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$0, 12(%esp)
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	addl	$20, %esp
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$60, %esp
	calll	__Z5test21X
	leal	32(%esp), %eax
	movl	$1, %ecx
	movl	%eax, (%esp)
	movl	$1, 4(%esp)
	movl	%ecx, 12(%esp)
	calll	L__ZN2B1C1Ei$stub
	leal	16(%esp), %eax
	movl	$2, %ecx
	movl	%eax, (%esp)
	movl	$2, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	L__ZN2B1C1Ei$stub
	movl	$0, %eax
	addl	$60, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN2B1C1Ei
	.weak_definition	__ZN2B1C1Ei
	.align	4, 0x90
__ZN2B1C1Ei:
	subl	$28, %esp
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	L__ZN2B1C2Ei$stub
	addl	$28, %esp
	ret

	.globl	__ZN2B1C2Ei
	.weak_definition	__ZN2B1C2Ei
	.align	4, 0x90
__ZN2B1C2Ei:
	pushl	%esi
	subl	$40, %esp
	calll	L6$pb
L6$pb:
	popl	%eax
	movl	52(%esp), %ecx
	movl	48(%esp), %edx
	movl	%edx, 36(%esp)
	movl	%ecx, 32(%esp)
	movl	36(%esp), %ecx
	leal	__ZNK1A3fooEPi-L6$pb(%eax), %eax
	movl	%eax, (%ecx)
	movl	$0, 4(%ecx)
	movl	32(%esp), %eax
	movl	%eax, 8(%ecx)
	movl	(%ecx), %eax
	movl	4(%ecx), %edx
	movl	%ecx, %esi
	addl	%edx, %esi
	movl	%eax, %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	%esi, 20(%esp)
	je	LBB6_2
	movl	20(%esp), %eax
	movl	(%eax), %ecx
	movl	24(%esp), %edx
	subl	$1, %edx
	movl	(%ecx,%edx), %ecx
	movl	%ecx, 16(%esp)
	jmp	LBB6_3
LBB6_2:
	movl	24(%esp), %eax
	movl	%eax, 16(%esp)
LBB6_3:
	movl	16(%esp), %eax
	movl	28(%esp), %ecx
	addl	$8, %ecx
	movl	20(%esp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	calll	*%eax
	movb	%al, 15(%esp)
	addl	$40, %esp
	popl	%esi
	ret

	.globl	__ZN1B2bfEv
	.weak_definition	__ZN1B2bfEv
	.align	4, 0x90
__ZN1B2bfEv:
	subl	$12, %esp
	calll	L7$pb
L7$pb:
	popl	%eax
	movl	16(%esp), %ecx
	leal	L_.str1-L7$pb(%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	calll	L_printf$stub
	movl	%eax, 4(%esp)
	addl	$12, %esp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "A::foo(%d)\n"

L_.str1:
	.asciz	 "B::bf called\n"


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1XcvM1BFvvEEv$stub:
	.indirect_symbol	__ZN1XcvM1BFvvEEv
	.ascii	 "\364\364\364\364\364"
L__ZN2B1C1Ei$stub:
	.indirect_symbol	__ZN2B1C1Ei
	.ascii	 "\364\364\364\364\364"
L__ZN2B1C2Ei$stub:
	.indirect_symbol	__ZN2B1C2Ei
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L__ZN1B2bfEv$non_lazy_ptr:
	.indirect_symbol	__ZN1B2bfEv
	.long	0

.subsections_via_symbols
