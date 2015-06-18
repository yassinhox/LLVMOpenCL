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
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Werror -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -U__declspec -D"__declspec(X)=" %t-rw.cpp

#ifndef _REWRITER_typedef_NSCheapMutableString
#define _REWRITER_typedef_NSCheapMutableString
typedef struct objc_object NSCheapMutableString;
typedef struct {} _objc_exc_NSCheapMutableString;
#endif

	struct S {
	int iS1;
	double dS1;
	} ;
	union U {
	int iU1;
	double dU1;
	} ;
	enum e {
	Yes = 1,
	No = 0,
	} ;
struct NSCheapMutableString_IMPL {

	struct S s0;

	union  {
	char *fat;
	unsigned char *thin;
	} contents;

	struct  {
	unsigned int isFat : 1;
	unsigned int freeWhenDone : 1;
	unsigned int refs : 30;
	} flags;

	struct S others;

	union U u_others;

	enum  {
	One = 0,
	Two = 1,
	} E1;

	enum e BoOl;

	struct S s1;

	enum e E2;

	union  {
	char *fat;
	unsigned char *thin;
	} Last_contents;

	struct  {
	unsigned int isFat : 1;
	unsigned int freeWhenDone : 1;
	unsigned int refs : 30;
	} Last_flags;
};

/* @end */

#ifndef _REWRITER_typedef_III
#define _REWRITER_typedef_III
typedef struct objc_object III;
typedef struct {} _objc_exc_III;
#endif

struct III_IMPL {

	struct S s0;

	union  {
	char *fat;
	unsigned char *thin;
	} contents;

	struct  {
	unsigned int isFat : 1;
	unsigned int freeWhenDone : 1;
	unsigned int refs : 30;
	} flags;

	enum  {
	One1 = 1000,
	Two1 = 1001,
	Three1 = 1002,
	} E1;

	struct S s1;

	enum e E2;

	union  {
	char *fat;
	unsigned char *thin;
	} Last_contents;

	struct  {
	unsigned int isFat : 1;
	unsigned int freeWhenDone : 1;
	unsigned int refs : 30;
	} Last_flags;
};

/* @end */

enum OUTSIDE {
  yes
};

#ifndef _REWRITER_typedef_MoreEnumTests
#define _REWRITER_typedef_MoreEnumTests
typedef struct objc_object MoreEnumTests;
typedef struct {} _objc_exc_MoreEnumTests;
#endif

	enum INSIDE {
	no = 0,
	} ;
struct MoreEnumTests_IMPL {

	enum INSIDE others;

	enum OUTSIDE meetoo;

	enum  {
	one = 0,
	two = 1,
	} eu;
};

/* @end */

#ifndef _REWRITER_typedef_I
#define _REWRITER_typedef_I
typedef struct objc_object I;
typedef struct {} _objc_exc_I;
#endif

	enum ALSO_INSIDE {
	maybe = 0,
	} ;
struct I_IMPL {

	enum INSIDE I1;

	enum OUTSIDE I2;

	enum ALSO_INSIDE I3;

	enum ALSO_INSIDE I4;

	enum  {
	three = 0,
	four = 1,
	} I5;
};

/* @end */

__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
