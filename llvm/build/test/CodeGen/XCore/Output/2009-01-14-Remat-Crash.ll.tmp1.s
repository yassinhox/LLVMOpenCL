	.file	"<stdin>"
	.text
	.globl	f1
	.align	2
	.type	f1,@function
	.cc_top f1.function,f1          # @f1
f1:
# BB#0:                                 # %bb129
	entsp 2
	stw r4, sp[1]
	mov r11, r1
	mov r4, r0
	mov r0, r2
	mov r1, r3
	mov r2, r4
	mov r3, r11
	bl __subdf3
	ldw r2, sp[3]
	ldw r3, sp[4]
	bl __subdf3
	ldw r2, sp[5]
	ldw r3, sp[6]
	bl __adddf3
	ldw r2, sp[7]
	ldw r3, sp[8]
	bl __subdf3
	ldw r2, sp[9]
	ldw r3, sp[10]
	bl __adddf3
	ldc r2, 0
	mov r3, r2
	bl __muldf3
	ldw r4, sp[1]
	retsp 2
	.cc_bottom f1.function
.Ltmp0:
	.size	f1, .Ltmp0-f1


