	.file	"<stdin>"
	.text
	.globl	fdiv32
	.align	3
	.type	fdiv32,@function
fdiv32:                                 # @fdiv32
# BB#0:
	frest	$5, $4
	fi	$5, $4, $5
	fm	$6, $3, $5
	fnms	$7, $6, $4, $3
	fma	$5, $7, $5, $6
	ai	$6, $5, 1
	fnms	$3, $4, $6, $3
	cgti	$3, $3, -1
	selb	$3, $5, $6, $3
	bi	$lr
.Ltmp0:
	.size	fdiv32, .Ltmp0-fdiv32

	.globl	fdiv_v4f32
	.align	3
	.type	fdiv_v4f32,@function
fdiv_v4f32:                             # @fdiv_v4f32
# BB#0:
	frest	$5, $4
	fi	$5, $4, $5
	fm	$6, $3, $5
	fnms	$7, $6, $4, $3
	fma	$5, $7, $5, $6
	ai	$6, $5, 1
	fnms	$3, $4, $6, $3
	cgti	$3, $3, -1
	selb	$3, $5, $6, $3
	bi	$lr
.Ltmp1:
	.size	fdiv_v4f32, .Ltmp1-fdiv_v4f32


