	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$60, %esp
	movl	$1, %eax
	movl	$0, 56(%esp)
	movl	$1, (%esp)
	movl	%eax, 44(%esp)
	calll	L__Znwm$stub
	movl	$4, %ecx
	movl	%eax, (%esp)
	movl	$4, 4(%esp)
	movl	%ecx, 40(%esp)
	movl	%eax, 36(%esp)
	calll	L__ZN1BIiEC1Ei$stub
	movl	$8, %eax
	movl	36(%esp), %ecx
	movl	%ecx, 52(%esp)
	movl	$8, (%esp)
	movl	%eax, 32(%esp)
	calll	L__Znwm$stub
	movl	$1, %ecx
	movl	%eax, (%esp)
	movl	$1, 4(%esp)
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	calll	L__ZN12BinomialNodeIiEC1Ei$stub
	movl	24(%esp), %eax
	movl	%eax, 48(%esp)
	movl	48(%esp), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 20(%esp)
	je	LBB0_2
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN12BinomialNodeIiED1Ev$stub
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZdlPv$stub
LBB0_2:
	movl	56(%esp), %eax
	addl	$60, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1BIiEC1Ei
	.weak_definition	__ZN1BIiEC1Ei
	.align	4, 0x90
__ZN1BIiEC1Ei:
	subl	$28, %esp
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	L__ZN1BIiEC2Ei$stub
	addl	$28, %esp
	ret

	.globl	__ZN12BinomialNodeIiEC1Ei
	.weak_definition	__ZN12BinomialNodeIiEC1Ei
	.align	4, 0x90
__ZN12BinomialNodeIiEC1Ei:
	subl	$28, %esp
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	L__ZN12BinomialNodeIiEC2Ei$stub
	addl	$28, %esp
	ret

	.globl	__ZN12BinomialNodeIiED1Ev
	.weak_definition	__ZN12BinomialNodeIiED1Ev
	.align	4, 0x90
__ZN12BinomialNodeIiED1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN12BinomialNodeIiED2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN12BinomialNodeIiEC2Ei
	.weak_definition	__ZN12BinomialNodeIiEC2Ei
	.align	4, 0x90
__ZN12BinomialNodeIiEC2Ei:
	subl	$28, %esp
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movl	%eax, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 16(%esp)
	calll	L__ZN4NodeIP12BinomialNodeIiEEC2Ev$stub
	movl	16(%esp), %eax
	addl	$4, %eax
	movl	%eax, (%esp)
	calll	L__ZN4ListIP12BinomialNodeIiEEC1Ev$stub
	addl	$28, %esp
	ret

	.globl	__ZN4NodeIP12BinomialNodeIiEEC2Ev
	.weak_definition	__ZN4NodeIP12BinomialNodeIiEEC2Ev
	.align	4, 0x90
__ZN4NodeIP12BinomialNodeIiEEC2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	popl	%eax
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEEC1Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEEC1Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEEC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN4ListIP12BinomialNodeIiEEC2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEEC2Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEEC2Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEEC2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	popl	%eax
	ret

	.globl	__ZN1BIiEC2Ei
	.weak_definition	__ZN1BIiEC2Ei
	.align	4, 0x90
__ZN1BIiEC2Ei:
	subl	$12, %esp
	movl	20(%esp), %eax
	movl	16(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1AC1Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1AC1Ev
	.weak_definition	__ZN1AC1Ev
	.align	4, 0x90
__ZN1AC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1AC2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1AC2Ev
	.weak_definition	__ZN1AC2Ev
	.align	4, 0x90
__ZN1AC2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	popl	%eax
	ret

	.globl	__ZN12BinomialNodeIiED2Ev
	.weak_definition	__ZN12BinomialNodeIiED2Ev
	.align	4, 0x90
__ZN12BinomialNodeIiED2Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, %ecx
	addl	$4, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	L__ZN4ListIP12BinomialNodeIiEED1Ev$stub
	movl	4(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN4NodeIP12BinomialNodeIiEED2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEED1Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEED1Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEED1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN4ListIP12BinomialNodeIiEED2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN4NodeIP12BinomialNodeIiEED2Ev
	.weak_definition	__ZN4NodeIP12BinomialNodeIiEED2Ev
	.align	4, 0x90
__ZN4NodeIP12BinomialNodeIiEED2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	popl	%eax
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEED2Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEED2Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEED2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	popl	%eax
	ret


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN12BinomialNodeIiEC1Ei$stub:
	.indirect_symbol	__ZN12BinomialNodeIiEC1Ei
	.ascii	 "\364\364\364\364\364"
L__ZN12BinomialNodeIiEC2Ei$stub:
	.indirect_symbol	__ZN12BinomialNodeIiEC2Ei
	.ascii	 "\364\364\364\364\364"
L__ZN12BinomialNodeIiED1Ev$stub:
	.indirect_symbol	__ZN12BinomialNodeIiED1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN12BinomialNodeIiED2Ev$stub:
	.indirect_symbol	__ZN12BinomialNodeIiED2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1AC1Ev$stub:
	.indirect_symbol	__ZN1AC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1AC2Ev$stub:
	.indirect_symbol	__ZN1AC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1BIiEC1Ei$stub:
	.indirect_symbol	__ZN1BIiEC1Ei
	.ascii	 "\364\364\364\364\364"
L__ZN1BIiEC2Ei$stub:
	.indirect_symbol	__ZN1BIiEC2Ei
	.ascii	 "\364\364\364\364\364"
L__ZN4ListIP12BinomialNodeIiEEC1Ev$stub:
	.indirect_symbol	__ZN4ListIP12BinomialNodeIiEEC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4ListIP12BinomialNodeIiEEC2Ev$stub:
	.indirect_symbol	__ZN4ListIP12BinomialNodeIiEEC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4ListIP12BinomialNodeIiEED1Ev$stub:
	.indirect_symbol	__ZN4ListIP12BinomialNodeIiEED1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4ListIP12BinomialNodeIiEED2Ev$stub:
	.indirect_symbol	__ZN4ListIP12BinomialNodeIiEED2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4NodeIP12BinomialNodeIiEEC2Ev$stub:
	.indirect_symbol	__ZN4NodeIP12BinomialNodeIiEEC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN4NodeIP12BinomialNodeIiEED2Ev$stub:
	.indirect_symbol	__ZN4NodeIP12BinomialNodeIiEED2Ev
	.ascii	 "\364\364\364\364\364"
L__ZdlPv$stub:
	.indirect_symbol	__ZdlPv
	.ascii	 "\364\364\364\364\364"
L__Znwm$stub:
	.indirect_symbol	__Znwm
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
