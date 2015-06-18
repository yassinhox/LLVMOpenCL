; ModuleID = '<stdin>'

declare signext i16 @test(i16 signext)

declare zeroext i8 @test2(i16 zeroext)

declare i32 @test3(i32* noalias)

declare void @exit(i32) noreturn nounwind

define i32 @main(i32 inreg %argc, i8** inreg %argv) nounwind {
  %val = trunc i32 %argc to i16
  %res1 = call signext i16 @test(i16 signext %val)
  %two = add i16 %res1, %res1
  %res2 = call zeroext i8 @test2(i16 zeroext %two)
  %retVal = sext i16 %two to i32
  ret i32 %retVal
}

declare void @function_to_resolve_eagerly() nonlazybind
