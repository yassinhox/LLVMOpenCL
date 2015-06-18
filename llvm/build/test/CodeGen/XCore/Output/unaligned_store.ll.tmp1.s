	.file	"<stdin>"
	.text
	.globl	align1
	.align	2
	.type	align1,@function
	.cc_top align1.function,align1  # @align1
align1:
# BB#0:                                 # %entry
	entsp 1
	bl __misaligned_store
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
	st16 r1, r0[r2]
	add r0, r0, 2
	shr r1, r1, 16
	st16 r1, r0[r2]
	retsp 0
	.cc_bottom align2.function
.Ltmp1:
	.size	align2, .Ltmp1-align2


