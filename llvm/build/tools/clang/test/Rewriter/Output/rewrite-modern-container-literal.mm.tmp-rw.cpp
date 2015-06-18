#ifndef __OBJC2__
#define __OBJC2__
#endif
struct objc_selector; struct objc_class;
struct __rw_objc_super { 
	struct objc_object *object; 
	struct objc_object *superClass; 
	__rw_objc_super(struct objc_object *o, struct objc_object *s) : object(o), superClass(s) {} 
};

#pragma section(".objc_classlist$B", long, read, write)
#pragma section(".objc_catlist$B", long, read, write)
#pragma section(".objc_imageinfo$B", long, read, write)
#pragma section(".objc_nlclslist$B", long, read, write)
#pragma section(".objc_nlcatlist$B", long, read, write)
#pragma section(".cat_cls_meth$B", long, read, write)
#pragma section(".inst_meth$B", long, read, write)
#pragma section(".cls_meth$B", long, read, write)
#pragma section(".objc_ivar$B", long, read, write)
#pragma section(".objc_selrefs$B", long, read, write)
#pragma section(".objc_classrefs$B", long, read, write)
#pragma section(".objc_superrefs$B", long, read, write)
#ifndef _REWRITER_typedef_Protocol
typedef struct objc_object Protocol;
#define _REWRITER_typedef_Protocol
#endif
#define __OBJC_RW_DLLIMPORT extern "C" __declspec(dllimport)
#define __OBJC_RW_STATICIMPORT extern "C"
__OBJC_RW_DLLIMPORT void objc_msgSend(void);
__OBJC_RW_DLLIMPORT void objc_msgSendSuper(void);
__OBJC_RW_DLLIMPORT void objc_msgSend_stret(void);
__OBJC_RW_DLLIMPORT void objc_msgSendSuper_stret(void);
__OBJC_RW_DLLIMPORT void objc_msgSend_fpret(void);
__OBJC_RW_DLLIMPORT struct objc_class *objc_getClass(const char *);
__OBJC_RW_DLLIMPORT struct objc_class *class_getSuperclass(struct objc_class *);
__OBJC_RW_DLLIMPORT struct objc_class *objc_getMetaClass(const char *);
__OBJC_RW_DLLIMPORT void objc_exception_throw( struct objc_object *);
__OBJC_RW_DLLIMPORT int objc_sync_enter( struct objc_object *);
__OBJC_RW_DLLIMPORT int objc_sync_exit( struct objc_object *);
__OBJC_RW_DLLIMPORT Protocol *objc_getProtocol(const char *);
#ifndef __FASTENUMERATIONSTATE
struct __objcFastEnumerationState {
	unsigned long state;
	void **itemsPtr;
	unsigned long *mutationsPtr;
	unsigned long extra[5];
};
__OBJC_RW_DLLIMPORT void objc_enumerationMutation(struct objc_object *);
#define __FASTENUMERATIONSTATE
#endif
#ifndef __NSCONSTANTSTRINGIMPL
struct __NSConstantStringImpl {
  int *isa;
  int flags;
  char *str;
  long length;
};
#ifdef CF_EXPORT_CONSTANT_STRING
extern "C" __declspec(dllexport) int __CFConstantStringClassReference[];
#else
__OBJC_RW_DLLIMPORT int __CFConstantStringClassReference[];
#endif
#define __NSCONSTANTSTRINGIMPL
#endif
#ifndef BLOCK_IMPL
#define BLOCK_IMPL
struct __block_impl {
  void *isa;
  int Flags;
  int Reserved;
  void *FuncPtr;
};
// Runtime copy/destroy helper functions (from Block_private.h)
#ifdef __OBJC_EXPORT_BLOCKS
extern "C" __declspec(dllexport) void _Block_object_assign(void *, const void *, const int);
extern "C" __declspec(dllexport) void _Block_object_dispose(const void *, const int);
extern "C" __declspec(dllexport) void *_NSConcreteGlobalBlock[32];
extern "C" __declspec(dllexport) void *_NSConcreteStackBlock[32];
#else
__OBJC_RW_DLLIMPORT void _Block_object_assign(void *, const void *, const int);
__OBJC_RW_DLLIMPORT void _Block_object_dispose(const void *, const int);
__OBJC_RW_DLLIMPORT void *_NSConcreteGlobalBlock[32];
__OBJC_RW_DLLIMPORT void *_NSConcreteStackBlock[32];
#endif
#endif
#undef __OBJC_RW_DLLIMPORT
#undef __OBJC_RW_STATICIMPORT
#ifndef KEEP_ATTRIBUTES
#define __attribute__(X)
#endif
#ifndef __weak
#define __weak
#endif
#ifndef __block
#define __block
#endif

#include <stdarg.h>
struct __NSContainer_literal {
  void * *arr;
  __NSContainer_literal (unsigned int count, ...) {
	va_list marker;
	va_start(marker, count);
	arr = new void *[count];
	for (unsigned i = 0; i < count; i++)
	  arr[i] = va_arg(marker, void *);
	va_end( marker );
  };
  ~__NSContainer_literal() {
	delete[] arr;
  }
};
extern "C" __declspec(dllimport) void * objc_autoreleasePoolPush(void);
extern "C" __declspec(dllimport) void objc_autoreleasePoolPop(void *);

struct __AtAutoreleasePool {
  __AtAutoreleasePool() {atautoreleasepoolobj = objc_autoreleasePoolPush();}
  ~__AtAutoreleasePool() {objc_autoreleasePoolPop(atautoreleasepoolobj);}
  void * atautoreleasepoolobj;
};

#define __OFFSETOFIVAR__(TYPE, MEMBER) ((long long) &((TYPE *)0)->MEMBER)
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_0 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"Hello",5};
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_1 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"name",4};
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_2 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"date",4};
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_3 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"process",7};
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_4 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"processInfo",11};
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_5 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"name",4};
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_6 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"man",3};
static __NSConstantStringImpl __NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_7 __attribute__ ((section ("__DATA, __cfstring"))) = {__CFConstantStringClassReference,0x000007c8,"date",4};
// RUN: %clang_cc1 -x objective-c++ -fms-extensions -rewrite-objc %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// rdar://10803676

void *sel_registerName(const char *);
typedef unsigned long NSUInteger;
typedef long NSInteger;
typedef bool BOOL;

#ifndef _REWRITER_typedef_NSNumber
#define _REWRITER_typedef_NSNumber
typedef struct objc_object NSNumber;
typedef struct {} _objc_exc_NSNumber;
#endif

// + (NSNumber *)numberWithChar:(char)value;
// + (NSNumber *)numberWithUnsignedChar:(unsigned char)value;
// + (NSNumber *)numberWithShort:(short)value;
// + (NSNumber *)numberWithUnsignedShort:(unsigned short)value;
// + (NSNumber *)numberWithInt:(int)value;
// + (NSNumber *)numberWithUnsignedInt:(unsigned int)value;
// + (NSNumber *)numberWithLong:(long)value;
// + (NSNumber *)numberWithUnsignedLong:(unsigned long)value;
// + (NSNumber *)numberWithLongLong:(long long)value;
// + (NSNumber *)numberWithUnsignedLongLong:(unsigned long long)value;
// + (NSNumber *)numberWithFloat:(float)value;
// + (NSNumber *)numberWithDouble:(double)value;
// + (NSNumber *)numberWithBool:(BOOL)value;
// + (NSNumber *)numberWithInteger:(NSInteger)value ;
// + (NSNumber *)numberWithUnsignedInteger:(NSUInteger)value ;
/* @end */

// @protocol NSCopying /* @end */

#ifndef _REWRITER_typedef_NSDictionary
#define _REWRITER_typedef_NSDictionary
typedef struct objc_object NSDictionary;
typedef struct {} _objc_exc_NSDictionary;
#endif

// + (id)dictionaryWithObjects:(const id [])objects forKeys:(const id <NSCopying> [])keys count:(NSUInteger)cnt;
/* @end */

#ifndef _REWRITER_typedef_NSArray
#define _REWRITER_typedef_NSArray
typedef struct objc_object NSArray;
typedef struct {} _objc_exc_NSArray;
#endif
 
// + (id)arrayWithObjects:(const id [])objects count:(NSUInteger)cnt;
/* @end */

#ifndef _REWRITER_typedef_NSString
#define _REWRITER_typedef_NSString
typedef struct objc_object NSString;
typedef struct {} _objc_exc_NSString;
#endif

/* @end */

id NSUserName();

#ifndef _REWRITER_typedef_NSDate
#define _REWRITER_typedef_NSDate
typedef struct objc_object NSDate;
typedef struct {} _objc_exc_NSDate;
#endif

// + (id)date;
/* @end */


#line 47 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-container-literal.mm"
int main() {
NSArray *array = ((NSArray *(*)(id, SEL, const id *, NSUInteger))(void *)objc_msgSend)(objc_getClass("NSArray"), sel_registerName("arrayWithObjects:count:"), (const id *)__NSContainer_literal(4U, (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_0, NSUserName(), ((id (*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSDate"), sel_registerName("date")), ((NSNumber *(*)(id, SEL, int))(void *)objc_msgSend)((id)objc_getClass("NSNumber"), sel_registerName("numberWithInt:"), 42)).arr, 4U);

NSDictionary *dictionary = ((NSDictionary *(*)(id, SEL, const id *, const id *, NSUInteger))(void *)objc_msgSend)(objc_getClass("NSDictionary"), sel_registerName("dictionaryWithObjects:forKeys:count:"), (const id *)__NSContainer_literal(3U, NSUserName(), ((id (*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSDate"), sel_registerName("date")), (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_4).arr, (const id *)__NSContainer_literal(3U, (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_1, (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_2, (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_3).arr, 3U);

NSDictionary *dict = ((NSDictionary *(*)(id, SEL, const id *, const id *, NSUInteger))(void *)objc_msgSend)(objc_getClass("NSDictionary"), sel_registerName("dictionaryWithObjects:forKeys:count:"), (const id *)__NSContainer_literal(3U, ((NSNumber *(*)(id, SEL, int))(void *)objc_msgSend)(objc_getClass("NSNumber"), sel_registerName("numberWithInt:"), 666), ((NSNumber *(*)(id, SEL, BOOL))(void *)objc_msgSend)(objc_getClass("NSNumber"), sel_registerName("numberWithBool:"), true), ((NSNumber *(*)(id, SEL, double))(void *)objc_msgSend)(objc_getClass("NSNumber"), sel_registerName("numberWithDouble:"), 1.3)).arr, (const id *)__NSContainer_literal(3U, (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_5, (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_6, (NSString *)&__NSConstantStringImpl__home_jazouani_llvm_llvm_3_2_tools_clang_test_Rewriter_rewrite_modern_container_literal_mm_7).arr, 3U);

}

__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
