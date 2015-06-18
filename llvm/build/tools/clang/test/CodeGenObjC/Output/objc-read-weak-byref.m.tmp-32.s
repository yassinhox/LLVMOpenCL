	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	$8, %ecx
	leal	72(%esp), %edx
	leal	40(%esp), %esi
	leal	___block_descriptor_tmp-L0$pb(%eax), %edi
	leal	___main_block_invoke-L0$pb(%eax), %ebx
	movl	L__NSConcreteStackBlock$non_lazy_ptr-L0$pb(%eax), %ebp
	movl	%eax, 32(%esp)
	leal	___Block_byref_object_dispose_-L0$pb(%eax), %eax
	movl	%eax, 28(%esp)
	movl	32(%esp), %eax
	leal	___Block_byref_object_copy_-L0$pb(%eax), %eax
	movl	%eax, 24(%esp)
	movl	$1, %eax
	movl	$0, 104(%esp)
	movl	$0, 100(%esp)
	movl	%eax, 72(%esp)
	movl	%edx, 76(%esp)
	movl	$33554432, 80(%esp)
	movl	$28, 84(%esp)
	movl	24(%esp), %eax
	movl	%eax, 88(%esp)
	movl	28(%esp), %eax
	movl	%eax, 92(%esp)
	movl	100(%esp), %eax
	movl	%eax, 96(%esp)
	movl	%ebp, 40(%esp)
	movl	$1107296256, 44(%esp)
	movl	$0, 48(%esp)
	movl	%ebx, 52(%esp)
	movl	%edi, 56(%esp)
	movl	%edx, %eax
	movl	%eax, 60(%esp)
	movl	32(%esp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_-L0$pb(%eax), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	calll	L_objc_msgSend$stub
	movl	%eax, 68(%esp)
	movl	68(%esp), %eax
	movl	%eax, %ecx
	movl	%ecx, (%esp)
	calll	*12(%eax)
	movl	$0, 104(%esp)
	movl	$1, 36(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	movl	$8, 4(%esp)
	calll	L__Block_object_dispose$stub
	movl	104(%esp), %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret

	.align	4, 0x90
___Block_byref_object_copy_:
	.cfi_startproc
	subl	$28, %esp
Ltmp1:
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	$147, %edx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	addl	$24, %eax
	movl	20(%esp), %ecx
	movl	24(%ecx), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	$147, 8(%esp)
	movl	%edx, 16(%esp)
	calll	L__Block_object_assign$stub
	addl	$28, %esp
	ret
	.cfi_endproc

	.align	4, 0x90
___Block_byref_object_dispose_:
	.cfi_startproc
	subl	$28, %esp
Ltmp3:
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	$147, %ecx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	$147, 4(%esp)
	movl	%ecx, 20(%esp)
	calll	L__Block_object_dispose$stub
	addl	$28, %esp
	ret
	.cfi_endproc

	.align	4, 0x90
___main_block_invoke:
	subl	$28, %esp
	calll	L3$pb
L3$pb:
	popl	%eax
	movl	32(%esp), %ecx
	movl	%ecx, %edx
	movl	20(%ecx), %ecx
	movl	4(%ecx), %ecx
	addl	$24, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	calll	L_objc_read_weak$stub
	cmpl	$0, %eax
	je	LBB3_2
	movl	20(%esp), %eax
	movl	20(%eax), %ecx
	movl	4(%ecx), %ecx
	addl	$24, %ecx
	movl	%ecx, (%esp)
	calll	L_objc_read_weak$stub
	movl	24(%esp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_-L3$pb(%ecx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	calll	L_objc_msgSend$stub
	movl	%eax, 16(%esp)
LBB3_2:
	addl	$28, %esp
	ret

	.align	4, 0x90
___copy_helper_block_:
	.cfi_startproc
	subl	$28, %esp
Ltmp5:
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	$24, %edx
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%esp), %eax
	movl	24(%esp), %ecx
	addl	$20, %ecx
	movl	20(%eax), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$24, 8(%esp)
	movl	%edx, 16(%esp)
	calll	L__Block_object_assign$stub
	addl	$28, %esp
	ret
	.cfi_endproc

	.align	4, 0x90
___destroy_helper_block_:
	.cfi_startproc
	subl	$28, %esp
Ltmp7:
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	$24, %ecx
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	$24, 4(%esp)
	movl	%ecx, 20(%esp)
	calll	L__Block_object_dispose$stub
	addl	$28, %esp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_:
	.asciz	 "copy"

	.section	__OBJC,__message_refs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_:
	.long	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "v4@?0"

L_OBJC_CLASS_NAME_:
	.asciz	 "\001A"

	.section	__DATA,__const
	.align	4
___block_descriptor_tmp:
	.long	0
	.long	24
	.long	___copy_helper_block_
	.long	___destroy_helper_block_
	.long	L_.str
	.long	L_OBJC_CLASS_NAME_

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_1:
	.space	1

	.section	__OBJC,__module_info,regular,no_dead_strip
	.align	2
L_OBJC_MODULES:
	.long	7
	.long	16
	.long	L_OBJC_CLASS_NAME_1
	.long	0

	.section	__OBJC,__image_info
L_OBJC_IMAGE_INFO:
	.long	0
	.long	2


	.section	__IMPORT,__jump_table,symbol_stubs,pure_instructions+self_modifying_code,5
L__Block_object_assign$stub:
	.indirect_symbol	__Block_object_assign
	.ascii	 "\364\364\364\364\364"
L__Block_object_dispose$stub:
	.indirect_symbol	__Block_object_dispose
	.ascii	 "\364\364\364\364\364"
L_objc_msgSend$stub:
	.indirect_symbol	_objc_msgSend
	.ascii	 "\364\364\364\364\364"
L_objc_read_weak$stub:
	.indirect_symbol	_objc_read_weak
	.ascii	 "\364\364\364\364\364"

	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L__NSConcreteStackBlock$non_lazy_ptr:
	.indirect_symbol	__NSConcreteStackBlock
	.long	0

.subsections_via_symbols
