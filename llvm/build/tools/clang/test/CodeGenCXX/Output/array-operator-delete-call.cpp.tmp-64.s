	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4COSTC1Ev
	.align	4, 0x90
__ZN4COSTC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN4COSTC2Ev
	popq	%rax
	ret

	.globl	__ZN4COSTC2Ev
	.align	4, 0x90
__ZN4COSTC2Ev:
	subq	$88, %rsp
	movabsq	$20, %rax
	movq	%rdi, 80(%rsp)
	movq	80(%rsp), %rdi
	movq	%rdi, 72(%rsp)
	movq	%rax, %rdi
	callq	__Znam
	movq	$3, (%rax)
	addq	$8, %rax
	movq	%rax, %rdi
	addq	$12, %rdi
	movq	%rax, %rcx
	movq	%rax, 64(%rsp)
	movq	%rdi, 56(%rsp)
	movq	%rcx, 48(%rsp)
LBB1_1:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	callq	__ZN1SC1Ev
	movq	40(%rsp), %rax
	addq	$4, %rax
	movq	56(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 48(%rsp)
	jne	LBB1_1
	movabsq	$72, %rdi
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, (%rax)
	callq	__Znam
	movq	$4, (%rax)
	addq	$8, %rax
	movq	%rax, %rcx
	addq	$64, %rcx
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdi, 16(%rsp)
LBB1_3:
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	callq	__ZN1VC1Ev
	movq	8(%rsp), %rax
	addq	$16, %rax
	movq	24(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 16(%rsp)
	jne	LBB1_3
	movabsq	$40, %rdi
	movq	72(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 8(%rax)
	callq	__Znam
	movq	72(%rsp), %rcx
	movq	%rax, 16(%rcx)
	addq	$88, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1SC1Ev
	.weak_definition	__ZN1SC1Ev
	.align	4, 0x90
__ZN1SC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1SC2Ev
	popq	%rax
	ret

	.globl	__ZN1VC1Ev
	.weak_definition	__ZN1VC1Ev
	.align	4, 0x90
__ZN1VC1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1VC2Ev
	popq	%rax
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4COSTD1Ev
	.align	4, 0x90
__ZN4COSTD1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN4COSTD2Ev
	popq	%rax
	ret

	.globl	__ZN4COSTD2Ev
	.align	4, 0x90
__ZN4COSTD2Ev:
	subq	$88, %rsp
	movq	%rdi, 80(%rsp)
	movq	80(%rsp), %rdi
	cmpq	$0, (%rdi)
	movq	%rdi, 72(%rsp)
	je	LBB5_6
	movq	72(%rsp), %rax
	movq	(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 64(%rsp)
	je	LBB5_5
	movq	64(%rsp), %rax
	addq	$-8, %rax
	movq	64(%rsp), %rcx
	movq	-8(%rcx), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	64(%rsp), %rdx
	cmpq	%rcx, %rdx
	movq	%rax, 56(%rsp)
	movq	%rcx, 48(%rsp)
	je	LBB5_4
LBB5_3:
	movq	48(%rsp), %rax
	addq	$-4, %rax
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	callq	__ZN1SD1Ev
	movq	40(%rsp), %rax
	movq	64(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 48(%rsp)
	jne	LBB5_3
LBB5_4:
	movq	56(%rsp), %rdi
	callq	__ZdaPv
LBB5_5:
	jmp	LBB5_6
LBB5_6:
	movq	72(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	LBB5_12
	movq	72(%rsp), %rax
	movq	8(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 32(%rsp)
	je	LBB5_11
	movq	32(%rsp), %rax
	addq	$-8, %rax
	movq	32(%rsp), %rcx
	movq	-8(%rcx), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	32(%rsp), %rdx
	cmpq	%rcx, %rdx
	movq	%rax, 24(%rsp)
	movq	%rcx, 16(%rsp)
	je	LBB5_10
LBB5_9:
	movq	16(%rsp), %rax
	addq	$-16, %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	callq	__ZN1VD1Ev
	movq	8(%rsp), %rax
	movq	32(%rsp), %rdi
	cmpq	%rdi, %rax
	movq	%rax, 16(%rsp)
	jne	LBB5_9
LBB5_10:
	movq	24(%rsp), %rdi
	callq	__ZdaPv
LBB5_11:
	jmp	LBB5_12
LBB5_12:
	movq	72(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	LBB5_16
	movq	72(%rsp), %rax
	movq	16(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, (%rsp)
	je	LBB5_15
	movq	(%rsp), %rax
	movq	%rax, %rdi
	callq	__ZdaPv
LBB5_15:
	jmp	LBB5_16
LBB5_16:
	addq	$88, %rsp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1SD1Ev
	.weak_definition	__ZN1SD1Ev
	.align	4, 0x90
__ZN1SD1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1SD2Ev
	popq	%rax
	ret

	.globl	__ZN1VD1Ev
	.weak_definition	__ZN1VD1Ev
	.align	4, 0x90
__ZN1VD1Ev:
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	__ZN1VD2Ev
	popq	%rax
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init:
	pushq	%rax
	leaq	_c1(%rip), %rdi
	callq	__ZN4COSTC1Ev
	leaq	__ZN4COSTD1Ev(%rip), %rdi
	leaq	_c1(%rip), %rax
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	___cxa_atexit
	movl	%eax, 4(%rsp)
	popq	%rax
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subq	$24, %rsp
	leaq	(%rsp), %rdi
	callq	__ZN4COSTC1Ev
	leaq	(%rsp), %rdi
	callq	__ZN4COSTD1Ev
	movl	$0, %eax
	addq	$24, %rsp
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init1:
	pushq	%rax
	leaq	_c2(%rip), %rdi
	callq	__ZN4COSTC1Ev
	leaq	__ZN4COSTD1Ev(%rip), %rdi
	leaq	_c2(%rip), %rax
	movq	___dso_handle@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	___cxa_atexit
	movl	%eax, 4(%rsp)
	popq	%rax
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1VD2Ev
	.weak_definition	__ZN1VD2Ev
	.align	4, 0x90
__ZN1VD2Ev:
	subq	$24, %rsp
	leaq	L_.str(%rip), %rax
	movq	__ZTV1V@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rcx, (%rdi)
	movl	8(%rdi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1VD0Ev
	.weak_definition	__ZN1VD0Ev
	.align	4, 0x90
__ZN1VD0Ev:
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	callq	__ZN1VD1Ev
	movq	8(%rsp), %rdi
	callq	__ZdlPv
	addq	$24, %rsp
	ret

	.globl	__ZN1SD2Ev
	.weak_definition	__ZN1SD2Ev
	.align	4, 0x90
__ZN1SD2Ev:
	subq	$24, %rsp
	leaq	L_.str2(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movl	(%rdi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1VC2Ev
	.weak_definition	__ZN1VC2Ev
	.align	4, 0x90
__ZN1VC2Ev:
	subq	$24, %rsp
	leaq	L_.str3(%rip), %rax
	movq	__ZTV1V@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movq	%rcx, (%rdi)
	movl	_count(%rip), %edx
	addl	$1, %edx
	movl	%edx, _count(%rip)
	movl	%edx, 8(%rdi)
	movl	8(%rdi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.globl	__ZN1SC2Ev
	.weak_definition	__ZN1SC2Ev
	.align	4, 0x90
__ZN1SC2Ev:
	subq	$24, %rsp
	leaq	L_.str4(%rip), %rax
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rdi
	movl	_count(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _count(%rip)
	movl	%ecx, (%rdi)
	movl	(%rdi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I_a:
	pushq	%rax
	callq	___cxx_global_var_init
	callq	___cxx_global_var_init1
	popq	%rax
	ret

	.globl	_count
.zerofill __DATA,__common,_count,4,2
	.globl	_c1
.zerofill __DATA,__common,_c1,24,3
	.globl	_c2
.zerofill __DATA,__common,_c2,24,3
	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTV1V
	.weak_definition	__ZTV1V
	.align	4
__ZTV1V:
	.quad	0
	.quad	__ZTI1V
	.quad	__ZN1VD1Ev
	.quad	__ZN1VD0Ev

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "V::~V(%d)\n"

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTS1V
	.weak_definition	__ZTS1V
__ZTS1V:
	.asciz	 "1V"

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTI1V
	.weak_definition	__ZTI1V
	.align	3
__ZTI1V:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS1V

	.section	__TEXT,__cstring,cstring_literals
L_.str2:
	.asciz	 "S::~S(%d)\n"

L_.str3:
	.asciz	 "V::V(%d)\n"

L_.str4:
	.asciz	 "S::S(%d)\n"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	3
	.quad	__GLOBAL__I_a

.subsections_via_symbols
