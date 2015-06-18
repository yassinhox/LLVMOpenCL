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
// RUN: %clang_cc1 -x objective-c++ -fblocks -fms-extensions -rewrite-objc %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// rdar://11359268

extern "C" void *sel_registerName(const char *);
typedef unsigned long size_t;

union U {
  double d1;
  char filler[32];
};

struct S {
  char filler[128];
};

#ifndef _REWRITER_typedef_I
#define _REWRITER_typedef_I
typedef struct objc_object I;
typedef struct {} _objc_exc_I;
#endif

// - (struct S) Meth : (int) arg1 : (id) arg2;
// - (struct S) Meth1;
// - (union U) Meth2 : (double)d;
// - (struct S) VAMeth : (int)anchor, ...;
/* @end */

I* PI();

extern "C" {

extern "C" void * __cdecl memset(void *_Dst, int _Val, size_t _Size);
struct __Stret0 {
	__Stret0(id receiver, SEL sel, int arg2, id arg3) {
	  if (receiver == 0)
	    memset((void*)&s, 0, sizeof(s));
	  else
	    s = ((struct S (*)(id, SEL, int, id))(void *)objc_msgSend_stret)(receiver, sel, arg2, arg3);
	}
	struct S s;
};

extern "C" void * __cdecl memset(void *_Dst, int _Val, size_t _Size);
struct __Stret1 {
	__Stret1(id receiver, SEL sel, double arg2) {
	  if (receiver == 0)
	    memset((void*)&s, 0, sizeof(s));
	  else
	    s = ((union U (*)(id, SEL, double))(void *)objc_msgSend_stret)(receiver, sel, arg2);
	}
	union U s;
};

extern "C" void * __cdecl memset(void *_Dst, int _Val, size_t _Size);
struct __Stret2 {
	__Stret2(id receiver, SEL sel, int arg2, double arg3, int arg4, const char *arg5) {
	  if (receiver == 0)
	    memset((void*)&s, 0, sizeof(s));
	  else
	    s = ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend_stret)(receiver, sel, arg2, arg3, arg4, arg5);
	}
	struct S s;
};

extern "C" void * __cdecl memset(void *_Dst, int _Val, size_t _Size);
struct __Stret3 {
	__Stret3(id receiver, SEL sel, int arg2) {
	  if (receiver == 0)
	    memset((void*)&s, 0, sizeof(s));
	  else
	    s = ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend_stret)(receiver, sel, arg2);
	}
	struct S s;
};

extern "C" void * __cdecl memset(void *_Dst, int _Val, size_t _Size);
struct __Stret4 {
	__Stret4(id receiver, SEL sel, int arg2, const char *arg3, const char *arg4) {
	  if (receiver == 0)
	    memset((void*)&s, 0, sizeof(s));
	  else
	    s = ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend_stret)(receiver, sel, arg2, arg3, arg4);
	}
	struct S s;
};

extern "C" void * __cdecl memset(void *_Dst, int _Val, size_t _Size);
struct __Stret5 {
	__Stret5(id receiver, SEL sel, int arg2, void (*arg3)(), struct S (*arg4)()) {
	  if (receiver == 0)
	    memset((void*)&s, 0, sizeof(s));
	  else
	    s = ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend_stret)(receiver, sel, arg2, arg3, arg4);
	}
	struct S s;
};

extern "C" void * __cdecl memset(void *_Dst, int _Val, size_t _Size);
struct __Stret6 {
	__Stret6(id receiver, SEL sel) {
	  if (receiver == 0)
	    memset((void*)&s, 0, sizeof(s));
	  else
	    s = ((struct S (*)(id, SEL))(void *)objc_msgSend_stret)(receiver, sel);
	}
	struct S s;
};


struct __foo_block_impl_0 {
  struct __block_impl impl;
  struct __foo_block_desc_0* Desc;
  __foo_block_impl_0(void *fp, struct __foo_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 39 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-StretAPI.mm"
static void __foo_block_func_0(struct __foo_block_impl_0 *__cself) {
}

static struct __foo_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __foo_block_desc_0_DATA = { 0, sizeof(struct __foo_block_impl_0)};

#line 28 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/objc-modern-StretAPI.mm"
struct S foo () {
  struct S s = (sizeof(struct S) <= 8 ? ((struct S (*)(id, SEL, int, id))(void *)objc_msgSend)((id)PI(), sel_registerName("Meth::"), 1, (id)0) : __Stret0((id)PI(), sel_registerName("Meth::"), 1, (id)0).s);

  U u = (sizeof(union U) <= 8 ? ((union U (*)(id, SEL, double))(void *)objc_msgSend)((id)PI(), sel_registerName("Meth2:"), 3.14) : __Stret1((id)PI(), sel_registerName("Meth2:"), 3.14).s);

  S s1 = (sizeof(struct S) <= 8 ? ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend)((id)PI(), sel_registerName("VAMeth:"), 12, 13.4, 1000, (const char *)"hello") : __Stret2((id)PI(), sel_registerName("VAMeth:"), 12, 13.4, 1000, (const char *)"hello").s);

  S s2 = (sizeof(struct S) <= 8 ? ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend)((id)PI(), sel_registerName("VAMeth:"), 12) : __Stret3((id)PI(), sel_registerName("VAMeth:"), 12).s);

  S s3 = (sizeof(struct S) <= 8 ? ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend)((id)PI(), sel_registerName("VAMeth:"), 0, (const char *)"hello", (const char *)"there") : __Stret4((id)PI(), sel_registerName("VAMeth:"), 0, (const char *)"hello", (const char *)"there").s);

  S s4 = (sizeof(struct S) <= 8 ? ((struct S (*)(id, SEL, int, ...))(void *)objc_msgSend)((id)PI(), sel_registerName("VAMeth:"), 2, (void (*)())&__foo_block_impl_0((void *)__foo_block_func_0, &__foo_block_desc_0_DATA), &foo) : __Stret5((id)PI(), sel_registerName("VAMeth:"), 2, (void (*)())&__foo_block_impl_0((void *)__foo_block_func_0, &__foo_block_desc_0_DATA), &foo).s);

  return (sizeof(struct S) <= 8 ? ((struct S (*)(id, SEL))(void *)objc_msgSend)((id)PI(), sel_registerName("Meth1")) : __Stret6((id)PI(), sel_registerName("Meth1")).s);
}

}

__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
