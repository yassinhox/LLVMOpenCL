; ModuleID = '<stdin>'

define void @invoke(i32 (i32)* %x) {
  %foo = call i32 %x(i32 123)
  ret void
}

define i32 @main(i32 %argc, i8** %argv, i8** %envp) {
  %retval = call i32 @test(i32 %argc)
  %two = add i32 %retval, %retval
  %retval2 = call i32 @test(i32 %argc)
  %two2 = add i32 %two, %retval2
  call void @invoke(i32 (i32)* @test)
  ret i32 %two2
}

define i32 @test(i32 %i0) {
  ret i32 %i0
}
