# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-atautoreleasepool.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-atautoreleasepool.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-atautoreleasepool.mm" 2






extern "C"
void *sel_registerName(const char *);

@interface I
{
  id ivar;
}
- (id) Meth;
+ (id) MyAlloc;;
@end

@implementation I
- (id) Meth {
   @autoreleasepool {
      id p = [I MyAlloc];
      if (!p)
        return ivar;
   }
  return 0;
}
+ (id) MyAlloc {
    return 0;
}
@end
