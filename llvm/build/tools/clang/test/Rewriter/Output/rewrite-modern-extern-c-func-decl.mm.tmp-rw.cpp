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
// RUN: %clang_cc1 -fms-extensions -U__declspec -rewrite-objc -x objective-c++ -fblocks -o %t-rw.cpp %s
// RUN: %clang_cc1 -fsyntax-only -Werror -Wno-address-of-temporary -Wno-attributes -D"Class=void*" -D"id=void*" -D"SEL=void*" -U__declspec -D"__declspec(X)=" %t-rw.cpp
// rdar://11131490

typedef unsigned long size_t;
struct __Block_byref_aBlockVariable_0 {
  void *__isa;
__Block_byref_aBlockVariable_0 *__forwarding;
 int __flags;
 int __size;
 int aBlockVariable;
};

struct __BreakTheRewriter_block_impl_0 {
  struct __block_impl impl;
  struct __BreakTheRewriter_block_desc_0* Desc;
  __Block_byref_aBlockVariable_0 *aBlockVariable; // by ref
  __BreakTheRewriter_block_impl_0(void *fp, struct __BreakTheRewriter_block_desc_0 *desc, __Block_byref_aBlockVariable_0 *_aBlockVariable, int flags=0) : aBlockVariable(_aBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 8 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __BreakTheRewriter_block_func_0(struct __BreakTheRewriter_block_impl_0 *__cself) {
  __Block_byref_aBlockVariable_0 *aBlockVariable = __cself->aBlockVariable; // bound by ref

                (aBlockVariable->__forwarding->aBlockVariable) = 42;
        }
static void __BreakTheRewriter_block_copy_0(struct __BreakTheRewriter_block_impl_0*dst, struct __BreakTheRewriter_block_impl_0*src) {_Block_object_assign((void*)&dst->aBlockVariable, (void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __BreakTheRewriter_block_dispose_0(struct __BreakTheRewriter_block_impl_0*src) {_Block_object_dispose((void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __BreakTheRewriter_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __BreakTheRewriter_block_impl_0*, struct __BreakTheRewriter_block_impl_0*);
  void (*dispose)(struct __BreakTheRewriter_block_impl_0*);
} __BreakTheRewriter_block_desc_0_DATA = { 0, sizeof(struct __BreakTheRewriter_block_impl_0), __BreakTheRewriter_block_copy_0, __BreakTheRewriter_block_dispose_0};

struct __BreakTheRewriter_block_impl_1 {
  struct __block_impl impl;
  struct __BreakTheRewriter_block_desc_1* Desc;
  __Block_byref_aBlockVariable_0 *aBlockVariable; // by ref
  __BreakTheRewriter_block_impl_1(void *fp, struct __BreakTheRewriter_block_desc_1 *desc, __Block_byref_aBlockVariable_0 *_aBlockVariable, int flags=0) : aBlockVariable(_aBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 12 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __BreakTheRewriter_block_func_1(struct __BreakTheRewriter_block_impl_1 *__cself) {
  __Block_byref_aBlockVariable_0 *aBlockVariable = __cself->aBlockVariable; // bound by ref

                (aBlockVariable->__forwarding->aBlockVariable) = 43;
        }
static void __BreakTheRewriter_block_copy_1(struct __BreakTheRewriter_block_impl_1*dst, struct __BreakTheRewriter_block_impl_1*src) {_Block_object_assign((void*)&dst->aBlockVariable, (void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __BreakTheRewriter_block_dispose_1(struct __BreakTheRewriter_block_impl_1*src) {_Block_object_dispose((void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __BreakTheRewriter_block_desc_1 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __BreakTheRewriter_block_impl_1*, struct __BreakTheRewriter_block_impl_1*);
  void (*dispose)(struct __BreakTheRewriter_block_impl_1*);
} __BreakTheRewriter_block_desc_1_DATA = { 0, sizeof(struct __BreakTheRewriter_block_impl_1), __BreakTheRewriter_block_copy_1, __BreakTheRewriter_block_dispose_1};

struct __BreakTheRewriter_block_impl_2 {
  struct __block_impl impl;
  struct __BreakTheRewriter_block_desc_2* Desc;
  __Block_byref_aBlockVariable_0 *aBlockVariable; // by ref
  __BreakTheRewriter_block_impl_2(void *fp, struct __BreakTheRewriter_block_desc_2 *desc, __Block_byref_aBlockVariable_0 *_aBlockVariable, int flags=0) : aBlockVariable(_aBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 15 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __BreakTheRewriter_block_func_2(struct __BreakTheRewriter_block_impl_2 *__cself) {
  __Block_byref_aBlockVariable_0 *aBlockVariable = __cself->aBlockVariable; // bound by ref

                (aBlockVariable->__forwarding->aBlockVariable) = 44;
        }
static void __BreakTheRewriter_block_copy_2(struct __BreakTheRewriter_block_impl_2*dst, struct __BreakTheRewriter_block_impl_2*src) {_Block_object_assign((void*)&dst->aBlockVariable, (void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __BreakTheRewriter_block_dispose_2(struct __BreakTheRewriter_block_impl_2*src) {_Block_object_dispose((void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __BreakTheRewriter_block_desc_2 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __BreakTheRewriter_block_impl_2*, struct __BreakTheRewriter_block_impl_2*);
  void (*dispose)(struct __BreakTheRewriter_block_impl_2*);
} __BreakTheRewriter_block_desc_2_DATA = { 0, sizeof(struct __BreakTheRewriter_block_impl_2), __BreakTheRewriter_block_copy_2, __BreakTheRewriter_block_dispose_2};

#line 6 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
extern "C" __declspec(dllexport) void BreakTheRewriter(void) {
        __block __Block_byref_aBlockVariable_0 aBlockVariable = {(void*)0,(__Block_byref_aBlockVariable_0 *)&aBlockVariable, 0, sizeof(__Block_byref_aBlockVariable_0), 0};
        void (*aBlock)(void) = (void (*)())&__BreakTheRewriter_block_impl_0((void *)__BreakTheRewriter_block_func_0, &__BreakTheRewriter_block_desc_0_DATA, (__Block_byref_aBlockVariable_0 *)&aBlockVariable, 570425344);
        (aBlockVariable.__forwarding->aBlockVariable)++;
        void (*bBlocks)(void) = (void (*)())&__BreakTheRewriter_block_impl_1((void *)__BreakTheRewriter_block_func_1, &__BreakTheRewriter_block_desc_1_DATA, (__Block_byref_aBlockVariable_0 *)&aBlockVariable, 570425344);
        void (*c)(void) = (void (*)())&__BreakTheRewriter_block_impl_2((void *)__BreakTheRewriter_block_func_2, &__BreakTheRewriter_block_desc_2_DATA, (__Block_byref_aBlockVariable_0 *)&aBlockVariable, 570425344);

}
struct __Block_byref_bBlockVariable_1 {
  void *__isa;
__Block_byref_bBlockVariable_1 *__forwarding;
 int __flags;
 int __size;
 int bBlockVariable;
};

struct __AnotherBreakTheRewriter_block_impl_0 {
  struct __block_impl impl;
  struct __AnotherBreakTheRewriter_block_desc_0* Desc;
  __Block_byref_bBlockVariable_1 *bBlockVariable; // by ref
  __AnotherBreakTheRewriter_block_impl_0(void *fp, struct __AnotherBreakTheRewriter_block_desc_0 *desc, __Block_byref_bBlockVariable_1 *_bBlockVariable, int flags=0) : bBlockVariable(_bBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 23 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __AnotherBreakTheRewriter_block_func_0(struct __AnotherBreakTheRewriter_block_impl_0 *__cself) {
  __Block_byref_bBlockVariable_1 *bBlockVariable = __cself->bBlockVariable; // bound by ref

                (bBlockVariable->__forwarding->bBlockVariable) = 42;
        }
static void __AnotherBreakTheRewriter_block_copy_0(struct __AnotherBreakTheRewriter_block_impl_0*dst, struct __AnotherBreakTheRewriter_block_impl_0*src) {_Block_object_assign((void*)&dst->bBlockVariable, (void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __AnotherBreakTheRewriter_block_dispose_0(struct __AnotherBreakTheRewriter_block_impl_0*src) {_Block_object_dispose((void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __AnotherBreakTheRewriter_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __AnotherBreakTheRewriter_block_impl_0*, struct __AnotherBreakTheRewriter_block_impl_0*);
  void (*dispose)(struct __AnotherBreakTheRewriter_block_impl_0*);
} __AnotherBreakTheRewriter_block_desc_0_DATA = { 0, sizeof(struct __AnotherBreakTheRewriter_block_impl_0), __AnotherBreakTheRewriter_block_copy_0, __AnotherBreakTheRewriter_block_dispose_0};

struct __AnotherBreakTheRewriter_block_impl_1 {
  struct __block_impl impl;
  struct __AnotherBreakTheRewriter_block_desc_1* Desc;
  __Block_byref_bBlockVariable_1 *bBlockVariable; // by ref
  __AnotherBreakTheRewriter_block_impl_1(void *fp, struct __AnotherBreakTheRewriter_block_desc_1 *desc, __Block_byref_bBlockVariable_1 *_bBlockVariable, int flags=0) : bBlockVariable(_bBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 27 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __AnotherBreakTheRewriter_block_func_1(struct __AnotherBreakTheRewriter_block_impl_1 *__cself) {
  __Block_byref_bBlockVariable_1 *bBlockVariable = __cself->bBlockVariable; // bound by ref

                (bBlockVariable->__forwarding->bBlockVariable) = 43;
        }
static void __AnotherBreakTheRewriter_block_copy_1(struct __AnotherBreakTheRewriter_block_impl_1*dst, struct __AnotherBreakTheRewriter_block_impl_1*src) {_Block_object_assign((void*)&dst->bBlockVariable, (void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __AnotherBreakTheRewriter_block_dispose_1(struct __AnotherBreakTheRewriter_block_impl_1*src) {_Block_object_dispose((void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __AnotherBreakTheRewriter_block_desc_1 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __AnotherBreakTheRewriter_block_impl_1*, struct __AnotherBreakTheRewriter_block_impl_1*);
  void (*dispose)(struct __AnotherBreakTheRewriter_block_impl_1*);
} __AnotherBreakTheRewriter_block_desc_1_DATA = { 0, sizeof(struct __AnotherBreakTheRewriter_block_impl_1), __AnotherBreakTheRewriter_block_copy_1, __AnotherBreakTheRewriter_block_dispose_1};

struct __AnotherBreakTheRewriter_block_impl_2 {
  struct __block_impl impl;
  struct __AnotherBreakTheRewriter_block_desc_2* Desc;
  __Block_byref_bBlockVariable_1 *bBlockVariable; // by ref
  __AnotherBreakTheRewriter_block_impl_2(void *fp, struct __AnotherBreakTheRewriter_block_desc_2 *desc, __Block_byref_bBlockVariable_1 *_bBlockVariable, int flags=0) : bBlockVariable(_bBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 30 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __AnotherBreakTheRewriter_block_func_2(struct __AnotherBreakTheRewriter_block_impl_2 *__cself) {
  __Block_byref_bBlockVariable_1 *bBlockVariable = __cself->bBlockVariable; // bound by ref

                (bBlockVariable->__forwarding->bBlockVariable) = 44;
        }
static void __AnotherBreakTheRewriter_block_copy_2(struct __AnotherBreakTheRewriter_block_impl_2*dst, struct __AnotherBreakTheRewriter_block_impl_2*src) {_Block_object_assign((void*)&dst->bBlockVariable, (void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __AnotherBreakTheRewriter_block_dispose_2(struct __AnotherBreakTheRewriter_block_impl_2*src) {_Block_object_dispose((void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __AnotherBreakTheRewriter_block_desc_2 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __AnotherBreakTheRewriter_block_impl_2*, struct __AnotherBreakTheRewriter_block_impl_2*);
  void (*dispose)(struct __AnotherBreakTheRewriter_block_impl_2*);
} __AnotherBreakTheRewriter_block_desc_2_DATA = { 0, sizeof(struct __AnotherBreakTheRewriter_block_impl_2), __AnotherBreakTheRewriter_block_copy_2, __AnotherBreakTheRewriter_block_dispose_2};

#line 20 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
__declspec(dllexport) extern "C" void AnotherBreakTheRewriter(int *p1, double d) {

        __block __Block_byref_bBlockVariable_1 bBlockVariable = {(void*)0,(__Block_byref_bBlockVariable_1 *)&bBlockVariable, 0, sizeof(__Block_byref_bBlockVariable_1), 0};
        void (*aBlock)(void) = (void (*)())&__AnotherBreakTheRewriter_block_impl_0((void *)__AnotherBreakTheRewriter_block_func_0, &__AnotherBreakTheRewriter_block_desc_0_DATA, (__Block_byref_bBlockVariable_1 *)&bBlockVariable, 570425344);
        (bBlockVariable.__forwarding->bBlockVariable)++;
        void (*bBlocks)(void) = (void (*)())&__AnotherBreakTheRewriter_block_impl_1((void *)__AnotherBreakTheRewriter_block_func_1, &__AnotherBreakTheRewriter_block_desc_1_DATA, (__Block_byref_bBlockVariable_1 *)&bBlockVariable, 570425344);
        void (*c)(void) = (void (*)())&__AnotherBreakTheRewriter_block_impl_2((void *)__AnotherBreakTheRewriter_block_func_2, &__AnotherBreakTheRewriter_block_desc_2_DATA, (__Block_byref_bBlockVariable_1 *)&bBlockVariable, 570425344);

}

struct __Block_byref_bBlockVariable_2 {
  void *__isa;
__Block_byref_bBlockVariable_2 *__forwarding;
 int __flags;
 int __size;
 int bBlockVariable;
};

struct __main_block_impl_0 {
  struct __block_impl impl;
  struct __main_block_desc_0* Desc;
  __Block_byref_bBlockVariable_2 *bBlockVariable; // by ref
  __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, __Block_byref_bBlockVariable_2 *_bBlockVariable, int flags=0) : bBlockVariable(_bBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 43 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
  __Block_byref_bBlockVariable_2 *bBlockVariable = __cself->bBlockVariable; // bound by ref

                (bBlockVariable->__forwarding->bBlockVariable) = 42;
        }
static void __main_block_copy_0(struct __main_block_impl_0*dst, struct __main_block_impl_0*src) {_Block_object_assign((void*)&dst->bBlockVariable, (void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __main_block_dispose_0(struct __main_block_impl_0*src) {_Block_object_dispose((void*)src->bBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __main_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __main_block_impl_0*, struct __main_block_impl_0*);
  void (*dispose)(struct __main_block_impl_0*);
} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0), __main_block_copy_0, __main_block_dispose_0};

#line 40 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
int

__declspec (dllexport)

main (int argc, char *argv[])
{
        __block __Block_byref_bBlockVariable_2 bBlockVariable = {(void*)0,(__Block_byref_bBlockVariable_2 *)&bBlockVariable, 0, sizeof(__Block_byref_bBlockVariable_2), 0};
        void (*aBlock)(void) = (void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, (__Block_byref_bBlockVariable_2 *)&bBlockVariable, 570425344);
}

// rdar://11275241
static char stringtype;
char CFStringGetTypeID();
void x(void (*)());


#line 53 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void initStatics(int, ...);

struct __initStatics_block_impl_0 {
  struct __block_impl impl;
  struct __initStatics_block_desc_0* Desc;
  __initStatics_block_impl_0(void *fp, struct __initStatics_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 54 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __initStatics_block_func_0(struct __initStatics_block_impl_0 *__cself) {

        stringtype = CFStringGetTypeID();
    }

static struct __initStatics_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __initStatics_block_desc_0_DATA = { 0, sizeof(struct __initStatics_block_impl_0)};
void initStatics(int arg, ...) {
    x((void (*)())&__initStatics_block_impl_0((void *)__initStatics_block_func_0, &__initStatics_block_desc_0_DATA));
}

#line 58 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void initStatics1(...);

struct __initStatics1_block_impl_0 {
  struct __block_impl impl;
  struct __initStatics1_block_desc_0* Desc;
  __initStatics1_block_impl_0(void *fp, struct __initStatics1_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 59 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __initStatics1_block_func_0(struct __initStatics1_block_impl_0 *__cself) {

        stringtype = CFStringGetTypeID();
    }

static struct __initStatics1_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __initStatics1_block_desc_0_DATA = { 0, sizeof(struct __initStatics1_block_impl_0)};
void initStatics1(...) {
    x((void (*)())&__initStatics1_block_impl_0((void *)__initStatics1_block_func_0, &__initStatics1_block_desc_0_DATA));
}

#line 63 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void initStatics2();

struct __initStatics2_block_impl_0 {
  struct __block_impl impl;
  struct __initStatics2_block_desc_0* Desc;
  __initStatics2_block_impl_0(void *fp, struct __initStatics2_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 64 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __initStatics2_block_func_0(struct __initStatics2_block_impl_0 *__cself) {

        stringtype = CFStringGetTypeID();
    }

static struct __initStatics2_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __initStatics2_block_desc_0_DATA = { 0, sizeof(struct __initStatics2_block_impl_0)};
void initStatics2() {
    x((void (*)())&__initStatics2_block_impl_0((void *)__initStatics2_block_func_0, &__initStatics2_block_desc_0_DATA));
}

// rdar://11314329

#line 70 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static inline const void *auto_zone_base_pointer(void *zone, const void *ptr) { return 0; }

#ifndef _REWRITER_typedef_I
#define _REWRITER_typedef_I
typedef struct objc_object I;
typedef struct {} _objc_exc_I;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllimport) unsigned long OBJC_IVAR_$_I$list;
struct I_IMPL {
	id list;
};

// - (void) Meth;
// radar 7589385 use before definition
// - (void) allObjects;
/* @end */

// @implementation I
// radar 7589385 use before definition
struct __Block_byref_listp_3 {
  void *__isa;
__Block_byref_listp_3 *__forwarding;
 int __flags;
 int __size;
 id *listp;
};

struct __I__allObjects_block_impl_0 {
  struct __block_impl impl;
  struct __I__allObjects_block_desc_0* Desc;
  __Block_byref_listp_3 *listp; // by ref
  __I__allObjects_block_impl_0(void *fp, struct __I__allObjects_block_desc_0 *desc, __Block_byref_listp_3 *_listp, int flags=0) : listp(_listp->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 86 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void __I__allObjects_block_func_0(struct __I__allObjects_block_impl_0 *__cself) {
  __Block_byref_listp_3 *listp = __cself->listp; // bound by ref

      *(listp->__forwarding->listp)++ = 0;
    }
static void __I__allObjects_block_copy_0(struct __I__allObjects_block_impl_0*dst, struct __I__allObjects_block_impl_0*src) {_Block_object_assign((void*)&dst->listp, (void*)src->listp, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __I__allObjects_block_dispose_0(struct __I__allObjects_block_impl_0*src) {_Block_object_dispose((void*)src->listp, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __I__allObjects_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __I__allObjects_block_impl_0*, struct __I__allObjects_block_impl_0*);
  void (*dispose)(struct __I__allObjects_block_impl_0*);
} __I__allObjects_block_desc_0_DATA = { 0, sizeof(struct __I__allObjects_block_impl_0), __I__allObjects_block_copy_0, __I__allObjects_block_dispose_0};

#line 83 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void _I_I_allObjects(I * self, SEL _cmd) {
    __attribute__((__blocks__(byref))) __Block_byref_listp_3 listp = {(void*)0,(__Block_byref_listp_3 *)&listp, 0, sizeof(__Block_byref_listp_3)};
;

    void (*B)(void) = (void (*)())&__I__allObjects_block_impl_0((void *)__I__allObjects_block_func_0, &__I__allObjects_block_desc_0_DATA, (__Block_byref_listp_3 *)&listp, 570425344);

    ((void (*)(__block_impl *))((__block_impl *)B)->FuncPtr)((__block_impl *)B);
}
struct __Block_byref_listp_4 {
  void *__isa;
__Block_byref_listp_4 *__forwarding;
 int __flags;
 int __size;
 void **listp;
};

#line 92 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-extern-c-func-decl.mm"
static void _I_I_Meth(I * self, SEL _cmd) { __attribute__((__blocks__(byref))) __Block_byref_listp_4 listp = {(void*)0,(__Block_byref_listp_4 *)&listp, 0, sizeof(__Block_byref_listp_4), (void **)(*(id *)((char *)self + OBJC_IVAR_$_I$list))}; }
// @end


struct _prop_t {
	const char *name;
	const char *attributes;
};

struct _protocol_t;

struct _objc_method {
	struct objc_selector * _cmd;
	const char *method_type;
	void  *_imp;
};

struct _protocol_t {
	void * isa;  // NULL
	const char *protocol_name;
	const struct _protocol_list_t * protocol_list; // super protocols
	const struct method_list_t *instance_methods;
	const struct method_list_t *class_methods;
	const struct method_list_t *optionalInstanceMethods;
	const struct method_list_t *optionalClassMethods;
	const struct _prop_list_t * properties;
	const unsigned int size;  // sizeof(struct _protocol_t)
	const unsigned int flags;  // = 0
	const char ** extendedMethodTypes;
};

struct _ivar_t {
	unsigned long int *offset;  // pointer to ivar offset location
	const char *name;
	const char *type;
	unsigned int alignment;
	unsigned int  size;
};

struct _class_ro_t {
	unsigned int flags;
	unsigned int instanceStart;
	unsigned int instanceSize;
	unsigned int reserved;
	const unsigned char *ivarLayout;
	const char *name;
	const struct _method_list_t *baseMethods;
	const struct _objc_protocol_list *baseProtocols;
	const struct _ivar_list_t *ivars;
	const unsigned char *weakIvarLayout;
	const struct _prop_list_t *properties;
};

struct _class_t {
	struct _class_t *isa;
	struct _class_t *superclass;
	void *cache;
	void *vtable;
	struct _class_ro_t *ro;
};

struct _category_t {
	const char *name;
	struct _class_t *cls;
	const struct _method_list_t *instance_methods;
	const struct _method_list_t *class_methods;
	const struct _protocol_list_t *protocols;
	const struct _prop_list_t *properties;
};
extern "C" __declspec(dllimport) struct objc_cache _objc_empty_cache;
#pragma warning(disable:4273)

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_I$list __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct I_IMPL, list);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_I __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_I$list, "list", "@", 3, 8}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[2];
} _OBJC_$_INSTANCE_METHODS_I __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	2,
	{{(struct objc_selector *)"allObjects", "v16@0:8", (void *)_I_I_allObjects},
	{(struct objc_selector *)"Meth", "v16@0:8", (void *)_I_I_Meth}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_I __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"I",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_I __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct I_IMPL, list), sizeof(struct I_IMPL), 
	(unsigned int)0, 
	0, 
	"I",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_I,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_I,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_I;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_I __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_I,
	0, // &OBJC_CLASS_$_I,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_I,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_I __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_I,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_I,
};
static void OBJC_CLASS_SETUP_$_I(void ) {
	OBJC_METACLASS_$_I.isa = &OBJC_METACLASS_$_I;
	OBJC_METACLASS_$_I.superclass = &OBJC_CLASS_$_I;
	OBJC_METACLASS_$_I.cache = &_objc_empty_cache;
	OBJC_CLASS_$_I.isa = &OBJC_METACLASS_$_I;
	OBJC_CLASS_$_I.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_I,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [1] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_I,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
