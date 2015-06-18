	.section	__TEXT,__text,regular,pure_instructions

	.objc_class_name_Test=0
	.globl .objc_class_name_Test
	.lazy_reference .objc_class_name_NSObject


	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_:
	.asciz	 "NSObject"

L_OBJC_CLASS_NAME_1:
	.asciz	 "Test"

	.section	__OBJC,__meta_class,regular,no_dead_strip
	.align	2
L_OBJC_METACLASS_Test:
	.quad	L_OBJC_CLASS_NAME_
	.quad	L_OBJC_CLASS_NAME_
	.quad	L_OBJC_CLASS_NAME_1
	.quad	0
	.quad	2
	.quad	96
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_:
	.asciz	 "a"

L_OBJC_METH_VAR_TYPE_:
	.asciz	 "i"

L_OBJC_METH_VAR_NAME_2:
	.asciz	 "b"

L_OBJC_METH_VAR_TYPE_3:
	.asciz	 "[0{?=\"b\"@}]"

	.section	__OBJC,__instance_vars,regular,no_dead_strip
	.align	2
L_OBJC_INSTANCE_VARIABLES_Test:
	.long	2
	.space	4
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.long	8
	.space	4
	.quad	L_OBJC_METH_VAR_NAME_2
	.quad	L_OBJC_METH_VAR_TYPE_3
	.long	16
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_4:
	.asciz	 "\001\020"

	.section	__OBJC,__class,regular,no_dead_strip
	.align	2
L_OBJC_CLASS_Test:
	.quad	L_OBJC_METACLASS_Test
	.quad	L_OBJC_CLASS_NAME_
	.quad	L_OBJC_CLASS_NAME_1
	.quad	0
	.quad	1
	.quad	16
	.quad	L_OBJC_INSTANCE_VARIABLES_Test
	.quad	0
	.quad	0
	.quad	0
	.quad	L_OBJC_CLASS_NAME_4
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_5:
	.space	1

	.section	__OBJC,__symbols,regular,no_dead_strip
	.align	2
L_OBJC_SYMBOLS:
	.quad	0
	.quad	0
	.short	1
	.short	0
	.space	4
	.quad	L_OBJC_CLASS_Test

	.section	__OBJC,__module_info,regular,no_dead_strip
	.align	2
L_OBJC_MODULES:
	.quad	7
	.quad	32
	.quad	L_OBJC_CLASS_NAME_5
	.quad	L_OBJC_SYMBOLS

	.section	__OBJC,__image_info
L_OBJC_IMAGE_INFO:
	.long	0
	.long	2


.subsections_via_symbols
