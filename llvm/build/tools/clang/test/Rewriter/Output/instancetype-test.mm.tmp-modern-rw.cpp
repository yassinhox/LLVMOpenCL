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
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5 %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp

void *sel_registerName(const char *);

#ifndef _REWRITER_typedef_Root
#define _REWRITER_typedef_Root
typedef struct objc_object Root;
typedef struct {} _objc_exc_Root;
#endif

// + (instancetype)alloc;
// - (instancetype)init; // expected-note{{overridden method is part of the 'init' method family}}
// - (instancetype)self;
// - (Class)class;

// @property (assign) Root *selfProp;
// - (instancetype)selfProp;
/* @end */

// @protocol Proto1
/* @optional */
// - (instancetype)methodInProto1;
/* @end */

// @protocol Proto2
/* @optional */
// - (instancetype)methodInProto2; // expected-note{{overridden method returns an instance of its class type}}
// - (instancetype)otherMethodInProto2; // expected-note{{overridden method returns an instance of its class type}}
/* @end */

#ifndef _REWRITER_typedef_Subclass1
#define _REWRITER_typedef_Subclass1
typedef struct objc_object Subclass1;
typedef struct {} _objc_exc_Subclass1;
#endif

// - (instancetype)initSubclass1;
// - (void)methodOnSubclass1;
// + (instancetype)allocSubclass1;
/* @end */

#ifndef _REWRITER_typedef_Subclass2
#define _REWRITER_typedef_Subclass2
typedef struct objc_object Subclass2;
typedef struct {} _objc_exc_Subclass2;
#endif

// - (instancetype)initSubclass2;
// - (void)methodOnSubclass2;
/* @end */

// Sanity check: the basic initialization pattern.

#line 41 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/instancetype-test.mm"
void test_instancetype_alloc_init_simple() {
  Root *r1 = ((Root *(*)(id, SEL))(void *)objc_msgSend)((id)((Root *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Root"), sel_registerName("alloc")), sel_registerName("init"));
  Subclass1 *sc1 = ((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Subclass1"), sel_registerName("alloc")), sel_registerName("init"));
}

// Test that message sends to instancetype methods have the right type.

#line 47 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/instancetype-test.mm"
void test_instancetype_narrow_method_search() {
  // instancetype on class methods
  Subclass1 *sc1 = ((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Subclass1"), sel_registerName("alloc")), sel_registerName("initSubclass2")); // expected-warning{{'Subclass1' may not respond to 'initSubclass2'}}
  Subclass2 *sc2 = ((Subclass2 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass2 *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Subclass2"), sel_registerName("alloc")), sel_registerName("initSubclass2")); // okay

  // instancetype on instance methods
  ((void (*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Subclass1"), sel_registerName("alloc")), sel_registerName("init")), sel_registerName("methodOnSubclass2")); // expected-warning{{'Subclass1' may not respond to 'methodOnSubclass2'}}
  ((void (*)(id, SEL))(void *)objc_msgSend)((id)((Subclass2 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass2 *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Subclass2"), sel_registerName("alloc")), sel_registerName("init")), sel_registerName("methodOnSubclass2"));
  
  // instancetype on class methods using protocols
  ((id (*)(id, SEL, ...))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Subclass1"), sel_registerName("alloc")), sel_registerName("methodInProto2")); // expected-warning{{method '-methodInProto2' not found (return type defaults to 'id')}}
  ((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Subclass1"), sel_registerName("alloc")), sel_registerName("methodInProto2"));

  // instancetype on instance methods
  Subclass1/*<Proto1>*/ *sc1proto1 = 0;
  ((id (*)(id, SEL, ...))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)sc1proto1, sel_registerName("self")), sel_registerName("methodInProto2")); // expected-warning{{method '-methodInProto2' not found (return type defaults to 'id')}}
  Subclass1/*<Proto2>*/ *sc1proto2 = 0;
  ((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)sc1proto2, sel_registerName("self")), sel_registerName("methodInProto2"));

  // Exact type checks
  // Message sends to Class.
  // FIXME. This is not supported due to missing capability in rewriter and not due to instancetype issues
  //  Subclass1<Proto1> *sc1proto1_2 = [[[sc1proto1 class] alloc] init];

  // Property access
  ((id (*)(id, SEL, ...))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)sc1proto1, sel_registerName("self")), sel_registerName("methodInProto2")); // expected-warning{{method '-methodInProto2' not found (return type defaults to 'id')}}
  ((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)sc1proto2, sel_registerName("self")), sel_registerName("methodInProto2"));

  ((id (*)(id, SEL, ...))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)sc1proto1, sel_registerName("selfProp")), sel_registerName("methodInProto2")); // expected-warning{{method '-methodInProto2' not found (return type defaults to 'id')}}
  ((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)((Subclass1 *(*)(id, SEL))(void *)objc_msgSend)((id)sc1proto2, sel_registerName("selfProp")), sel_registerName("methodInProto2"));
}
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
