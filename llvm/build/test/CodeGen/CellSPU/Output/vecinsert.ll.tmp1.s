	.file	"<stdin>"
	.text
	.globl	test_v16i8
	.align	3
	.type	test_v16i8,@function
test_v16i8:                             # @test_v16i8
# BB#0:                                 # %entry
	nop
	cbd	$5, 10($sp)
	ilh	$6, 17219
	shufb	$3, $4, $3, $5
	cbd	$7, 7($sp)
	shufb	$3, $6, $3, $7
	cbd	$6, 15($sp)
	shufb	$3, $4, $3, $6
	nop
	bi	$lr
.Ltmp0:
	.size	test_v16i8, .Ltmp0-test_v16i8

	.globl	test_v8i16
	.align	3
	.type	test_v8i16,@function
test_v8i16:                             # @test_v8i16
# BB#0:                                 # %entry
	nop
	chd	$5, 10($sp)
	ilh	$6, 22598
	shufb	$3, $4, $3, $5
	chd	$7, 14($sp)
	shufb	$3, $6, $3, $7
	chd	$6, 4($sp)
	shufb	$3, $4, $3, $6
	nop
	bi	$lr
.Ltmp1:
	.size	test_v8i16, .Ltmp1-test_v8i16

	.globl	test_v4i32_1
	.align	3
	.type	test_v4i32_1,@function
test_v4i32_1:                           # @test_v4i32_1
# BB#0:                                 # %entry
	nop
	cwd	$5, 8($sp)
	ilhu	$7, 24
	lnop
	iohl	$7, 1159
	shufb	$3, $4, $3, $5
	cwd	$6, 4($sp)
	shufb	$3, $7, $3, $6
	cwd	$6, 12($sp)
	shufb	$3, $4, $3, $6
	nop
	bi	$lr
.Ltmp2:
	.size	test_v4i32_1, .Ltmp2-test_v4i32_1

	.globl	test_v4i32_2
	.align	3
	.type	test_v4i32_2,@function
test_v4i32_2:                           # @test_v4i32_2
# BB#0:                                 # %entry
	nop
	cwd	$5, 8($sp)
	il	$6, -39
	shufb	$3, $4, $3, $5
	cwd	$7, 4($sp)
	shufb	$3, $6, $3, $7
	cwd	$6, 12($sp)
	shufb	$3, $4, $3, $6
	nop
	bi	$lr
.Ltmp3:
	.size	test_v4i32_2, .Ltmp3-test_v4i32_2

	.globl	variable_v16i8_1
	.align	3
	.type	variable_v16i8_1,@function
variable_v16i8_1:                       # @variable_v16i8_1
# BB#0:                                 # %entry
	shli	$4, $4, 4
	cbd	$6, 1($sp)
	ilh	$7, 257
	lqx	$5, $4, $3
	nop
	shufb	$5, $7, $5, $6
	ilh	$7, 514
	cbd	$8, 11($sp)
	shufb	$5, $7, $5, $8
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp4:
	.size	variable_v16i8_1, .Ltmp4-variable_v16i8_1

	.globl	variable_v8i16_1
	.align	3
	.type	variable_v8i16_1,@function
variable_v8i16_1:                       # @variable_v8i16_1
# BB#0:                                 # %entry
	shli	$4, $4, 4
	chd	$6, 2($sp)
	ilh	$7, 1
	lqx	$5, $4, $3
	nop
	shufb	$5, $7, $5, $6
	ilh	$7, 2
	chd	$8, 12($sp)
	shufb	$5, $7, $5, $8
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp5:
	.size	variable_v8i16_1, .Ltmp5-variable_v8i16_1

	.globl	variable_v4i32_1
	.align	3
	.type	variable_v4i32_1,@function
variable_v4i32_1:                       # @variable_v4i32_1
# BB#0:                                 # %entry
	shli	$4, $4, 4
	cwd	$6, 4($sp)
	il	$7, 1
	lqx	$5, $4, $3
	nop
	shufb	$5, $7, $5, $6
	il	$7, 2
	cwd	$8, 8($sp)
	shufb	$5, $7, $5, $8
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp6:
	.size	variable_v4i32_1, .Ltmp6-variable_v4i32_1

	.globl	variable_v4f32_1
	.align	3
	.type	variable_v4f32_1,@function
variable_v4f32_1:                       # @variable_v4f32_1
# BB#0:                                 # %entry
	shli	$4, $4, 4
	cwd	$7, 4($sp)
	ilhu	$6, 16256
	lqx	$5, $4, $3
	nop
	shufb	$5, $6, $5, $7
	ilhu	$6, 16384
	cwd	$8, 8($sp)
	shufb	$5, $6, $5, $8
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp7:
	.size	variable_v4f32_1, .Ltmp7-variable_v4f32_1

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI8_0:
	.long	2155905152              # 0x80808080
	.long	336926231               # 0x14151617
	.long	2155905152              # 0x80808080
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	variable_v2i64_1
	.align	3
	.type	variable_v2i64_1,@function
variable_v2i64_1:                       # @variable_v2i64_1
# BB#0:                                 # %entry
	shli	$4, $4, 4
	lqa	$5, .LCPI8_0
	il	$6, 615
	lqx	$8, $4, $3
	shufb	$5, $6, $6, $5
	cdd	$7, 0($sp)
	shufb	$5, $5, $8, $7
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp8:
	.size	variable_v2i64_1, .Ltmp8-variable_v2i64_1

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI9_0:
	.long	2155905152              # 0x80808080
	.long	336926231               # 0x14151617
	.long	2155905152              # 0x80808080
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	variable_v2i64_2
	.align	3
	.type	variable_v2i64_2,@function
variable_v2i64_2:                       # @variable_v2i64_2
# BB#0:                                 # %entry
	shli	$4, $4, 4
	lqa	$5, .LCPI9_0
	il	$6, 615
	lqx	$8, $4, $3
	shufb	$5, $6, $6, $5
	cdd	$7, 8($sp)
	shufb	$5, $5, $8, $7
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp9:
	.size	variable_v2i64_2, .Ltmp9-variable_v2i64_2

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI10_0:
	.long	66051                   # 0x10203
	.long	2155905152              # 0x80808080
	.long	134810123               # 0x8090a0b
	.long	2155905152              # 0x80808080
	.text
	.globl	variable_v2f64_1
	.align	3
	.type	variable_v2f64_1,@function
variable_v2f64_1:                       # @variable_v2f64_1
# BB#0:                                 # %entry
	shli	$4, $4, 4
	lqa	$5, .LCPI10_0
	ilhu	$6, 16368
	lqx	$8, $4, $3
	shufb	$5, $6, $6, $5
	cdd	$7, 8($sp)
	shufb	$5, $5, $8, $7
	stqx	$5, $4, $3
	nop
	bi	$lr
.Ltmp10:
	.size	variable_v2f64_1, .Ltmp10-variable_v2f64_1

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI11_0:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.text
	.globl	undef_v4i32
	.align	3
	.type	undef_v4i32,@function
undef_v4i32:                            # @undef_v4i32
# BB#0:
	lqa	$5, .LCPI11_0
	cwd	$4, 0($sp)
	shufb	$3, $3, $5, $4
	bi	$lr
.Ltmp11:
	.size	undef_v4i32, .Ltmp11-undef_v4i32


