# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-bool-literal-check-modern.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-bool-literal-check-modern.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-bool-literal-check-modern.mm" 2




typedef bool BOOL;

BOOL yes() {
  return __objc_yes;
}

BOOL no() {
  return __objc_no;
}

BOOL which (int flag) {
  return flag ? yes() : no();
}

int main() {
  which (__objc_yes);
  which (__objc_no);
  return __objc_yes;
}
