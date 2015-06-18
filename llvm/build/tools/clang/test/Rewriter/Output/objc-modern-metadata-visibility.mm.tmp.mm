# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-metadata-visibility.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-metadata-visibility.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-metadata-visibility.mm" 2




@class NSString;

@interface NSObject {
    Class isa;
}
@end

@interface Sub : NSObject {
    int subIvar;
    NSString *nsstring;
@private
    id PrivateIvar;
}
@end

@implementation Sub
- (id) MyNSString { return subIvar ? PrivateIvar : nsstring; }
@end

@interface NSString @end
@implementation NSString @end
