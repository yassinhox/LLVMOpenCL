; ModuleID = '<stdin>'

@foo1 = external global <4 x float>
@foo2 = external global <2 x i32>

define void @main() {
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float>* @foo1
  store <2 x i32> <i32 4, i32 4>, <2 x i32>* @foo2
  %l1 = load <4 x float>* @foo1
  %l2 = load <2 x i32>* @foo2
  ret void
}
