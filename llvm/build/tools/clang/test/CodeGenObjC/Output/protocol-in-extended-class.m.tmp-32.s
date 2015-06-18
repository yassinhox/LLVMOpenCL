	.section	__TEXT,__text,regular,pure_instructions

	.objc_class_name_ItDoesntWork=0
	.globl .objc_class_name_ItDoesntWork
	.lazy_reference .objc_class_name_Protocol


	.align	4, 0x90
"-[ItDoesntWork Meth]":
	subl	$12, %esp
	movl	20(%esp), %eax
	movl	16(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	addl	$12, %esp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_:
	.asciz	 "ExtendedProtocol"

	.section	__OBJC,__protocol,regular,no_dead_strip
	.align	2
L_OBJC_PROTOCOL_ExtendedProtocol:
	.long	0
	.long	L_OBJC_CLASS_NAME_
	.long	0
	.long	0
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_1:
	.asciz	 "MyProtocol"

	.section	__OBJC,__protocol,regular,no_dead_strip
	.align	2
L_OBJC_PROTOCOL_MyProtocol:
	.long	0
	.long	L_OBJC_CLASS_NAME_1
	.long	0
	.long	0
	.long	0

	.section	__OBJC,__cat_cls_meth,regular,no_dead_strip
	.align	2
L_OBJC_CLASS_PROTOCOLS_ItDoesntWork:
	.long	0
	.long	2
	.long	L_OBJC_PROTOCOL_ExtendedProtocol
	.long	L_OBJC_PROTOCOL_MyProtocol
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_:
	.asciz	 "Meth"

L_OBJC_METH_VAR_TYPE_:
	.asciz	 "v8@0:4"

L_OBJC_CLASS_NAME_2:
	.asciz	 "ItDoesntWork"

	.section	__OBJC,__meta_class,regular,no_dead_strip
	.align	2
L_OBJC_METACLASS_ItDoesntWork:
	.long	L_OBJC_CLASS_NAME_2
	.long	0
	.long	L_OBJC_CLASS_NAME_2
	.long	0
	.long	2
	.long	48
	.long	0
	.long	0
	.long	0
	.long	L_OBJC_CLASS_PROTOCOLS_ItDoesntWork
	.long	0
	.long	0

	.section	__OBJC,__inst_meth,regular,no_dead_strip
	.align	2
L_OBJC_INSTANCE_METHODS_ItDoesntWork:
	.long	0
	.long	1
	.long	L_OBJC_METH_VAR_NAME_
	.long	L_OBJC_METH_VAR_TYPE_
	.long	"-[ItDoesntWork Meth]"

	.section	__OBJC,__class,regular,no_dead_strip
	.align	2
L_OBJC_CLASS_ItDoesntWork:
	.long	L_OBJC_METACLASS_ItDoesntWork
	.long	0
	.long	L_OBJC_CLASS_NAME_2
	.long	0
	.long	1
	.long	0
	.long	0
	.long	L_OBJC_INSTANCE_METHODS_ItDoesntWork
	.long	0
	.long	L_OBJC_CLASS_PROTOCOLS_ItDoesntWork
	.long	0
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_3:
	.space	1

	.section	__OBJC,__symbols,regular,no_dead_strip
	.align	2
L_OBJC_SYMBOLS:
	.long	0
	.long	0
	.short	1
	.short	0
	.long	L_OBJC_CLASS_ItDoesntWork

	.section	__OBJC,__module_info,regular,no_dead_strip
	.align	2
L_OBJC_MODULES:
	.long	7
	.long	16
	.long	L_OBJC_CLASS_NAME_3
	.long	L_OBJC_SYMBOLS

	.section	__OBJC,__image_info
L_OBJC_IMAGE_INFO:
	.long	0
	.long	0


.subsections_via_symbols
