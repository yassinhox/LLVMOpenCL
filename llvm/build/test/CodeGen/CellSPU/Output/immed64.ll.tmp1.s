	.file	"<stdin>"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI0_0:
	.long	66051                   # 0x10203
	.long	336926231               # 0x14151617
	.long	134810123               # 0x8090a0b
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_const_1
	.align	3
	.type	i64_const_1,@function
i64_const_1:                            # @i64_const_1
# BB#0:
	nop
	lqa	$5, .LCPI0_0
	ilhu	$3, 43981
	ilhu	$4, 4660
	iohl	$3, 61202
	lnop
	iohl	$4, 22136
	shufb	$3, $4, $3, $5
	nop
	bi	$lr
.Ltmp0:
	.size	i64_const_1, .Ltmp0-i64_const_1

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI1_0:
	.long	3233857728              # 0xc0c0c0c0
	.long	336926231               # 0x14151617
	.long	3233857728              # 0xc0c0c0c0
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_const_2
	.align	3
	.type	i64_const_2,@function
i64_const_2:                            # @i64_const_2
# BB#0:
	nop
	lqa	$3, .LCPI1_0
	il	$4, -25
	shufb	$3, $4, $4, $3
	nop
	bi	$lr
.Ltmp1:
	.size	i64_const_2, .Ltmp1-i64_const_2

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI2_0:
	.long	3233857728              # 0xc0c0c0c0
	.long	336926231               # 0x14151617
	.long	3233857728              # 0xc0c0c0c0
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_const_3
	.align	3
	.type	i64_const_3,@function
i64_const_3:                            # @i64_const_3
# BB#0:
	nop
	lqa	$4, .LCPI2_0
	ilhu	$3, 65520
	lnop
	iohl	$3, 13702
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp2:
	.size	i64_const_3, .Ltmp2-i64_const_3

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI3_0:
	.long	2155905152              # 0x80808080
	.long	336926231               # 0x14151617
	.long	2155905152              # 0x80808080
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_const_4
	.align	3
	.type	i64_const_4,@function
i64_const_4:                            # @i64_const_4
# BB#0:
	nop
	lqa	$4, .LCPI3_0
	ilhu	$3, 81
	lnop
	iohl	$3, 15
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp3:
	.size	i64_const_4, .Ltmp3-i64_const_4

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI4_0:
	.long	2155905152              # 0x80808080
	.long	336926231               # 0x14151617
	.long	2155905152              # 0x80808080
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_const_5
	.align	3
	.type	i64_const_5,@function
i64_const_5:                            # @i64_const_5
# BB#0:
	nop
	lqa	$3, .LCPI4_0
	il	$4, 511
	shufb	$3, $4, $4, $3
	nop
	bi	$lr
.Ltmp4:
	.size	i64_const_5, .Ltmp4-i64_const_5

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI5_0:
	.long	3233857728              # 0xc0c0c0c0
	.long	336926231               # 0x14151617
	.long	3233857728              # 0xc0c0c0c0
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_const_6
	.align	3
	.type	i64_const_6,@function
i64_const_6:                            # @i64_const_6
# BB#0:
	nop
	lqa	$3, .LCPI5_0
	il	$4, -512
	shufb	$3, $4, $4, $3
	nop
	bi	$lr
.Ltmp5:
	.size	i64_const_6, .Ltmp5-i64_const_6

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI6_0:
	.long	3766517888              # 0xe0808080
	.long	336926231               # 0x14151617
	.long	3766517888              # 0xe0808080
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	i64_const_7
	.align	3
	.type	i64_const_7,@function
i64_const_7:                            # @i64_const_7
# BB#0:
	nop
	lqa	$4, .LCPI6_0
	ilhu	$3, 28225
	lnop
	iohl	$3, 30720
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp6:
	.size	i64_const_7, .Ltmp6-i64_const_7

	.globl	i64_const_8
	.align	3
	.type	i64_const_8,@function
i64_const_8:                            # @i64_const_8
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp7:
	.size	i64_const_8, .Ltmp7-i64_const_8

	.globl	i64_const_9
	.align	3
	.type	i64_const_9,@function
i64_const_9:                            # @i64_const_9
# BB#0:
	il	$3, -1
	bi	$lr
.Ltmp8:
	.size	i64_const_9, .Ltmp8-i64_const_9

	.globl	i64_const_10
	.align	3
	.type	i64_const_10,@function
i64_const_10:                           # @i64_const_10
# BB#0:
	ila	$3, 65535
	bi	$lr
.Ltmp9:
	.size	i64_const_10, .Ltmp9-i64_const_10

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI10_0:
	.long	66051                   # 0x10203
	.long	336926231               # 0x14151617
	.long	134810123               # 0x8090a0b
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	f64_const_1
	.align	3
	.type	f64_const_1,@function
f64_const_1:                            # @f64_const_1
# BB#0:
	nop
	lqa	$5, .LCPI10_0
	ilhu	$3, 35604
	ilhu	$4, 16389
	iohl	$3, 22377
	lnop
	iohl	$4, 48906
	shufb	$3, $4, $3, $5
	nop
	bi	$lr
.Ltmp10:
	.size	f64_const_1, .Ltmp10-f64_const_1

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI11_0:
	.long	66051                   # 0x10203
	.long	2155905152              # 0x80808080
	.long	134810123               # 0x8090a0b
	.long	2155905152              # 0x80808080
	.text
	.globl	f64_const_2
	.align	3
	.type	f64_const_2,@function
f64_const_2:                            # @f64_const_2
# BB#0:
	nop
	lqa	$3, .LCPI11_0
	ilhu	$4, 16
	shufb	$3, $4, $4, $3
	nop
	bi	$lr
.Ltmp11:
	.size	f64_const_2, .Ltmp11-f64_const_2

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI12_0:
	.long	66051                   # 0x10203
	.long	3233857728              # 0xc0c0c0c0
	.long	134810123               # 0x8090a0b
	.long	3233857728              # 0xc0c0c0c0
	.text
	.globl	f64_const_3
	.align	3
	.type	f64_const_3,@function
f64_const_3:                            # @f64_const_3
# BB#0:
	nop
	lqa	$4, .LCPI12_0
	ilhu	$3, 32751
	lnop
	iohl	$3, 65535
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp12:
	.size	f64_const_3, .Ltmp12-f64_const_3

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI13_0:
	.long	66051                   # 0x10203
	.long	336926231               # 0x14151617
	.long	134810123               # 0x8090a0b
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	f64_const_4
	.align	3
	.type	f64_const_4,@function
f64_const_4:                            # @f64_const_4
# BB#0:
	nop
	lqa	$5, .LCPI13_0
	ilhu	$3, 21572
	ilhu	$4, 16393
	iohl	$3, 11544
	lnop
	iohl	$4, 8699
	shufb	$3, $4, $3, $5
	nop
	bi	$lr
.Ltmp13:
	.size	f64_const_4, .Ltmp13-f64_const_4

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI14_0:
	.long	66051                   # 0x10203
	.long	336926231               # 0x14151617
	.long	134810123               # 0x8090a0b
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	f64_const_5
	.align	3
	.type	f64_const_5,@function
f64_const_5:                            # @f64_const_5
# BB#0:
	nop
	lqa	$5, .LCPI14_0
	ilhu	$3, 26239
	ilhu	$4, 49142
	iohl	$3, 15309
	lnop
	iohl	$4, 41118
	shufb	$3, $4, $3, $5
	nop
	bi	$lr
.Ltmp14:
	.size	f64_const_5, .Ltmp14-f64_const_5

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI15_0:
	.long	66051                   # 0x10203
	.long	336926231               # 0x14151617
	.long	134810123               # 0x8090a0b
	.long	471670303               # 0x1c1d1e1f
	.text
	.globl	f64_const_6
	.align	3
	.type	f64_const_6,@function
f64_const_6:                            # @f64_const_6
# BB#0:
	nop
	lqa	$5, .LCPI15_0
	ilhu	$3, 26239
	ilhu	$4, 16374
	iohl	$3, 15309
	lnop
	iohl	$4, 41118
	shufb	$3, $4, $3, $5
	nop
	bi	$lr
.Ltmp15:
	.size	f64_const_6, .Ltmp15-f64_const_6

	.globl	f64_const_7
	.align	3
	.type	f64_const_7,@function
f64_const_7:                            # @f64_const_7
# BB#0:
	il	$3, 0
	bi	$lr
.Ltmp16:
	.size	f64_const_7, .Ltmp16-f64_const_7


