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
#endif

struct X_IMPL{
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
static void __X__foo_block_func_0(struct __X__foo_block_impl_0 *__cself) {
  __Block_byref_kerfluffle_0 *kerfluffle = __cself->kerfluffle; // bound by ref
  __Block_byref_x_1 *x = __cself->x; // bound by ref
  X *self = __cself->self; // bound by copy

                                ((X_IMPL *)self)->y = 42;
                            (kerfluffle->__forwarding->kerfluffle) = 1;
			    (x->__forwarding->x) = 2;
                }
static void __X__foo_block_copy_0(struct __X__foo_block_impl_0*dst, struct __X__foo_block_impl_0*src) {_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->kerfluffle, (void*)src->kerfluffle, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->x, (void*)src->x, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __X__foo_block_dispose_0(struct __X__foo_block_impl_0*src) {_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->kerfluffle, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->x, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __X__foo_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
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
static void __X__foo_block_func_1(struct __X__foo_block_impl_1 *__cself) {
  __Block_byref_kerfluffle_0 *kerfluffle = __cself->kerfluffle; // bound by ref
  __Block_byref_x_1 *x = __cself->x; // bound by ref
  X *self = __cself->self; // bound by copy

                f((void (*)())&__X__foo_block_impl_0((void *)__X__foo_block_func_0, &__X__foo_block_desc_0_DATA, self, (__Block_byref_kerfluffle_0 *)kerfluffle, (__Block_byref_x_1 *)x, 570425344));
        }
static void __X__foo_block_copy_1(struct __X__foo_block_impl_1*dst, struct __X__foo_block_impl_1*src) {_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->kerfluffle, (void*)src->kerfluffle, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->x, (void*)src->x, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __X__foo_block_dispose_1(struct __X__foo_block_impl_1*src) {_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->kerfluffle, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->x, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __X__foo_block_desc_1 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __X__foo_block_impl_1*, struct __X__foo_block_impl_1*);
  void (*dispose)(struct __X__foo_block_impl_1*);
} __X__foo_block_desc_1_DATA = { 0, sizeof(struct __X__foo_block_impl_1), __X__foo_block_copy_1, __X__foo_block_dispose_1};

static void _I_X_foo(X * self, SEL _cmd) {
        __block __Block_byref_kerfluffle_0 kerfluffle = {(void*)0,(__Block_byref_kerfluffle_0 *)&kerfluffle, 0, sizeof(__Block_byref_kerfluffle_0)};
;
        // radar 7692183
        __block __Block_byref_x_1 x = {(void*)0,(__Block_byref_x_1 *)&x, 0, sizeof(__Block_byref_x_1)};
; 
        f((void (*)())&__X__foo_block_impl_1((void *)__X__foo_block_func_1, &__X__foo_block_desc_1_DATA, self, (__Block_byref_kerfluffle_0 *)&kerfluffle, (__Block_byref_x_1 *)&x, 570425344));
}
// @end

struct _objc_ivar {
	char *ivar_name;
	char *ivar_type;
	int ivar_offset;
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[1];
} _OBJC_INSTANCE_VARIABLES_X __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"y", "i", __OFFSETOFIVAR__(struct X_IMPL, y)}
	 }
};

struct _objc_method {
	SEL _cmd;
	char *method_types;
	void *_imp;
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[1];
} _OBJC_INSTANCE_METHODS_X __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"foo", "v16@0:8", (void *)_I_X_foo}
	 }
};

struct _objc_class {
	struct _objc_class *isa;
	const char *super_class_name;
	char *name;
	long version;
	long info;
	long instance_size;
	struct _objc_ivar_list *ivars;
	struct _objc_method_list *methods;
	struct objc_cache *cache;
	struct _objc_protocol_list *protocols;
	const char *ivar_layout;
	struct _objc_class_ext  *ext;
};

static struct _objc_class _OBJC_METACLASS_X __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"X", 0, "X", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_X __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_X, 0, "X", 0,1,sizeof(struct X_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_X
	, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_X, 0
	,0,0,0
};

struct _objc_symtab {
	long sel_ref_cnt;
	SEL *refs;
	short cls_def_cnt;
	short cat_def_cnt;
	void *defs[1];
};

static struct _objc_symtab _OBJC_SYMBOLS __attribute__((used, section ("__OBJC, __symbols")))= {
	0, 0, 1, 0
	,&_OBJC_CLASS_X
};


struct _objc_module {
	long version;
	long size;
	const char *name;
	struct _objc_symtab *symtab;
};

static struct _objc_module _OBJC_MODULES __attribute__ ((used, section ("__OBJC, __module_info")))= {
	7, sizeof(struct _objc_module), "", &_OBJC_SYMBOLS
};

#pragma section(".objc_module_info$B",long,read,write)
#pragma data_seg(push, ".objc_module_info$B")
static struct _objc_module *_POINTER_OBJC_MODULES = &_OBJC_MODULES;
#pragma data_seg(pop)

