; ModuleID = '<stdin>'

declare i32 @printf(i8*, ...)

define i32 @testvarar() {
  %1 = call i32 (i8*, ...)* @printf(i8* null, i32 12, i8 42)
  ret i32 %1
}
