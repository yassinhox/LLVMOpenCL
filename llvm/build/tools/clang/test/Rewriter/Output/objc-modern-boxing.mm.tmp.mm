# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-boxing.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-boxing.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-boxing.mm" 2





extern char *strdup(const char *str);
extern "C" void *sel_registerName(const char *);

typedef signed char BOOL;
typedef long NSInteger;
typedef unsigned long NSUInteger;
# 21 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-boxing.mm"
@interface NSNumber
+ (NSNumber *)numberWithChar:(char)value;
+ (NSNumber *)numberWithUnsignedChar:(unsigned char)value;
+ (NSNumber *)numberWithShort:(short)value;
+ (NSNumber *)numberWithUnsignedShort:(unsigned short)value;
+ (NSNumber *)numberWithInt:(int)value;
+ (NSNumber *)numberWithUnsignedInt:(unsigned int)value;
+ (NSNumber *)numberWithLong:(long)value;
+ (NSNumber *)numberWithUnsignedLong:(unsigned long)value;
+ (NSNumber *)numberWithLongLong:(long long)value;
+ (NSNumber *)numberWithUnsignedLongLong:(unsigned long long)value;
+ (NSNumber *)numberWithFloat:(float)value;
+ (NSNumber *)numberWithDouble:(double)value;
+ (NSNumber *)numberWithBool:(BOOL)value;
+ (NSNumber *)numberWithInteger:(NSInteger)value ;
+ (NSNumber *)numberWithUnsignedInteger:(NSUInteger)value ;
@end

@interface NSString
+ (id)stringWithUTF8String:(const char *)str;
@end

int main(int argc, const char *argv[]) {

  NSNumber *theLetterZ = @('Z');


  NSNumber *fortyTwo = @(42);
  NSNumber *fortyTwoUnsigned = @(42U);
  NSNumber *fortyTwoLong = @(42L);
  NSNumber *fortyTwoLongLong = @(42LL);


  NSNumber *piFloat = @(3.141592654F);
  NSNumber *piDouble = @(3.1415926535);

  BOOL b;
  NSNumber *nsb = @(b);


  NSString *duplicateString = @(strdup("Hello"));
}
