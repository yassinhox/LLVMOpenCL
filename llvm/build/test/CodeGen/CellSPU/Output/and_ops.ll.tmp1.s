	.file	"<stdin>"
	.text
	.globl	and_v4i32_1
	.align	3
	.type	and_v4i32_1,@function
and_v4i32_1:                            # @and_v4i32_1
# BB#0:
	and	$3, $3, $4
	bi	$lr
.Ltmp0:
	.size	and_v4i32_1, .Ltmp0-and_v4i32_1

	.globl	and_v4i32_2
	.align	3
	.type	and_v4i32_2,@function
and_v4i32_2:                            # @and_v4i32_2
# BB#0:
	and	$3, $4, $3
	bi	$lr
.Ltmp1:
	.size	and_v4i32_2, .Ltmp1-and_v4i32_2

	.globl	and_v8i16_1
	.align	3
	.type	and_v8i16_1,@function
and_v8i16_1:                            # @and_v8i16_1
# BB#0:
	and	$3, $3, $4
	bi	$lr
.Ltmp2:
	.size	and_v8i16_1, .Ltmp2-and_v8i16_1

	.globl	and_v8i16_2
	.align	3
	.type	and_v8i16_2,@function
and_v8i16_2:                            # @and_v8i16_2
# BB#0:
	and	$3, $4, $3
	bi	$lr
.Ltmp3:
	.size	and_v8i16_2, .Ltmp3-and_v8i16_2

	.globl	and_v16i8_1
	.align	3
	.type	and_v16i8_1,@function
and_v16i8_1:                            # @and_v16i8_1
# BB#0:
	and	$3, $4, $3
	bi	$lr
.Ltmp4:
	.size	and_v16i8_1, .Ltmp4-and_v16i8_1

	.globl	and_v16i8_2
	.align	3
	.type	and_v16i8_2,@function
and_v16i8_2:                            # @and_v16i8_2
# BB#0:
	and	$3, $3, $4
	bi	$lr
.Ltmp5:
	.size	and_v16i8_2, .Ltmp5-and_v16i8_2

	.globl	and_i32_1
	.align	3
	.type	and_i32_1,@function
and_i32_1:                              # @and_i32_1
# BB#0:
	and	$3, $4, $3
	bi	$lr
.Ltmp6:
	.size	and_i32_1, .Ltmp6-and_i32_1

	.globl	and_i32_2
	.align	3
	.type	and_i32_2,@function
and_i32_2:                              # @and_i32_2
# BB#0:
	and	$3, $3, $4
	bi	$lr
.Ltmp7:
	.size	and_i32_2, .Ltmp7-and_i32_2

	.globl	and_i16_1
	.align	3
	.type	and_i16_1,@function
and_i16_1:                              # @and_i16_1
# BB#0:
	and	$3, $4, $3
	bi	$lr
.Ltmp8:
	.size	and_i16_1, .Ltmp8-and_i16_1

	.globl	and_i16_2
	.align	3
	.type	and_i16_2,@function
and_i16_2:                              # @and_i16_2
# BB#0:
	and	$3, $3, $4
	bi	$lr
.Ltmp9:
	.size	and_i16_2, .Ltmp9-and_i16_2

	.globl	and_i8_1
	.align	3
	.type	and_i8_1,@function
and_i8_1:                               # @and_i8_1
# BB#0:
	and	$3, $4, $3
	bi	$lr
.Ltmp10:
	.size	and_i8_1, .Ltmp10-and_i8_1

	.globl	and_i8_2
	.align	3
	.type	and_i8_2,@function
and_i8_2:                               # @and_i8_2
# BB#0:
	and	$3, $3, $4
	bi	$lr
.Ltmp11:
	.size	and_i8_2, .Ltmp11-and_i8_2

	.globl	andc_v4i32_1
	.align	3
	.type	andc_v4i32_1,@function
andc_v4i32_1:                           # @andc_v4i32_1
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp12:
	.size	andc_v4i32_1, .Ltmp12-andc_v4i32_1

	.globl	andc_v4i32_2
	.align	3
	.type	andc_v4i32_2,@function
andc_v4i32_2:                           # @andc_v4i32_2
# BB#0:
	andc	$3, $4, $3
	bi	$lr
.Ltmp13:
	.size	andc_v4i32_2, .Ltmp13-andc_v4i32_2

	.globl	andc_v4i32_3
	.align	3
	.type	andc_v4i32_3,@function
andc_v4i32_3:                           # @andc_v4i32_3
# BB#0:
	andc	$3, $4, $3
	bi	$lr
.Ltmp14:
	.size	andc_v4i32_3, .Ltmp14-andc_v4i32_3

	.globl	andc_v8i16_1
	.align	3
	.type	andc_v8i16_1,@function
andc_v8i16_1:                           # @andc_v8i16_1
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp15:
	.size	andc_v8i16_1, .Ltmp15-andc_v8i16_1

	.globl	andc_v8i16_2
	.align	3
	.type	andc_v8i16_2,@function
andc_v8i16_2:                           # @andc_v8i16_2
# BB#0:
	andc	$3, $4, $3
	bi	$lr
.Ltmp16:
	.size	andc_v8i16_2, .Ltmp16-andc_v8i16_2

	.globl	andc_v16i8_1
	.align	3
	.type	andc_v16i8_1,@function
andc_v16i8_1:                           # @andc_v16i8_1
# BB#0:
	ilh	$5, -1
	xor	$3, $3, $5
	and	$3, $4, $3
	bi	$lr
.Ltmp17:
	.size	andc_v16i8_1, .Ltmp17-andc_v16i8_1

	.globl	andc_v16i8_2
	.align	3
	.type	andc_v16i8_2,@function
andc_v16i8_2:                           # @andc_v16i8_2
# BB#0:
	ilh	$5, -1
	xor	$4, $4, $5
	and	$3, $3, $4
	bi	$lr
.Ltmp18:
	.size	andc_v16i8_2, .Ltmp18-andc_v16i8_2

	.globl	andc_v16i8_3
	.align	3
	.type	andc_v16i8_3,@function
andc_v16i8_3:                           # @andc_v16i8_3
# BB#0:
	ilh	$5, -1
	xor	$4, $4, $5
	and	$3, $4, $3
	bi	$lr
.Ltmp19:
	.size	andc_v16i8_3, .Ltmp19-andc_v16i8_3

	.globl	andc_i32_1
	.align	3
	.type	andc_i32_1,@function
andc_i32_1:                             # @andc_i32_1
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp20:
	.size	andc_i32_1, .Ltmp20-andc_i32_1

	.globl	andc_i32_2
	.align	3
	.type	andc_i32_2,@function
andc_i32_2:                             # @andc_i32_2
# BB#0:
	andc	$3, $4, $3
	bi	$lr
.Ltmp21:
	.size	andc_i32_2, .Ltmp21-andc_i32_2

	.globl	andc_i32_3
	.align	3
	.type	andc_i32_3,@function
andc_i32_3:                             # @andc_i32_3
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp22:
	.size	andc_i32_3, .Ltmp22-andc_i32_3

	.globl	andc_i16_1
	.align	3
	.type	andc_i16_1,@function
andc_i16_1:                             # @andc_i16_1
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp23:
	.size	andc_i16_1, .Ltmp23-andc_i16_1

	.globl	andc_i16_2
	.align	3
	.type	andc_i16_2,@function
andc_i16_2:                             # @andc_i16_2
# BB#0:
	andc	$3, $4, $3
	bi	$lr
.Ltmp24:
	.size	andc_i16_2, .Ltmp24-andc_i16_2

	.globl	andc_i16_3
	.align	3
	.type	andc_i16_3,@function
andc_i16_3:                             # @andc_i16_3
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp25:
	.size	andc_i16_3, .Ltmp25-andc_i16_3

	.globl	andc_i8_1
	.align	3
	.type	andc_i8_1,@function
andc_i8_1:                              # @andc_i8_1
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp26:
	.size	andc_i8_1, .Ltmp26-andc_i8_1

	.globl	andc_i8_2
	.align	3
	.type	andc_i8_2,@function
andc_i8_2:                              # @andc_i8_2
# BB#0:
	andc	$3, $4, $3
	bi	$lr
.Ltmp27:
	.size	andc_i8_2, .Ltmp27-andc_i8_2

	.globl	andc_i8_3
	.align	3
	.type	andc_i8_3,@function
andc_i8_3:                              # @andc_i8_3
# BB#0:
	andc	$3, $3, $4
	bi	$lr
.Ltmp28:
	.size	andc_i8_3, .Ltmp28-andc_i8_3

	.globl	andi_v4i32_1
	.align	3
	.type	andi_v4i32_1,@function
andi_v4i32_1:                           # @andi_v4i32_1
# BB#0:
	andi	$3, $3, 511
	bi	$lr
.Ltmp29:
	.size	andi_v4i32_1, .Ltmp29-andi_v4i32_1

	.globl	andi_v4i32_2
	.align	3
	.type	andi_v4i32_2,@function
andi_v4i32_2:                           # @andi_v4i32_2
# BB#0:
	andi	$3, $3, 510
	bi	$lr
.Ltmp30:
	.size	andi_v4i32_2, .Ltmp30-andi_v4i32_2

	.globl	andi_v4i32_3
	.align	3
	.type	andi_v4i32_3,@function
andi_v4i32_3:                           # @andi_v4i32_3
# BB#0:
	andi	$3, $3, -1
	bi	$lr
.Ltmp31:
	.size	andi_v4i32_3, .Ltmp31-andi_v4i32_3

	.globl	andi_v4i32_4
	.align	3
	.type	andi_v4i32_4,@function
andi_v4i32_4:                           # @andi_v4i32_4
# BB#0:
	andi	$3, $3, -512
	bi	$lr
.Ltmp32:
	.size	andi_v4i32_4, .Ltmp32-andi_v4i32_4

	.globl	andi_u32
	.align	3
	.type	andi_u32,@function
andi_u32:                               # @andi_u32
# BB#0:
	andi	$3, $3, 37
	bi	$lr
.Ltmp33:
	.size	andi_u32, .Ltmp33-andi_u32

	.globl	andi_i32
	.align	3
	.type	andi_i32,@function
andi_i32:                               # @andi_i32
# BB#0:
	andi	$3, $3, 37
	bi	$lr
.Ltmp34:
	.size	andi_i32, .Ltmp34-andi_i32

	.globl	andi_i32_1
	.align	3
	.type	andi_i32_1,@function
andi_i32_1:                             # @andi_i32_1
# BB#0:
	andi	$3, $3, 37
	bi	$lr
.Ltmp35:
	.size	andi_i32_1, .Ltmp35-andi_i32_1

	.globl	andhi_v8i16_1
	.align	3
	.type	andhi_v8i16_1,@function
andhi_v8i16_1:                          # @andhi_v8i16_1
# BB#0:
	andhi	$3, $3, 511
	bi	$lr
.Ltmp36:
	.size	andhi_v8i16_1, .Ltmp36-andhi_v8i16_1

	.globl	andhi_v8i16_2
	.align	3
	.type	andhi_v8i16_2,@function
andhi_v8i16_2:                          # @andhi_v8i16_2
# BB#0:
	andhi	$3, $3, 510
	bi	$lr
.Ltmp37:
	.size	andhi_v8i16_2, .Ltmp37-andhi_v8i16_2

	.globl	andhi_v8i16_3
	.align	3
	.type	andhi_v8i16_3,@function
andhi_v8i16_3:                          # @andhi_v8i16_3
# BB#0:
	andhi	$3, $3, -1
	bi	$lr
.Ltmp38:
	.size	andhi_v8i16_3, .Ltmp38-andhi_v8i16_3

	.globl	andhi_v8i16_4
	.align	3
	.type	andhi_v8i16_4,@function
andhi_v8i16_4:                          # @andhi_v8i16_4
# BB#0:
	andhi	$3, $3, -512
	bi	$lr
.Ltmp39:
	.size	andhi_v8i16_4, .Ltmp39-andhi_v8i16_4

	.globl	andhi_u16
	.align	3
	.type	andhi_u16,@function
andhi_u16:                              # @andhi_u16
# BB#0:
	andhi	$3, $3, 37
	ila	$4, 65535
	and	$3, $3, $4
	bi	$lr
.Ltmp40:
	.size	andhi_u16, .Ltmp40-andhi_u16

	.globl	andhi_i16
	.align	3
	.type	andhi_i16,@function
andhi_i16:                              # @andhi_i16
# BB#0:
	andhi	$3, $3, 37
	ila	$4, 65535
	and	$3, $3, $4
	bi	$lr
.Ltmp41:
	.size	andhi_i16, .Ltmp41-andhi_i16

	.globl	and_v16i8
	.align	3
	.type	and_v16i8,@function
and_v16i8:                              # @and_v16i8
# BB#0:
	ilh	$4, 10794
	lnop
	and	$3, $3, $4
	bi	$lr
.Ltmp42:
	.size	and_v16i8, .Ltmp42-and_v16i8

	.globl	and_u8
	.align	3
	.type	and_u8,@function
and_u8:                                 # @and_u8
# BB#0:
	andbi	$3, $3, 37
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp43:
	.size	and_u8, .Ltmp43-and_u8

	.globl	and_sext8
	.align	3
	.type	and_sext8,@function
and_sext8:                              # @and_sext8
# BB#0:
	andbi	$3, $3, 37
	lnop
	andi	$3, $3, 255
	bi	$lr
.Ltmp44:
	.size	and_sext8, .Ltmp44-and_sext8

	.globl	and_i8
	.align	3
	.type	and_i8,@function
and_i8:                                 # @and_i8
# BB#0:
	andbi	$3, $3, -51
	bi	$lr
.Ltmp45:
	.size	and_i8, .Ltmp45-and_i8


