	.file	"<stdin>"
	.text
	.globl	fp_add
	.align	3
	.type	fp_add,@function
fp_add:                                 # @fp_add
# BB#0:
	fa	$3, $3, $4
	bi	$lr
.Ltmp0:
	.size	fp_add, .Ltmp0-fp_add

	.globl	fp_add_vec
	.align	3
	.type	fp_add_vec,@function
fp_add_vec:                             # @fp_add_vec
# BB#0:
	fa	$3, $3, $4
	bi	$lr
.Ltmp1:
	.size	fp_add_vec, .Ltmp1-fp_add_vec

	.globl	fp_sub
	.align	3
	.type	fp_sub,@function
fp_sub:                                 # @fp_sub
# BB#0:
	fs	$3, $3, $4
	bi	$lr
.Ltmp2:
	.size	fp_sub, .Ltmp2-fp_sub

	.globl	fp_sub_vec
	.align	3
	.type	fp_sub_vec,@function
fp_sub_vec:                             # @fp_sub_vec
# BB#0:
	fs	$3, $3, $4
	bi	$lr
.Ltmp3:
	.size	fp_sub_vec, .Ltmp3-fp_sub_vec

	.globl	fp_mul
	.align	3
	.type	fp_mul,@function
fp_mul:                                 # @fp_mul
# BB#0:
	fm	$3, $3, $4
	bi	$lr
.Ltmp4:
	.size	fp_mul, .Ltmp4-fp_mul

	.globl	fp_mul_vec
	.align	3
	.type	fp_mul_vec,@function
fp_mul_vec:                             # @fp_mul_vec
# BB#0:
	fm	$3, $3, $4
	bi	$lr
.Ltmp5:
	.size	fp_mul_vec, .Ltmp5-fp_mul_vec

	.globl	fp_mul_add
	.align	3
	.type	fp_mul_add,@function
fp_mul_add:                             # @fp_mul_add
# BB#0:
	fma	$3, $3, $4, $5
	bi	$lr
.Ltmp6:
	.size	fp_mul_add, .Ltmp6-fp_mul_add

	.globl	fp_mul_add_vec
	.align	3
	.type	fp_mul_add_vec,@function
fp_mul_add_vec:                         # @fp_mul_add_vec
# BB#0:
	fma	$3, $3, $4, $5
	bi	$lr
.Ltmp7:
	.size	fp_mul_add_vec, .Ltmp7-fp_mul_add_vec

	.globl	fp_mul_sub
	.align	3
	.type	fp_mul_sub,@function
fp_mul_sub:                             # @fp_mul_sub
# BB#0:
	fms	$3, $3, $4, $5
	bi	$lr
.Ltmp8:
	.size	fp_mul_sub, .Ltmp8-fp_mul_sub

	.globl	fp_mul_sub_vec
	.align	3
	.type	fp_mul_sub_vec,@function
fp_mul_sub_vec:                         # @fp_mul_sub_vec
# BB#0:
	fms	$3, $3, $4, $5
	bi	$lr
.Ltmp9:
	.size	fp_mul_sub_vec, .Ltmp9-fp_mul_sub_vec

	.globl	fp_neg_mul_sub_1
	.align	3
	.type	fp_neg_mul_sub_1,@function
fp_neg_mul_sub_1:                       # @fp_neg_mul_sub_1
# BB#0:
	fnms	$3, $3, $4, $5
	bi	$lr
.Ltmp10:
	.size	fp_neg_mul_sub_1, .Ltmp10-fp_neg_mul_sub_1

	.globl	fp_neg_mul_sub_2
	.align	3
	.type	fp_neg_mul_sub_2,@function
fp_neg_mul_sub_2:                       # @fp_neg_mul_sub_2
# BB#0:
	fnms	$3, $3, $4, $5
	bi	$lr
.Ltmp11:
	.size	fp_neg_mul_sub_2, .Ltmp11-fp_neg_mul_sub_2

	.globl	fp_neg_mul_sub_vec
	.align	3
	.type	fp_neg_mul_sub_vec,@function
fp_neg_mul_sub_vec:                     # @fp_neg_mul_sub_vec
# BB#0:
	fnms	$3, $3, $4, $5
	bi	$lr
.Ltmp12:
	.size	fp_neg_mul_sub_vec, .Ltmp12-fp_neg_mul_sub_vec


