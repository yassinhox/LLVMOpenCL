	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4COSTC1Ev
	.align	4, 0x90
__ZN4COSTC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	__ZN4COSTC2Ev
	addl	$12, %esp
	ret

	.globl	__ZN4COSTC2Ev
	.align	4, 0x90
__ZN4COSTC2Ev:
	subl	$60, %esp
	movl	64(%esp), %eax
	movl	$16, %ecx
	movl	%eax, 56(%esp)
	movl	56(%esp), %eax
	movl	$16, (%esp)
	movl	%ecx, 52(%esp)
	movl	%eax, 48(%esp)
	calll	L__Znam$stub
	movl	$3, (%eax)
	addl	$4, %eax
	movl	%eax, %ecx
	addl	$12, %ecx
	movl	%eax, %edx
	movl	%eax, 44(%esp)
	movl	%ecx, 40(%esp)
	movl	%edx, 36(%esp)
LBB1_1:
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 32(%esp)
	calll	L__ZN1SC1Ev$stub
	movl	32(%esp), %eax
	addl	$4, %eax
	movl	40(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 36(%esp)
	jne	LBB1_1
	movl	$36, %eax
	movl	48(%esp), %ecx
	movl	44(%esp), %edx
	movl	%edx, (%ecx)
	movl	$36, (%esp)
	movl	%eax, 28(%esp)
	calll	L__Znam$stub
	movl	$4, (%eax)
	addl	$4, %eax
	movl	%eax, %ecx
	addl	$32, %ecx
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
LBB1_3:
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	calll	L__ZN1VC1Ev$stub
	movl	12(%esp), %eax
	addl	$8, %eax
	movl	20(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 16(%esp)
	jne	LBB1_3
	movl	$40, %eax
	movl	48(%esp), %ecx
	movl	24(%esp), %edx
	movl	%edx, 4(%ecx)
	movl	$40, (%esp)
	movl	%eax, 8(%esp)
	calll	L__Znam$stub
	movl	48(%esp), %ecx
	movl	%eax, 8(%ecx)
	addl	$60, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
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

	.globl	__ZN1VC1Ev
	.weak_definition	__ZN1VC1Ev
	.align	4, 0x90
__ZN1VC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1VC2Ev$stub
	addl	$12, %esp
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4COSTD1Ev
	.align	4, 0x90
__ZN4COSTD1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	__ZN4COSTD2Ev
	addl	$12, %esp
	ret

	.globl	__ZN4COSTD2Ev
	.align	4, 0x90
__ZN4COSTD2Ev:
	subl	$60, %esp
	movl	64(%esp), %eax
	movl	%eax, 56(%esp)
	movl	56(%esp), %eax
	cmpl	$0, (%eax)
	movl	%eax, 52(%esp)
	je	LBB5_6
	movl	52(%esp), %eax
	movl	(%eax), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 48(%esp)
	je	LBB5_5
	movl	48(%esp), %eax
	addl	$-4, %eax
	movl	48(%esp), %ecx
	movl	-4(%ecx), %edx
	shll	$2, %edx
	addl	%edx, %ecx
	movl	48(%esp), %edx
	cmpl	%ecx, %edx
	movl	%eax, 44(%esp)
	movl	%ecx, 40(%esp)
	je	LBB5_4
LBB5_3:
	movl	40(%esp), %eax
	addl	$-4, %eax
	movl	%eax, (%esp)
	movl	%eax, 36(%esp)
	calll	L__ZN1SD1Ev$stub
	movl	36(%esp), %eax
	movl	48(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 40(%esp)
	jne	LBB5_3
LBB5_4:
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZdaPv$stub
LBB5_5:
	jmp	LBB5_6
LBB5_6:
	movl	52(%esp), %eax
	cmpl	$0, 4(%eax)
	je	LBB5_12
	movl	52(%esp), %eax
	movl	4(%eax), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 32(%esp)
	je	LBB5_11
	movl	32(%esp), %eax
	addl	$-4, %eax
	movl	32(%esp), %ecx
	movl	-4(%ecx), %edx
	shll	$3, %edx
	addl	%edx, %ecx
	movl	32(%esp), %edx
	cmpl	%ecx, %edx
	movl	%eax, 28(%esp)
	movl	%ecx, 24(%esp)
	je	LBB5_10
LBB5_9:
	movl	24(%esp), %eax
	addl	$-8, %eax
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	calll	L__ZN1VD1Ev$stub
	movl	20(%esp), %eax
	movl	32(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 24(%esp)
	jne	LBB5_9
LBB5_10:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZdaPv$stub
LBB5_11:
	jmp	LBB5_12
LBB5_12:
	movl	52(%esp), %eax
	cmpl	$0, 8(%eax)
	je	LBB5_16
	movl	52(%esp), %eax
	movl	8(%eax), %ecx
	cmpl	$0, %ecx
	movl	%ecx, 16(%esp)
	je	LBB5_15
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZdaPv$stub
LBB5_15:
	jmp	LBB5_16
LBB5_16:
	addl	$60, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1SD1Ev
	.weak_definition	__ZN1SD1Ev
	.align	4, 0x90
__ZN1SD1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1SD2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1VD1Ev
	.weak_definition	__ZN1VD1Ev
	.align	4, 0x90
__ZN1VD1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1VD2Ev$stub
	addl	$12, %esp
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init:
	pushl	%esi
	subl	$24, %esp
	calll	L8$pb
L8$pb:
	popl	%eax
	leal	_c1-L8$pb(%eax), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 20(%esp)
	calll	__ZN4COSTC1Ev
	movl	20(%esp), %eax
	leal	__ZN4COSTD1Ev-L8$pb(%eax), %ecx
	leal	_c1-L8$pb(%eax), %edx
	movl	L___dso_handle$non_lazy_ptr-L8$pb(%eax), %esi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	calll	L___cxa_atexit$stub
	movl	%eax, 16(%esp)
	addl	$24, %esp
	popl	%esi
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$28, %esp
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	calll	__ZN4COSTC1Ev
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	calll	__ZN4COSTD1Ev
	movl	$0, %eax
	addl	$28, %esp
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init1:
	pushl	%esi
	subl	$24, %esp
	calll	L10$pb
L10$pb:
	popl	%eax
	leal	_c2-L10$pb(%eax), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 20(%esp)
	calll	__ZN4COSTC1Ev
	movl	20(%esp), %eax
	leal	__ZN4COSTD1Ev-L10$pb(%eax), %ecx
	leal	_c2-L10$pb(%eax), %edx
	movl	L___dso_handle$non_lazy_ptr-L10$pb(%eax), %esi
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	calll	L___cxa_atexit$stub
	movl	%eax, 16(%esp)
	addl	$24, %esp
	popl	%esi
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1VD2Ev
	.weak_definition	__ZN1VD2Ev
	.align	4, 0x90
__ZN1VD2Ev:
	subl	$28, %esp
	calll	L11$pb
L11$pb:
	popl	%eax
	movl	32(%esp), %ecx
	leal	L_.str-L11$pb(%eax), %edx
	movl	L__ZTV1V$non_lazy_ptr-L11$pb(%eax), %eax
	addl	$8, %eax
	movl	%ecx, 24(%esp)
	movl	24(%esp), %ecx
	movl	%eax, (%ecx)
	movl	4(%ecx), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	calll	L_printf$stub
	movl	%eax, 20(%esp)
	addl	$28, %esp
	ret

	.globl	__ZN1VD0Ev
	.weak_definition	__ZN1VD0Ev
	.align	4, 0x90
__ZN1VD0Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 4(%esp)
	calll	L__ZN1VD1Ev$stub
	movl	4(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZdlPv$stub
	addl	$12, %esp
	ret

	.globl	__ZN1SD2Ev
	.weak_definition	__ZN1SD2Ev
	.align	4, 0x90
__ZN1SD2Ev:
	subl	$28, %esp
	calll	L13$pb
L13$pb:
	popl	%eax
	movl	32(%esp), %ecx
	leal	L_.str2-L13$pb(%eax), %eax
	movl	%ecx, 24(%esp)
	movl	24(%esp), %ecx
	movl	(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	L_printf$stub
	movl	%eax, 20(%esp)
	addl	$28, %esp
	ret

	.globl	__ZN1VC2Ev
	.weak_definition	__ZN1VC2Ev
	.align	4, 0x90
__ZN1VC2Ev:
	pushl	%esi
	subl	$24, %esp
	calll	L14$pb
L14$pb:
	popl	%eax
	movl	32(%esp), %ecx
	leal	L_.str3-L14$pb(%eax), %edx
	movl	L__ZTV1V$non_lazy_ptr-L14$pb(%eax), %esi
	addl	$8, %esi
	movl	%ecx, 20(%esp)
	movl	20(%esp), %ecx
	movl	%esi, (%ecx)
	movl	_count-L14$pb(%eax), %esi
	addl	$1, %esi
	movl	%esi, _count-L14$pb(%eax)
	movl	%esi, 4(%ecx)
	movl	4(%ecx), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	calll	L_printf$stub
	movl	%eax, 16(%esp)
	addl	$24, %esp
	popl	%esi
	ret

	.globl	__ZN1SC2Ev
	.weak_definition	__ZN1SC2Ev
	.align	4, 0x90
__ZN1SC2Ev:
	pushl	%esi
	subl	$24, %esp
	calll	L15$pb
L15$pb:
	popl	%eax
	movl	32(%esp), %ecx
	leal	L_.str4-L15$pb(%eax), %edx
	movl	%ecx, 20(%esp)
	movl	20(%esp), %ecx
	movl	_count-L15$pb(%eax), %esi
	addl	$1, %esi
	movl	%esi, _count-L15$pb(%eax)
	movl	%esi, (%ecx)
	movl	(%ecx), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	calll	L_printf$stub
	movl	%eax, 16(%esp)
	addl	$24, %esp
	popl	%esi
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I_a:
	subl	$12, %esp
	calll	___cxx_global_var_init
	calll	___cxx_global_var_init1
	addl	$12, %esp
	ret

	.globl	_count
.zerofill __DATA,__common,_count,4,2
	.globl	_c1
.zerofill __DATA,__common,_c1,12,2
	.globl	_c2
.zerofill __DATA,__common,_c2,12,2
	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTV1V
	.weak_definition	__ZTV1V
	.align	2
__ZTV1V:
	.long	0
	.long	__ZTI1V
	.long	__ZN1VD1Ev
	.long	__ZN1VD0Ev

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
	.long	__ZTVN10__cxxabiv117__class_type_infoE+8
	.long	__ZTS1V

	.section	__TEXT,__cstring,cstring_literals
L_.str2:
	.asciz	 "S::~S(%d)\n"

L_.str3:
	.asciz	 "V::V(%d)\n"

L_.str4:
	.asciz	 "S::S(%d)\n"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	2
	.long	__GLOBAL__I_a

	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1SC1Ev$stub:
	.indirect_symbol	__ZN1SC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SC2Ev$stub:
	.indirect_symbol	__ZN1SC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SD1Ev$stub:
	.indirect_symbol	__ZN1SD1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1SD2Ev$stub:
	.indirect_symbol	__ZN1SD2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1VC1Ev$stub:
	.indirect_symbol	__ZN1VC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1VC2Ev$stub:
	.indirect_symbol	__ZN1VC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1VD1Ev$stub:
	.indirect_symbol	__ZN1VD1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1VD2Ev$stub:
	.indirect_symbol	__ZN1VD2Ev
	.ascii	 "\364\364\364\364\364"
L__ZdaPv$stub:
	.indirect_symbol	__ZdaPv
	.ascii	 "\364\364\364\364\364"
L__ZdlPv$stub:
	.indirect_symbol	__ZdlPv
	.ascii	 "\364\364\364\364\364"
L__Znam$stub:
	.indirect_symbol	__Znam
	.ascii	 "\364\364\364\364\364"
L___cxa_atexit$stub:
	.indirect_symbol	___cxa_atexit
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L__ZTV1V$non_lazy_ptr:
	.indirect_symbol	__ZTV1V
	.long	0
L___dso_handle$non_lazy_ptr:
	.indirect_symbol	___dso_handle
	.long	0

.subsections_via_symbols
