	.file	"<stdin>"
	.text
	.globl	nand_v4i32_1
	.align	3
	.type	nand_v4i32_1,@function
nand_v4i32_1:                           # @nand_v4i32_1
# BB#0:
	nand	$3, $4, $3
	bi	$lr
.Ltmp0:
	.size	nand_v4i32_1, .Ltmp0-nand_v4i32_1

	.globl	nand_v4i32_2
	.align	3
	.type	nand_v4i32_2,@function
nand_v4i32_2:                           # @nand_v4i32_2
# BB#0:
	nand	$3, $3, $4
	bi	$lr
.Ltmp1:
	.size	nand_v4i32_2, .Ltmp1-nand_v4i32_2

	.globl	nand_v8i16_1
	.align	3
	.type	nand_v8i16_1,@function
nand_v8i16_1:                           # @nand_v8i16_1
# BB#0:
	nand	$3, $4, $3
	bi	$lr
.Ltmp2:
	.size	nand_v8i16_1, .Ltmp2-nand_v8i16_1

	.globl	nand_v8i16_2
	.align	3
	.type	nand_v8i16_2,@function
nand_v8i16_2:                           # @nand_v8i16_2
# BB#0:
	nand	$3, $3, $4
	bi	$lr
.Ltmp3:
	.size	nand_v8i16_2, .Ltmp3-nand_v8i16_2

	.globl	nand_v16i8_1
	.align	3
	.type	nand_v16i8_1,@function
nand_v16i8_1:                           # @nand_v16i8_1
# BB#0:
	and	$3, $4, $3
	ilh	$5, -1
	xor	$3, $3, $5
	bi	$lr
.Ltmp4:
	.size	nand_v16i8_1, .Ltmp4-nand_v16i8_1

	.globl	nand_v16i8_2
	.align	3
	.type	nand_v16i8_2,@function
nand_v16i8_2:                           # @nand_v16i8_2
# BB#0:
	and	$3, $3, $4
	ilh	$5, -1
	xor	$3, $3, $5
	bi	$lr
.Ltmp5:
	.size	nand_v16i8_2, .Ltmp5-nand_v16i8_2

	.globl	nand_i32_1
	.align	3
	.type	nand_i32_1,@function
nand_i32_1:                             # @nand_i32_1
# BB#0:
	nand	$3, $4, $3
	bi	$lr
.Ltmp6:
	.size	nand_i32_1, .Ltmp6-nand_i32_1

	.globl	nand_i32_2
	.align	3
	.type	nand_i32_2,@function
nand_i32_2:                             # @nand_i32_2
# BB#0:
	nand	$3, $3, $4
	bi	$lr
.Ltmp7:
	.size	nand_i32_2, .Ltmp7-nand_i32_2

	.globl	nand_i16_1
	.align	3
	.type	nand_i16_1,@function
nand_i16_1:                             # @nand_i16_1
# BB#0:
	nand	$3, $4, $3
	lnop
	xshw	$3, $3
	bi	$lr
.Ltmp8:
	.size	nand_i16_1, .Ltmp8-nand_i16_1

	.globl	nand_i16_2
	.align	3
	.type	nand_i16_2,@function
nand_i16_2:                             # @nand_i16_2
# BB#0:
	nand	$3, $3, $4
	lnop
	xshw	$3, $3
	bi	$lr
.Ltmp9:
	.size	nand_i16_2, .Ltmp9-nand_i16_2

	.globl	nand_i16u_1
	.align	3
	.type	nand_i16u_1,@function
nand_i16u_1:                            # @nand_i16u_1
# BB#0:
	nand	$3, $4, $3
	ila	$4, 65535
	and	$3, $3, $4
	bi	$lr
.Ltmp10:
	.size	nand_i16u_1, .Ltmp10-nand_i16u_1

	.globl	nand_i16u_2
	.align	3
	.type	nand_i16u_2,@function
nand_i16u_2:                            # @nand_i16u_2
# BB#0:
	nand	$3, $3, $4
	ila	$4, 65535
	and	$3, $3, $4
	bi	$lr
.Ltmp11:
	.size	nand_i16u_2, .Ltmp11-nand_i16u_2

	.globl	nand_i8u_1
	.align	3
	.type	nand_i8u_1,@function
nand_i8u_1:                             # @nand_i8u_1
# BB#0:
	nand	$3, $4, $3
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp12:
	.size	nand_i8u_1, .Ltmp12-nand_i8u_1

	.globl	nand_i8u_2
	.align	3
	.type	nand_i8u_2,@function
nand_i8u_2:                             # @nand_i8u_2
# BB#0:
	nand	$3, $3, $4
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp13:
	.size	nand_i8u_2, .Ltmp13-nand_i8u_2

	.globl	nand_i8_1
	.align	3
	.type	nand_i8_1,@function
nand_i8_1:                              # @nand_i8_1
# BB#0:
	nand	$3, $4, $3
	xsbh	$3, $3
	xshw	$3, $3
	bi	$lr
.Ltmp14:
	.size	nand_i8_1, .Ltmp14-nand_i8_1

	.globl	nand_i8_2
	.align	3
	.type	nand_i8_2,@function
nand_i8_2:                              # @nand_i8_2
# BB#0:
	nand	$3, $3, $4
	xsbh	$3, $3
	xshw	$3, $3
	bi	$lr
.Ltmp15:
	.size	nand_i8_2, .Ltmp15-nand_i8_2

	.globl	nand_i8_3
	.align	3
	.type	nand_i8_3,@function
nand_i8_3:                              # @nand_i8_3
# BB#0:
	nand	$3, $4, $3
	bi	$lr
.Ltmp16:
	.size	nand_i8_3, .Ltmp16-nand_i8_3

	.globl	nand_i8_4
	.align	3
	.type	nand_i8_4,@function
nand_i8_4:                              # @nand_i8_4
# BB#0:
	nand	$3, $3, $4
	bi	$lr
.Ltmp17:
	.size	nand_i8_4, .Ltmp17-nand_i8_4


