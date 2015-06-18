	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init:
	subl	$12, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	leal	_srcX-L0$pb(%eax), %eax
	movl	%eax, (%esp)
	calll	L__ZN1XC1Ev$stub
	addl	$12, %esp
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

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
___cxx_global_var_init1:
	subl	$12, %esp
	calll	L2$pb
L2$pb:
	popl	%eax
	leal	_dstX-L2$pb(%eax), %eax
	movl	%eax, (%esp)
	calll	L__ZN1XC1Ev$stub
	addl	$12, %esp
	ret

	.align	4, 0x90
___cxx_global_var_init2:
	subl	$12, %esp
	calll	L3$pb
L3$pb:
	popl	%eax
	leal	_dstY-L3$pb(%eax), %eax
	movl	%eax, (%esp)
	calll	L__ZN1XC1Ev$stub
	addl	$12, %esp
	ret

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	subl	$28, %esp
	calll	L4$pb
L4$pb:
	popl	%eax
	leal	_dstX-L4$pb(%eax), %ecx
	leal	_srcX-L4$pb(%eax), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 24(%esp)
	calll	L__ZN1XaSERKS_$stub
	movl	24(%esp), %ecx
	leal	_dstY-L4$pb(%ecx), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	calll	L__ZN1XaSERKS_$stub
	movl	24(%esp), %ecx
	leal	_srcX-L4$pb(%ecx), %edx
	movl	%edx, (%esp)
	movl	%eax, 20(%esp)
	calll	L__ZN1X2prEv$stub
	movl	24(%esp), %eax
	leal	_dstX-L4$pb(%eax), %ecx
	movl	%ecx, (%esp)
	calll	L__ZN1X2prEv$stub
	movl	24(%esp), %eax
	leal	_dstY-L4$pb(%eax), %ecx
	movl	%ecx, (%esp)
	calll	L__ZN1X2prEv$stub
	movl	$0, %eax
	addl	$28, %esp
	ret

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN1XaSERKS_
	.weak_definition	__ZN1XaSERKS_
	.align	4, 0x90
__ZN1XaSERKS_:
	pushl	%esi
	subl	$40, %esp
	movl	52(%esp), %eax
	movl	48(%esp), %ecx
	movl	%ecx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	36(%esp), %ecx
	movl	%ecx, %edx
	addl	$12, %edx
	movl	8(%eax), %esi
	movl	%esi, 8(%ecx)
	movl	(%eax), %esi
	movl	4(%eax), %eax
	movl	%eax, 4(%ecx)
	movl	%esi, (%ecx)
	movl	32(%esp), %eax
	addl	$12, %eax
	movl	%esp, %esi
	movl	%eax, 4(%esi)
	movl	%edx, (%esi)
	movl	%ecx, 28(%esp)
	calll	L__ZN1NaSERKS_$stub
	movl	32(%esp), %ecx
	fldl	104(%ecx)
	movl	28(%esp), %ecx
	fstpl	104(%ecx)
	movl	32(%esp), %edx
	fldl	112(%edx)
	fstpl	112(%ecx)
	movl	32(%esp), %edx
	fldl	120(%edx)
	fstpl	120(%ecx)
	movl	32(%esp), %edx
	fldl	128(%edx)
	fstpl	128(%ecx)
	addl	$136, %ecx
	movl	32(%esp), %edx
	addl	$136, %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 24(%esp)
	calll	L__ZN1QaSERKS_$stub
	movl	28(%esp), %ecx
	addl	$156, %ecx
	movl	32(%esp), %edx
	addl	$156, %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 20(%esp)
	calll	L__ZN1QaSERKS_$stub
	movl	28(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	%ecx, %eax
	addl	$40, %esp
	popl	%esi
	ret

	.globl	__ZN1X2prEv
	.weak_definition	__ZN1X2prEv
	.align	4, 0x90
__ZN1X2prEv:
	pushl	%esi
	subl	$56, %esp
	calll	L6$pb
L6$pb:
	popl	%eax
	movl	64(%esp), %ecx
	leal	L_.str-L6$pb(%eax), %edx
	movl	%ecx, 52(%esp)
	fldl	104(%ecx)
	fldl	112(%ecx)
	fldl	120(%ecx)
	fldl	128(%ecx)
	movl	%esp, %esi
	fstpl	28(%esi)
	fstpl	20(%esi)
	fstpl	12(%esi)
	fstpl	4(%esi)
	leal	L_.str-L6$pb(%eax), %eax
	movl	%eax, (%esi)
	movl	%ecx, 48(%esp)
	movl	%edx, 44(%esp)
	calll	L_printf$stub
	movl	48(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 40(%esp)
	calll	L__ZN1M2prEv$stub
	movl	48(%esp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	calll	L__ZN1N2prEv$stub
	movl	48(%esp), %eax
	addl	$136, %eax
	movl	%eax, (%esp)
	calll	L__ZN1Q2prEv$stub
	movl	48(%esp), %eax
	addl	$156, %eax
	movl	%eax, (%esp)
	calll	L__ZN1Q2prEv$stub
	addl	$56, %esp
	popl	%esi
	ret

	.globl	__ZN1M2prEv
	.weak_definition	__ZN1M2prEv
	.align	4, 0x90
__ZN1M2prEv:
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	calll	L7$pb
L7$pb:
	popl	%eax
	movl	48(%esp), %ecx
	leal	L_.str7-L7$pb(%eax), %eax
	movl	%ecx, 32(%esp)
	movl	32(%esp), %ecx
	movl	(%ecx), %edx
	movl	4(%ecx), %esi
	movl	8(%ecx), %edi
	movl	8(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ecx, 16(%esp)
	calll	L_printf$stub
	movl	%eax, 28(%esp)
	addl	$36, %esp
	popl	%esi
	popl	%edi
	ret

	.globl	__ZN1N2prEv
	.weak_definition	__ZN1N2prEv
	.align	4, 0x90
__ZN1N2prEv:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L8$pb
L8$pb:
	popl	%eax
	movl	80(%esp), %ecx
	leal	L_.str4-L8$pb(%eax), %edx
	movl	%ecx, 56(%esp)
	movl	56(%esp), %ecx
	movl	12(%ecx), %esi
	movl	16(%ecx), %edi
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 44(%esp)
	movl	%ecx, 40(%esp)
	calll	L_printf$stub
	movl	$0, 52(%esp)
	movl	%eax, 36(%esp)
LBB8_1:
	cmpl	$3, 52(%esp)
	jae	LBB8_8
	movl	$0, 48(%esp)
LBB8_3:
	cmpl	$2, 48(%esp)
	jae	LBB8_6
	movl	44(%esp), %eax
	leal	L_.str5-L8$pb(%eax), %ecx
	movl	52(%esp), %edx
	movl	48(%esp), %esi
	imull	$24, %edx, %edi
	imull	$12, %esi, %ebx
	movl	40(%esp), %ebp
	addl	%edi, %ebp
	flds	20(%ebx,%ebp)
	movl	%esp, %edi
	fstpl	12(%edi)
	movl	%esi, 8(%edi)
	movl	%edx, 4(%edi)
	leal	L_.str5-L8$pb(%eax), %edx
	movl	%edx, (%edi)
	movl	%ecx, 32(%esp)
	calll	L_printf$stub
	movl	%eax, 28(%esp)
	movl	48(%esp), %eax
	addl	$1, %eax
	movl	%eax, 48(%esp)
	jmp	LBB8_3
LBB8_6:
	jmp	LBB8_7
LBB8_7:
	movl	52(%esp), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	jmp	LBB8_1
LBB8_8:
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1B2prEv$stub
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.globl	__ZN1Q2prEv
	.weak_definition	__ZN1Q2prEv
	.align	4, 0x90
__ZN1Q2prEv:
	subl	$28, %esp
	calll	L9$pb
L9$pb:
	popl	%eax
	movl	32(%esp), %ecx
	leal	L_.str3-L9$pb(%eax), %eax
	movl	%ecx, 24(%esp)
	movl	24(%esp), %ecx
	movl	12(%ecx), %edx
	movl	16(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, 8(%esp)
	calll	L_printf$stub
	movl	%eax, 20(%esp)
	addl	$28, %esp
	ret

	.globl	__ZN1B2prEv
	.weak_definition	__ZN1B2prEv
	.align	4, 0x90
__ZN1B2prEv:
	subl	$44, %esp
	calll	L10$pb
L10$pb:
	popl	%eax
	movl	48(%esp), %ecx
	leal	L_.str6-L10$pb(%eax), %edx
	movl	%ecx, 40(%esp)
	flds	8(%ecx)
	flds	4(%ecx)
	flds	(%ecx)
	movl	%esp, %ecx
	fxch	%st(2)
	fstpl	20(%ecx)
	fstpl	12(%ecx)
	fstpl	4(%ecx)
	leal	L_.str6-L10$pb(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 36(%esp)
	calll	L_printf$stub
	movl	%eax, 32(%esp)
	addl	$44, %esp
	ret

	.globl	__ZN1NaSERKS_
	.weak_definition	__ZN1NaSERKS_
	.align	4, 0x90
__ZN1NaSERKS_:
	pushl	%esi
	subl	$40, %esp
	movl	52(%esp), %eax
	movl	48(%esp), %ecx
	movl	%ecx, 36(%esp)
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	12(%ecx), %ecx
	movl	%ecx, 12(%eax)
	movl	32(%esp), %ecx
	movl	16(%ecx), %ecx
	movl	%ecx, 16(%eax)
	movl	$0, 28(%esp)
	movl	%eax, 20(%esp)
LBB11_1:
	cmpl	$3, 28(%esp)
	jae	LBB11_8
	movl	$0, 24(%esp)
LBB11_3:
	cmpl	$2, 24(%esp)
	jae	LBB11_6
	movl	24(%esp), %eax
	movl	28(%esp), %ecx
	movl	20(%esp), %edx
	addl	$20, %edx
	imull	$24, %ecx, %ecx
	addl	%ecx, %edx
	imull	$12, %eax, %eax
	addl	%eax, %edx
	movl	24(%esp), %eax
	movl	28(%esp), %ecx
	movl	32(%esp), %esi
	addl	$20, %esi
	imull	$24, %ecx, %ecx
	addl	%ecx, %esi
	imull	$12, %eax, %eax
	addl	%eax, %esi
	movl	%edx, (%esp)
	movl	%esi, 4(%esp)
	calll	L__ZN1BaSERKS_$stub
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	addl	$1, %eax
	movl	%eax, 24(%esp)
	jmp	LBB11_3
LBB11_6:
	jmp	LBB11_7
LBB11_7:
	movl	28(%esp), %eax
	addl	$1, %eax
	movl	%eax, 28(%esp)
	jmp	LBB11_1
LBB11_8:
	movl	20(%esp), %eax
	addl	$40, %esp
	popl	%esi
	ret

	.globl	__ZN1QaSERKS_
	.weak_definition	__ZN1QaSERKS_
	.align	4, 0x90
__ZN1QaSERKS_:
	subl	$28, %esp
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movl	%eax, %ecx
	movl	20(%esp), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 16(%esp)
	calll	L__ZN1BaSERKS_$stub
	movl	20(%esp), %ecx
	movl	12(%ecx), %ecx
	movl	16(%esp), %edx
	movl	%ecx, 12(%edx)
	movl	20(%esp), %ecx
	movl	16(%ecx), %ecx
	movl	%ecx, 16(%edx)
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	addl	$28, %esp
	ret

	.globl	__ZN1BaSERKS_
	.weak_definition	__ZN1BaSERKS_
	.align	4, 0x90
__ZN1BaSERKS_:
	subl	$8, %esp
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	4(%esp), %ecx
	flds	(%eax)
	fstps	(%ecx)
	movl	(%esp), %eax
	flds	4(%eax)
	fstps	4(%ecx)
	movl	(%esp), %eax
	flds	8(%eax)
	fstps	8(%ecx)
	movl	%ecx, %eax
	addl	$8, %esp
	ret

	.globl	__ZN1XC2Ev
	.weak_definition	__ZN1XC2Ev
	.align	4, 0x90
__ZN1XC2Ev:
	subl	$28, %esp
	movl	32(%esp), %eax
	movl	%eax, 24(%esp)
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movl	%eax, 20(%esp)
	calll	L__ZN1MC2Ev$stub
	movl	20(%esp), %eax
	addl	$12, %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	L__ZN1NC2Ev$stub
	movl	20(%esp), %eax
	movl	$0, 108(%eax)
	movl	$0, 104(%eax)
	movl	$1072798105, 116(%eax)
	movl	$-1717986918, 112(%eax)
	movl	$1072902963, 124(%eax)
	movl	$858993459, 120(%eax)
	movl	$1073007820, 132(%eax)
	movl	$-858993459, 128(%eax)
	movl	%eax, %ecx
	addl	$136, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 16(%esp)
	calll	L__ZN1QC1Ev$stub
	movl	16(%esp), %eax
	addl	$156, %eax
	movl	%eax, (%esp)
	calll	L__ZN1QC1Ev$stub
	addl	$28, %esp
	ret

	.globl	__ZN1MC2Ev
	.weak_definition	__ZN1MC2Ev
	.align	4, 0x90
__ZN1MC2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	movl	(%esp), %eax
	movl	$10, (%eax)
	movl	$11, 4(%eax)
	movl	$12, 8(%eax)
	popl	%eax
	ret

	.globl	__ZN1NC2Ev
	.weak_definition	__ZN1NC2Ev
	.align	4, 0x90
__ZN1NC2Ev:
	subl	$28, %esp
	movl	32(%esp), %eax
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	%eax, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 20(%esp)
	calll	L__ZN1BC2Ev$stub
	movl	20(%esp), %eax
	movl	$20, 12(%eax)
	movl	$21, 16(%eax)
	addl	$20, %eax
	movl	%eax, %ecx
	addl	$72, %ecx
	movl	%ecx, 16(%esp)
	movl	%eax, 12(%esp)
LBB16_1:
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 8(%esp)
	calll	L__ZN1BC1Ev$stub
	movl	8(%esp), %eax
	addl	$12, %eax
	movl	16(%esp), %ecx
	cmpl	%ecx, %eax
	movl	%eax, 12(%esp)
	jne	LBB16_1
	addl	$28, %esp
	ret

	.globl	__ZN1QC1Ev
	.weak_definition	__ZN1QC1Ev
	.align	4, 0x90
__ZN1QC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1QC2Ev$stub
	addl	$12, %esp
	ret

	.globl	__ZN1QC2Ev
	.weak_definition	__ZN1QC2Ev
	.align	4, 0x90
__ZN1QC2Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	L__ZN1BC2Ev$stub
	movl	4(%esp), %eax
	movl	$30, 12(%eax)
	movl	$31, 16(%eax)
	addl	$12, %esp
	ret

	.globl	__ZN1BC2Ev
	.weak_definition	__ZN1BC2Ev
	.align	4, 0x90
__ZN1BC2Ev:
	pushl	%eax
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	movl	$1078523331, (%eax)
	movl	$1078565274, 4(%eax)
	movl	$1078607217, 8(%eax)
	popl	%eax
	ret

	.globl	__ZN1BC1Ev
	.weak_definition	__ZN1BC1Ev
	.align	4, 0x90
__ZN1BC1Ev:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	calll	L__ZN1BC2Ev$stub
	addl	$12, %esp
	ret

	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	4, 0x90
__GLOBAL__I_a:
	subl	$12, %esp
	calll	___cxx_global_var_init
	calll	___cxx_global_var_init1
	calll	___cxx_global_var_init2
	addl	$12, %esp
	ret

	.globl	_srcX
.zerofill __DATA,__common,_srcX,176,2
	.globl	_dstX
.zerofill __DATA,__common,_dstX,176,2
	.globl	_dstY
.zerofill __DATA,__common,_dstY,176,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "d = %f d1 = %f d2 = %f d3 = %f\n"

L_.str3:
	.asciz	 "Q1 = %d Q2 = %d\n"

L_.str4:
	.asciz	 "N1 = %d N2 = %d\n"

L_.str5:
	.asciz	 "arr_b[%d][%d] = %f\n"

L_.str6:
	.asciz	 "B1 = %f B2 = %f auB1 = %f\n"

L_.str7:
	.asciz	 "M1 = %d M2 = %d auM1 = %d auM2 = %d\n"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.align	2
	.long	__GLOBAL__I_a

	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__ZN1B2prEv$stub:
	.indirect_symbol	__ZN1B2prEv
	.ascii	 "\364\364\364\364\364"
L__ZN1BC1Ev$stub:
	.indirect_symbol	__ZN1BC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1BC2Ev$stub:
	.indirect_symbol	__ZN1BC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1BaSERKS_$stub:
	.indirect_symbol	__ZN1BaSERKS_
	.ascii	 "\364\364\364\364\364"
L__ZN1M2prEv$stub:
	.indirect_symbol	__ZN1M2prEv
	.ascii	 "\364\364\364\364\364"
L__ZN1MC2Ev$stub:
	.indirect_symbol	__ZN1MC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1N2prEv$stub:
	.indirect_symbol	__ZN1N2prEv
	.ascii	 "\364\364\364\364\364"
L__ZN1NC2Ev$stub:
	.indirect_symbol	__ZN1NC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1NaSERKS_$stub:
	.indirect_symbol	__ZN1NaSERKS_
	.ascii	 "\364\364\364\364\364"
L__ZN1Q2prEv$stub:
	.indirect_symbol	__ZN1Q2prEv
	.ascii	 "\364\364\364\364\364"
L__ZN1QC1Ev$stub:
	.indirect_symbol	__ZN1QC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1QC2Ev$stub:
	.indirect_symbol	__ZN1QC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1QaSERKS_$stub:
	.indirect_symbol	__ZN1QaSERKS_
	.ascii	 "\364\364\364\364\364"
L__ZN1X2prEv$stub:
	.indirect_symbol	__ZN1X2prEv
	.ascii	 "\364\364\364\364\364"
L__ZN1XC1Ev$stub:
	.indirect_symbol	__ZN1XC1Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1XC2Ev$stub:
	.indirect_symbol	__ZN1XC2Ev
	.ascii	 "\364\364\364\364\364"
L__ZN1XaSERKS_$stub:
	.indirect_symbol	__ZN1XaSERKS_
	.ascii	 "\364\364\364\364\364"
L_printf$stub:
	.indirect_symbol	_printf
	.ascii	 "\364\364\364\364\364"

.subsections_via_symbols
