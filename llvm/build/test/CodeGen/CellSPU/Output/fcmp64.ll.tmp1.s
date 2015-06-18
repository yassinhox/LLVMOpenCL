	.file	"<stdin>"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI0_0:
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
.LCPI0_1:
	.long	67438087                # 0x4050607
	.long	3233857728              # 0xc0c0c0c0
	.long	202182159               # 0xc0d0e0f
	.long	3233857728              # 0xc0c0c0c0
	.text
	.globl	fcmp_eq_setcc_f64
	.align	3
	.type	fcmp_eq_setcc_f64,@function
fcmp_eq_setcc_f64:                      # @fcmp_eq_setcc_f64
# BB#0:                                 # %entry
	ilhu	$5, 32767
	iohl	$5, 65535
	ilhu	$6, 32751
	ilhu	$10, 1029
	and	$7, $4, $5
	iohl	$6, 65535
	and	$5, $3, $5
	lnop
	iohl	$10, 1543
	shufb	$9, $4, $4, $10
	cgt	$8, $7, $6
	lqa	$7, .LCPI0_1
	cgt	$5, $5, $6
	lnop
	cgti	$9, $9, 0
	shufb	$6, $3, $3, $10
	and	$8, $8, $9
	lqa	$10, .LCPI0_0
	cgti	$6, $6, 0
	nand	$5, $5, $6
	rotmai	$9, $4, -31
	lnop
	andc	$5, $5, $8
	fsm	$9, $9
	bg	$8, $10, $4
	shufb	$8, $8, $8, $7
	sfx	$8, $10, $4
	selb	$4, $4, $8, $9
	bg	$8, $10, $3
	shufb	$7, $8, $8, $7
	rotmai	$8, $3, -31
	fsm	$6, $8
	sfx	$7, $10, $3
	selb	$3, $3, $7, $6
	ceq	$3, $3, $4
	gb	$3, $3
	ilhu	$4, 771
	iohl	$4, 771
	cgti	$3, $3, 11
	lnop
	and	$3, $5, $3
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp0:
	.size	fcmp_eq_setcc_f64, .Ltmp0-fcmp_eq_setcc_f64


