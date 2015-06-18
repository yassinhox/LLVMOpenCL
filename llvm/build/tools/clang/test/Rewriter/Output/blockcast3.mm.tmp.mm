# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/blockcast3.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/blockcast3.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/blockcast3.mm" 2







typedef struct {
 int a;
 int b;
} mystruct;

void g(int (^block)(mystruct s)) {
 mystruct x;
 int v = block(x);
}

void f(const void **arg) {
 __block const void **q = arg;
 g(^(mystruct s){
  *q++ = (void*)s.a;
  return 314;
  });
}
