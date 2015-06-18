	.file	"<stdin>"
	.text
	.globl	equiv_v4i32_1
	.align	3
	.type	equiv_v4i32_1,@function
equiv_v4i32_1:                          # @equiv_v4i32_1
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp0:
	.size	equiv_v4i32_1, .Ltmp0-equiv_v4i32_1

	.globl	equiv_v4i32_2
	.align	3
	.type	equiv_v4i32_2,@function
equiv_v4i32_2:                          # @equiv_v4i32_2
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp1:
	.size	equiv_v4i32_2, .Ltmp1-equiv_v4i32_2

	.globl	equiv_v4i32_3
	.align	3
	.type	equiv_v4i32_3,@function
equiv_v4i32_3:                          # @equiv_v4i32_3
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp2:
	.size	equiv_v4i32_3, .Ltmp2-equiv_v4i32_3

	.globl	equiv_v4i32_4
	.align	3
	.type	equiv_v4i32_4,@function
equiv_v4i32_4:                          # @equiv_v4i32_4
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp3:
	.size	equiv_v4i32_4, .Ltmp3-equiv_v4i32_4

	.globl	equiv_i32_1
	.align	3
	.type	equiv_i32_1,@function
equiv_i32_1:                            # @equiv_i32_1
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp4:
	.size	equiv_i32_1, .Ltmp4-equiv_i32_1

	.globl	equiv_i32_2
	.align	3
	.type	equiv_i32_2,@function
equiv_i32_2:                            # @equiv_i32_2
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp5:
	.size	equiv_i32_2, .Ltmp5-equiv_i32_2

	.globl	equiv_i32_3
	.align	3
	.type	equiv_i32_3,@function
equiv_i32_3:                            # @equiv_i32_3
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp6:
	.size	equiv_i32_3, .Ltmp6-equiv_i32_3

	.globl	equiv_i32_4
	.align	3
	.type	equiv_i32_4,@function
equiv_i32_4:                            # @equiv_i32_4
# BB#0:
	eqv	$3, $4, $3
	bi	$lr
.Ltmp7:
	.size	equiv_i32_4, .Ltmp7-equiv_i32_4

	.globl	equiv_i32_5
	.align	3
	.type	equiv_i32_5,@function
equiv_i32_5:                            # @equiv_i32_5
# BB#0:
	eqv	$3, $3, $4
	bi	$lr
.Ltmp8:
	.size	equiv_i32_5, .Ltmp8-equiv_i32_5

	.globl	equiv_i16_1
	.align	3
	.type	equiv_i16_1,@function
equiv_i16_1:                            # @equiv_i16_1
# BB#0:
	eqv	$3, $3, $4
	lnop
	xshw	$3, $3
	bi	$lr
.Ltmp9:
	.size	equiv_i16_1, .Ltmp9-equiv_i16_1

	.globl	equiv_i16_2
	.align	3
	.type	equiv_i16_2,@function
equiv_i16_2:                            # @equiv_i16_2
# BB#0:
	eqv	$3, $3, $4
	lnop
	xshw	$3, $3
	bi	$lr
.Ltmp10:
	.size	equiv_i16_2, .Ltmp10-equiv_i16_2

	.globl	equiv_i16_3
	.align	3
	.type	equiv_i16_3,@function
equiv_i16_3:                            # @equiv_i16_3
# BB#0:
	eqv	$3, $3, $4
	lnop
	xshw	$3, $3
	bi	$lr
.Ltmp11:
	.size	equiv_i16_3, .Ltmp11-equiv_i16_3

	.globl	equiv_i8_1
	.align	3
	.type	equiv_i8_1,@function
equiv_i8_1:                             # @equiv_i8_1
# BB#0:
	eqv	$3, $3, $4
	xsbh	$3, $3
	xshw	$3, $3
	bi	$lr
.Ltmp12:
	.size	equiv_i8_1, .Ltmp12-equiv_i8_1

	.globl	equiv_i8_2
	.align	3
	.type	equiv_i8_2,@function
equiv_i8_2:                             # @equiv_i8_2
# BB#0:
	eqv	$3, $3, $4
	xsbh	$3, $3
	xshw	$3, $3
	bi	$lr
.Ltmp13:
	.size	equiv_i8_2, .Ltmp13-equiv_i8_2

	.globl	equiv_i8_3
	.align	3
	.type	equiv_i8_3,@function
equiv_i8_3:                             # @equiv_i8_3
# BB#0:
	eqv	$3, $3, $4
	xsbh	$3, $3
	xshw	$3, $3
	bi	$lr
.Ltmp14:
	.size	equiv_i8_3, .Ltmp14-equiv_i8_3

	.globl	equiv_u8_1
	.align	3
	.type	equiv_u8_1,@function
equiv_u8_1:                             # @equiv_u8_1
# BB#0:
	eqv	$3, $3, $4
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp15:
	.size	equiv_u8_1, .Ltmp15-equiv_u8_1

	.globl	equiv_u8_2
	.align	3
	.type	equiv_u8_2,@function
equiv_u8_2:                             # @equiv_u8_2
# BB#0:
	eqv	$3, $3, $4
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp16:
	.size	equiv_u8_2, .Ltmp16-equiv_u8_2

	.globl	equiv_u8_3
	.align	3
	.type	equiv_u8_3,@function
equiv_u8_3:                             # @equiv_u8_3
# BB#0:
	eqv	$3, $3, $4
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp17:
	.size	equiv_u8_3, .Ltmp17-equiv_u8_3


