	.file	"<stdin>"
	.text
	.globl	sitofp_i32
	.align	3
	.type	sitofp_i32,@function
sitofp_i32:                             # @sitofp_i32
# BB#0:
	csflt	$3, $3, 0
	bi	$lr
.Ltmp0:
	.size	sitofp_i32, .Ltmp0-sitofp_i32

	.globl	uitofp_u32
	.align	3
	.type	uitofp_u32,@function
uitofp_u32:                             # @uitofp_u32
# BB#0:
	cuflt	$3, $3, 0
	bi	$lr
.Ltmp1:
	.size	uitofp_u32, .Ltmp1-uitofp_u32

	.globl	sitofp_i16
	.align	3
	.type	sitofp_i16,@function
sitofp_i16:                             # @sitofp_i16
# BB#0:
	xshw	$3, $3
	lnop
	csflt	$3, $3, 0
	bi	$lr
.Ltmp2:
	.size	sitofp_i16, .Ltmp2-sitofp_i16

	.globl	uitofp_i16
	.align	3
	.type	uitofp_i16,@function
uitofp_i16:                             # @uitofp_i16
# BB#0:
	nop
	ila	$4, 65535
	and	$3, $3, $4
	lnop
	csflt	$3, $3, 0
	bi	$lr
.Ltmp3:
	.size	uitofp_i16, .Ltmp3-uitofp_i16

	.globl	sitofp_i8
	.align	3
	.type	sitofp_i8,@function
sitofp_i8:                              # @sitofp_i8
# BB#0:
	xsbh	$3, $3
	xshw	$3, $3
	csflt	$3, $3, 0
	bi	$lr
.Ltmp4:
	.size	sitofp_i8, .Ltmp4-sitofp_i8

	.globl	uitofp_i8
	.align	3
	.type	uitofp_i8,@function
uitofp_i8:                              # @uitofp_i8
# BB#0:
	andi	$3, $3, 255
	lnop
	csflt	$3, $3, 0
	bi	$lr
.Ltmp5:
	.size	uitofp_i8, .Ltmp5-uitofp_i8


