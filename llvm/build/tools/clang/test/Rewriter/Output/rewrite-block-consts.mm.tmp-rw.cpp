struct objc_selector; struct objc_class;
struct __rw_objc_super { struct objc_object *object; struct objc_object *superClass; __rw_objc_super(struct objc_object *o, struct objc_object *s) : object(o), superClass(s) {} };
#ifndef _REWRITER_typedef_Protocol
typedef struct objc_object Protocol;
#define _REWRITER_typedef_Protocol
#endif
#define __OBJC_RW_DLLIMPORT extern "C" __declspec(dllimport)
#define __OBJC_RW_STATICIMPORT extern "C"
__OBJC_RW_DLLIMPORT struct objc_object *objc_msgSend(struct objc_object *, struct objc_selector *, ...);
__OBJC_RW_DLLIMPORT struct objc_object *objc_msgSendSuper(struct objc_super *, struct objc_selector *, ...);
__OBJC_RW_DLLIMPORT struct objc_object* objc_msgSend_stret(struct objc_object *, struct objc_selector *, ...);
__OBJC_RW_DLLIMPORT struct objc_object* objc_msgSendSuper_stret(struct objc_super *, struct objc_selector *, ...);
__OBJC_RW_DLLIMPORT double objc_msgSend_fpret(struct objc_object *, struct objc_selector *, ...);
__OBJC_RW_DLLIMPORT struct objc_object *objc_getClass(const char *);
__OBJC_RW_DLLIMPORT struct objc_class *class_getSuperclass(struct objc_class *);
__OBJC_RW_DLLIMPORT struct objc_object *objc_getMetaClass(const char *);
__OBJC_RW_DLLIMPORT void objc_exception_throw(struct objc_object *);
__OBJC_RW_DLLIMPORT void objc_exception_try_enter(void *);
__OBJC_RW_DLLIMPORT void objc_exception_try_exit(void *);
__OBJC_RW_DLLIMPORT struct objc_object *objc_exception_extract(void *);
__OBJC_RW_DLLIMPORT int objc_exception_match(struct objc_class *, struct objc_object *);
__OBJC_RW_DLLIMPORT int objc_sync_enter(struct objc_object *);
__OBJC_RW_DLLIMPORT int objc_sync_exit(struct objc_object *);
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
#define __weak

#define __OFFSETOFIVAR__(TYPE, MEMBER) ((long long) &((TYPE *)0)->MEMBER)
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5 %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D__block="" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// rdar:// 8243071

void x(int y) {}
void f();
struct __Block_byref_bab_0 {
  void *__isa;
__Block_byref_bab_0 *__forwarding;
 int __flags;
 int __size;
 int bab;
};
struct __Block_byref_bas_1 {
  void *__isa;
__Block_byref_bas_1 *__forwarding;
 int __flags;
 int __size;
 const int bas;
};

struct __f_block_impl_0 {
  struct __block_impl impl;
  struct __f_block_desc_0* Desc;
  const int bar;
  int baz;
  struct __block_impl *b;
  __Block_byref_bab_0 *bab; // by ref
  __Block_byref_bas_1 *bas; // by ref
  __f_block_impl_0(void *fp, struct __f_block_desc_0 *desc, const int _bar, int _baz, void *_b, __Block_byref_bab_0 *_bab, __Block_byref_bas_1 *_bas, int flags=0) : bar(_bar), baz(_baz), b((struct __block_impl *)_b), bab(_bab->__forwarding), bas(_bas->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __f_block_func_0(struct __f_block_impl_0 *__cself) {
  __Block_byref_bab_0 *bab = __cself->bab; // bound by ref
  __Block_byref_bas_1 *bas = __cself->bas; // bound by ref
  const int bar = __cself->bar; // bound by copy
  int baz = __cself->baz; // bound by copy
  void (*b)() = (void (*)())__cself->b; // bound by copy

        x(bar);
        x(baz);
	x((bab->__forwarding->bab));
	x((bas->__forwarding->bas));
	((void (*)(__block_impl *))((__block_impl *)b)->FuncPtr)((__block_impl *)b);
    }
static void __f_block_copy_0(struct __f_block_impl_0*dst, struct __f_block_impl_0*src) {_Block_object_assign((void*)&dst->bab, (void*)src->bab, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->bas, (void*)src->bas, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->b, (void*)src->b, 7/*BLOCK_FIELD_IS_BLOCK*/);}

static void __f_block_dispose_0(struct __f_block_impl_0*src) {_Block_object_dispose((void*)src->bab, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->bas, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->b, 7/*BLOCK_FIELD_IS_BLOCK*/);}

static struct __f_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __f_block_impl_0*, struct __f_block_impl_0*);
  void (*dispose)(struct __f_block_impl_0*);
} __f_block_desc_0_DATA = { 0, sizeof(struct __f_block_impl_0), __f_block_copy_0, __f_block_dispose_0};
void f() {
    const int bar = 3;
    int baz = 4;
    __block __Block_byref_bab_0 bab = {(void*)0,(__Block_byref_bab_0 *)&bab, 0, sizeof(__Block_byref_bab_0), 4};
    __block const __Block_byref_bas_1 bas = {(void*)0,(__Block_byref_bas_1 *)&bas, 0, sizeof(__Block_byref_bas_1), 5};
    void (*b)() = (void (*)())&__f_block_impl_0((void *)__f_block_func_0, &__f_block_desc_0_DATA, bar, baz, (void *)b, (__Block_byref_bab_0 *)&bab, (__Block_byref_bas_1 *)&bas, 570425344);    
    ((void (*)(__block_impl *))((__block_impl *)b)->FuncPtr)((__block_impl *)b);
}
