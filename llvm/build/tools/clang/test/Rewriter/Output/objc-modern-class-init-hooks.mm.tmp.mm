# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-class-init-hooks.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-class-init-hooks.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-class-init-hooks.mm" 2




@interface Root @end

@interface Super : Root
@end

@interface Sub : Super
@end

@implementation Sub @end

@implementation Root @end

@interface Root(Cat) @end

@interface Sub(Cat) @end

@implementation Root(Cat) @end

@implementation Sub(Cat) @end
