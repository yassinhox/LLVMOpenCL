	.file	"<stdin>"
	.text
	.globl	fadd
	.align	3
	.type	fadd,@function
fadd:                                   # @fadd
# BB#0:
	dfa	$3, $3, $4
	bi	$lr
.Ltmp0:
	.size	fadd, .Ltmp0-fadd

	.globl	fadd_vec
	.align	3
	.type	fadd_vec,@function
fadd_vec:                               # @fadd_vec
# BB#0:
	dfa	$3, $3, $4
	bi	$lr
.Ltmp1:
	.size	fadd_vec, .Ltmp1-fadd_vec

	.globl	fsub
	.align	3
	.type	fsub,@function
fsub:                                   # @fsub
# BB#0:
	dfs	$3, $3, $4
	bi	$lr
.Ltmp2:
	.size	fsub, .Ltmp2-fsub

	.globl	fsub_vec
	.align	3
	.type	fsub_vec,@function
fsub_vec:                               # @fsub_vec
# BB#0:
	dfs	$3, $3, $4
	bi	$lr
.Ltmp3:
	.size	fsub_vec, .Ltmp3-fsub_vec

	.globl	fmul
	.align	3
	.type	fmul,@function
fmul:                                   # @fmul
# BB#0:
	dfm	$3, $3, $4
	bi	$lr
.Ltmp4:
	.size	fmul, .Ltmp4-fmul

	.globl	fmul_vec
	.align	3
	.type	fmul_vec,@function
fmul_vec:                               # @fmul_vec
# BB#0:
	dfm	$3, $3, $4
	bi	$lr
.Ltmp5:
	.size	fmul_vec, .Ltmp5-fmul_vec

	.globl	fma
	.align	3
	.type	fma,@function
fma:                                    # @fma
# BB#0:
	dfma	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp6:
	.size	fma, .Ltmp6-fma

	.globl	fma_vec
	.align	3
	.type	fma_vec,@function
fma_vec:                                # @fma_vec
# BB#0:
	dfma	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp7:
	.size	fma_vec, .Ltmp7-fma_vec

	.globl	fms
	.align	3
	.type	fms,@function
fms:                                    # @fms
# BB#0:
	dfms	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp8:
	.size	fms, .Ltmp8-fms

	.globl	fms_vec
	.align	3
	.type	fms_vec,@function
fms_vec:                                # @fms_vec
# BB#0:
	dfms	$3, $3, $4
	bi	$lr
.Ltmp9:
	.size	fms_vec, .Ltmp9-fms_vec

	.globl	d_fnms_1
	.align	3
	.type	d_fnms_1,@function
d_fnms_1:                               # @d_fnms_1
# BB#0:
	dfnms	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp10:
	.size	d_fnms_1, .Ltmp10-d_fnms_1

	.globl	d_fnms_2
	.align	3
	.type	d_fnms_2,@function
d_fnms_2:                               # @d_fnms_2
# BB#0:
	dfnms	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp11:
	.size	d_fnms_2, .Ltmp11-d_fnms_2

	.globl	d_fnms_vec_1
	.align	3
	.type	d_fnms_vec_1,@function
d_fnms_vec_1:                           # @d_fnms_vec_1
# BB#0:
	dfnms	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp12:
	.size	d_fnms_vec_1, .Ltmp12-d_fnms_vec_1

	.globl	d_fnms_vec_2
	.align	3
	.type	d_fnms_vec_2,@function
d_fnms_vec_2:                           # @d_fnms_vec_2
# BB#0:
	dfnms	$5, $3, $4
	lnop
	lr	$3, $5
	bi	$lr
.Ltmp13:
	.size	d_fnms_vec_2, .Ltmp13-d_fnms_vec_2


