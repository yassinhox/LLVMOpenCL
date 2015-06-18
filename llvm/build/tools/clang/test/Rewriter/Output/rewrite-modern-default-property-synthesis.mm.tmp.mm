# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm" 2






extern "C" void *sel_registerName(const char *);

@interface NSObject
- (void) release;
- (id) retain;
@end
@class NSString;

@interface SynthItAll : NSObject
@property int howMany;
@property (retain) NSString* what;
@end

@implementation SynthItAll
@end


@interface SynthSetter : NSObject
@property (nonatomic) int howMany;
@property (nonatomic, retain) NSString* what;
@end

@implementation SynthSetter

- (int) howMany {
    return _howMany;
}


- (NSString*) what {
    return _what;
}

@end


@interface SynthGetter : NSObject
@property (nonatomic) int howMany;
@property (nonatomic, retain) NSString* what;
@end

@implementation SynthGetter

- (void) setHowMany: (int) value {
    _howMany = value;
}


- (void) setWhat: (NSString*) value {
    if (_what != value) {
        [_what release];
        _what = [value retain];
    }
}
@end

typedef struct {
        int x:1;
        int y:1;
} TBAR;

@interface NONAME
{
  TBAR _bar;
}
@property TBAR bad;
@end

@implementation NONAME
@end
