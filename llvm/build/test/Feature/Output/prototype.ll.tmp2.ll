; ModuleID = '<stdin>'

declare i32 @bar(i32)

define i32 @foo(i32 %blah) {
  %xx = call i32 @bar(i32 %blah)
  ret i32 %xx
}
