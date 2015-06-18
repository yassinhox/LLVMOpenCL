	.file	"<stdin>"
	.text
	.globl	test_i8
	.align	3
	.type	test_i8,@function
test_i8:                                # @test_i8
# BB#0:
	ilhu	$4, 32896
	iohl	$4, 32768
	cntb	$3, $3
	shufb	$3, $3, $3, $4
	andi	$3, $3, 255
	bi	$lr
.Ltmp0:
	.size	test_i8, .Ltmp0-test_i8

	.globl	test_i16
	.align	3
	.type	test_i16,@function
test_i16:                               # @test_i16
# BB#0:
	ilhu	$4, 32896
	iohl	$4, 1
	cntb	$3, $3
	shufb	$3, $3, $3, $4
	rothmi	$4, $3, -8
	ah	$3, $4, $3
	andi	$3, $3, 15
	bi	$lr
.Ltmp1:
	.size	test_i16, .Ltmp1-test_i16

	.globl	test_i32
	.align	3
	.type	test_i32,@function
test_i32:                               # @test_i32
# BB#0:
	cntb	$3, $3
	rotmi	$4, $3, -16
	a	$3, $4, $3
	rotmi	$4, $3, -8
	a	$3, $4, $3
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp2:
	.size	test_i32, .Ltmp2-test_i32


