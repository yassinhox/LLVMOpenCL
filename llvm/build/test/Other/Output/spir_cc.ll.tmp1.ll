; ModuleID = '<stdin>'

define cc75 void @foo() {
  ret void
}

define cc76 void @bar() {
  call cc75 void @foo()
  call cc76 void @bar()
  ret void
}
