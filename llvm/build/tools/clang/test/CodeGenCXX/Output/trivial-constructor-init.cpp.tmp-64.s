	.file	"/home/jazouani/llvm/llvm-3.2/tools/clang/test/CodeGenCXX/trivial-constructor-init.cpp"
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:
	pushq	%rax
	movq	a@GOTPCREL(%rip), %rdi
	callq	_ZN1AC1Ev@PLT
	popq	%rax
	ret
.Ltmp0:
	.size	__cxx_global_var_init, .Ltmp0-__cxx_global_var_init

	.section	.text._ZN1AC1Ev,"axG",@progbits,_ZN1AC1Ev,comdat
	.weak	_ZN1AC1Ev
	.align	16, 0x90
	.type	_ZN1AC1Ev,@function
_ZN1AC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN1AC2Ev@PLT
	popq	%rax
	ret
.Ltmp1:
	.size	_ZN1AC1Ev, .Ltmp1-_ZN1AC1Ev

	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:
	movl	$0, %eax
	ret
.Ltmp2:
	.size	main, .Ltmp2-main

	.section	.text._ZN1AC2Ev,"axG",@progbits,_ZN1AC2Ev,comdat
	.weak	_ZN1AC2Ev
	.align	16, 0x90
	.type	_ZN1AC2Ev,@function
_ZN1AC2Ev:
	subq	$24, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movsd	%xmm0, (%rdi)
	movq	$0, 8(%rdi)
	movq	%rdi, %rax
	addq	$16, %rax
	movq	%rdi, 8(%rsp)
	movq	%rax, %rdi
	callq	_ZN1SC1Ev@PLT
	leaq	.L.str(%rip), %rdi
	movq	8(%rsp), %rax
	movsd	(%rax), %xmm0
	movq	8(%rax), %rsi
	movb	$1, %al
	callq	printf@PLT
	movl	%eax, 4(%rsp)
	addq	$24, %rsp
	ret
.Ltmp3:
	.size	_ZN1AC2Ev, .Ltmp3-_ZN1AC2Ev

	.section	.text._ZN1SC1Ev,"axG",@progbits,_ZN1SC1Ev,comdat
	.weak	_ZN1SC1Ev
	.align	16, 0x90
	.type	_ZN1SC1Ev,@function
_ZN1SC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN1SC2Ev@PLT
	popq	%rax
	ret
.Ltmp4:
	.size	_ZN1SC1Ev, .Ltmp4-_ZN1SC1Ev

	.section	.text._ZN1SC2Ev,"axG",@progbits,_ZN1SC2Ev,comdat
	.weak	_ZN1SC2Ev
	.align	16, 0x90
	.type	_ZN1SC2Ev,@function
_ZN1SC2Ev:
	subq	$24, %rsp
	leaq	.L.str1(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret
.Ltmp5:
	.size	_ZN1SC2Ev, .Ltmp5-_ZN1SC2Ev

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:
	pushq	%rax
	callq	__cxx_global_var_init
	popq	%rax
	ret
.Ltmp6:
	.size	_GLOBAL__I_a, .Ltmp6-_GLOBAL__I_a

	.type	a,@object
	.bss
	.globl	a
	.align	8
a:
	.zero	24
	.size	a, 24

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "x = %f y = %x \n"
	.size	.L.str, 16

	.type	.L.str1,@object
.L.str1:
	.asciz	 "S::S\n"
	.size	.L.str1, 6

	.section	.ctors,"aw",@progbits
	.align	8
	.quad	_GLOBAL__I_a

	.section	".note.GNU-stack","",@progbits
