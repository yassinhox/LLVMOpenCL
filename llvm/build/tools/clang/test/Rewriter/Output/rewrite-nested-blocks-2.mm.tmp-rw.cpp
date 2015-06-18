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
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// grep "static void __FUNC_block_copy_" %t-rw.cpp | count 2
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp
// grep "static void __FUNC_block_copy_" %t-modern-rw.cpp | count 2
// rdar://8499592

typedef unsigned long size_t;
void Outer(void (*bk)());
void Inner(void (*bk)());
void INNER_FUNC(id d);

void FUNC();

struct __FUNC_block_impl_0 {
  struct __block_impl impl;
  struct __FUNC_block_desc_0* Desc;
  id bar;
  __FUNC_block_impl_0(void *fp, struct __FUNC_block_desc_0 *desc, id _bar, int flags=0) : bar(_bar) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __FUNC_block_func_0(struct __FUNC_block_impl_0 *__cself) {
  id bar = __cself->bar; // bound by copy

            INNER_FUNC(bar);
        }
static void __FUNC_block_copy_0(struct __FUNC_block_impl_0*dst, struct __FUNC_block_impl_0*src) {_Block_object_assign((void*)&dst->bar, (void*)src->bar, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __FUNC_block_dispose_0(struct __FUNC_block_impl_0*src) {_Block_object_dispose((void*)src->bar, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __FUNC_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __FUNC_block_impl_0*, struct __FUNC_block_impl_0*);
  void (*dispose)(struct __FUNC_block_impl_0*);
} __FUNC_block_desc_0_DATA = { 0, sizeof(struct __FUNC_block_impl_0), __FUNC_block_copy_0, __FUNC_block_dispose_0};

struct __FUNC_block_impl_1 {
  struct __block_impl impl;
  struct __FUNC_block_desc_1* Desc;
  id bar;
  __FUNC_block_impl_1(void *fp, struct __FUNC_block_desc_1 *desc, id _bar, int flags=0) : bar(_bar) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __FUNC_block_func_1(struct __FUNC_block_impl_1 *__cself) {
  id bar = __cself->bar; // bound by copy

        Inner((void (*)())&__FUNC_block_impl_0((void *)__FUNC_block_func_0, &__FUNC_block_desc_0_DATA, bar, 570425344));
    }
static void __FUNC_block_copy_1(struct __FUNC_block_impl_1*dst, struct __FUNC_block_impl_1*src) {_Block_object_assign((void*)&dst->bar, (void*)src->bar, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __FUNC_block_dispose_1(struct __FUNC_block_impl_1*src) {_Block_object_dispose((void*)src->bar, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __FUNC_block_desc_1 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __FUNC_block_impl_1*, struct __FUNC_block_impl_1*);
  void (*dispose)(struct __FUNC_block_impl_1*);
} __FUNC_block_desc_1_DATA = { 0, sizeof(struct __FUNC_block_impl_1), __FUNC_block_copy_1, __FUNC_block_dispose_1};
void FUNC() {
    
    id bar = (id)42;
    Outer((void (*)())&__FUNC_block_impl_1((void *)__FUNC_block_func_1, &__FUNC_block_desc_1_DATA, bar, 570425344));    
}
