	.file	"<stdin>"
	.text
	.globl	align1
	.align	2
	.type	align1,@function
	.cc_top align1.function,align1  # @align1
align1:
# BB#0:                                 # %entry
	entsp 1
	bl __misaligned_load
	retsp 1
	.cc_bottom align1.function
.Ltmp0:
	.size	align1, .Ltmp0-align1

	.globl	align2
	.align	2
	.type	align2,@function
	.cc_top align2.function,align2  # @align2
align2:
# BB#0:                                 # %entry
	ldc r2, 0
	ld16s r1, r0[r2]
	zext r1, 16
	add r0, r0, 2
	ld16s r0, r0[r2]
	shl r0, r0, 16
	or r0, r1, r0
	retsp 0
	.cc_bottom align2.function
.Ltmp1:
	.size	align2, .Ltmp1-align2

	.globl	align3
	.align	2
	.type	align3,@function
	.cc_top align3.function,align3  # @align3
align3:
# BB#0:                                 # %entry
	ldw r0, dp[a+4]
	shl r0, r0, 24
	ldw r1, dp[a]
	shr r1, r1, 8
	or r0, r1, r0
	retsp 0
	.cc_bottom align3.function
.Ltmp2:
	.size	align3, .Ltmp2-align3

	.section	.dp.bss,"awd",@nobits
	.cc_top a.data,a
	.globl	a
.globound
	.set	a
.globound,5
	.globl	a
	.align	4
	.type	a,@object
	.size a,5
a:
	.space	5
	.cc_bottom a.data

