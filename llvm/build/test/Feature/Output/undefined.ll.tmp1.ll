; ModuleID = '<stdin>'

@X = global i32 undef

declare i32 @atoi(i8*)

define i32 @test() {
  ret i32 undef
}

define i32 @test2() {
  %X = add i32 undef, 1
  ret i32 %X
}
