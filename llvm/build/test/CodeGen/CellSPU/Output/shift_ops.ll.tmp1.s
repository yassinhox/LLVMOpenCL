	.file	"<stdin>"
	.text
	.globl	shlh_i16_1
	.align	3
	.type	shlh_i16_1,@function
shlh_i16_1:                             # @shlh_i16_1
# BB#0:
	nop
	ila	$5, 65535
	and	$4, $4, $5
	lnop
	shlh	$3, $3, $4
	bi	$lr
.Ltmp0:
	.size	shlh_i16_1, .Ltmp0-shlh_i16_1

	.globl	shlh_i16_2
	.align	3
	.type	shlh_i16_2,@function
shlh_i16_2:                             # @shlh_i16_2
# BB#0:
	nop
	ila	$5, 65535
	and	$3, $3, $5
	lnop
	shlh	$3, $4, $3
	bi	$lr
.Ltmp1:
	.size	shlh_i16_2, .Ltmp1-shlh_i16_2

	.globl	shlh_i16_3
	.align	3
	.type	shlh_i16_3,@function
shlh_i16_3:                             # @shlh_i16_3
# BB#0:
	nop
	ila	$5, 65535
	and	$4, $4, $5
	shlh	$3, $3, $4
	xshw	$3, $3
	bi	$lr
.Ltmp2:
	.size	shlh_i16_3, .Ltmp2-shlh_i16_3

	.globl	shlh_i16_4
	.align	3
	.type	shlh_i16_4,@function
shlh_i16_4:                             # @shlh_i16_4
# BB#0:
	nop
	ila	$5, 65535
	and	$3, $3, $5
	shlh	$3, $4, $3
	xshw	$3, $3
	bi	$lr
.Ltmp3:
	.size	shlh_i16_4, .Ltmp3-shlh_i16_4

	.globl	shlh_i16_5
	.align	3
	.type	shlh_i16_5,@function
shlh_i16_5:                             # @shlh_i16_5
# BB#0:
	nop
	ila	$5, 65535
	and	$4, $4, $5
	shlh	$3, $3, $4
	and	$3, $3, $5
	bi	$lr
.Ltmp4:
	.size	shlh_i16_5, .Ltmp4-shlh_i16_5

	.globl	shlh_i16_6
	.align	3
	.type	shlh_i16_6,@function
shlh_i16_6:                             # @shlh_i16_6
# BB#0:
	nop
	ila	$5, 65535
	and	$3, $3, $5
	shlh	$3, $4, $3
	and	$3, $3, $5
	bi	$lr
.Ltmp5:
	.size	shlh_i16_6, .Ltmp5-shlh_i16_6

	.globl	shlhi_i16_1
	.align	3
	.type	shlhi_i16_1,@function
shlhi_i16_1:                            # @shlhi_i16_1
# BB#0:
	shlhi	$3, $3, 12
	bi	$lr
.Ltmp6:
	.size	shlhi_i16_1, .Ltmp6-shlhi_i16_1

	.globl	shlhi_i16_2
	.align	3
	.type	shlhi_i16_2,@function
shlhi_i16_2:                            # @shlhi_i16_2
# BB#0:
	nop
	bi	$lr
.Ltmp7:
	.size	shlhi_i16_2, .Ltmp7-shlhi_i16_2

	.globl	shlhi_i16_3
	.align	3
	.type	shlhi_i16_3,@function
shlhi_i16_3:                            # @shlhi_i16_3
# BB#0:
	nop
	ila	$4, 65535
	and	$3, $3, $4
	ilh	$5, 16383
	shlh	$3, $5, $3
	bi	$lr
.Ltmp8:
	.size	shlhi_i16_3, .Ltmp8-shlhi_i16_3

	.globl	shlhi_i16_4
	.align	3
	.type	shlhi_i16_4,@function
shlhi_i16_4:                            # @shlhi_i16_4
# BB#0:
	ilh	$3, 0
	bi	$lr
.Ltmp9:
	.size	shlhi_i16_4, .Ltmp9-shlhi_i16_4

	.globl	shlhi_i16_5
	.align	3
	.type	shlhi_i16_5,@function
shlhi_i16_5:                            # @shlhi_i16_5
# BB#0:
	shlhi	$3, $3, 12
	lnop
	xshw	$3, $3
	bi	$lr
.Ltmp10:
	.size	shlhi_i16_5, .Ltmp10-shlhi_i16_5

	.globl	shlhi_i16_6
	.align	3
	.type	shlhi_i16_6,@function
shlhi_i16_6:                            # @shlhi_i16_6
# BB#0:
	xshw	$3, $3
	bi	$lr
.Ltmp11:
	.size	shlhi_i16_6, .Ltmp11-shlhi_i16_6

	.globl	shlhi_i16_7
	.align	3
	.type	shlhi_i16_7,@function
shlhi_i16_7:                            # @shlhi_i16_7
# BB#0:
	nop
	ila	$4, 65535
	and	$3, $3, $4
	ilh	$5, 16383
	shlh	$3, $5, $3
	lnop
	xshw	$3, $3
	bi	$lr
.Ltmp12:
	.size	shlhi_i16_7, .Ltmp12-shlhi_i16_7

	.globl	shlhi_i16_8
	.align	3
	.type	shlhi_i16_8,@function
shlhi_i16_8:                            # @shlhi_i16_8
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp13:
	.size	shlhi_i16_8, .Ltmp13-shlhi_i16_8

	.globl	shlhi_i16_9
	.align	3
	.type	shlhi_i16_9,@function
shlhi_i16_9:                            # @shlhi_i16_9
# BB#0:
	shlhi	$3, $3, 12
	ila	$4, 65535
	and	$3, $3, $4
	bi	$lr
.Ltmp14:
	.size	shlhi_i16_9, .Ltmp14-shlhi_i16_9

	.globl	shlhi_i16_10
	.align	3
	.type	shlhi_i16_10,@function
shlhi_i16_10:                           # @shlhi_i16_10
# BB#0:
	nop
	ila	$4, 65535
	and	$3, $3, $4
	bi	$lr
.Ltmp15:
	.size	shlhi_i16_10, .Ltmp15-shlhi_i16_10

	.globl	shlhi_i16_11
	.align	3
	.type	shlhi_i16_11,@function
shlhi_i16_11:                           # @shlhi_i16_11
# BB#0:
	nop
	ila	$4, 65535
	and	$3, $3, $4
	ilh	$5, 16383
	shlh	$3, $5, $3
	lnop
	and	$3, $3, $4
	bi	$lr
.Ltmp16:
	.size	shlhi_i16_11, .Ltmp16-shlhi_i16_11

	.globl	shlhi_i16_12
	.align	3
	.type	shlhi_i16_12,@function
shlhi_i16_12:                           # @shlhi_i16_12
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp17:
	.size	shlhi_i16_12, .Ltmp17-shlhi_i16_12

	.globl	shl_i32_1
	.align	3
	.type	shl_i32_1,@function
shl_i32_1:                              # @shl_i32_1
# BB#0:
	shl	$3, $3, $4
	bi	$lr
.Ltmp18:
	.size	shl_i32_1, .Ltmp18-shl_i32_1

	.globl	shl_i32_2
	.align	3
	.type	shl_i32_2,@function
shl_i32_2:                              # @shl_i32_2
# BB#0:
	shl	$3, $4, $3
	bi	$lr
.Ltmp19:
	.size	shl_i32_2, .Ltmp19-shl_i32_2

	.globl	shl_i32_3
	.align	3
	.type	shl_i32_3,@function
shl_i32_3:                              # @shl_i32_3
# BB#0:
	shl	$3, $3, $4
	bi	$lr
.Ltmp20:
	.size	shl_i32_3, .Ltmp20-shl_i32_3

	.globl	shl_i32_4
	.align	3
	.type	shl_i32_4,@function
shl_i32_4:                              # @shl_i32_4
# BB#0:
	shl	$3, $4, $3
	bi	$lr
.Ltmp21:
	.size	shl_i32_4, .Ltmp21-shl_i32_4

	.globl	shl_i32_5
	.align	3
	.type	shl_i32_5,@function
shl_i32_5:                              # @shl_i32_5
# BB#0:
	shl	$3, $3, $4
	bi	$lr
.Ltmp22:
	.size	shl_i32_5, .Ltmp22-shl_i32_5

	.globl	shl_i32_6
	.align	3
	.type	shl_i32_6,@function
shl_i32_6:                              # @shl_i32_6
# BB#0:
	shl	$3, $4, $3
	bi	$lr
.Ltmp23:
	.size	shl_i32_6, .Ltmp23-shl_i32_6

	.globl	shli_i32_1
	.align	3
	.type	shli_i32_1,@function
shli_i32_1:                             # @shli_i32_1
# BB#0:
	shli	$3, $3, 12
	bi	$lr
.Ltmp24:
	.size	shli_i32_1, .Ltmp24-shli_i32_1

	.globl	shli_i32_2
	.align	3
	.type	shli_i32_2,@function
shli_i32_2:                             # @shli_i32_2
# BB#0:
	nop
	bi	$lr
.Ltmp25:
	.size	shli_i32_2, .Ltmp25-shli_i32_2

	.globl	shli_i32_3
	.align	3
	.type	shli_i32_3,@function
shli_i32_3:                             # @shli_i32_3
# BB#0:
	il	$4, 16383
	lnop
	shl	$3, $4, $3
	bi	$lr
.Ltmp26:
	.size	shli_i32_3, .Ltmp26-shli_i32_3

	.globl	shli_i32_4
	.align	3
	.type	shli_i32_4,@function
shli_i32_4:                             # @shli_i32_4
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp27:
	.size	shli_i32_4, .Ltmp27-shli_i32_4

	.globl	shli_i32_5
	.align	3
	.type	shli_i32_5,@function
shli_i32_5:                             # @shli_i32_5
# BB#0:
	shli	$3, $3, 12
	bi	$lr
.Ltmp28:
	.size	shli_i32_5, .Ltmp28-shli_i32_5

	.globl	shli_i32_6
	.align	3
	.type	shli_i32_6,@function
shli_i32_6:                             # @shli_i32_6
# BB#0:
	nop
	bi	$lr
.Ltmp29:
	.size	shli_i32_6, .Ltmp29-shli_i32_6

	.globl	shli_i32_7
	.align	3
	.type	shli_i32_7,@function
shli_i32_7:                             # @shli_i32_7
# BB#0:
	il	$4, 16383
	lnop
	shl	$3, $4, $3
	bi	$lr
.Ltmp30:
	.size	shli_i32_7, .Ltmp30-shli_i32_7

	.globl	shli_i32_8
	.align	3
	.type	shli_i32_8,@function
shli_i32_8:                             # @shli_i32_8
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp31:
	.size	shli_i32_8, .Ltmp31-shli_i32_8

	.globl	shli_i32_9
	.align	3
	.type	shli_i32_9,@function
shli_i32_9:                             # @shli_i32_9
# BB#0:
	shli	$3, $3, 12
	bi	$lr
.Ltmp32:
	.size	shli_i32_9, .Ltmp32-shli_i32_9

	.globl	shli_i32_10
	.align	3
	.type	shli_i32_10,@function
shli_i32_10:                            # @shli_i32_10
# BB#0:
	nop
	bi	$lr
.Ltmp33:
	.size	shli_i32_10, .Ltmp33-shli_i32_10

	.globl	shli_i32_11
	.align	3
	.type	shli_i32_11,@function
shli_i32_11:                            # @shli_i32_11
# BB#0:
	il	$4, 16383
	lnop
	shl	$3, $4, $3
	bi	$lr
.Ltmp34:
	.size	shli_i32_11, .Ltmp34-shli_i32_11

	.globl	shli_i32_12
	.align	3
	.type	shli_i32_12,@function
shli_i32_12:                            # @shli_i32_12
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp35:
	.size	shli_i32_12, .Ltmp35-shli_i32_12

	.globl	shl_i64_1
	.align	3
	.type	shl_i64_1,@function
shl_i64_1:                              # @shl_i64_1
# BB#0:
	nop
	fsmbi	$4, 65280
	il	$5, 0
	lnop
	selb	$3, $5, $3, $4
	shlqbyi	$3, $3, 1
	shlqbii	$3, $3, 1
	bi	$lr
.Ltmp36:
	.size	shl_i64_1, .Ltmp36-shl_i64_1

	.globl	shl_i64_2
	.align	3
	.type	shl_i64_2,@function
shl_i64_2:                              # @shl_i64_2
# BB#0:
	nop
	fsmbi	$4, 65280
	il	$5, 0
	lnop
	selb	$3, $5, $3, $4
	shlqbii	$3, $3, 3
	nop
	bi	$lr
.Ltmp37:
	.size	shl_i64_2, .Ltmp37-shl_i64_2

	.globl	shl_i64_3
	.align	3
	.type	shl_i64_3,@function
shl_i64_3:                              # @shl_i64_3
# BB#0:
	nop
	fsmbi	$5, 65280
	il	$6, 0
	selb	$3, $6, $3, $5
	rotmi	$6, $4, -3
	shlqby	$3, $3, $6
	andi	$4, $4, 7
	shlqbi	$3, $3, $4
	nop
	bi	$lr
.Ltmp38:
	.size	shl_i64_3, .Ltmp38-shl_i64_3

	.globl	lshr_i64_1
	.align	3
	.type	lshr_i64_1,@function
lshr_i64_1:                             # @lshr_i64_1
# BB#0:
	rotqmbyi	$3, $3, -1
	rotqmbii	$3, $3, -1
	nop
	bi	$lr
.Ltmp39:
	.size	lshr_i64_1, .Ltmp39-lshr_i64_1

	.globl	lshr_i64_2
	.align	3
	.type	lshr_i64_2,@function
lshr_i64_2:                             # @lshr_i64_2
# BB#0:
	rotqmbii	$3, $3, -3
	bi	$lr
.Ltmp40:
	.size	lshr_i64_2, .Ltmp40-lshr_i64_2

	.globl	lshr_i64_3
	.align	3
	.type	lshr_i64_3,@function
lshr_i64_3:                             # @lshr_i64_3
# BB#0:
	rotmi	$5, $4, -3
	sfi	$5, $5, 0
	andi	$4, $4, 7
	rotqmby	$3, $3, $5
	sfi	$4, $4, 0
	rotqmbi	$3, $3, $4
	nop
	bi	$lr
.Ltmp41:
	.size	lshr_i64_3, .Ltmp41-lshr_i64_3

	.globl	ashr_i64_1
	.align	3
	.type	ashr_i64_1,@function
ashr_i64_1:                             # @ashr_i64_1
# BB#0:
	rotmai	$4, $3, -31
	fsmbi	$5, 65280
	nop
	fsm	$4, $4
	selb	$3, $4, $3, $5
	rotqbyi	$3, $3, 30
	rotqbii	$3, $3, 7
	bi	$lr
.Ltmp42:
	.size	ashr_i64_1, .Ltmp42-ashr_i64_1

	.globl	ashr_i64_2
	.align	3
	.type	ashr_i64_2,@function
ashr_i64_2:                             # @ashr_i64_2
# BB#0:
	rotmai	$4, $3, -31
	fsmbi	$5, 65280
	nop
	fsm	$4, $4
	selb	$3, $4, $3, $5
	rotqbii	$3, $3, 5
	nop
	bi	$lr
.Ltmp43:
	.size	ashr_i64_2, .Ltmp43-ashr_i64_2

	.globl	ashr_i64_3
	.align	3
	.type	ashr_i64_3,@function
ashr_i64_3:                             # @ashr_i64_3
# BB#0:
	rotmai	$5, $3, -31
	fsmbi	$6, 65280
	sfi	$4, $4, 0
	fsm	$5, $5
	selb	$3, $5, $3, $6
	rotqbybi	$3, $3, $4
	rotqbi	$3, $3, $4
	bi	$lr
.Ltmp44:
	.size	ashr_i64_3, .Ltmp44-ashr_i64_3

	.globl	hi32_i64
	.align	3
	.type	hi32_i64,@function
hi32_i64:                               # @hi32_i64
# BB#0:
	nop
	bi	$lr
.Ltmp45:
	.size	hi32_i64, .Ltmp45-hi32_i64

	.globl	test_lshr_i128
	.align	3
	.type	test_lshr_i128,@function
test_lshr_i128:                         # @test_lshr_i128
# BB#0:
	il	$4, 64
	lnop
	sfi	$4, $4, 0
	rotqmbi	$3, $3, $4
	rotqmbybi	$3, $3, $4
	bi	$lr
.Ltmp46:
	.size	test_lshr_i128, .Ltmp46-test_lshr_i128

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI47_0:
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
.LCPI47_1:
	.long	134810123               # 0x8090a0b
	.long	202182159               # 0xc0d0e0f
	.long	134810123               # 0x8090a0b
	.long	202182159               # 0xc0d0e0f
.LCPI47_2:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	16                      # 0x10
	.byte	17                      # 0x11
	.byte	18                      # 0x12
	.byte	19                      # 0x13
	.byte	20                      # 0x14
	.byte	21                      # 0x15
	.byte	22                      # 0x16
	.byte	23                      # 0x17
	.text
	.globl	shl_v2i32
	.align	3
	.type	shl_v2i32,@function
shl_v2i32:                              # @shl_v2i32
# BB#0:
	nop
	lqa	$7, .LCPI47_0
	ilhu	$11, 1029
	iohl	$11, 1543
	il	$6, 0
	fsmbi	$5, 65280
	and	$4, $4, $7
	shufb	$9, $4, $4, $11
	selb	$8, $6, $3, $5
	lnop
	rotmi	$10, $9, -3
	shlqby	$8, $8, $10
	andi	$9, $9, 7
	lqa	$10, .LCPI47_1
	shufb	$4, $4, $4, $10
	shufb	$3, $3, $3, $10
	nop
	shufb	$4, $4, $4, $11
	selb	$3, $6, $3, $5
	lnop
	rotmi	$5, $4, -3
	shlqbi	$8, $8, $9
	andi	$4, $4, 7
	shlqby	$3, $3, $5
	lqa	$5, .LCPI47_2
	shlqbi	$3, $3, $4
	shufb	$3, $8, $3, $5
	bi	$lr
.Ltmp47:
	.size	shl_v2i32, .Ltmp47-shl_v2i32

	.globl	shl_v4i32
	.align	3
	.type	shl_v4i32,@function
shl_v4i32:                              # @shl_v4i32
# BB#0:
	shl	$3, $3, $4
	bi	$lr
.Ltmp48:
	.size	shl_v4i32, .Ltmp48-shl_v4i32

	.globl	shl_v8i16
	.align	3
	.type	shl_v8i16,@function
shl_v8i16:                              # @shl_v8i16
# BB#0:
	shlh	$3, $3, $4
	bi	$lr
.Ltmp49:
	.size	shl_v8i16, .Ltmp49-shl_v8i16

	.globl	lshr_v4i32
	.align	3
	.type	lshr_v4i32,@function
lshr_v4i32:                             # @lshr_v4i32
# BB#0:
	sfi	$4, $4, 0
	lnop
	rotm	$3, $3, $4
	bi	$lr
.Ltmp50:
	.size	lshr_v4i32, .Ltmp50-lshr_v4i32

	.globl	lshr_v8i16
	.align	3
	.type	lshr_v8i16,@function
lshr_v8i16:                             # @lshr_v8i16
# BB#0:
	sfhi	$4, $4, 0
	lnop
	rothm	$3, $3, $4
	bi	$lr
.Ltmp51:
	.size	lshr_v8i16, .Ltmp51-lshr_v8i16

	.globl	ashr_v4i32
	.align	3
	.type	ashr_v4i32,@function
ashr_v4i32:                             # @ashr_v4i32
# BB#0:
	sfi	$4, $4, 0
	lnop
	rotma	$3, $3, $4
	bi	$lr
.Ltmp52:
	.size	ashr_v4i32, .Ltmp52-ashr_v4i32

	.globl	ashr_v8i16
	.align	3
	.type	ashr_v8i16,@function
ashr_v8i16:                             # @ashr_v8i16
# BB#0:
	sfhi	$4, $4, 0
	lnop
	rotmah	$3, $3, $4
	bi	$lr
.Ltmp53:
	.size	ashr_v8i16, .Ltmp53-ashr_v8i16

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI54_0:
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.text
	.globl	special_const
	.align	3
	.type	special_const,@function
special_const:                          # @special_const
# BB#0:
	lqa	$3, .LCPI54_0
	bi	$lr
.Ltmp54:
	.size	special_const, .Ltmp54-special_const


