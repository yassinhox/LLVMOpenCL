	.file	"<stdin>"
	.text
	.globl	test_1
	.align	3
	.type	test_1,@function
test_1:                                 # @test_1
# BB#0:
	stqd	$lr, 16($sp)
	stqd	$sp, -64($sp)
	ai	$sp, $sp, -64
	lnop
	ai	$3, $sp, 48
	lqd	$5, 0($3)
	ilh	$6, 419
	chd	$4, 0($3)
	shufb	$4, $6, $5, $4
	stqd	$4, 0($3)
	ilh	$3, 0
	lqd	$lr, 80($sp)
	ai	$sp, $sp, 64
	bi	$lr
.Ltmp0:
	.size	test_1, .Ltmp0-test_1

	.globl	test_2
	.align	3
	.type	test_2,@function
test_2:                                 # @test_2
# BB#0:
	stqd	$lr, 16($sp)
	stqd	$sp, -64($sp)
	ai	$sp, $sp, -64
	lnop
	ai	$3, $sp, 48
	lqd	$5, 0($3)
	ilh	$6, 1023
	chd	$4, 0($3)
	shufb	$4, $6, $5, $4
	stqd	$4, 0($3)
	ilh	$3, 0
	lqd	$lr, 80($sp)
	ai	$sp, $sp, 64
	bi	$lr
.Ltmp1:
	.size	test_2, .Ltmp1-test_2

	.globl	test_3
	.align	3
	.type	test_3,@function
test_3:                                 # @test_3
# BB#0:
	stqd	$lr, 16($sp)
	stqd	$sp, -64($sp)
	ai	$sp, $sp, -64
	lnop
	ai	$3, $sp, 48
	lqd	$5, 0($3)
	ilh	$6, -1023
	chd	$4, 0($3)
	shufb	$4, $6, $5, $4
	stqd	$4, 0($3)
	ilh	$3, 0
	lqd	$lr, 80($sp)
	ai	$sp, $sp, 64
	bi	$lr
.Ltmp2:
	.size	test_3, .Ltmp2-test_3

	.globl	test_4
	.align	3
	.type	test_4,@function
test_4:                                 # @test_4
# BB#0:
	stqd	$lr, 16($sp)
	stqd	$sp, -64($sp)
	ai	$sp, $sp, -64
	lnop
	ai	$3, $sp, 48
	lqd	$5, 0($3)
	ilh	$6, 32767
	chd	$4, 0($3)
	shufb	$4, $6, $5, $4
	stqd	$4, 0($3)
	ilh	$3, 0
	lqd	$lr, 80($sp)
	ai	$sp, $sp, 64
	bi	$lr
.Ltmp3:
	.size	test_4, .Ltmp3-test_4

	.globl	test_5
	.align	3
	.type	test_5,@function
test_5:                                 # @test_5
# BB#0:
	stqd	$lr, 16($sp)
	stqd	$sp, -64($sp)
	ai	$sp, $sp, -64
	lnop
	ai	$3, $sp, 48
	lqd	$5, 0($3)
	ilh	$6, -32768
	chd	$4, 0($3)
	shufb	$4, $6, $5, $4
	stqd	$4, 0($3)
	ilh	$3, 0
	lqd	$lr, 80($sp)
	ai	$sp, $sp, 64
	bi	$lr
.Ltmp4:
	.size	test_5, .Ltmp4-test_5

	.globl	test_6
	.align	3
	.type	test_6,@function
test_6:                                 # @test_6
# BB#0:
	ilh	$3, 0
	bi	$lr
.Ltmp5:
	.size	test_6, .Ltmp5-test_6


