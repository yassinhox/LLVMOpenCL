	.file	"<stdin>"
	.text
	.globl	test
	.align	2
	.type	test,@function
	.cc_top test.function,test      # @test
test:
# BB#0:                                 # %entry
	extsp 1
	ldaw r0, sp[0]
	sub r0, r0, 4
	ldw r0, r0[0]
	ldaw sp, sp[1]
	retsp 0
	.cc_bottom test.function
.Ltmp0:
	.size	test, .Ltmp0-test


