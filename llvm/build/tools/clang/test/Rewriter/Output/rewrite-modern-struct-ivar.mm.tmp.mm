# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-struct-ivar.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-struct-ivar.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-struct-ivar.mm" 2





struct S {
    int i1;
    double d1;
    void (^block1)();
};

@interface I
{
  struct S struct_ivar;

  struct S *pstruct_ivar;
}
@end

@implementation I
- (struct S) dMeth{ return struct_ivar; }
@end




@interface Foo{
    @protected
    struct {
        int x:1;
        int y:1;
    } bar;

    struct _S {
        int x:1;
        int y:1;
    } s;

}
@end
@implementation Foo
- (void)x {
  bar.x = 0;
  bar.y = 1;

  s.x = 0;
  s.y = 1;
}
@end
