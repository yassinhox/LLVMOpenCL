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

	.globl	ceqtest
	.align	3
	.type	ceqtest,@function
ceqtest:                                # @ceqtest
# BB#0:
	ceq	 $3, $3, $4
	bi	$lr
.Ltmp1:
	.size	ceqtest, .Ltmp1-ceqtest

	.globl	ceqhtest
	.align	3
	.type	ceqhtest,@function
ceqhtest:                               # @ceqhtest
# BB#0:
	ceqh	 $3, $3, $4
	bi	$lr
.Ltmp2:
	.size	ceqhtest, .Ltmp2-ceqhtest

	.globl	ceqbtest
	.align	3
	.type	ceqbtest,@function
ceqbtest:                               # @ceqbtest
# BB#0:
	ceqb	 $3, $3, $4
	bi	$lr
.Ltmp3:
	.size	ceqbtest, .Ltmp3-ceqbtest

	.globl	ceqitest
	.align	3
	.type	ceqitest,@function
ceqitest:                               # @ceqitest
# BB#0:
	ceqi	 $3, $3, 65
	bi	$lr
.Ltmp4:
	.size	ceqitest, .Ltmp4-ceqitest

	.globl	ceqhitest
	.align	3
	.type	ceqhitest,@function
ceqhitest:                              # @ceqhitest
# BB#0:
	ceqhi	 $3, $3, 65
	bi	$lr
.Ltmp5:
	.size	ceqhitest, .Ltmp5-ceqhitest

	.globl	ceqbitest
	.align	3
	.type	ceqbitest,@function
ceqbitest:                              # @ceqbitest
# BB#0:
	ceqbi	 $3, $3, 65
	bi	$lr
.Ltmp6:
	.size	ceqbitest, .Ltmp6-ceqbitest

	.globl	cgttest
	.align	3
	.type	cgttest,@function
cgttest:                                # @cgttest
# BB#0:
	cgt	 $3, $3, $4
	bi	$lr
.Ltmp7:
	.size	cgttest, .Ltmp7-cgttest

	.globl	cgthtest
	.align	3
	.type	cgthtest,@function
cgthtest:                               # @cgthtest
# BB#0:
	cgth	 $3, $3, $4
	bi	$lr
.Ltmp8:
	.size	cgthtest, .Ltmp8-cgthtest

	.globl	cgtbtest
	.align	3
	.type	cgtbtest,@function
cgtbtest:                               # @cgtbtest
# BB#0:
	cgtb	 $3, $3, $4
	bi	$lr
.Ltmp9:
	.size	cgtbtest, .Ltmp9-cgtbtest

	.globl	cgtitest
	.align	3
	.type	cgtitest,@function
cgtitest:                               # @cgtitest
# BB#0:
	cgti	 $3, $3, 65
	bi	$lr
.Ltmp10:
	.size	cgtitest, .Ltmp10-cgtitest

	.globl	cgthitest
	.align	3
	.type	cgthitest,@function
cgthitest:                              # @cgthitest
# BB#0:
	cgthi	 $3, $3, 65
	bi	$lr
.Ltmp11:
	.size	cgthitest, .Ltmp11-cgthitest

	.globl	cgtbitest
	.align	3
	.type	cgtbitest,@function
cgtbitest:                              # @cgtbitest
# BB#0:
	cgtbi	 $3, $3, 65
	bi	$lr
.Ltmp12:
	.size	cgtbitest, .Ltmp12-cgtbitest

	.globl	clgttest
	.align	3
	.type	clgttest,@function
clgttest:                               # @clgttest
# BB#0:
	clgt	 $3, $3, $4
	bi	$lr
.Ltmp13:
	.size	clgttest, .Ltmp13-clgttest

	.globl	clgthtest
	.align	3
	.type	clgthtest,@function
clgthtest:                              # @clgthtest
# BB#0:
	clgth	 $3, $3, $4
	bi	$lr
.Ltmp14:
	.size	clgthtest, .Ltmp14-clgthtest

	.globl	clgtbtest
	.align	3
	.type	clgtbtest,@function
clgtbtest:                              # @clgtbtest
# BB#0:
	clgtb	 $3, $3, $4
	bi	$lr
.Ltmp15:
	.size	clgtbtest, .Ltmp15-clgtbtest

	.globl	clgtitest
	.align	3
	.type	clgtitest,@function
clgtitest:                              # @clgtitest
# BB#0:
	clgti	 $3, $3, 65
	bi	$lr
.Ltmp16:
	.size	clgtitest, .Ltmp16-clgtitest

	.globl	clgthitest
	.align	3
	.type	clgthitest,@function
clgthitest:                             # @clgthitest
# BB#0:
	clgthi	 $3, $3, 65
	bi	$lr
.Ltmp17:
	.size	clgthitest, .Ltmp17-clgthitest

	.globl	clgtbitest
	.align	3
	.type	clgtbitest,@function
clgtbitest:                             # @clgtbitest
# BB#0:
	clgtbi	 $3, $3, 65
	bi	$lr
.Ltmp18:
	.size	clgtbitest, .Ltmp18-clgtbitest


