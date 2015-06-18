# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/unnamed-bf-modern-write.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/unnamed-bf-modern-write.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/unnamed-bf-modern-write.mm" 2



@interface Foo {
@private
    int first;
    int :1;
    int third :1;
    int :1;
    int fifth :1;
}
@end
@implementation Foo
@end
