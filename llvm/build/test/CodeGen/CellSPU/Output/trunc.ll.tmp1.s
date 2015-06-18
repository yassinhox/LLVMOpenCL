	.file	"<stdin>"
	.text
	.globl	trunc_i128_i8
	.align	3
	.type	trunc_i128_i8,@function
trunc_i128_i8:                          # @trunc_i128_i8
# BB#0:                                 # %entry
	ilhu	$5, 3855
	cbd	$6, 15($sp)
	iohl	$5, 3855
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp0:
	.size	trunc_i128_i8, .Ltmp0-trunc_i128_i8

	.globl	trunc_i128_i16
	.align	3
	.type	trunc_i128_i16,@function
trunc_i128_i16:                         # @trunc_i128_i16
# BB#0:                                 # %entry
	ilhu	$5, 3599
	chd	$6, 16($sp)
	iohl	$5, 3599
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp1:
	.size	trunc_i128_i16, .Ltmp1-trunc_i128_i16

	.globl	trunc_i128_i32
	.align	3
	.type	trunc_i128_i32,@function
trunc_i128_i32:                         # @trunc_i128_i32
# BB#0:                                 # %entry
	ilhu	$5, 3085
	cwd	$6, 8($sp)
	iohl	$5, 3599
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp2:
	.size	trunc_i128_i32, .Ltmp2-trunc_i128_i32

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI3_0:
	.long	134810123               # 0x8090a0b
	.long	202182159               # 0xc0d0e0f
	.long	134810123               # 0x8090a0b
	.long	202182159               # 0xc0d0e0f
	.text
	.globl	trunc_i128_i64
	.align	3
	.type	trunc_i128_i64,@function
trunc_i128_i64:                         # @trunc_i128_i64
# BB#0:                                 # %entry
	lqa	$5, .LCPI3_0
	shufb	$3, $3, $3, $5
	cdd	$6, 8($sp)
	shufb	$3, $3, $4, $6
	nop
	bi	$lr
.Ltmp3:
	.size	trunc_i128_i64, .Ltmp3-trunc_i128_i64

	.globl	trunc_i64_i8
	.align	3
	.type	trunc_i64_i8,@function
trunc_i64_i8:                           # @trunc_i64_i8
# BB#0:                                 # %entry
	ilhu	$5, 1799
	cbd	$6, 10($sp)
	iohl	$5, 1799
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp4:
	.size	trunc_i64_i8, .Ltmp4-trunc_i64_i8

	.globl	trunc_i64_i16
	.align	3
	.type	trunc_i64_i16,@function
trunc_i64_i16:                          # @trunc_i64_i16
# BB#0:                                 # %entry
	ilhu	$5, 1543
	chd	$6, 12($sp)
	iohl	$5, 1543
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp5:
	.size	trunc_i64_i16, .Ltmp5-trunc_i64_i16

	.globl	trunc_i64_i32
	.align	3
	.type	trunc_i64_i32,@function
trunc_i64_i32:                          # @trunc_i64_i32
# BB#0:                                 # %entry
	ilhu	$4, 1029
	lnop
	iohl	$4, 1543
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp6:
	.size	trunc_i64_i32, .Ltmp6-trunc_i64_i32

	.globl	trunc_i32_i8
	.align	3
	.type	trunc_i32_i8,@function
trunc_i32_i8:                           # @trunc_i32_i8
# BB#0:                                 # %entry
	ilhu	$5, 771
	cbd	$6, 7($sp)
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp7:
	.size	trunc_i32_i8, .Ltmp7-trunc_i32_i8

	.globl	trunc_i32_i16
	.align	3
	.type	trunc_i32_i16,@function
trunc_i32_i16:                          # @trunc_i32_i16
# BB#0:                                 # %entry
	ilhu	$5, 515
	chd	$6, 6($sp)
	iohl	$5, 515
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp8:
	.size	trunc_i32_i16, .Ltmp8-trunc_i32_i16

	.globl	trunc_i16_i8
	.align	3
	.type	trunc_i16_i8,@function
trunc_i16_i8:                           # @trunc_i16_i8
# BB#0:                                 # %entry
	ilhu	$5, 771
	cbd	$6, 5($sp)
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	shufb	$3, $3, $4, $6
	bi	$lr
.Ltmp9:
	.size	trunc_i16_i8, .Ltmp9-trunc_i16_i8


