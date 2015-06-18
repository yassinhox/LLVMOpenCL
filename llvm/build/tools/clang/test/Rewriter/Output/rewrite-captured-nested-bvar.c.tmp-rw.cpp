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
// RUN: %clang_cc1 -x c -fblocks -fms-extensions -rewrite-objc %s -o %t-rw.cpp
// RUN: FileCheck --input-file=%t-rw.cpp %s
// rdar://9006279


#line 5 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-captured-nested-bvar.c"
void q(void (*p)(void)) {
    ((void (*)(struct __block_impl *))((struct __block_impl *)p)->FuncPtr)((struct __block_impl *)p);
}

struct __Block_byref_BYREF_VAR_CHECK_0 {
  void *__isa;
__Block_byref_BYREF_VAR_CHECK_0 *__forwarding;
 int __flags;
 int __size;
 char BYREF_VAR_CHECK;
};
struct __Block_byref_d_1 {
  void *__isa;
__Block_byref_d_1 *__forwarding;
 int __flags;
 int __size;
 char d;
};
struct __Block_byref_e_2 {
  void *__isa;
__Block_byref_e_2 *__forwarding;
 int __flags;
 int __size;
 char e;
};

struct __f_block_impl_0 {
  struct __block_impl impl;
  struct __f_block_desc_0* Desc;
  __Block_byref_e_2 *e; // by ref
  __Block_byref_BYREF_VAR_CHECK_0 *BYREF_VAR_CHECK; // by ref
  __Block_byref_d_1 *d; // by ref
  __f_block_impl_0(void *fp, struct __f_block_desc_0 *desc, __Block_byref_e_2 *_e, __Block_byref_BYREF_VAR_CHECK_0 *_BYREF_VAR_CHECK, __Block_byref_d_1 *_d, int flags=0) : e(_e->__forwarding), BYREF_VAR_CHECK(_BYREF_VAR_CHECK->__forwarding), d(_d->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 18 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-captured-nested-bvar.c"
static void __f_block_func_0(struct __f_block_impl_0 *__cself) {
  __Block_byref_e_2 *e = __cself->e; // bound by ref
  __Block_byref_BYREF_VAR_CHECK_0 *BYREF_VAR_CHECK = __cself->BYREF_VAR_CHECK; // bound by ref
  __Block_byref_d_1 *d = __cself->d; // bound by ref

                 (e->__forwarding->e) = '1';
                 (BYREF_VAR_CHECK->__forwarding->BYREF_VAR_CHECK) = '2';
                 (d->__forwarding->d) = '3';
               }
static void __f_block_copy_0(struct __f_block_impl_0*dst, struct __f_block_impl_0*src) {_Block_object_assign((void*)&dst->e, (void*)src->e, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->BYREF_VAR_CHECK, (void*)src->BYREF_VAR_CHECK, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->d, (void*)src->d, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __f_block_dispose_0(struct __f_block_impl_0*src) {_Block_object_dispose((void*)src->e, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->BYREF_VAR_CHECK, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->d, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __f_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __f_block_impl_0*, struct __f_block_impl_0*);
  void (*dispose)(struct __f_block_impl_0*);
} __f_block_desc_0_DATA = { 0, sizeof(struct __f_block_impl_0), __f_block_copy_0, __f_block_dispose_0};

struct __f_block_impl_1 {
  struct __block_impl impl;
  struct __f_block_desc_1* Desc;
  __Block_byref_BYREF_VAR_CHECK_0 *BYREF_VAR_CHECK; // by ref
  __Block_byref_d_1 *d; // by ref
  __f_block_impl_1(void *fp, struct __f_block_desc_1 *desc, __Block_byref_BYREF_VAR_CHECK_0 *_BYREF_VAR_CHECK, __Block_byref_d_1 *_d, int flags=0) : BYREF_VAR_CHECK(_BYREF_VAR_CHECK->__forwarding), d(_d->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 13 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-captured-nested-bvar.c"
static void __f_block_func_1(struct __f_block_impl_1 *__cself) {
  __Block_byref_BYREF_VAR_CHECK_0 *BYREF_VAR_CHECK = __cself->BYREF_VAR_CHECK; // bound by ref
  __Block_byref_d_1 *d = __cself->d; // bound by ref

            __block __Block_byref_e_2 e = {(void*)0,(__Block_byref_e_2 *)&e, 0, sizeof(__Block_byref_e_2), 'e'};
            char l = 'l';
            (BYREF_VAR_CHECK->__forwarding->BYREF_VAR_CHECK) = 'b';
            (d->__forwarding->d) = 'd';
            q((void (*)(void))&__f_block_impl_0((void *)__f_block_func_0, &__f_block_desc_0_DATA, (struct __Block_byref_e_2 *)&e, (struct __Block_byref_BYREF_VAR_CHECK_0 *)BYREF_VAR_CHECK, (struct __Block_byref_d_1 *)d, 570425344)
             );
        }
static void __f_block_copy_1(struct __f_block_impl_1*dst, struct __f_block_impl_1*src) {_Block_object_assign((void*)&dst->BYREF_VAR_CHECK, (void*)src->BYREF_VAR_CHECK, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->d, (void*)src->d, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __f_block_dispose_1(struct __f_block_impl_1*src) {_Block_object_dispose((void*)src->BYREF_VAR_CHECK, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->d, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __f_block_desc_1 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __f_block_impl_1*, struct __f_block_impl_1*);
  void (*dispose)(struct __f_block_impl_1*);
} __f_block_desc_1_DATA = { 0, sizeof(struct __f_block_impl_1), __f_block_copy_1, __f_block_dispose_1};

struct __f_block_impl_2 {
  struct __block_impl impl;
  struct __f_block_desc_2* Desc;
  __Block_byref_BYREF_VAR_CHECK_0 *BYREF_VAR_CHECK; // by ref
  __Block_byref_d_1 *d; // by ref
  __f_block_impl_2(void *fp, struct __f_block_desc_2 *desc, __Block_byref_BYREF_VAR_CHECK_0 *_BYREF_VAR_CHECK, __Block_byref_d_1 *_d, int flags=0) : BYREF_VAR_CHECK(_BYREF_VAR_CHECK->__forwarding), d(_d->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 12 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-captured-nested-bvar.c"
static void __f_block_func_2(struct __f_block_impl_2 *__cself) {
  __Block_byref_BYREF_VAR_CHECK_0 *BYREF_VAR_CHECK = __cself->BYREF_VAR_CHECK; // bound by ref
  __Block_byref_d_1 *d = __cself->d; // bound by ref

        q((void (*)(void))&__f_block_impl_1((void *)__f_block_func_1, &__f_block_desc_1_DATA, (struct __Block_byref_BYREF_VAR_CHECK_0 *)BYREF_VAR_CHECK, (struct __Block_byref_d_1 *)d, 570425344));
    }

static struct __f_block_desc_2 {
  size_t reserved;
  size_t Block_size;
} __f_block_desc_2_DATA = { 0, sizeof(struct __f_block_impl_2)};

#line 9 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-captured-nested-bvar.c"
void f() {
    __block __Block_byref_BYREF_VAR_CHECK_0 BYREF_VAR_CHECK = {(void*)0,(__Block_byref_BYREF_VAR_CHECK_0 *)&BYREF_VAR_CHECK, 0, sizeof(__Block_byref_BYREF_VAR_CHECK_0), 'a'};
    __block __Block_byref_d_1 d = {(void*)0,(__Block_byref_d_1 *)&d, 0, sizeof(__Block_byref_d_1), 'd'};
    q((void (*)(void))&__f_block_impl_2((void *)__f_block_func_2, &__f_block_desc_2_DATA, (struct __Block_byref_BYREF_VAR_CHECK_0 *)&BYREF_VAR_CHECK, (struct __Block_byref_d_1 *)&d, 570425344));
}


#line 28 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-captured-nested-bvar.c"
int main() {
    f();
    return 0;
}

// CHECK 2: (__Block_byref_BYREF_VAR_CHECK_0 *)BYREF_VAR_CHECK
// CHECK: (__Block_byref_BYREF_VAR_CHECK_0 *)&BYREF_VAR_CHECK
// CHECK: (struct __Block_byref_BYREF_VAR_CHECK_0 *)&BYREF_VAR_CHECK, (struct __Block_byref_d_1 *)&d, 570425344));
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
