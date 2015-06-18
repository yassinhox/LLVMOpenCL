# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-nested-ivar.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-nested-ivar.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-nested-ivar.mm" 2





@interface NSURLResponse {
@public
  NSURLResponse *InnerResponse;
}
@end

@interface NSCachedURLResponseInternal
{
    @public
    NSURLResponse *response;
}
@end

@interface NSCachedURLResponse
{
    @private
    NSCachedURLResponseInternal *_internal;
}
- (void) Meth;
@end

@implementation NSCachedURLResponse
- (void) Meth {
    _internal->response->InnerResponse = 0;
  }
@end
