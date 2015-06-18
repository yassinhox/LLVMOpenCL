	.file	"<stdin>"
	.text
	.globl	test
	.align	3
	.type	test,@function
test:                                   # @test
# BB#0:
	shli	$3, $3, 3
	bi	$lr
.Ltmp0:
	.size	test, .Ltmp0-test

	.globl	fatest
	.align	3
	.type	fatest,@function
fatest:                                 # @fatest
# BB#0:
	fa	 $3, $3, $4
	bi	$lr
.Ltmp1:
	.size	fatest, .Ltmp1-fatest

	.globl	fstest
	.align	3
	.type	fstest,@function
fstest:                                 # @fstest
# BB#0:
	fs	 $3, $3, $4
	bi	$lr
.Ltmp2:
	.size	fstest, .Ltmp2-fstest

	.globl	fmtest
	.align	3
	.type	fmtest,@function
fmtest:                                 # @fmtest
# BB#0:
	fm	 $3, $3, $4
	bi	$lr
.Ltmp3:
	.size	fmtest, .Ltmp3-fmtest

	.globl	fceqtest
	.align	3
	.type	fceqtest,@function
fceqtest:                               # @fceqtest
# BB#0:
	fceq	 $3, $3, $4
	bi	$lr
.Ltmp4:
	.size	fceqtest, .Ltmp4-fceqtest

	.globl	fcmeqtest
	.align	3
	.type	fcmeqtest,@function
fcmeqtest:                              # @fcmeqtest
# BB#0:
	fcmeq	 $3, $3, $4
	bi	$lr
.Ltmp5:
	.size	fcmeqtest, .Ltmp5-fcmeqtest

	.globl	fcgttest
	.align	3
	.type	fcgttest,@function
fcgttest:                               # @fcgttest
# BB#0:
	fcgt	 $3, $3, $4
	bi	$lr
.Ltmp6:
	.size	fcgttest, .Ltmp6-fcgttest

	.globl	fcmgttest
	.align	3
	.type	fcmgttest,@function
fcmgttest:                              # @fcmgttest
# BB#0:
	fcmgt	 $3, $3, $4
	bi	$lr
.Ltmp7:
	.size	fcmgttest, .Ltmp7-fcmgttest

	.globl	fmatest
	.align	3
	.type	fmatest,@function
fmatest:                                # @fmatest
# BB#0:
	fma	 $3, $3, $4, $5
	bi	$lr
.Ltmp8:
	.size	fmatest, .Ltmp8-fmatest

	.globl	fnmstest
	.align	3
	.type	fnmstest,@function
fnmstest:                               # @fnmstest
# BB#0:
	fnms	 $3, $3, $4, $5
	bi	$lr
.Ltmp9:
	.size	fnmstest, .Ltmp9-fnmstest

	.globl	fmstest
	.align	3
	.type	fmstest,@function
fmstest:                                # @fmstest
# BB#0:
	fms	 $3, $3, $4, $5
	bi	$lr
.Ltmp10:
	.size	fmstest, .Ltmp10-fmstest


