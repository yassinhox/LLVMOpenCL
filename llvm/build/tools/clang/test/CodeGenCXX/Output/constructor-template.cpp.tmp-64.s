	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$56, %rsp
	movabsq	$1, %rdi
	movl	$0, 52(%rsp)
	callq	__Znwm
	movl	$4, %esi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
	callq	__ZN1BIiEC1Ei
	movabsq	$8, %rdi
	movq	24(%rsp), %rax
	movq	%rax, 40(%rsp)
	callq	__Znwm
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	callq	__ZN12BinomialNodeIiEC1Ei
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rdi
	cmpq	$0, %rdi
	movq	%rdi, 8(%rsp)
	je	LBB0_2
	movq	8(%rsp), %rdi
	callq	__ZN12BinomialNodeIiED1Ev
	movq	8(%rsp), %rdi
	callq	__ZdlPv
LBB0_2:
	movl	52(%rsp), %eax
	addq	$56, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1BIiEC1Ei
	.weak_definition	__ZN1BIiEC1Ei
	.align	4, 0x90
__ZN1BIiEC1Ei:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movq	16(%rsp), %rdi
	movl	12(%rsp), %esi
	callq	__ZN1BIiEC2Ei
	addq	$24, %rsp
	ret

	.globl	__ZN12BinomialNodeIiEC1Ei
	.weak_definition	__ZN12BinomialNodeIiEC1Ei
	.align	4, 0x90
__ZN12BinomialNodeIiEC1Ei:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movq	16(%rsp), %rdi
	movl	12(%rsp), %esi
	callq	__ZN12BinomialNodeIiEC2Ei
	addq	$24, %rsp
	ret

	.globl	__ZN12BinomialNodeIiED1Ev
	.weak_definition	__ZN12BinomialNodeIiED1Ev
	.align	4, 0x90
__ZN12BinomialNodeIiED1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN12BinomialNodeIiED2Ev
	popq	%rax
	ret

	.globl	__ZN12BinomialNodeIiEC2Ei
	.weak_definition	__ZN12BinomialNodeIiEC2Ei
	.align	4, 0x90
__ZN12BinomialNodeIiEC2Ei:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, %rax
	movq	%rdi, (%rsp)
	movq	%rax, %rdi
	callq	__ZN4NodeIP12BinomialNodeIiEEC2Ev
	movq	(%rsp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	__ZN4ListIP12BinomialNodeIiEEC1Ev
	addq	$24, %rsp
	ret

	.globl	__ZN4NodeIP12BinomialNodeIiEEC2Ev
	.weak_definition	__ZN4NodeIP12BinomialNodeIiEEC2Ev
	.align	4, 0x90
__ZN4NodeIP12BinomialNodeIiEEC2Ev:
	movq	%rdi, -8(%rsp)
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEEC1Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEEC1Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEEC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN4ListIP12BinomialNodeIiEEC2Ev
	popq	%rax
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEEC2Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEEC2Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEEC2Ev:
	movq	%rdi, -8(%rsp)
	ret

	.globl	__ZN1BIiEC2Ei
	.weak_definition	__ZN1BIiEC2Ei
	.align	4, 0x90
__ZN1BIiEC2Ei:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movq	16(%rsp), %rdi
	callq	__ZN1AC1Ev
	addq	$24, %rsp
	ret

	.globl	__ZN1AC1Ev
	.weak_definition	__ZN1AC1Ev
	.align	4, 0x90
__ZN1AC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1AC2Ev
	popq	%rax
	ret

	.globl	__ZN1AC2Ev
	.weak_definition	__ZN1AC2Ev
	.align	4, 0x90
__ZN1AC2Ev:
	movq	%rdi, -8(%rsp)
	ret

	.globl	__ZN12BinomialNodeIiED2Ev
	.weak_definition	__ZN12BinomialNodeIiED2Ev
	.align	4, 0x90
__ZN12BinomialNodeIiED2Ev:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, %rax
	addq	$4, %rax
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	callq	__ZN4ListIP12BinomialNodeIiEED1Ev
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	callq	__ZN4NodeIP12BinomialNodeIiEED2Ev
	addq	$24, %rsp
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEED1Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEED1Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEED1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN4ListIP12BinomialNodeIiEED2Ev
	popq	%rax
	ret

	.globl	__ZN4NodeIP12BinomialNodeIiEED2Ev
	.weak_definition	__ZN4NodeIP12BinomialNodeIiEED2Ev
	.align	4, 0x90
__ZN4NodeIP12BinomialNodeIiEED2Ev:
	movq	%rdi, -8(%rsp)
	ret

	.globl	__ZN4ListIP12BinomialNodeIiEED2Ev
	.weak_definition	__ZN4ListIP12BinomialNodeIiEED2Ev
	.align	4, 0x90
__ZN4ListIP12BinomialNodeIiEED2Ev:
	movq	%rdi, -8(%rsp)
	ret


.subsections_via_symbols
