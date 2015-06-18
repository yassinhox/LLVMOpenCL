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
// RUN: %clang_cc1 -E %s -o %t.mm
// RUN: %clang_cc1 -x objective-c++ -fblocks -fms-extensions -rewrite-objc %t.mm -o - | FileCheck %s
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5 %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp

// rdar://11375908
typedef unsigned long size_t;

// rdar: // 11006566

void I( void (*)(void));
void (*noop)(void);

void nothing();
int printf(const char*, ...);

typedef void (*T) (void);

void takeblock(T);

#line 22 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
int takeintint(int (*C)(int)) { return ((int (*)(__block_impl *, int))((__block_impl *)C)->FuncPtr)((__block_impl *)C, 4); }


struct __somefunction_block_impl_0 {
  struct __block_impl impl;
  struct __somefunction_block_desc_0* Desc;
  __somefunction_block_impl_0(void *fp, struct __somefunction_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 25 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __somefunction_block_func_0(struct __somefunction_block_impl_0 *__cself) {
 }

static struct __somefunction_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __somefunction_block_desc_0_DATA = { 0, sizeof(struct __somefunction_block_impl_0)};

struct __somefunction_block_impl_1 {
  struct __block_impl impl;
  struct __somefunction_block_desc_1* Desc;
  __somefunction_block_impl_1(void *fp, struct __somefunction_block_desc_1 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 28 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __somefunction_block_func_1(struct __somefunction_block_impl_1 *__cself) {
}

static struct __somefunction_block_desc_1 {
  size_t reserved;
  size_t Block_size;
} __somefunction_block_desc_1_DATA = { 0, sizeof(struct __somefunction_block_impl_1)};

struct __somefunction_block_impl_2 {
  struct __block_impl impl;
  struct __somefunction_block_desc_2* Desc;
  __somefunction_block_impl_2(void *fp, struct __somefunction_block_desc_2 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 30 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __somefunction_block_func_2(struct __somefunction_block_impl_2 *__cself) {
printf("\nClosure\n"); }

static struct __somefunction_block_desc_2 {
  size_t reserved;
  size_t Block_size;
} __somefunction_block_desc_2_DATA = { 0, sizeof(struct __somefunction_block_impl_2)};

struct __somefunction_block_impl_3 {
  struct __block_impl impl;
  struct __somefunction_block_desc_3* Desc;
  __somefunction_block_impl_3(void *fp, struct __somefunction_block_desc_3 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 32 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __somefunction_block_func_3(struct __somefunction_block_impl_3 *__cself) {
 }

static struct __somefunction_block_desc_3 {
  size_t reserved;
  size_t Block_size;
} __somefunction_block_desc_3_DATA = { 0, sizeof(struct __somefunction_block_impl_3)};

struct __somefunction_block_impl_4 {
  struct __block_impl impl;
  struct __somefunction_block_desc_4* Desc;
  __somefunction_block_impl_4(void *fp, struct __somefunction_block_desc_4 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 34 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __somefunction_block_func_4(struct __somefunction_block_impl_4 *__cself) {
printf("\nClosure\n"); }

static struct __somefunction_block_desc_4 {
  size_t reserved;
  size_t Block_size;
} __somefunction_block_desc_4_DATA = { 0, sizeof(struct __somefunction_block_impl_4)};

#line 24 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
T somefunction() {
  if ((void (*)())&__somefunction_block_impl_0((void *)__somefunction_block_func_0, &__somefunction_block_desc_0_DATA))
    nothing();

  noop = (void (*)())&__somefunction_block_impl_1((void *)__somefunction_block_func_1, &__somefunction_block_desc_1_DATA);

  noop = (void (*)())&__somefunction_block_impl_2((void *)__somefunction_block_func_2, &__somefunction_block_desc_2_DATA);

  I((void (*)())&__somefunction_block_impl_3((void *)__somefunction_block_func_3, &__somefunction_block_desc_3_DATA));

  return (void (*)())&__somefunction_block_impl_4((void *)__somefunction_block_func_4, &__somefunction_block_desc_4_DATA);
}

struct __test2_block_impl_0 {
  struct __block_impl impl;
  struct __test2_block_desc_0* Desc;
  int x;
  __test2_block_impl_0(void *fp, struct __test2_block_desc_0 *desc, int _x, int flags=0) : x(_x) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 39 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __test2_block_func_0(struct __test2_block_impl_0 *__cself) {
  int x = __cself->x; // bound by copy
 printf("%d\n", x); }

static struct __test2_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __test2_block_desc_0_DATA = { 0, sizeof(struct __test2_block_impl_0)};

struct __test2_block_impl_1 {
  struct __block_impl impl;
  struct __test2_block_desc_1* Desc;
  __test2_block_impl_1(void *fp, struct __test2_block_desc_1 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 42 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __test2_block_func_1(struct __test2_block_impl_1 *__cself) {
 
        while(1) break;  // ok
      }

static struct __test2_block_desc_1 {
  size_t reserved;
  size_t Block_size;
} __test2_block_desc_1_DATA = { 0, sizeof(struct __test2_block_impl_1)};

#line 36 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
void test2() {
  int x = 4;

  takeblock((void (*)())&__test2_block_impl_0((void *)__test2_block_func_0, &__test2_block_desc_0_DATA, x));

  while (1) {
    takeblock((void (*)())&__test2_block_impl_1((void *)__test2_block_func_1, &__test2_block_desc_1_DATA));
    break;
  }
}


struct __test4_block_impl_0 {
  struct __block_impl impl;
  struct __test4_block_desc_0* Desc;
  __test4_block_impl_0(void *fp, struct __test4_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 50 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __test4_block_func_0(struct __test4_block_impl_0 *__cself) {
}

static struct __test4_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __test4_block_desc_0_DATA = { 0, sizeof(struct __test4_block_impl_0)};

#line 49 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
void test4() {
  void (*noop)(void) = (void (*)())&__test4_block_impl_0((void *)__test4_block_func_0, &__test4_block_desc_0_DATA);
  void (*noop2)() = 0;
}


#line 54 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
void myfunc(int (*block)(int)) {}

void myfunc3(const int *x);


struct __test5_block_impl_0 {
  struct __block_impl impl;
  struct __test5_block_desc_0* Desc;
  int a;
  __test5_block_impl_0(void *fp, struct __test5_block_desc_0 *desc, int _a, int flags=0) : a(_a) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 61 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static int __test5_block_func_0(struct __test5_block_impl_0 *__cself, int abcd) {
  int a = __cself->a; // bound by copy

      myfunc3(&a);
      return 1;
    }

static struct __test5_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __test5_block_desc_0_DATA = { 0, sizeof(struct __test5_block_impl_0)};

#line 58 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
void test5() {
  int a;

  myfunc((int (*)(int))&__test5_block_impl_0((void *)__test5_block_func_0, &__test5_block_desc_0_DATA, a));
}

void *X;

static int global_x = 10;

struct __global_block_block_impl_0 {
  struct __block_impl impl;
  struct __global_block_block_desc_0* Desc;
  __global_block_block_impl_0(void *fp, struct __global_block_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteGlobalBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 70 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __global_block_block_func_0(struct __global_block_block_impl_0 *__cself) {
 printf("global x is %d\n", global_x); }

static struct __global_block_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __global_block_block_desc_0_DATA = { 0, sizeof(struct __global_block_block_impl_0)};
static __global_block_block_impl_0 __global_global_block_block_impl_0((void *)__global_block_block_func_0, &__global_block_block_desc_0_DATA);
void (*global_block)(void) = (void (*)())&__global_global_block_block_impl_0;

// CHECK: static __global_block_block_impl_0 __global_global_block_block_impl_0((void *)__global_block_block_func_0, &__global_block_block_desc_0_DATA);
// CHECK: void (*global_block)(void) = (void (*)())&__global_global_block_block_impl_0;

typedef void (*void_block_t)(void);

static const  void __myBlock() {}
struct __myBlock_block_impl_0 {
  struct __block_impl impl;
  struct __myBlock_block_desc_0* Desc;
  __myBlock_block_impl_0(void *fp, struct __myBlock_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteGlobalBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 77 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __myBlock_block_func_0(struct __myBlock_block_impl_0 *__cself) {
 }

static struct __myBlock_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __myBlock_block_desc_0_DATA = { 0, sizeof(struct __myBlock_block_impl_0)};
static const static __myBlock_block_impl_0 __global_myBlock_block_impl_0((void *)__myBlock_block_func_0, &__myBlock_block_desc_0_DATA);
void_block_t myBlock = (void (*)())&__global_myBlock_block_impl_0;

static const  void __myBlock2() {}
struct __myBlock2_block_impl_0 {
  struct __block_impl impl;
  struct __myBlock2_block_desc_0* Desc;
  __myBlock2_block_impl_0(void *fp, struct __myBlock2_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteGlobalBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 79 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal.mm"
static void __myBlock2_block_func_0(struct __myBlock2_block_impl_0 *__cself) {
 }

static struct __myBlock2_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __myBlock2_block_desc_0_DATA = { 0, sizeof(struct __myBlock2_block_impl_0)};
static const static __myBlock2_block_impl_0 __global_myBlock2_block_impl_0((void *)__myBlock2_block_func_0, &__myBlock2_block_desc_0_DATA);
void_block_t myBlock2 = (void (*)())&__global_myBlock2_block_impl_0; 
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
