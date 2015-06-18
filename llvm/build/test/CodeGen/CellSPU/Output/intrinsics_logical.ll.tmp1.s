	.file	"<stdin>"
	.text
	.globl	andtest
	.align	3
	.type	andtest,@function
andtest:                                # @andtest
# BB#0:
	and	 $3, $3, $4
	bi	$lr
.Ltmp0:
	.size	andtest, .Ltmp0-andtest

	.globl	andctest
	.align	3
	.type	andctest,@function
andctest:                               # @andctest
# BB#0:
	andc	 $3, $3, $4
	bi	$lr
.Ltmp1:
	.size	andctest, .Ltmp1-andctest

	.globl	anditest
	.align	3
	.type	anditest,@function
anditest:                               # @anditest
# BB#0:
	andi	 $3, $3, 65
	bi	$lr
.Ltmp2:
	.size	anditest, .Ltmp2-anditest

	.globl	andhitest
	.align	3
	.type	andhitest,@function
andhitest:                              # @andhitest
# BB#0:
	andhi	 $3, $3, 65
	bi	$lr
.Ltmp3:
	.size	andhitest, .Ltmp3-andhitest


