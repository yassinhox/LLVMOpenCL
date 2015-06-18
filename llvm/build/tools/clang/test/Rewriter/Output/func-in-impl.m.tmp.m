# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/func-in-impl.m"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/func-in-impl.m" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 157 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/func-in-impl.m" 2



@interface I {
  id _delegate;
}
-(void)foo;
@end

@implementation I

static void KKKK(int w);

-(void) foo {
  KKKK(0);
}

static void KKKK(int w) {
  I *self = (I *)0;
  if ([self->_delegate respondsToSelector:@selector(handlePortMessage:)]) {
  }
}

-(void) foo2 {
  KKKK(0);
}

@end
