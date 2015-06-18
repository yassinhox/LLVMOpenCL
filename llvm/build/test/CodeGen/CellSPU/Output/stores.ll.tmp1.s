	.file	"<stdin>"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI0_0:
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.text
	.globl	store_v16i8_1
	.align	3
	.type	store_v16i8_1,@function
store_v16i8_1:                          # @store_v16i8_1
# BB#0:                                 # %entry
	lqa	$4, .LCPI0_0
	stqd	$4, 0($3)
	nop
	bi	$lr
.Ltmp0:
	.size	store_v16i8_1, .Ltmp0-store_v16i8_1

	.globl	store_v16i8_2
	.align	3
	.type	store_v16i8_2,@function
store_v16i8_2:                          # @store_v16i8_2
# BB#0:                                 # %entry
	ilh	$4, 514
	stqd	$4, 16($3)
	nop
	bi	$lr
.Ltmp1:
	.size	store_v16i8_2, .Ltmp1-store_v16i8_2

	.globl	store_v16i8_3
	.align	3
	.type	store_v16i8_3,@function
store_v16i8_3:                          # @store_v16i8_3
# BB#0:                                 # %entry
	shli	$4, $4, 4
	lnop
	ilh	$5, 257
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp2:
	.size	store_v16i8_3, .Ltmp2-store_v16i8_3

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI3_0:
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	1                       # 0x1
	.text
	.globl	store_v8i16_1
	.align	3
	.type	store_v8i16_1,@function
store_v8i16_1:                          # @store_v8i16_1
# BB#0:                                 # %entry
	lqa	$4, .LCPI3_0
	stqd	$4, 0($3)
	nop
	bi	$lr
.Ltmp3:
	.size	store_v8i16_1, .Ltmp3-store_v8i16_1

	.globl	store_v8i16_2
	.align	3
	.type	store_v8i16_2,@function
store_v8i16_2:                          # @store_v8i16_2
# BB#0:                                 # %entry
	ilh	$4, 2
	stqd	$4, 16($3)
	nop
	bi	$lr
.Ltmp4:
	.size	store_v8i16_2, .Ltmp4-store_v8i16_2

	.globl	store_v8i16_3
	.align	3
	.type	store_v8i16_3,@function
store_v8i16_3:                          # @store_v8i16_3
# BB#0:                                 # %entry
	shli	$4, $4, 4
	lnop
	ilh	$5, 1
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp5:
	.size	store_v8i16_3, .Ltmp5-store_v8i16_3

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI6_0:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	store_v4i32_1
	.align	3
	.type	store_v4i32_1,@function
store_v4i32_1:                          # @store_v4i32_1
# BB#0:                                 # %entry
	lqa	$4, .LCPI6_0
	stqd	$4, 0($3)
	nop
	bi	$lr
.Ltmp6:
	.size	store_v4i32_1, .Ltmp6-store_v4i32_1

	.globl	store_v4i32_2
	.align	3
	.type	store_v4i32_2,@function
store_v4i32_2:                          # @store_v4i32_2
# BB#0:                                 # %entry
	il	$4, 2
	stqd	$4, 16($3)
	nop
	bi	$lr
.Ltmp7:
	.size	store_v4i32_2, .Ltmp7-store_v4i32_2

	.globl	store_v4i32_3
	.align	3
	.type	store_v4i32_3,@function
store_v4i32_3:                          # @store_v4i32_3
# BB#0:                                 # %entry
	shli	$4, $4, 4
	lnop
	il	$5, 1
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp8:
	.size	store_v4i32_3, .Ltmp8-store_v4i32_3

	.globl	store_v4f32_1
	.align	3
	.type	store_v4f32_1,@function
store_v4f32_1:                          # @store_v4f32_1
# BB#0:                                 # %entry
	ilhu	$4, 16256
	stqd	$4, 0($3)
	nop
	bi	$lr
.Ltmp9:
	.size	store_v4f32_1, .Ltmp9-store_v4f32_1

	.globl	store_v4f32_2
	.align	3
	.type	store_v4f32_2,@function
store_v4f32_2:                          # @store_v4f32_2
# BB#0:                                 # %entry
	ilhu	$4, 16384
	stqd	$4, 16($3)
	nop
	bi	$lr
.Ltmp10:
	.size	store_v4f32_2, .Ltmp10-store_v4f32_2

	.globl	store_v4f32_3
	.align	3
	.type	store_v4f32_3,@function
store_v4f32_3:                          # @store_v4f32_3
# BB#0:                                 # %entry
	shli	$4, $4, 4
	lnop
	ilhu	$5, 16256
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp11:
	.size	store_v4f32_3, .Ltmp11-store_v4f32_3

	.globl	tstore_i16_i8
	.align	3
	.type	tstore_i16_i8,@function
tstore_i16_i8:                          # @tstore_i16_i8
# BB#0:                                 # %entry
	ilhu	$5, 771
	cbd	$6, 0($4)
	iohl	$5, 771
	lqd	$7, 0($4)
	nop
	shufb	$5, $3, $3, $5
	andi	$3, $3, 255
	shufb	$5, $5, $7, $6
	stqd	$5, 0($4)
	bi	$lr
.Ltmp12:
	.size	tstore_i16_i8, .Ltmp12-tstore_i16_i8

	.globl	tstore_i32_i8
	.align	3
	.type	tstore_i32_i8,@function
tstore_i32_i8:                          # @tstore_i32_i8
# BB#0:                                 # %entry
	ilhu	$5, 771
	cbd	$6, 0($4)
	iohl	$5, 771
	lqd	$7, 0($4)
	nop
	shufb	$5, $3, $3, $5
	andi	$3, $3, 255
	shufb	$5, $5, $7, $6
	stqd	$5, 0($4)
	bi	$lr
.Ltmp13:
	.size	tstore_i32_i8, .Ltmp13-tstore_i32_i8

	.globl	tstore_i32_i16
	.align	3
	.type	tstore_i32_i16,@function
tstore_i32_i16:                         # @tstore_i32_i16
# BB#0:                                 # %entry
	ilhu	$5, 515
	chd	$6, 0($4)
	iohl	$5, 515
	lqd	$7, 0($4)
	nop
	shufb	$5, $3, $3, $5
	xshw	$3, $3
	shufb	$5, $5, $7, $6
	stqd	$5, 0($4)
	bi	$lr
.Ltmp14:
	.size	tstore_i32_i16, .Ltmp14-tstore_i32_i16

	.globl	tstore_i64_i8
	.align	3
	.type	tstore_i64_i8,@function
tstore_i64_i8:                          # @tstore_i64_i8
# BB#0:                                 # %entry
	ilhu	$5, 1799
	cbd	$6, 0($4)
	iohl	$5, 1799
	lqd	$7, 0($4)
	shufb	$5, $3, $3, $5
	shufb	$5, $5, $7, $6
	nop
	stqd	$5, 0($4)
	ilhu	$5, 1029
	lnop
	iohl	$5, 1543
	shufb	$3, $3, $3, $5
	andi	$3, $3, 255
	bi	$lr
.Ltmp15:
	.size	tstore_i64_i8, .Ltmp15-tstore_i64_i8

	.globl	tstore_i64_i16
	.align	3
	.type	tstore_i64_i16,@function
tstore_i64_i16:                         # @tstore_i64_i16
# BB#0:                                 # %entry
	ilhu	$5, 1543
	chd	$6, 0($4)
	iohl	$5, 1543
	lqd	$7, 0($4)
	shufb	$5, $3, $3, $5
	shufb	$5, $5, $7, $6
	nop
	stqd	$5, 0($4)
	ilhu	$5, 1029
	lnop
	iohl	$5, 1543
	shufb	$3, $3, $3, $5
	xshw	$3, $3
	bi	$lr
.Ltmp16:
	.size	tstore_i64_i16, .Ltmp16-tstore_i64_i16

	.globl	tstore_i64_i32
	.align	3
	.type	tstore_i64_i32,@function
tstore_i64_i32:                         # @tstore_i64_i32
# BB#0:                                 # %entry
	ilhu	$5, 1029
	lnop
	iohl	$5, 1543
	lqd	$6, 0($4)
	shufb	$3, $3, $3, $5
	cwd	$5, 0($4)
	shufb	$5, $3, $6, $5
	stqd	$5, 0($4)
	nop
	bi	$lr
.Ltmp17:
	.size	tstore_i64_i32, .Ltmp17-tstore_i64_i32

	.globl	tstore_f64_f32
	.align	3
	.type	tstore_f64_f32,@function
tstore_f64_f32:                         # @tstore_f64_f32
# BB#0:                                 # %entry
	frds	$3, $3
	lqd	$6, 0($4)
	cwd	$5, 0($4)
	shufb	$5, $3, $6, $5
	stqd	$5, 0($4)
	bi	$lr
.Ltmp18:
	.size	tstore_f64_f32, .Ltmp18-tstore_f64_f32

	.globl	store_misaligned
	.align	3
	.type	store_misaligned,@function
store_misaligned:                       # @store_misaligned
# BB#0:
	il	$5, 12
	sfi	$6, $5, 0
	il	$5, -1
	rotqmby	$6, $5, $6
	andi	$7, $4, 15
	lnop
	sfi	$9, $7, 16
	shlqbyi	$6, $6, 12
	ai	$12, $4, 0
	lnop
	sfi	$7, $7, 0
	lqd	$11, 16($12)
	and	$3, $3, $6
	shlqby	$8, $3, $9
	nop
	shlqby	$9, $6, $9
	xor	$10, $9, $5
	and	$10, $11, $10
	or	$10, $10, $8
	lqd	$8, 0($4)
	stqd	$10, 16($12)
	rotqmby	$6, $6, $7
	nop
	rotqmby	$3, $3, $7
	xor	$5, $6, $5
	and	$5, $8, $5
	and	$3, $3, $6
	lnop
	or	$3, $5, $3
	stqd	$3, 0($4)
	nop
	bi	$lr
.Ltmp19:
	.size	store_misaligned, .Ltmp19-store_misaligned

	.globl	store_v8
	.align	3
	.type	store_v8,@function
store_v8:                               # @store_v8
# BB#0:
	stqd	$4, 16($5)
	stqd	$3, 0($5)
	nop
	bi	$lr
.Ltmp20:
	.size	store_v8, .Ltmp20-store_v8

	.globl	store_null_vec
	.align	3
	.type	store_null_vec,@function
store_null_vec:                         # @store_null_vec
# BB#0:
	il	$4, 0
	stqd	$3, 0($4)
	nop
	bi	$lr
.Ltmp21:
	.size	store_null_vec, .Ltmp21-store_null_vec


