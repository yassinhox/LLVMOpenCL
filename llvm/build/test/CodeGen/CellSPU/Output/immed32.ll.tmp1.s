	.file	"<stdin>"
	.text
	.globl	test_1
	.align	3
	.type	test_1,@function
test_1:                                 # @test_1
# BB#0:
	ilhu	$3, 73
	bi	$lr
.Ltmp0:
	.size	test_1, .Ltmp0-test_1

	.globl	test_2
	.align	3
	.type	test_2,@function
test_2:                                 # @test_2
# BB#0:
	ilhu	$3, 81
	lnop
	iohl	$3, 15
	bi	$lr
.Ltmp1:
	.size	test_2, .Ltmp1-test_2

	.globl	test_3
	.align	3
	.type	test_3,@function
test_3:                                 # @test_3
# BB#0:
	il	$3, 511
	bi	$lr
.Ltmp2:
	.size	test_3, .Ltmp2-test_3

	.globl	test_4
	.align	3
	.type	test_4,@function
test_4:                                 # @test_4
# BB#0:
	il	$3, -512
	bi	$lr
.Ltmp3:
	.size	test_4, .Ltmp3-test_4

	.globl	test_5
	.align	3
	.type	test_5,@function
test_5:                                 # @test_5
# BB#0:
	ilhu	$3, 6
	lnop
	iohl	$3, 6784
	bi	$lr
.Ltmp4:
	.size	test_5, .Ltmp4-test_5

	.globl	float_const_1
	.align	3
	.type	float_const_1,@function
float_const_1:                          # @float_const_1
# BB#0:
	ilhu	$3, 16429
	lnop
	iohl	$3, 63572
	bi	$lr
.Ltmp5:
	.size	float_const_1, .Ltmp5-float_const_1

	.globl	float_const_2
	.align	3
	.type	float_const_2,@function
float_const_2:                          # @float_const_2
# BB#0:
	ilhu	$3, 128
	bi	$lr
.Ltmp6:
	.size	float_const_2, .Ltmp6-float_const_2

	.globl	float_const_3
	.align	3
	.type	float_const_3,@function
float_const_3:                          # @float_const_3
# BB#0:
	ilhu	$3, 32639
	lnop
	iohl	$3, 65535
	bi	$lr
.Ltmp7:
	.size	float_const_3, .Ltmp7-float_const_3

	.globl	float_const_4
	.align	3
	.type	float_const_4,@function
float_const_4:                          # @float_const_4
# BB#0:
	ilhu	$3, 16457
	lnop
	iohl	$3, 4059
	bi	$lr
.Ltmp8:
	.size	float_const_4, .Ltmp8-float_const_4

	.globl	float_const_5
	.align	3
	.type	float_const_5,@function
float_const_5:                          # @float_const_5
# BB#0:
	ilhu	$3, 49077
	lnop
	iohl	$3, 1267
	bi	$lr
.Ltmp9:
	.size	float_const_5, .Ltmp9-float_const_5

	.globl	float_const_6
	.align	3
	.type	float_const_6,@function
float_const_6:                          # @float_const_6
# BB#0:
	ilhu	$3, 16309
	lnop
	iohl	$3, 1267
	bi	$lr
.Ltmp10:
	.size	float_const_6, .Ltmp10-float_const_6

	.globl	float_const_7
	.align	3
	.type	float_const_7,@function
float_const_7:                          # @float_const_7
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp11:
	.size	float_const_7, .Ltmp11-float_const_7


