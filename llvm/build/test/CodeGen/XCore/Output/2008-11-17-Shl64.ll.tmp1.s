	.file	"<stdin>"
	.text
	.globl	test
	.align	2
	.type	test,@function
	.cc_top test.function,test      # @test
test:
# BB#0:
	mkmsk r2, 5
	shr r2, r0, r2
	shl r1, r1, 1
	or r1, r1, r2
	shl r0, r0, 1
	retsp 0
	.cc_bottom test.function
.Ltmp0:
	.size	test, .Ltmp0-test


