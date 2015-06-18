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
// RUN: %clang_cc1 -x objective-c++ -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5 %s -o %t-rw.cpp
// RUN: FileCheck  -check-prefix LP --input-file=%t-rw.cpp %s
// rdar://9846759

typedef void (*dispatch_block_t)(void);

extern int printf(const char*, ...);

extern "C" dispatch_block_t Block_copy(dispatch_block_t aBlock);

int main(int, char **);

struct __main_block_impl_0 {
  struct __block_impl impl;
  struct __main_block_desc_0* Desc;
  int argc;
  __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int _argc, int flags=0) : argc(_argc) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
  int argc = __cself->argc; // bound by copy
printf("argc = %d\n", argc); }

static struct __main_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0)};

struct __main_block_impl_1 {
  struct __block_impl impl;
  struct __main_block_desc_1* Desc;
  dispatch_block_t innerBlock;
  id innerObject;
  __main_block_impl_1(void *fp, struct __main_block_desc_1 *desc, dispatch_block_t _innerBlock, id _innerObject, int flags=0) : innerBlock(_innerBlock), innerObject(_innerObject) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __main_block_func_1(struct __main_block_impl_1 *__cself) {
  dispatch_block_t innerBlock = __cself->innerBlock; // bound by copy
  id innerObject = __cself->innerObject; // bound by copy

    printf("innerBlock is %x %x\n", innerBlock, innerObject);
  }
static void __main_block_copy_1(struct __main_block_impl_1*dst, struct __main_block_impl_1*src) {_Block_object_assign((void*)&dst->innerBlock, (void*)src->innerBlock, 7/*BLOCK_FIELD_IS_BLOCK*/);_Block_object_assign((void*)&dst->innerObject, (void*)src->innerObject, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __main_block_dispose_1(struct __main_block_impl_1*src) {_Block_object_dispose((void*)src->innerBlock, 7/*BLOCK_FIELD_IS_BLOCK*/);_Block_object_dispose((void*)src->innerObject, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __main_block_desc_1 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __main_block_impl_1*, struct __main_block_impl_1*);
  void (*dispose)(struct __main_block_impl_1*);
} __main_block_desc_1_DATA = { 0, sizeof(struct __main_block_impl_1), __main_block_copy_1, __main_block_dispose_1};
int main (int argc, char *argv[]) {

  dispatch_block_t innerBlock = (void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, argc);
  id innerObject = 0;

  printf("innerBlock is %x\n", innerBlock);

  dispatch_block_t wrapperBlock = (void (*)())&__main_block_impl_1((void *)__main_block_func_1, &__main_block_desc_1_DATA, innerBlock, innerObject, 570425344);

  ((void (*)(__block_impl *))((__block_impl *)wrapperBlock)->FuncPtr)((__block_impl *)wrapperBlock);

  dispatch_block_t copiedBlock = Block_copy(wrapperBlock);
  ((void (*)(__block_impl *))((__block_impl *)copiedBlock)->FuncPtr)((__block_impl *)copiedBlock);

  return 0;
}
// CHECK-LP: _Block_object_assign((void*)&dst->innerBlock, (void*)src->innerBlock, 7
// CHECK-LP: _Block_object_dispose((void*)src->innerBlock, 7
// CHECK-LP: _Block_object_assign((void*)&dst->innerObject, (void*)src->innerObject, 3
// CHECK-LP: _Block_object_dispose((void*)src->innerObject, 3
