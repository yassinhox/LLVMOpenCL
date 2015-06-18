	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
"-[AllPointers .cxx_destruct]":
	subq	$24, %rsp
	movabsq	$0, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	movq	_OBJC_IVAR_$_AllPointers.bletch(%rip), %rdi
	movq	%rsi, %rcx
	addq	%rdi, %rcx
	movq	%rcx, %rdi
	movq	%rsi, (%rsp)
	movq	%rax, %rsi
	callq	_objc_storeStrong
	movabsq	$0, %rsi
	movq	_OBJC_IVAR_$_AllPointers.bar(%rip), %rax
	movq	(%rsp), %rcx
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_objc_storeStrong
	movabsq	$0, %rsi
	movq	_OBJC_IVAR_$_AllPointers.foo(%rip), %rax
	movq	(%rsp), %rcx
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_objc_storeStrong
	addq	$24, %rsp
	ret

	.align	4, 0x90
"-[A .cxx_destruct]":
	subq	$24, %rsp
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	movq	_OBJC_IVAR_$_A.delegate(%rip), %rdi
	movq	%rsi, %rax
	addq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	callq	_objc_destroyWeak
	movabsq	$0, %rsi
	movq	_OBJC_IVAR_$_A.bar(%rip), %rax
	movq	(%rsp), %rdi
	addq	%rax, %rdi
	callq	_objc_storeStrong
	movabsq	$0, %rsi
	movq	_OBJC_IVAR_$_A.foo(%rip), %rax
	movq	(%rsp), %rdi
	addq	%rax, %rdi
	callq	_objc_storeStrong
	addq	$24, %rsp
	ret

	.align	4, 0x90
"-[B .cxx_destruct]":
	subq	$24, %rsp
	movabsq	$0, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	movq	_OBJC_IVAR_$_B.z(%rip), %rdi
	movq	%rsi, %rcx
	addq	%rdi, %rcx
	movq	%rcx, %rdi
	movq	%rsi, (%rsp)
	movq	%rax, %rsi
	callq	_objc_storeStrong
	movabsq	$0, %rsi
	movq	_OBJC_IVAR_$_B.y(%rip), %rax
	movq	(%rsp), %rcx
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	_objc_storeStrong
	addq	$24, %rsp
	ret

	.align	4, 0x90
"-[UnsafePerson .cxx_destruct]":
	subq	$24, %rsp
	movabsq	$0, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	movq	_OBJC_IVAR_$_UnsafePerson.value(%rip), %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	_objc_storeStrong
	addq	$24, %rsp
	ret

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_AllPointers.bletch
	.align	3
_OBJC_IVAR_$_AllPointers.bletch:
	.quad	24

	.globl	_OBJC_IVAR_$_AllPointers.bar
	.align	3
_OBJC_IVAR_$_AllPointers.bar:
	.quad	16

	.globl	_OBJC_IVAR_$_AllPointers.foo
	.align	3
_OBJC_IVAR_$_AllPointers.foo:
	.quad	8

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_:
	.asciz	 "AllPointers"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_METACLASS_RO_$_AllPointers:
	.long	389
	.long	40
	.long	40
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_AllPointers
	.align	3
_OBJC_METACLASS_$_AllPointers:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_METACLASS_RO_$_AllPointers

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_1:
	.asciz	 "\003"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:
	.asciz	 ".cxx_destruct"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_:
	.asciz	 "v16@0:8"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_METHODS_AllPointers:
	.long	24
	.long	1
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[AllPointers .cxx_destruct]"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_2:
	.asciz	 "foo"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_3:
	.asciz	 "@"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_4:
	.asciz	 "bar"

L_OBJC_METH_VAR_NAME_5:
	.asciz	 "bletch"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_6:
	.asciz	 "@\"NSObject\""

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_VARIABLES_AllPointers:
	.long	32
	.long	3
	.quad	_OBJC_IVAR_$_AllPointers.foo
	.quad	L_OBJC_METH_VAR_NAME_2
	.quad	L_OBJC_METH_VAR_TYPE_3
	.long	3
	.long	8
	.quad	_OBJC_IVAR_$_AllPointers.bar
	.quad	L_OBJC_METH_VAR_NAME_4
	.quad	L_OBJC_METH_VAR_TYPE_3
	.long	3
	.long	8
	.quad	_OBJC_IVAR_$_AllPointers.bletch
	.quad	L_OBJC_METH_VAR_NAME_5
	.quad	L_OBJC_METH_VAR_TYPE_6
	.long	3
	.long	8

	.align	3
l_OBJC_CLASS_RO_$_AllPointers:
	.long	388
	.long	8
	.long	32
	.space	4
	.quad	L_OBJC_CLASS_NAME_1
	.quad	L_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_AllPointers
	.quad	0
	.quad	l_OBJC_$_INSTANCE_VARIABLES_AllPointers
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_AllPointers
	.align	3
_OBJC_CLASS_$_AllPointers:
	.quad	_OBJC_METACLASS_$_AllPointers
	.quad	_OBJC_CLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_CLASS_RO_$_AllPointers

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_A.delegate
	.align	3
_OBJC_IVAR_$_A.delegate:
	.quad	32

	.globl	_OBJC_IVAR_$_A.bar
	.align	3
_OBJC_IVAR_$_A.bar:
	.quad	16

	.globl	_OBJC_IVAR_$_A.foo
	.align	3
_OBJC_IVAR_$_A.foo:
	.quad	8

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_7:
	.asciz	 "A"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_METACLASS_RO_$_A:
	.long	389
	.long	40
	.long	40
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_7
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_A
	.align	3
_OBJC_METACLASS_$_A:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_METACLASS_RO_$_A

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_8:
	.asciz	 "\002 "

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_METHODS_A:
	.long	24
	.long	1
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[A .cxx_destruct]"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_9:
	.asciz	 "@\"NSString\""

L_OBJC_METH_VAR_TYPE_10:
	.asciz	 "@\"NSNumber\""

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_A.bletch
	.align	3
_OBJC_IVAR_$_A.bletch:
	.quad	24

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_11:
	.asciz	 "I"

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_12:
	.asciz	 "delegate"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_VARIABLES_A:
	.long	32
	.long	4
	.quad	_OBJC_IVAR_$_A.foo
	.quad	L_OBJC_METH_VAR_NAME_2
	.quad	L_OBJC_METH_VAR_TYPE_9
	.long	3
	.long	8
	.quad	_OBJC_IVAR_$_A.bar
	.quad	L_OBJC_METH_VAR_NAME_4
	.quad	L_OBJC_METH_VAR_TYPE_10
	.long	3
	.long	8
	.quad	_OBJC_IVAR_$_A.bletch
	.quad	L_OBJC_METH_VAR_NAME_5
	.quad	L_OBJC_METH_VAR_TYPE_11
	.long	2
	.long	4
	.quad	_OBJC_IVAR_$_A.delegate
	.quad	L_OBJC_METH_VAR_NAME_12
	.quad	L_OBJC_METH_VAR_TYPE_3
	.long	3
	.long	8

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_13:
	.asciz	 "1"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_CLASS_RO_$_A:
	.long	388
	.long	8
	.long	40
	.space	4
	.quad	L_OBJC_CLASS_NAME_8
	.quad	L_OBJC_CLASS_NAME_7
	.quad	l_OBJC_$_INSTANCE_METHODS_A
	.quad	0
	.quad	l_OBJC_$_INSTANCE_VARIABLES_A
	.quad	L_OBJC_CLASS_NAME_13
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_A
	.align	3
_OBJC_CLASS_$_A:
	.quad	_OBJC_METACLASS_$_A
	.quad	_OBJC_CLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_CLASS_RO_$_A

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_B.z
	.align	3
_OBJC_IVAR_$_B.z:
	.quad	56

	.globl	_OBJC_IVAR_$_B.y
	.align	3
_OBJC_IVAR_$_B.y:
	.quad	48

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_14:
	.asciz	 "B"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_METACLASS_RO_$_B:
	.long	389
	.long	40
	.long	40
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_14
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_B
	.align	3
_OBJC_METACLASS_$_B:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_A
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_METACLASS_RO_$_B

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_15:
	.asciz	 "\022"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_METHODS_B:
	.long	24
	.long	1
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[B .cxx_destruct]"

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_B.x
	.align	3
_OBJC_IVAR_$_B.x:
	.quad	40

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_16:
	.asciz	 "x"

L_OBJC_METH_VAR_NAME_17:
	.asciz	 "y"

L_OBJC_METH_VAR_NAME_18:
	.asciz	 "z"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_VARIABLES_B:
	.long	32
	.long	3
	.quad	_OBJC_IVAR_$_B.x
	.quad	L_OBJC_METH_VAR_NAME_16
	.quad	L_OBJC_METH_VAR_TYPE_11
	.long	2
	.long	4
	.quad	_OBJC_IVAR_$_B.y
	.quad	L_OBJC_METH_VAR_NAME_17
	.quad	L_OBJC_METH_VAR_TYPE_9
	.long	3
	.long	8
	.quad	_OBJC_IVAR_$_B.z
	.quad	L_OBJC_METH_VAR_NAME_18
	.quad	L_OBJC_METH_VAR_TYPE_9
	.long	3
	.long	8

	.align	3
l_OBJC_CLASS_RO_$_B:
	.long	388
	.long	40
	.long	64
	.space	4
	.quad	L_OBJC_CLASS_NAME_15
	.quad	L_OBJC_CLASS_NAME_14
	.quad	l_OBJC_$_INSTANCE_METHODS_B
	.quad	0
	.quad	l_OBJC_$_INSTANCE_VARIABLES_B
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_B
	.align	3
_OBJC_CLASS_$_B:
	.quad	_OBJC_METACLASS_$_B
	.quad	_OBJC_CLASS_$_A
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_CLASS_RO_$_B

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_UnsafePerson.value
	.align	3
_OBJC_IVAR_$_UnsafePerson.value:
	.quad	16

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_UnsafePerson
	.align	3
_OBJC_CLASS_$_UnsafePerson:
	.quad	_OBJC_METACLASS_$_UnsafePerson
	.quad	0
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_CLASS_RO_$_UnsafePerson

	.globl	_OBJC_METACLASS_$_UnsafePerson
	.align	3
_OBJC_METACLASS_$_UnsafePerson:
	.quad	_OBJC_METACLASS_$_UnsafePerson
	.quad	_OBJC_CLASS_$_UnsafePerson
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_METACLASS_RO_$_UnsafePerson

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_19:
	.asciz	 "UnsafePerson"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_METACLASS_RO_$_UnsafePerson:
	.long	391
	.long	40
	.long	40
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_19
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_20:
	.asciz	 "!"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_METHODS_UnsafePerson:
	.long	24
	.long	1
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[UnsafePerson .cxx_destruct]"

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_UnsafePerson.name
	.align	3
_OBJC_IVAR_$_UnsafePerson.name:
	.quad	0

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_21:
	.asciz	 "name"

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_UnsafePerson.age
	.align	3
_OBJC_IVAR_$_UnsafePerson.age:
	.quad	8

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_22:
	.asciz	 "age"

L_OBJC_METH_VAR_NAME_23:
	.asciz	 "value"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_VARIABLES_UnsafePerson:
	.long	32
	.long	3
	.quad	_OBJC_IVAR_$_UnsafePerson.name
	.quad	L_OBJC_METH_VAR_NAME_21
	.quad	L_OBJC_METH_VAR_TYPE_3
	.long	3
	.long	8
	.quad	_OBJC_IVAR_$_UnsafePerson.age
	.quad	L_OBJC_METH_VAR_NAME_22
	.quad	L_OBJC_METH_VAR_TYPE_3
	.long	3
	.long	8
	.quad	_OBJC_IVAR_$_UnsafePerson.value
	.quad	L_OBJC_METH_VAR_NAME_23
	.quad	L_OBJC_METH_VAR_TYPE_3
	.long	3
	.long	8

	.align	3
l_OBJC_CLASS_RO_$_UnsafePerson:
	.long	390
	.long	0
	.long	24
	.space	4
	.quad	L_OBJC_CLASS_NAME_20
	.quad	L_OBJC_CLASS_NAME_19
	.quad	l_OBJC_$_INSTANCE_METHODS_UnsafePerson
	.quad	0
	.quad	l_OBJC_$_INSTANCE_VARIABLES_UnsafePerson
	.quad	0
	.quad	0

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.align	3
L_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_AllPointers
	.quad	_OBJC_CLASS_$_A
	.quad	_OBJC_CLASS_$_B
	.quad	_OBJC_CLASS_$_UnsafePerson

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	0

	.weak_reference _objc_storeStrong
	.weak_reference _objc_destroyWeak

.subsections_via_symbols
