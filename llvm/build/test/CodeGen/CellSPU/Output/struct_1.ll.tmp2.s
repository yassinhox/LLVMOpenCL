	.file	"<stdin>"
	.text
	.globl	get_hackstate_c1
	.align	3
	.type	get_hackstate_c1,@function
get_hackstate_c1:                       # @get_hackstate_c1
# BB#0:                                 # %entry
	ilhu	$3, state@h
	iohl	$3, state@l
	ai	$4, $3, 13
	lqd	$3, 0($3)
	nop
	rotqby	$3, $3, $4
	andi	$3, $3, 255
	bi	$lr
.Ltmp0:
	.size	get_hackstate_c1, .Ltmp0-get_hackstate_c1

	.globl	get_hackstate_c2
	.align	3
	.type	get_hackstate_c2,@function
get_hackstate_c2:                       # @get_hackstate_c2
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 0($3)
	nop
	rotqbyi	$3, $3, 14
	andi	$3, $3, 255
	bi	$lr
.Ltmp1:
	.size	get_hackstate_c2, .Ltmp1-get_hackstate_c2

	.globl	get_hackstate_c3
	.align	3
	.type	get_hackstate_c3,@function
get_hackstate_c3:                       # @get_hackstate_c3
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 0($3)
	nop
	rotqbyi	$3, $3, 15
	andi	$3, $3, 255
	bi	$lr
.Ltmp2:
	.size	get_hackstate_c3, .Ltmp2-get_hackstate_c3

	.globl	get_hackstate_i1
	.align	3
	.type	get_hackstate_i1,@function
get_hackstate_i1:                       # @get_hackstate_i1
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 0($3)
	rotqbyi	$3, $3, 4
	bi	$lr
.Ltmp3:
	.size	get_hackstate_i1, .Ltmp3-get_hackstate_i1

	.globl	get_hackstate_s1
	.align	3
	.type	get_hackstate_s1,@function
get_hackstate_s1:                       # @get_hackstate_s1
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 0($3)
	nop
	rotqbyi	$3, $3, 6
	xshw	$3, $3
	bi	$lr
.Ltmp4:
	.size	get_hackstate_s1, .Ltmp4-get_hackstate_s1

	.globl	get_hackstate_c6
	.align	3
	.type	get_hackstate_c6,@function
get_hackstate_c6:                       # @get_hackstate_c6
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 16($3)
	nop
	rotqbyi	$3, $3, 15
	andi	$3, $3, 255
	bi	$lr
.Ltmp5:
	.size	get_hackstate_c6, .Ltmp5-get_hackstate_c6

	.globl	get_hackstate_c7
	.align	3
	.type	get_hackstate_c7,@function
get_hackstate_c7:                       # @get_hackstate_c7
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 16($3)
	andi	$3, $3, 255
	bi	$lr
.Ltmp6:
	.size	get_hackstate_c7, .Ltmp6-get_hackstate_c7

	.globl	get_hackstate_i3
	.align	3
	.type	get_hackstate_i3,@function
get_hackstate_i3:                       # @get_hackstate_i3
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 16($3)
	rotqbyi	$3, $3, 4
	bi	$lr
.Ltmp7:
	.size	get_hackstate_i3, .Ltmp7-get_hackstate_i3

	.globl	get_hackstate_i6
	.align	3
	.type	get_hackstate_i6,@function
get_hackstate_i6:                       # @get_hackstate_i6
# BB#0:                                 # %entry
	ilhu	$3, state@h
	lnop
	iohl	$3, state@l
	lqd	$3, 32($3)
	nop
	bi	$lr
.Ltmp8:
	.size	get_hackstate_i6, .Ltmp8-get_hackstate_i6

	.globl	set_hackstate_c1
	.align	3
	.type	set_hackstate_c1,@function
set_hackstate_c1:                       # @set_hackstate_c1
# BB#0:                                 # %entry
	ilhu	$4, state@h
	lnop
	iohl	$4, state@l
	lqd	$6, 0($4)
	cbd	$5, 0($4)
	shufb	$3, $3, $6, $5
	stqd	$3, 0($4)
	bi	$lr
.Ltmp9:
	.size	set_hackstate_c1, .Ltmp9-set_hackstate_c1

	.globl	set_hackstate_c2
	.align	3
	.type	set_hackstate_c2,@function
set_hackstate_c2:                       # @set_hackstate_c2
# BB#0:                                 # %entry
	ilhu	$4, state@h
	lnop
	iohl	$4, state@l
	lqd	$6, 0($4)
	cbd	$5, 1($4)
	shufb	$3, $3, $6, $5
	stqd	$3, 0($4)
	bi	$lr
.Ltmp10:
	.size	set_hackstate_c2, .Ltmp10-set_hackstate_c2

	.globl	set_hackstate_c3
	.align	3
	.type	set_hackstate_c3,@function
set_hackstate_c3:                       # @set_hackstate_c3
# BB#0:                                 # %entry
	ilhu	$4, state@h
	lnop
	iohl	$4, state@l
	lqd	$6, 0($4)
	cbd	$5, 2($4)
	shufb	$3, $3, $6, $5
	stqd	$3, 0($4)
	bi	$lr
.Ltmp11:
	.size	set_hackstate_c3, .Ltmp11-set_hackstate_c3

	.globl	set_hackstate_i1
	.align	3
	.type	set_hackstate_i1,@function
set_hackstate_i1:                       # @set_hackstate_i1
# BB#0:                                 # %entry
	ilhu	$4, state@h
	lnop
	iohl	$4, state@l
	lqd	$6, 0($4)
	cwd	$5, 4($4)
	shufb	$3, $3, $6, $5
	stqd	$3, 0($4)
	bi	$lr
.Ltmp12:
	.size	set_hackstate_i1, .Ltmp12-set_hackstate_i1

	.globl	set_hackstate_s1
	.align	3
	.type	set_hackstate_s1,@function
set_hackstate_s1:                       # @set_hackstate_s1
# BB#0:                                 # %entry
	ilhu	$4, state@h
	lnop
	iohl	$4, state@l
	lqd	$6, 0($4)
	chd	$5, 8($4)
	shufb	$3, $3, $6, $5
	stqd	$3, 0($4)
	bi	$lr
.Ltmp13:
	.size	set_hackstate_s1, .Ltmp13-set_hackstate_s1

	.globl	set_hackstate_i3
	.align	3
	.type	set_hackstate_i3,@function
set_hackstate_i3:                       # @set_hackstate_i3
# BB#0:                                 # %entry
	ilhu	$4, state@h
	lnop
	iohl	$4, state@l
	lqd	$6, 16($4)
	cwd	$5, 4($4)
	shufb	$3, $3, $6, $5
	stqd	$3, 16($4)
	bi	$lr
.Ltmp14:
	.size	set_hackstate_i3, .Ltmp14-set_hackstate_i3

	.globl	set_hackstate_i6
	.align	3
	.type	set_hackstate_i6,@function
set_hackstate_i6:                       # @set_hackstate_i6
# BB#0:                                 # %entry
	ilhu	$4, state@h
	lnop
	iohl	$4, state@l
	lqd	$6, 32($4)
	cwd	$5, 0($4)
	shufb	$3, $3, $6, $5
	stqd	$3, 32($4)
	bi	$lr
.Ltmp15:
	.size	set_hackstate_i6, .Ltmp15-set_hackstate_i6

	.type	state,@object           # @state
	.section	.bss,"aw",@nobits
	.globl	state
	.align	4
state:
	.space	36
	.size	state, 36


