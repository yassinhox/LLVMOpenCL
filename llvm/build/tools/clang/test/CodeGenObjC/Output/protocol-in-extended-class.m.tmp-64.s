	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
"-[ItDoesntWork Meth]":
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	$0, -24(%rsp)
	ret

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_ItDoesntWork
	.align	3
_OBJC_CLASS_$_ItDoesntWork:
	.quad	_OBJC_METACLASS_$_ItDoesntWork
	.quad	0
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_CLASS_RO_$_ItDoesntWork

	.globl	_OBJC_METACLASS_$_ItDoesntWork
	.align	3
_OBJC_METACLASS_$_ItDoesntWork:
	.quad	_OBJC_METACLASS_$_ItDoesntWork
	.quad	_OBJC_CLASS_$_ItDoesntWork
	.quad	__objc_empty_cache
	.quad	__objc_empty_vtable
	.quad	l_OBJC_METACLASS_RO_$_ItDoesntWork

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_:
	.asciz	 "ItDoesntWork"

L_OBJC_CLASS_NAME_1:
	.asciz	 "ExtendedProtocol"

	.private_extern	l_OBJC_PROTOCOL_$_ExtendedProtocol
	.section	__DATA,__datacoal_nt,coalesced
	.globl	l_OBJC_PROTOCOL_$_ExtendedProtocol
	.weak_definition	l_OBJC_PROTOCOL_$_ExtendedProtocol
	.align	3
l_OBJC_PROTOCOL_$_ExtendedProtocol:
	.quad	0
	.quad	L_OBJC_CLASS_NAME_1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	80
	.long	0
	.quad	0

	.private_extern	l_OBJC_LABEL_PROTOCOL_$_ExtendedProtocol
	.section	__DATA,__objc_protolist,coalesced,no_dead_strip
	.globl	l_OBJC_LABEL_PROTOCOL_$_ExtendedProtocol
	.weak_definition	l_OBJC_LABEL_PROTOCOL_$_ExtendedProtocol
	.align	3
l_OBJC_LABEL_PROTOCOL_$_ExtendedProtocol:
	.quad	l_OBJC_PROTOCOL_$_ExtendedProtocol

	.section	__TEXT,__objc_classname,cstring_literals
L_OBJC_CLASS_NAME_2:
	.asciz	 "MyProtocol"

	.private_extern	l_OBJC_PROTOCOL_$_MyProtocol
	.section	__DATA,__datacoal_nt,coalesced
	.globl	l_OBJC_PROTOCOL_$_MyProtocol
	.weak_definition	l_OBJC_PROTOCOL_$_MyProtocol
	.align	3
l_OBJC_PROTOCOL_$_MyProtocol:
	.quad	0
	.quad	L_OBJC_CLASS_NAME_2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	80
	.long	0
	.quad	0

	.private_extern	l_OBJC_LABEL_PROTOCOL_$_MyProtocol
	.section	__DATA,__objc_protolist,coalesced,no_dead_strip
	.globl	l_OBJC_LABEL_PROTOCOL_$_MyProtocol
	.weak_definition	l_OBJC_LABEL_PROTOCOL_$_MyProtocol
	.align	3
l_OBJC_LABEL_PROTOCOL_$_MyProtocol:
	.quad	l_OBJC_PROTOCOL_$_MyProtocol

	.section	__DATA,__objc_const
	.align	3
l_OBJC_CLASS_PROTOCOLS_$_ItDoesntWork:
	.quad	2
	.quad	l_OBJC_PROTOCOL_$_ExtendedProtocol
	.quad	l_OBJC_PROTOCOL_$_MyProtocol
	.quad	0

	.align	3
l_OBJC_METACLASS_RO_$_ItDoesntWork:
	.long	3
	.long	40
	.long	40
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	0
	.quad	l_OBJC_CLASS_PROTOCOLS_$_ItDoesntWork
	.quad	0
	.quad	0
	.quad	0

	.section	__TEXT,__objc_methname,cstring_literals
L_OBJC_METH_VAR_NAME_:
	.asciz	 "Meth"

	.section	__TEXT,__objc_methtype,cstring_literals
L_OBJC_METH_VAR_TYPE_:
	.asciz	 "v16@0:8"

	.section	__DATA,__objc_const
	.align	3
l_OBJC_$_INSTANCE_METHODS_ItDoesntWork:
	.long	24
	.long	1
	.quad	L_OBJC_METH_VAR_NAME_
	.quad	L_OBJC_METH_VAR_TYPE_
	.quad	"-[ItDoesntWork Meth]"

	.align	3
l_OBJC_CLASS_RO_$_ItDoesntWork:
	.long	2
	.long	0
	.long	0
	.space	4
	.quad	0
	.quad	L_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_ItDoesntWork
	.quad	l_OBJC_CLASS_PROTOCOLS_$_ItDoesntWork
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.align	3
L_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_ItDoesntWork

	.no_dead_strip	l_OBJC_PROTOCOL_$_ExtendedProtocol
	.no_dead_strip	l_OBJC_LABEL_PROTOCOL_$_ExtendedProtocol
	.no_dead_strip	l_OBJC_PROTOCOL_$_MyProtocol
	.no_dead_strip	l_OBJC_LABEL_PROTOCOL_$_MyProtocol
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	0


.subsections_via_symbols
