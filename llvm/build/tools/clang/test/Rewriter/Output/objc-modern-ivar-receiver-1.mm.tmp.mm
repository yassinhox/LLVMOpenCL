# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-ivar-receiver-1.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-ivar-receiver-1.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-ivar-receiver-1.mm" 2



void *sel_registerName(const char *);

@interface NSMutableArray
- (void)addObject:(id)addObject;
@end

@interface NSInvocation {
@private
    id _container;
}
+ (NSInvocation *)invocationWithMethodSignature;

@end

@implementation NSInvocation

+ (NSInvocation *)invocationWithMethodSignature {
    NSInvocation *newInv;
    id obj = newInv->_container;
    [newInv->_container addObject:0];
   return 0;
}
@end
