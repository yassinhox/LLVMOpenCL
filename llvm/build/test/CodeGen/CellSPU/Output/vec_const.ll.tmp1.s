	.file	"<stdin>"
	.text
	.globl	v4i32_constvec
	.align	3
	.type	v4i32_constvec,@function
v4i32_constvec:                         # @v4i32_constvec
# BB#0:
	il	$3, 2
	bi	$lr
.Ltmp0:
	.size	v4i32_constvec, .Ltmp0-v4i32_constvec

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI1_0:
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.text
	.globl	v4i32_constpool
	.align	3
	.type	v4i32_constpool,@function
v4i32_constpool:                        # @v4i32_constpool
# BB#0:
	lqa	$3, .LCPI1_0
	bi	$lr
.Ltmp1:
	.size	v4i32_constpool, .Ltmp1-v4i32_constpool

	.globl	v4i32_constvec_2
	.align	3
	.type	v4i32_constvec_2,@function
v4i32_constvec_2:                       # @v4i32_constvec_2
# BB#0:
	il	$3, -32768
	bi	$lr
.Ltmp2:
	.size	v4i32_constvec_2, .Ltmp2-v4i32_constvec_2

	.globl	v4i32_constvec_3
	.align	3
	.type	v4i32_constvec_3,@function
v4i32_constvec_3:                       # @v4i32_constvec_3
# BB#0:
	ilhu	$3, 73
	bi	$lr
.Ltmp3:
	.size	v4i32_constvec_3, .Ltmp3-v4i32_constvec_3

	.globl	v4i32_constvec_4
	.align	3
	.type	v4i32_constvec_4,@function
v4i32_constvec_4:                       # @v4i32_constvec_4
# BB#0:
	ilhu	$3, 61
	lnop
	iohl	$3, 15395
	bi	$lr
.Ltmp4:
	.size	v4i32_constvec_4, .Ltmp4-v4i32_constvec_4

	.globl	v4i32_constvec_5
	.align	3
	.type	v4i32_constvec_5,@function
v4i32_constvec_5:                       # @v4i32_constvec_5
# BB#0:
	ilhu	$3, 20560
	lnop
	iohl	$3, 20560
	bi	$lr
.Ltmp5:
	.size	v4i32_constvec_5, .Ltmp5-v4i32_constvec_5

	.globl	v8i16_constvec_1
	.align	3
	.type	v8i16_constvec_1,@function
v8i16_constvec_1:                       # @v8i16_constvec_1
# BB#0:
	ilh	$3, 32767
	bi	$lr
.Ltmp6:
	.size	v8i16_constvec_1, .Ltmp6-v8i16_constvec_1

	.globl	v8i16_constvec_2
	.align	3
	.type	v8i16_constvec_2,@function
v8i16_constvec_2:                       # @v8i16_constvec_2
# BB#0:
	ilh	$3, 511
	bi	$lr
.Ltmp7:
	.size	v8i16_constvec_2, .Ltmp7-v8i16_constvec_2

	.globl	v8i16_constvec_3
	.align	3
	.type	v8i16_constvec_3,@function
v8i16_constvec_3:                       # @v8i16_constvec_3
# BB#0:
	ilh	$3, -512
	bi	$lr
.Ltmp8:
	.size	v8i16_constvec_3, .Ltmp8-v8i16_constvec_3

	.globl	v8i16_constvec_4
	.align	3
	.type	v8i16_constvec_4,@function
v8i16_constvec_4:                       # @v8i16_constvec_4
# BB#0:
	ilh	$3, 24672
	bi	$lr
.Ltmp9:
	.size	v8i16_constvec_4, .Ltmp9-v8i16_constvec_4

	.globl	v16i8_constvec_1
	.align	3
	.type	v16i8_constvec_1,@function
v16i8_constvec_1:                       # @v16i8_constvec_1
# BB#0:
	ilh	$3, 24672
	bi	$lr
.Ltmp10:
	.size	v16i8_constvec_1, .Ltmp10-v16i8_constvec_1

	.globl	v4f32_constvec_1
	.align	3
	.type	v4f32_constvec_1,@function
v4f32_constvec_1:                       # @v4f32_constvec_1
# BB#0:                                 # %entry
	ilhu	$3, 16429
	lnop
	iohl	$3, 63572
	bi	$lr
.Ltmp11:
	.size	v4f32_constvec_1, .Ltmp11-v4f32_constvec_1

	.globl	v4f32_constvec_2
	.align	3
	.type	v4f32_constvec_2,@function
v4f32_constvec_2:                       # @v4f32_constvec_2
# BB#0:                                 # %entry
	il	$3, 0
	bi	$lr
.Ltmp12:
	.size	v4f32_constvec_2, .Ltmp12-v4f32_constvec_2

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI13_0:
	.long	1076754516              # float 2.718282e+00
	.long	8388608                 # float 1.175494e-38
	.long	2139095039              # float 3.402823e+38
	.long	1078530011              # float 3.141593e+00
	.text
	.globl	v4f32_constvec_3
	.align	3
	.type	v4f32_constvec_3,@function
v4f32_constvec_3:                       # @v4f32_constvec_3
# BB#0:                                 # %entry
	lqa	$3, .LCPI13_0
	bi	$lr
.Ltmp13:
	.size	v4f32_constvec_3, .Ltmp13-v4f32_constvec_3

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI14_0:
	.long	66051                   # 0x10203
	.long	336926231               # 0x14151617
	.long	134810123               # 0x8090a0b
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_constvec_1
	.align	3
	.type	i64_constvec_1,@function
i64_constvec_1:                         # @i64_constvec_1
# BB#0:                                 # %entry
	nop
	lqa	$5, .LCPI14_0
	ilhu	$3, 43981
	ilhu	$4, 4660
	iohl	$3, 61202
	lnop
	iohl	$4, 22136
	shufb	$3, $4, $3, $5
	nop
	bi	$lr
.Ltmp14:
	.size	i64_constvec_1, .Ltmp14-i64_constvec_1

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI15_0:
	.quad	1                       # 0x1
	.quad	1311768467750121234     # 0x12345678abcdef12
	.text
	.globl	i64_constvec_2
	.align	3
	.type	i64_constvec_2,@function
i64_constvec_2:                         # @i64_constvec_2
# BB#0:                                 # %entry
	lqa	$3, .LCPI15_0
	bi	$lr
.Ltmp15:
	.size	i64_constvec_2, .Ltmp15-i64_constvec_2

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI16_0:
	.quad	4614256656552045848     # double 3.141593e+00
	.quad	-4614324166009603123    # double -1.414214e+00
	.text
	.globl	f64_constvec_1
	.align	3
	.type	f64_constvec_1,@function
f64_constvec_1:                         # @f64_constvec_1
# BB#0:                                 # %entry
	lqa	$3, .LCPI16_0
	bi	$lr
.Ltmp16:
	.size	f64_constvec_1, .Ltmp16-f64_constvec_1

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI17_0:
	.long	66051                   # 0x10203
	.long	336926231               # 0x14151617
	.long	134810123               # 0x8090a0b
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	f64_constvec_2
	.align	3
	.type	f64_constvec_2,@function
f64_constvec_2:                         # @f64_constvec_2
# BB#0:                                 # %entry
	nop
	lqa	$5, .LCPI17_0
	ilhu	$3, 21572
	ilhu	$4, 16393
	iohl	$3, 11544
	lnop
	iohl	$4, 8699
	shufb	$3, $4, $3, $5
	nop
	bi	$lr
.Ltmp17:
	.size	f64_constvec_2, .Ltmp17-f64_constvec_2


