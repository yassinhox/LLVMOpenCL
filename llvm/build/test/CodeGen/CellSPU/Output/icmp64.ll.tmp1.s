	.file	"<stdin>"
	.text
	.globl	icmp_eq_select_i64
	.align	3
	.type	icmp_eq_select_i64,@function
icmp_eq_select_i64:                     # @icmp_eq_select_i64
# BB#0:                                 # %entry
	ceq	$3, $3, $4
	gb	$3, $3
	cgti	$3, $3, 11
	fsm	$3, $3
	selb	$3, $6, $5, $3
	bi	$lr
.Ltmp0:
	.size	icmp_eq_select_i64, .Ltmp0-icmp_eq_select_i64

	.globl	icmp_eq_setcc_i64
	.align	3
	.type	icmp_eq_setcc_i64,@function
icmp_eq_setcc_i64:                      # @icmp_eq_setcc_i64
# BB#0:                                 # %entry
	ceq	$3, $3, $4
	gb	$3, $3
	ilhu	$4, 771
	iohl	$4, 771
	cgti	$3, $3, 11
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp1:
	.size	icmp_eq_setcc_i64, .Ltmp1-icmp_eq_setcc_i64

	.globl	icmp_ne_select_i64
	.align	3
	.type	icmp_ne_select_i64,@function
icmp_ne_select_i64:                     # @icmp_ne_select_i64
# BB#0:                                 # %entry
	ceq	$3, $3, $4
	gb	$3, $3
	cgti	$3, $3, 11
	fsm	$3, $3
	selb	$3, $5, $6, $3
	bi	$lr
.Ltmp2:
	.size	icmp_ne_select_i64, .Ltmp2-icmp_ne_select_i64

	.globl	icmp_ne_setcc_i64
	.align	3
	.type	icmp_ne_setcc_i64,@function
icmp_ne_setcc_i64:                      # @icmp_ne_setcc_i64
# BB#0:                                 # %entry
	ceq	$3, $3, $4
	gb	$3, $3
	ilhu	$4, 771
	iohl	$4, 771
	cgti	$3, $3, 11
	lnop
	xori	$3, $3, -1
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp3:
	.size	icmp_ne_setcc_i64, .Ltmp3-icmp_ne_setcc_i64

	.globl	icmp_ugt_select_i64
	.align	3
	.type	icmp_ugt_select_i64,@function
icmp_ugt_select_i64:                    # @icmp_ugt_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	lnop
	selb	$3, $3, $4, $7
	fsm	$3, $3
	selb	$3, $6, $5, $3
	bi	$lr
.Ltmp4:
	.size	icmp_ugt_select_i64, .Ltmp4-icmp_ugt_select_i64

	.globl	icmp_ugt_setcc_i64
	.align	3
	.type	icmp_ugt_setcc_i64,@function
icmp_ugt_setcc_i64:                     # @icmp_ugt_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	selb	$3, $3, $4, $5
	ilhu	$5, 771
	lnop
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp5:
	.size	icmp_ugt_setcc_i64, .Ltmp5-icmp_ugt_setcc_i64

	.globl	icmp_uge_select_i64
	.align	3
	.type	icmp_uge_select_i64,@function
icmp_uge_select_i64:                    # @icmp_uge_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	clgt	$3, $3, $4
	or	$3, $3, $7
	gb	$3, $3
	cgti	$3, $3, 11
	fsm	$3, $3
	selb	$3, $6, $5, $3
	bi	$lr
.Ltmp6:
	.size	icmp_uge_select_i64, .Ltmp6-icmp_uge_select_i64

	.globl	icmp_uge_setcc_i64
	.align	3
	.type	icmp_uge_setcc_i64,@function
icmp_uge_setcc_i64:                     # @icmp_uge_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	clgt	$3, $3, $4
	or	$3, $3, $5
	gb	$3, $3
	ilhu	$4, 771
	iohl	$4, 771
	cgti	$3, $3, 11
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp7:
	.size	icmp_uge_setcc_i64, .Ltmp7-icmp_uge_setcc_i64

	.globl	icmp_ult_select_i64
	.align	3
	.type	icmp_ult_select_i64,@function
icmp_ult_select_i64:                    # @icmp_ult_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	clgt	$3, $3, $4
	or	$3, $3, $7
	gb	$3, $3
	cgti	$3, $3, 11
	fsm	$3, $3
	selb	$3, $5, $6, $3
	bi	$lr
.Ltmp8:
	.size	icmp_ult_select_i64, .Ltmp8-icmp_ult_select_i64

	.globl	icmp_ult_setcc_i64
	.align	3
	.type	icmp_ult_setcc_i64,@function
icmp_ult_setcc_i64:                     # @icmp_ult_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	clgt	$3, $3, $4
	or	$3, $3, $5
	gb	$3, $3
	ilhu	$4, 771
	iohl	$4, 771
	cgti	$3, $3, 11
	lnop
	xori	$3, $3, -1
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp9:
	.size	icmp_ult_setcc_i64, .Ltmp9-icmp_ult_setcc_i64

	.globl	icmp_ule_select_i64
	.align	3
	.type	icmp_ule_select_i64,@function
icmp_ule_select_i64:                    # @icmp_ule_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	lnop
	selb	$3, $3, $4, $7
	fsm	$3, $3
	selb	$3, $5, $6, $3
	bi	$lr
.Ltmp10:
	.size	icmp_ule_select_i64, .Ltmp10-icmp_ule_select_i64

	.globl	icmp_ule_setcc_i64
	.align	3
	.type	icmp_ule_setcc_i64,@function
icmp_ule_setcc_i64:                     # @icmp_ule_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	selb	$3, $3, $4, $5
	ilhu	$5, 771
	xori	$3, $3, -1
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp11:
	.size	icmp_ule_setcc_i64, .Ltmp11-icmp_ule_setcc_i64

	.globl	icmp_sgt_select_i64
	.align	3
	.type	icmp_sgt_select_i64,@function
icmp_sgt_select_i64:                    # @icmp_sgt_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	lnop
	selb	$3, $3, $4, $7
	fsm	$3, $3
	selb	$3, $6, $5, $3
	bi	$lr
.Ltmp12:
	.size	icmp_sgt_select_i64, .Ltmp12-icmp_sgt_select_i64

	.globl	icmp_sgt_setcc_i64
	.align	3
	.type	icmp_sgt_setcc_i64,@function
icmp_sgt_setcc_i64:                     # @icmp_sgt_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	selb	$3, $3, $4, $5
	ilhu	$5, 771
	lnop
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp13:
	.size	icmp_sgt_setcc_i64, .Ltmp13-icmp_sgt_setcc_i64

	.globl	icmp_sge_select_i64
	.align	3
	.type	icmp_sge_select_i64,@function
icmp_sge_select_i64:                    # @icmp_sge_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	cgt	$3, $3, $4
	or	$3, $3, $7
	gb	$3, $3
	cgti	$3, $3, 11
	fsm	$3, $3
	selb	$3, $6, $5, $3
	bi	$lr
.Ltmp14:
	.size	icmp_sge_select_i64, .Ltmp14-icmp_sge_select_i64

	.globl	icmp_sge_setcc_i64
	.align	3
	.type	icmp_sge_setcc_i64,@function
icmp_sge_setcc_i64:                     # @icmp_sge_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	cgt	$3, $3, $4
	or	$3, $3, $5
	gb	$3, $3
	ilhu	$4, 771
	iohl	$4, 771
	cgti	$3, $3, 11
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp15:
	.size	icmp_sge_setcc_i64, .Ltmp15-icmp_sge_setcc_i64

	.globl	icmp_slt_select_i64
	.align	3
	.type	icmp_slt_select_i64,@function
icmp_slt_select_i64:                    # @icmp_slt_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	cgt	$3, $3, $4
	or	$3, $3, $7
	gb	$3, $3
	cgti	$3, $3, 11
	fsm	$3, $3
	selb	$3, $5, $6, $3
	bi	$lr
.Ltmp16:
	.size	icmp_slt_select_i64, .Ltmp16-icmp_slt_select_i64

	.globl	icmp_slt_setcc_i64
	.align	3
	.type	icmp_slt_setcc_i64,@function
icmp_slt_setcc_i64:                     # @icmp_slt_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	cgt	$3, $3, $4
	or	$3, $3, $5
	gb	$3, $3
	ilhu	$4, 771
	iohl	$4, 771
	cgti	$3, $3, 11
	lnop
	xori	$3, $3, -1
	shufb	$3, $3, $3, $4
	nop
	bi	$lr
.Ltmp17:
	.size	icmp_slt_setcc_i64, .Ltmp17-icmp_slt_setcc_i64

	.globl	icmp_sle_select_i64
	.align	3
	.type	icmp_sle_select_i64,@function
icmp_sle_select_i64:                    # @icmp_sle_select_i64
# BB#0:                                 # %entry
	ceq	$7, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	lnop
	selb	$3, $3, $4, $7
	fsm	$3, $3
	selb	$3, $5, $6, $3
	bi	$lr
.Ltmp18:
	.size	icmp_sle_select_i64, .Ltmp18-icmp_sle_select_i64

	.globl	icmp_sle_setcc_i64
	.align	3
	.type	icmp_sle_setcc_i64,@function
icmp_sle_setcc_i64:                     # @icmp_sle_setcc_i64
# BB#0:                                 # %entry
	ceq	$5, $3, $4
	clgt	$3, $3, $4
	xswd	$4, $3
	selb	$3, $3, $4, $5
	ilhu	$5, 771
	xori	$3, $3, -1
	iohl	$5, 771
	shufb	$3, $3, $3, $5
	nop
	bi	$lr
.Ltmp19:
	.size	icmp_sle_setcc_i64, .Ltmp19-icmp_sle_setcc_i64


