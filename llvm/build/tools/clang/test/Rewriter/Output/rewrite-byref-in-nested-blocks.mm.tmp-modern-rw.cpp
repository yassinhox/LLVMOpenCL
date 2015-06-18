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
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5 %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"SEL=void*" -U__declspec -D"__declspec(X)=" %t-rw.cpp
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Werror -Wno-address-of-temporary -D"SEL=void*" -U__declspec  -D"__declspec(X)=" %t-modern-rw.cpp
// radar 7692350

// rdar://11375908
typedef unsigned long size_t;

void f(void (*block)(void));

#ifndef _REWRITER_typedef_X
#define _REWRITER_typedef_X
typedef struct objc_object X;
typedef struct {} _objc_exc_X;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllimport) unsigned long OBJC_IVAR_$_X$y;
struct X_IMPL {
	int y;
};

// - (void)foo;
/* @end */

// @implementation X
struct __Block_byref_kerfluffle_0 {
  void *__isa;
__Block_byref_kerfluffle_0 *__forwarding;
 int __flags;
 int __size;
 int kerfluffle;
};
struct __Block_byref_x_1 {
  void *__isa;
__Block_byref_x_1 *__forwarding;
 int __flags;
 int __size;
 int x;
};

struct __X__foo_block_impl_0 {
  struct __block_impl impl;
  struct __X__foo_block_desc_0* Desc;
  X *self;
  __Block_byref_kerfluffle_0 *kerfluffle; // by ref
  __Block_byref_x_1 *x; // by ref
  __X__foo_block_impl_0(void *fp, struct __X__foo_block_desc_0 *desc, X *_self, __Block_byref_kerfluffle_0 *_kerfluffle, __Block_byref_x_1 *_x, int flags=0) : self(_self), kerfluffle(_kerfluffle->__forwarding), x(_x->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 24 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-byref-in-nested-blocks.mm"
static void __X__foo_block_func_0(struct __X__foo_block_impl_0 *__cself) {
  __Block_byref_kerfluffle_0 *kerfluffle = __cself->kerfluffle; // bound by ref
  __Block_byref_x_1 *x = __cself->x; // bound by ref
  X *self = __cself->self; // bound by copy

                                (*(int *)((char *)self + OBJC_IVAR_$_X$y)) = 42;
                            (kerfluffle->__forwarding->kerfluffle) = 1;
			    (x->__forwarding->x) = 2;
                }
static void __X__foo_block_copy_0(struct __X__foo_block_impl_0*dst, struct __X__foo_block_impl_0*src) {_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->kerfluffle, (void*)src->kerfluffle, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->x, (void*)src->x, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __X__foo_block_dispose_0(struct __X__foo_block_impl_0*src) {_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->kerfluffle, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->x, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __X__foo_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __X__foo_block_impl_0*, struct __X__foo_block_impl_0*);
  void (*dispose)(struct __X__foo_block_impl_0*);
} __X__foo_block_desc_0_DATA = { 0, sizeof(struct __X__foo_block_impl_0), __X__foo_block_copy_0, __X__foo_block_dispose_0};

struct __X__foo_block_impl_1 {
  struct __block_impl impl;
  struct __X__foo_block_desc_1* Desc;
  X *self;
  __Block_byref_kerfluffle_0 *kerfluffle; // by ref
  __Block_byref_x_1 *x; // by ref
  __X__foo_block_impl_1(void *fp, struct __X__foo_block_desc_1 *desc, X *_self, __Block_byref_kerfluffle_0 *_kerfluffle, __Block_byref_x_1 *_x, int flags=0) : self(_self), kerfluffle(_kerfluffle->__forwarding), x(_x->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 23 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-byref-in-nested-blocks.mm"
static void __X__foo_block_func_1(struct __X__foo_block_impl_1 *__cself) {
  __Block_byref_kerfluffle_0 *kerfluffle = __cself->kerfluffle; // bound by ref
  __Block_byref_x_1 *x = __cself->x; // bound by ref
  X *self = __cself->self; // bound by copy

                f((void (*)())&__X__foo_block_impl_0((void *)__X__foo_block_func_0, &__X__foo_block_desc_0_DATA, self, (__Block_byref_kerfluffle_0 *)kerfluffle, (__Block_byref_x_1 *)x, 570425344));
        }

static struct __X__foo_block_desc_1 {
  size_t reserved;
  size_t Block_size;
} __X__foo_block_desc_1_DATA = { 0, sizeof(struct __X__foo_block_impl_1)};

#line 19 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-byref-in-nested-blocks.mm"
static void _I_X_foo(X * self, SEL _cmd) {
        __block __Block_byref_kerfluffle_0 kerfluffle = {(void*)0,(__Block_byref_kerfluffle_0 *)&kerfluffle, 0, sizeof(__Block_byref_kerfluffle_0)};
;
        // radar 7692183
        __block __Block_byref_x_1 x = {(void*)0,(__Block_byref_x_1 *)&x, 0, sizeof(__Block_byref_x_1)};
; 
        f((void (*)())&__X__foo_block_impl_1((void *)__X__foo_block_func_1, &__X__foo_block_desc_1_DATA, self, (__Block_byref_kerfluffle_0 *)&kerfluffle, (__Block_byref_x_1 *)&x, 570425344));
}
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

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_X$y __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct X_IMPL, y);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_X __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_X$y, "y", "i", 2, 4}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[1];
} _OBJC_$_INSTANCE_METHODS_X __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	1,
	{{(struct objc_selector *)"foo", "v16@0:8", (void *)_I_X_foo}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_X __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"X",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_X __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct X_IMPL, y), sizeof(struct X_IMPL), 
	(unsigned int)0, 
	0, 
	"X",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_X,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_X,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_X;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_X __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_X,
	0, // &OBJC_CLASS_$_X,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_X,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_X __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_X,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_X,
};
static void OBJC_CLASS_SETUP_$_X(void ) {
	OBJC_METACLASS_$_X.isa = &OBJC_METACLASS_$_X;
	OBJC_METACLASS_$_X.superclass = &OBJC_CLASS_$_X;
	OBJC_METACLASS_$_X.cache = &_objc_empty_cache;
	OBJC_CLASS_$_X.isa = &OBJC_METACLASS_$_X;
	OBJC_CLASS_$_X.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_X,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [1] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_X,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
