; ModuleID = '<stdin>'

declare void @bar()

define i32 @foo() {
  unreachable
}

define double @xyz() {
  call void @bar()
  unreachable
}
