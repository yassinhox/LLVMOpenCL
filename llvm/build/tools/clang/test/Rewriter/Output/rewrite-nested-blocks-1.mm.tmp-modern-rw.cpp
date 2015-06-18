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
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp
// radar 7696893

typedef unsigned long size_t;
void *sel_registerName(const char *);

void f(void (*block)(void));
void f2(id);
void f3(int);
char f4(id, id);

#ifndef _REWRITER_typedef_Baz
#define _REWRITER_typedef_Baz
typedef struct objc_object Baz;
typedef struct {} _objc_exc_Baz;
#endif

// - (void)b:(void (^)(void))block;
/* @end */

#ifndef _REWRITER_typedef_Bar
#define _REWRITER_typedef_Bar
typedef struct objc_object Bar;
typedef struct {} _objc_exc_Bar;
#endif

/* @end */

#ifndef _REWRITER_typedef_Foo
#define _REWRITER_typedef_Foo
typedef struct objc_object Foo;
typedef struct {} _objc_exc_Foo;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllimport) unsigned long OBJC_IVAR_$_Foo$_x;
struct Foo_IMPL {
	int _x;
};

/* @end */

// @implementation Foo
struct __Block_byref_didit_0 {
  void *__isa;
__Block_byref_didit_0 *__forwarding;
 int __flags;
 int __size;
 char didit;
};
struct __Block_byref_upIsFinished_1 {
  void *__isa;
__Block_byref_upIsFinished_1 *__forwarding;
 int __flags;
 int __size;
 char upIsFinished;
};

struct __Foo__method__block_impl_0 {
  struct __block_impl impl;
  struct __Foo__method__block_desc_0* Desc;
  Bar *up;
  Baz *down;
  Foo *self;
  __Block_byref_didit_0 *didit; // by ref
  __Block_byref_upIsFinished_1 *upIsFinished; // by ref
  __Foo__method__block_impl_0(void *fp, struct __Foo__method__block_desc_0 *desc, Bar *_up, Baz *_down, Foo *_self, __Block_byref_didit_0 *_didit, __Block_byref_upIsFinished_1 *_upIsFinished, int flags=0) : up(_up), down(_down), self(_self), didit(_didit->__forwarding), upIsFinished(_upIsFinished->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 39 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-blocks-1.mm"
static void __Foo__method__block_func_0(struct __Foo__method__block_impl_0 *__cself) {
  __Block_byref_didit_0 *didit = __cself->didit; // bound by ref
  __Block_byref_upIsFinished_1 *upIsFinished = __cself->upIsFinished; // bound by ref
  Bar *up = __cself->up; // bound by copy
  Baz *down = __cself->down; // bound by copy
  Foo *self = __cself->self; // bound by copy

                                    (didit->__forwarding->didit) = f4(up, down);
									(upIsFinished->__forwarding->upIsFinished) = 'c';
                                    (*(int *)((char *)self + OBJC_IVAR_$_Foo$_x))++;
                                }
static void __Foo__method__block_copy_0(struct __Foo__method__block_impl_0*dst, struct __Foo__method__block_impl_0*src) {_Block_object_assign((void*)&dst->didit, (void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->up, (void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->down, (void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->upIsFinished, (void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Foo__method__block_dispose_0(struct __Foo__method__block_impl_0*src) {_Block_object_dispose((void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Foo__method__block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __Foo__method__block_impl_0*, struct __Foo__method__block_impl_0*);
  void (*dispose)(struct __Foo__method__block_impl_0*);
} __Foo__method__block_desc_0_DATA = { 0, sizeof(struct __Foo__method__block_impl_0), __Foo__method__block_copy_0, __Foo__method__block_dispose_0};

struct __Foo__method__block_impl_1 {
  struct __block_impl impl;
  struct __Foo__method__block_desc_1* Desc;
  Bar *up;
  Baz *down;
  Foo *self;
  __Block_byref_didit_0 *didit; // by ref
  __Block_byref_upIsFinished_1 *upIsFinished; // by ref
  __Foo__method__block_impl_1(void *fp, struct __Foo__method__block_desc_1 *desc, Bar *_up, Baz *_down, Foo *_self, __Block_byref_didit_0 *_didit, __Block_byref_upIsFinished_1 *_upIsFinished, int flags=0) : up(_up), down(_down), self(_self), didit(_didit->__forwarding), upIsFinished(_upIsFinished->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 38 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-blocks-1.mm"
static void __Foo__method__block_func_1(struct __Foo__method__block_impl_1 *__cself) {
  __Block_byref_didit_0 *didit = __cself->didit; // bound by ref
  __Block_byref_upIsFinished_1 *upIsFinished = __cself->upIsFinished; // bound by ref
  Bar *up = __cself->up; // bound by copy
  Baz *down = __cself->down; // bound by copy
  Foo *self = __cself->self; // bound by copy

                            f((void (*)())&__Foo__method__block_impl_0((void *)__Foo__method__block_func_0, &__Foo__method__block_desc_0_DATA, up, down, self, (__Block_byref_didit_0 *)didit, (__Block_byref_upIsFinished_1 *)upIsFinished, 570425344));
                        }

static struct __Foo__method__block_desc_1 {
  size_t reserved;
  size_t Block_size;
} __Foo__method__block_desc_1_DATA = { 0, sizeof(struct __Foo__method__block_impl_1)};

struct __Foo__method__block_impl_2 {
  struct __block_impl impl;
  struct __Foo__method__block_desc_2* Desc;
  Baz *down;
  Bar *up;
  Foo *self;
  __Block_byref_didit_0 *didit; // by ref
  __Block_byref_upIsFinished_1 *upIsFinished; // by ref
  __Foo__method__block_impl_2(void *fp, struct __Foo__method__block_desc_2 *desc, Baz *_down, Bar *_up, Foo *_self, __Block_byref_didit_0 *_didit, __Block_byref_upIsFinished_1 *_upIsFinished, int flags=0) : down(_down), up(_up), self(_self), didit(_didit->__forwarding), upIsFinished(_upIsFinished->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 37 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-blocks-1.mm"
static void __Foo__method__block_func_2(struct __Foo__method__block_impl_2 *__cself) {
  __Block_byref_didit_0 *didit = __cself->didit; // bound by ref
  __Block_byref_upIsFinished_1 *upIsFinished = __cself->upIsFinished; // bound by ref
  Baz *down = __cself->down; // bound by copy
  Bar *up = __cself->up; // bound by copy
  Foo *self = __cself->self; // bound by copy

                    ((void (*)(id, SEL, void (*)()))(void *)objc_msgSend)((id)down, sel_registerName("b:"), (void (*)())&__Foo__method__block_impl_1((void *)__Foo__method__block_func_1, &__Foo__method__block_desc_1_DATA, up, down, self, (__Block_byref_didit_0 *)didit, (__Block_byref_upIsFinished_1 *)upIsFinished, 570425344));
                }
static void __Foo__method__block_copy_2(struct __Foo__method__block_impl_2*dst, struct __Foo__method__block_impl_2*src) {_Block_object_assign((void*)&dst->down, (void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Foo__method__block_dispose_2(struct __Foo__method__block_impl_2*src) {_Block_object_dispose((void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Foo__method__block_desc_2 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __Foo__method__block_impl_2*, struct __Foo__method__block_impl_2*);
  void (*dispose)(struct __Foo__method__block_impl_2*);
} __Foo__method__block_desc_2_DATA = { 0, sizeof(struct __Foo__method__block_impl_2), __Foo__method__block_copy_2, __Foo__method__block_dispose_2};

struct __Foo__method__block_impl_3 {
  struct __block_impl impl;
  struct __Foo__method__block_desc_3* Desc;
  id cq;
  Baz *down;
  int at;
  Bar *up;
  Foo *self;
  __Block_byref_didit_0 *didit; // by ref
  __Block_byref_upIsFinished_1 *upIsFinished; // by ref
  __Foo__method__block_impl_3(void *fp, struct __Foo__method__block_desc_3 *desc, id _cq, Baz *_down, int _at, Bar *_up, Foo *_self, __Block_byref_didit_0 *_didit, __Block_byref_upIsFinished_1 *_upIsFinished, int flags=0) : cq(_cq), down(_down), at(_at), up(_up), self(_self), didit(_didit->__forwarding), upIsFinished(_upIsFinished->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 34 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-blocks-1.mm"
static void __Foo__method__block_func_3(struct __Foo__method__block_impl_3 *__cself) {
  __Block_byref_didit_0 *didit = __cself->didit; // bound by ref
  __Block_byref_upIsFinished_1 *upIsFinished = __cself->upIsFinished; // bound by ref
  id cq = __cself->cq; // bound by copy
  Baz *down = __cself->down; // bound by copy
  int at = __cself->at; // bound by copy
  Bar *up = __cself->up; // bound by copy
  Foo *self = __cself->self; // bound by copy

            id old_cq;
			f2(cq);
            ((void (*)(id, SEL, void (*)()))(void *)objc_msgSend)((id)down, sel_registerName("b:"), (void (*)())&__Foo__method__block_impl_2((void *)__Foo__method__block_func_2, &__Foo__method__block_desc_2_DATA, down, up, self, (__Block_byref_didit_0 *)didit, (__Block_byref_upIsFinished_1 *)upIsFinished, 570425344));
				f2(old_cq);
			f3(at);
    }
static void __Foo__method__block_copy_3(struct __Foo__method__block_impl_3*dst, struct __Foo__method__block_impl_3*src) {_Block_object_assign((void*)&dst->cq, (void*)src->cq, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->down, (void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Foo__method__block_dispose_3(struct __Foo__method__block_impl_3*src) {_Block_object_dispose((void*)src->cq, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Foo__method__block_desc_3 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __Foo__method__block_impl_3*, struct __Foo__method__block_impl_3*);
  void (*dispose)(struct __Foo__method__block_impl_3*);
} __Foo__method__block_desc_3_DATA = { 0, sizeof(struct __Foo__method__block_impl_3), __Foo__method__block_copy_3, __Foo__method__block_dispose_3};

#line 28 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-blocks-1.mm"
static void _I_Foo_method_(Foo * self, SEL _cmd, Bar *up) {
    Baz *down;
	int at;
    id cq;
    __block __Block_byref_didit_0 didit = {(void*)0,(__Block_byref_didit_0 *)&didit, 0, sizeof(__Block_byref_didit_0), 'a'};
    __block __Block_byref_upIsFinished_1 upIsFinished = {(void*)0,(__Block_byref_upIsFinished_1 *)&upIsFinished, 0, sizeof(__Block_byref_upIsFinished_1), 'b'};
    f((void (*)())&__Foo__method__block_impl_3((void *)__Foo__method__block_func_3, &__Foo__method__block_desc_3_DATA, cq, down, at, up, self, (__Block_byref_didit_0 *)&didit, (__Block_byref_upIsFinished_1 *)&upIsFinished, 570425344));
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

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo$_x __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct Foo_IMPL, _x);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_Foo$_x, "_x", "i", 2, 4}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[1];
} _OBJC_$_INSTANCE_METHODS_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	1,
	{{(struct objc_selector *)"method:", "v24@0:8@16", (void *)_I_Foo_method_}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"Foo",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct Foo_IMPL, _x), sizeof(struct Foo_IMPL), 
	(unsigned int)0, 
	0, 
	"Foo",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_Foo,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_Foo,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Foo __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo,
	0, // &OBJC_CLASS_$_Foo,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_Foo,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_Foo,
};
static void OBJC_CLASS_SETUP_$_Foo(void ) {
	OBJC_METACLASS_$_Foo.isa = &OBJC_METACLASS_$_Foo;
	OBJC_METACLASS_$_Foo.superclass = &OBJC_CLASS_$_Foo;
	OBJC_METACLASS_$_Foo.cache = &_objc_empty_cache;
	OBJC_CLASS_$_Foo.isa = &OBJC_METACLASS_$_Foo;
	OBJC_CLASS_$_Foo.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_Foo,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [1] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_Foo,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };