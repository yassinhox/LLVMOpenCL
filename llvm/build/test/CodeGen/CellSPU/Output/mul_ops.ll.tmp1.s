	.file	"<stdin>"
	.text
	.globl	mpy_v4i32_1
	.align	3
	.type	mpy_v4i32_1,@function
mpy_v4i32_1:                            # @mpy_v4i32_1
# BB#0:                                 # %entry
	mpyh	$5, $4, $3
	mpyh	$6, $3, $4
	mpyu	$3, $3, $4
	a	$5, $6, $5
	a	$3, $5, $3
	bi	$lr
.Ltmp0:
	.size	mpy_v4i32_1, .Ltmp0-mpy_v4i32_1

	.globl	mpy_v4i32_2
	.align	3
	.type	mpy_v4i32_2,@function
mpy_v4i32_2:                            # @mpy_v4i32_2
# BB#0:                                 # %entry
	mpyh	$5, $3, $4
	mpyh	$6, $4, $3
	mpyu	$3, $4, $3
	a	$5, $6, $5
	a	$3, $5, $3
	bi	$lr
.Ltmp1:
	.size	mpy_v4i32_2, .Ltmp1-mpy_v4i32_2

	.globl	mpy_v8i16_1
	.align	3
	.type	mpy_v8i16_1,@function
mpy_v8i16_1:                            # @mpy_v8i16_1
# BB#0:                                 # %entry
	mpy	$5, $3, $4
	lnop
	mpyhh	$3, $3, $4
	fsmbi	$4, 52428
	shli	$3, $3, 16
	lnop
	selb	$3, $5, $3, $4
	bi	$lr
.Ltmp2:
	.size	mpy_v8i16_1, .Ltmp2-mpy_v8i16_1

	.globl	mpy_v8i16_2
	.align	3
	.type	mpy_v8i16_2,@function
mpy_v8i16_2:                            # @mpy_v8i16_2
# BB#0:                                 # %entry
	mpy	$5, $4, $3
	lnop
	mpyhh	$3, $4, $3
	fsmbi	$4, 52428
	shli	$3, $3, 16
	lnop
	selb	$3, $5, $3, $4
	bi	$lr
.Ltmp3:
	.size	mpy_v8i16_2, .Ltmp3-mpy_v8i16_2

	.globl	mul_v16i8_1
	.align	3
	.type	mul_v16i8_1,@function
mul_v16i8_1:                            # @mul_v16i8_1
# BB#0:                                 # %entry
	rotmahi	$5, $3, -8
	fsmbi	$10, 8738
	rotmahi	$7, $4, -8
	mpy	$6, $4, $3
	mpy	$5, $7, $5
	shlhi	$7, $5, 8
	rotmai	$9, $3, -16
	rotmai	$8, $4, -16
	rotmai	$3, $3, -8
	rotmai	$4, $4, -8
	selb	$6, $6, $7, $10
	ila	$7, 65535
	and	$6, $6, $7
	mpy	$7, $8, $9
	mpy	$3, $4, $3
	shlhi	$3, $3, 8
	selb	$3, $7, $3, $10
	shli	$3, $3, 16
	or	$3, $6, $3
	bi	$lr
.Ltmp4:
	.size	mul_v16i8_1, .Ltmp4-mul_v16i8_1

	.globl	mul_v16i8_2
	.align	3
	.type	mul_v16i8_2,@function
mul_v16i8_2:                            # @mul_v16i8_2
# BB#0:                                 # %entry
	rotmahi	$5, $4, -8
	fsmbi	$10, 8738
	rotmahi	$7, $3, -8
	mpy	$6, $3, $4
	mpy	$5, $7, $5
	shlhi	$7, $5, 8
	rotmai	$9, $4, -16
	rotmai	$8, $3, -16
	rotmai	$4, $4, -8
	rotmai	$3, $3, -8
	selb	$6, $6, $7, $10
	ila	$7, 65535
	and	$6, $6, $7
	mpy	$7, $8, $9
	mpy	$3, $3, $4
	shlhi	$3, $3, 8
	selb	$3, $7, $3, $10
	shli	$3, $3, 16
	or	$3, $6, $3
	bi	$lr
.Ltmp5:
	.size	mul_v16i8_2, .Ltmp5-mul_v16i8_2

	.globl	mul_i32_1
	.align	3
	.type	mul_i32_1,@function
mul_i32_1:                              # @mul_i32_1
# BB#0:                                 # %entry
	mpyh	$5, $3, $4
	mpyh	$6, $4, $3
	mpyu	$3, $4, $3
	a	$5, $6, $5
	a	$3, $5, $3
	bi	$lr
.Ltmp6:
	.size	mul_i32_1, .Ltmp6-mul_i32_1

	.globl	mul_i32_2
	.align	3
	.type	mul_i32_2,@function
mul_i32_2:                              # @mul_i32_2
# BB#0:                                 # %entry
	mpyh	$5, $4, $3
	mpyh	$6, $3, $4
	mpyu	$3, $3, $4
	a	$5, $6, $5
	a	$3, $5, $3
	bi	$lr
.Ltmp7:
	.size	mul_i32_2, .Ltmp7-mul_i32_2

	.globl	mul_i16_1
	.align	3
	.type	mul_i16_1,@function
mul_i16_1:                              # @mul_i16_1
# BB#0:                                 # %entry
	mpy	$3, $4, $3
	bi	$lr
.Ltmp8:
	.size	mul_i16_1, .Ltmp8-mul_i16_1

	.globl	mul_i16_2
	.align	3
	.type	mul_i16_2,@function
mul_i16_2:                              # @mul_i16_2
# BB#0:                                 # %entry
	mpy	$3, $3, $4
	bi	$lr
.Ltmp9:
	.size	mul_i16_2, .Ltmp9-mul_i16_2

	.globl	mul_i8_1
	.align	3
	.type	mul_i8_1,@function
mul_i8_1:                               # @mul_i8_1
# BB#0:                                 # %entry
	orhi	$3, $3, 0
	orhi	$4, $4, 0
	mpy	$3, $4, $3
	ilhu	$4, 771
	iohl	$4, 771
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp10:
	.size	mul_i8_1, .Ltmp10-mul_i8_1

	.globl	mul_i8_2
	.align	3
	.type	mul_i8_2,@function
mul_i8_2:                               # @mul_i8_2
# BB#0:                                 # %entry
	orhi	$4, $4, 0
	orhi	$3, $3, 0
	mpy	$3, $3, $4
	ilhu	$4, 771
	iohl	$4, 771
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp11:
	.size	mul_i8_2, .Ltmp11-mul_i8_2


