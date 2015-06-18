	.file	"<stdin>"
	.text
	.globl	rotl32_1a
	.align	3
	.type	rotl32_1a,@function
rotl32_1a:                              # @rotl32_1a
# BB#0:
	rot	$3, $3, $4
	bi	$lr
.Ltmp0:
	.size	rotl32_1a, .Ltmp0-rotl32_1a

	.globl	rotl32_1b
	.align	3
	.type	rotl32_1b,@function
rotl32_1b:                              # @rotl32_1b
# BB#0:
	rot	$3, $3, $4
	bi	$lr
.Ltmp1:
	.size	rotl32_1b, .Ltmp1-rotl32_1b

	.globl	rotl32_2
	.align	3
	.type	rotl32_2,@function
rotl32_2:                               # @rotl32_2
# BB#0:
	rot	$3, $3, $4
	bi	$lr
.Ltmp2:
	.size	rotl32_2, .Ltmp2-rotl32_2

	.globl	rotl32_3
	.align	3
	.type	rotl32_3,@function
rotl32_3:                               # @rotl32_3
# BB#0:
	rot	$3, $3, $4
	bi	$lr
.Ltmp3:
	.size	rotl32_3, .Ltmp3-rotl32_3

	.globl	rotl32_4
	.align	3
	.type	rotl32_4,@function
rotl32_4:                               # @rotl32_4
# BB#0:
	rot	$3, $3, $4
	bi	$lr
.Ltmp4:
	.size	rotl32_4, .Ltmp4-rotl32_4

	.globl	rotr32_1
	.align	3
	.type	rotr32_1,@function
rotr32_1:                               # @rotr32_1
# BB#0:
	orhi	$4, $4, 0
	sfhi	$4, $4, 32
	andi	$4, $4, 255
	lnop
	rot	$3, $3, $4
	bi	$lr
.Ltmp5:
	.size	rotr32_1, .Ltmp5-rotr32_1

	.globl	rotr32_2
	.align	3
	.type	rotr32_2,@function
rotr32_2:                               # @rotr32_2
# BB#0:
	orhi	$4, $4, 0
	sfhi	$4, $4, 32
	andi	$4, $4, 255
	lnop
	rot	$3, $3, $4
	bi	$lr
.Ltmp6:
	.size	rotr32_2, .Ltmp6-rotr32_2

	.globl	rotli32
	.align	3
	.type	rotli32,@function
rotli32:                                # @rotli32
# BB#0:
	roti	$3, $3, 5
	bi	$lr
.Ltmp7:
	.size	rotli32, .Ltmp7-rotli32

	.globl	rotri32
	.align	3
	.type	rotri32,@function
rotri32:                                # @rotri32
# BB#0:
	roti	$3, $3, 27
	bi	$lr
.Ltmp8:
	.size	rotri32, .Ltmp8-rotri32

	.globl	rotr16_1
	.align	3
	.type	rotr16_1,@function
rotr16_1:                               # @rotr16_1
# BB#0:
	orhi	$4, $4, 0
	sfhi	$4, $4, 16
	andi	$4, $4, 255
	lnop
	roth	$3, $3, $4
	bi	$lr
.Ltmp9:
	.size	rotr16_1, .Ltmp9-rotr16_1

	.globl	rotr16_2
	.align	3
	.type	rotr16_2,@function
rotr16_2:                               # @rotr16_2
# BB#0:
	sfhi	$4, $4, 16
	ila	$5, 65535
	and	$4, $4, $5
	lnop
	roth	$3, $3, $4
	bi	$lr
.Ltmp10:
	.size	rotr16_2, .Ltmp10-rotr16_2

	.globl	rotli16
	.align	3
	.type	rotli16,@function
rotli16:                                # @rotli16
# BB#0:
	rothi	$3, $3, 5
	bi	$lr
.Ltmp11:
	.size	rotli16, .Ltmp11-rotli16

	.globl	rotri16
	.align	3
	.type	rotri16,@function
rotri16:                                # @rotri16
# BB#0:
	rothi	$3, $3, 11
	bi	$lr
.Ltmp12:
	.size	rotri16, .Ltmp12-rotri16

	.globl	rotl8
	.align	3
	.type	rotl8,@function
rotl8:                                  # @rotl8
# BB#0:
	andhi	$3, $3, 255
	shlhi	$5, $3, 8
	or	$3, $3, $5
	andi	$4, $4, 255
	ilhu	$5, 771
	roth	$3, $3, $4
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp13:
	.size	rotl8, .Ltmp13-rotl8

	.globl	rotr8
	.align	3
	.type	rotr8,@function
rotr8:                                  # @rotr8
# BB#0:
	andhi	$3, $3, 255
	shlhi	$5, $3, 8
	orhi	$4, $4, 0
	sfhi	$4, $4, 8
	or	$3, $3, $5
	andi	$4, $4, 255
	ilhu	$5, 771
	roth	$3, $3, $4
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp14:
	.size	rotr8, .Ltmp14-rotr8

	.globl	rotli8
	.align	3
	.type	rotli8,@function
rotli8:                                 # @rotli8
# BB#0:
	andhi	$3, $3, 255
	shlhi	$4, $3, 8
	or	$3, $3, $4
	ilhu	$4, 771
	rothi	$3, $3, 5
	lnop
	iohl	$4, 771
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp15:
	.size	rotli8, .Ltmp15-rotli8

	.globl	rotri8
	.align	3
	.type	rotri8,@function
rotri8:                                 # @rotri8
# BB#0:
	andhi	$3, $3, 255
	shlhi	$4, $3, 8
	or	$3, $3, $4
	ilhu	$4, 771
	rothi	$3, $3, 3
	lnop
	iohl	$4, 771
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp16:
	.size	rotri8, .Ltmp16-rotri8

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI17_0:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.text
	.globl	test1
	.align	3
	.type	test1,@function
test1:                                  # @test1
# BB#0:
	lqa	$4, .LCPI17_0
	rotqbyi	$3, $3, 4
	shufb	$3, $3, $3, $4
	bi	$lr
.Ltmp17:
	.size	test1, .Ltmp17-test1


