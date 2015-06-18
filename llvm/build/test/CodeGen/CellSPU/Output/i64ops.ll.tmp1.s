	.file	"<stdin>"
	.text
	.globl	sext_i64_i8
	.align	3
	.type	sext_i64_i8,@function
sext_i64_i8:                            # @sext_i64_i8
# BB#0:
	xsbh	$3, $3
	xshw	$3, $3
	xswd	$3, $3
	bi	$lr
.Ltmp0:
	.size	sext_i64_i8, .Ltmp0-sext_i64_i8

	.globl	sext_i64_i16
	.align	3
	.type	sext_i64_i16,@function
sext_i64_i16:                           # @sext_i64_i16
# BB#0:
	xshw	$3, $3
	lnop
	xswd	$3, $3
	bi	$lr
.Ltmp1:
	.size	sext_i64_i16, .Ltmp1-sext_i64_i16

	.globl	sext_i64_i32
	.align	3
	.type	sext_i64_i32,@function
sext_i64_i32:                           # @sext_i64_i32
# BB#0:
	xswd	$3, $3
	bi	$lr
.Ltmp2:
	.size	sext_i64_i32, .Ltmp2-sext_i64_i32

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI3_0:
	.long	2155905152              # 0x80808080
	.long	2155905027              # 0x80808003
	.long	2155905152              # 0x80808080
	.long	2155905035              # 0x8080800b
	.text
	.globl	zext_i64_i8
	.align	3
	.type	zext_i64_i8,@function
zext_i64_i8:                            # @zext_i64_i8
# BB#0:
	lqa	$4, .LCPI3_0
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp3:
	.size	zext_i64_i8, .Ltmp3-zext_i64_i8

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI4_0:
	.long	2155905152              # 0x80808080
	.long	2155872771              # 0x80800203
	.long	2155905152              # 0x80808080
	.long	2155874827              # 0x80800a0b
	.text
	.globl	zext_i64_i16
	.align	3
	.type	zext_i64_i16,@function
zext_i64_i16:                           # @zext_i64_i16
# BB#0:
	lqa	$4, .LCPI4_0
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp4:
	.size	zext_i64_i16, .Ltmp4-zext_i64_i16

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI5_0:
	.long	2155905152              # 0x80808080
	.long	66051                   # 0x10203
	.long	2155905152              # 0x80808080
	.long	134810123               # 0x8090a0b
	.text
	.globl	zext_i64_i32
	.align	3
	.type	zext_i64_i32,@function
zext_i64_i32:                           # @zext_i64_i32
# BB#0:
	lqa	$4, .LCPI5_0
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp5:
	.size	zext_i64_i32, .Ltmp5-zext_i64_i32

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI6_0:
	.long	67438087                # 0x4050607
	.long	2155905152              # 0x80808080
	.long	202182159               # 0xc0d0e0f
	.long	2155905152              # 0x80808080
	.text
	.globl	add_i64
	.align	3
	.type	add_i64,@function
add_i64:                                # @add_i64
# BB#0:
	nop
	lqa	$6, .LCPI6_0
	cg	$5, $3, $4
	shufb	$5, $5, $5, $6
	addx	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp6:
	.size	add_i64, .Ltmp6-add_i64

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI7_0:
	.long	67438087                # 0x4050607
	.long	2155905152              # 0x80808080
	.long	202182159               # 0xc0d0e0f
	.long	2155905152              # 0x80808080
	.text
	.globl	mul_i64
	.align	3
	.type	mul_i64,@function
mul_i64:                                # @mul_i64
# BB#0:
	nop
	fsmbi	$6, 61680
	il	$5, 0
	shlqbyi	$7, $4, 2
	selb	$8, $4, $5, $6
	lnop
	selb	$6, $3, $5, $6
	fsmbi	$10, 50115
	mpyu	$9, $6, $8
	lqa	$17, .LCPI7_0
	mpyhhu	$6, $6, $7
	shlqbyi	$16, $3, 2
	fsmbi	$15, 3855
	shlqbyi	$6, $6, 2
	selb	$12, $6, $5, $10
	lnop
	cg	$11, $9, $12
	shufb	$11, $11, $11, $17
	addx	$11, $9, $12
	shlqbyi	$12, $4, 4
	mpyhhu	$8, $8, $16
	shlqbyi	$8, $8, 2
	selb	$4, $4, $5, $15
	selb	$10, $8, $5, $10
	cg	$8, $11, $10
	shufb	$8, $8, $8, $17
	addx	$8, $11, $10
	lnop
	selb	$11, $3, $5, $15
	shlqbyi	$3, $3, 4
	mpyh	$13, $11, $12
	mpyu	$11, $12, $11
	mpyu	$12, $3, $4
	mpyu	$14, $16, $7
	mpyh	$7, $16, $7
	mpyh	$9, $3, $4
	mpyh	$3, $4, $3
	a	$7, $7, $14
	a	$7, $12, $7
	a	$7, $9, $7
	a	$11, $11, $13
	a	$3, $3, $7
	a	$3, $11, $3
	selb	$4, $3, $5, $15
	cg	$3, $8, $4
	shufb	$3, $3, $3, $17
	addx	$3, $8, $4
	bi	$lr
.Ltmp7:
	.size	mul_i64, .Ltmp7-mul_i64


