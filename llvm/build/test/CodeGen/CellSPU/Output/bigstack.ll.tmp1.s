	.file	"<stdin>"
	.text
	.globl	bigstack
	.align	3
	.type	bigstack,@function
bigstack:                               # @bigstack
# BB#0:                                 # %entry
	stqd	$lr, 16($sp)
	stqd	$2, -16($sp)
	il	$2, -8256
	stqx	$sp, $2, $sp
	a	$sp, $sp, $2
	il	$3, 8240
	sfi	$2, $2, 16
	lnop
	a	$3, $3, $sp
	lqx	$2, $2, $sp
	il	$6, 3840
	lqd	$5, 0($3)
	cwd	$4, 0($3)
	shufb	$4, $6, $5, $4
	il	$5, 8240
	stqd	$4, 0($3)
	lqx	$4, $5, $sp
	stqd	$2, 16($sp)
	il	$2, 8256
	rotqby	$3, $4, $3
	a	$sp, $sp, $2
	lnop
	sfi	$2, $2, 16
	lqd	$lr, 16($sp)
	lqx	$2, $2, $sp
	bi	$lr
.Ltmp0:
	.size	bigstack, .Ltmp0-bigstack


