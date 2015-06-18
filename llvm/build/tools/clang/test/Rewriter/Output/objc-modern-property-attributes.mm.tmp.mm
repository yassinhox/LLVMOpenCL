# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-property-attributes.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-property-attributes.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-property-attributes.mm" 2





typedef void (^void_block_t)(void);

@interface PropertyClass {
    int q;
    void_block_t __completion;
    PropertyClass* YVAR;
    id ID;
}
@property int q;
@property int r;

@property (copy) void_block_t completionBlock;
@property (retain) PropertyClass* Yblock;
@property (copy) id ID;

@end

@implementation PropertyClass
@synthesize q;
@dynamic r;
@synthesize completionBlock=__completion;
@synthesize Yblock = YVAR;
@synthesize ID;
@end






@interface Test @end
@interface Test (Category)
@property int q;
@end

@implementation Test (Category)
@dynamic q;
@end
