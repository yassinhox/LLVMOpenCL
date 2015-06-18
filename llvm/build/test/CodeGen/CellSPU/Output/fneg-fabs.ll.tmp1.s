	.file	"<stdin>"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI0_0:
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
	.text
	.globl	fneg_dp
	.align	3
	.type	fneg_dp,@function
fneg_dp:                                # @fneg_dp
# BB#0:
	nop
	lqa	$4, .LCPI0_0
	xor	$3, $3, $4
	bi	$lr
.Ltmp0:
	.size	fneg_dp, .Ltmp0-fneg_dp

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI1_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	fneg_dp_vec
	.align	3
	.type	fneg_dp_vec,@function
fneg_dp_vec:                            # @fneg_dp_vec
# BB#0:
	nop
	lqa	$4, .LCPI1_0
	xor	$3, $3, $4
	bi	$lr
.Ltmp1:
	.size	fneg_dp_vec, .Ltmp1-fneg_dp_vec

	.globl	fneg_sp
	.align	3
	.type	fneg_sp,@function
fneg_sp:                                # @fneg_sp
# BB#0:
	ilhu	$4, 32768
	lnop
	xor	$3, $3, $4
	bi	$lr
.Ltmp2:
	.size	fneg_sp, .Ltmp2-fneg_sp

	.globl	fneg_sp_vec
	.align	3
	.type	fneg_sp_vec,@function
fneg_sp_vec:                            # @fneg_sp_vec
# BB#0:
	ilhu	$4, 32768
	lnop
	xor	$3, $3, $4
	bi	$lr
.Ltmp3:
	.size	fneg_sp_vec, .Ltmp3-fneg_sp_vec

	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI4_0:
	.long	66051                   # 0x10203
	.long	3233857728              # 0xc0c0c0c0
	.long	134810123               # 0x8090a0b
	.long	3233857728              # 0xc0c0c0c0
	.text
	.globl	fabs_dp
	.align	3
	.type	fabs_dp,@function
fabs_dp:                                # @fabs_dp
# BB#0:
	nop
	lqa	$5, .LCPI4_0
	ilhu	$4, 32767
	lnop
	iohl	$4, 65535
	shufb	$4, $4, $4, $5
	and	$3, $3, $4
	bi	$lr
.Ltmp4:
	.size	fabs_dp, .Ltmp4-fabs_dp

	.globl	fabs_sp
	.align	3
	.type	fabs_sp,@function
fabs_sp:                                # @fabs_sp
# BB#0:
	ilhu	$4, 32767
	iohl	$4, 65535
	and	$3, $3, $4
	bi	$lr
.Ltmp5:
	.size	fabs_sp, .Ltmp5-fabs_sp


