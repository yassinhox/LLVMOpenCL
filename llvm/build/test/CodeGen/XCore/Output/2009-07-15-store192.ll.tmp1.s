	.file	"<stdin>"
	.text
	.globl	store32
	.align	2
	.type	store32,@function
	.cc_top store32.function,store32 # @store32
store32:
# BB#0:                                 # %entry
	ldc r1, 0
	stw r1, r0[5]
	stw r1, r0[4]
	stw r1, r0[3]
	stw r1, r0[2]
	stw r1, r0[1]
	stw r1, r0[0]
	retsp 0
	.cc_bottom store32.function
.Ltmp0:
	.size	store32, .Ltmp0-store32


