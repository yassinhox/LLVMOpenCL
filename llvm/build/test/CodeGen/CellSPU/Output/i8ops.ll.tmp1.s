	.file	"<stdin>"
	.text
	.globl	add_i8
	.align	3
	.type	add_i8,@function
add_i8:                                 # @add_i8
# BB#0:
	ilhu	$5, 771
	orhi	$4, $4, 0
	orhi	$3, $3, 0
	ah	$3, $3, $4
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp0:
	.size	add_i8, .Ltmp0-add_i8

	.globl	add_i8_imm
	.align	3
	.type	add_i8_imm,@function
add_i8_imm:                             # @add_i8_imm
# BB#0:
	ilhu	$4, 771
	orhi	$3, $3, 0
	iohl	$4, 771
	lnop
	ahi	$3, $3, 15
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp1:
	.size	add_i8_imm, .Ltmp1-add_i8_imm

	.globl	sub_i8
	.align	3
	.type	sub_i8,@function
sub_i8:                                 # @sub_i8
# BB#0:
	ilhu	$5, 771
	orhi	$3, $3, 0
	orhi	$4, $4, 0
	sfh	$3, $4, $3
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp2:
	.size	sub_i8, .Ltmp2-sub_i8

	.globl	sub_i8_imm
	.align	3
	.type	sub_i8_imm,@function
sub_i8_imm:                             # @sub_i8_imm
# BB#0:
	ilhu	$4, 771
	orhi	$3, $3, 0
	iohl	$4, 771
	lnop
	ahi	$3, $3, -15
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp3:
	.size	sub_i8_imm, .Ltmp3-sub_i8_imm


