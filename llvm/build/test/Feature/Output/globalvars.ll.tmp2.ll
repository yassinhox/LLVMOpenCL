; ModuleID = '<stdin>'

@MyVar = external global i32
@MyIntList = external global { i32*, i32 }
@0 = external global i32
@AConst = constant i32 123
@AString = constant [4 x i8] c"test"
@ZeroInit = global { [100 x i32], [40 x float] } zeroinitializer

define i32 @foo(i32 %blah) {
  store i32 5, i32* @MyVar
  %idx = getelementptr { i32*, i32 }* @MyIntList, i64 0, i32 1
  store i32 12, i32* %idx
  ret i32 %blah
}
