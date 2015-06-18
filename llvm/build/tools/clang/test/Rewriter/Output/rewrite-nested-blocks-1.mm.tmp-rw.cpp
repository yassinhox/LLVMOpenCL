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
#endif

// - (void)b:(void (^)(void))block;
/* @end */

#ifndef _REWRITER_typedef_Bar
#define _REWRITER_typedef_Bar
typedef struct objc_object Bar;
#endif

/* @end */

#ifndef _REWRITER_typedef_Foo
#define _REWRITER_typedef_Foo
typedef struct objc_object Foo;
#endif

struct Foo_IMPL{
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
static void __Foo__method__block_func_0(struct __Foo__method__block_impl_0 *__cself) {
  __Block_byref_didit_0 *didit = __cself->didit; // bound by ref
  __Block_byref_upIsFinished_1 *upIsFinished = __cself->upIsFinished; // bound by ref
  Bar *up = __cself->up; // bound by copy
  Baz *down = __cself->down; // bound by copy
  Foo *self = __cself->self; // bound by copy

                                    (didit->__forwarding->didit) = f4(up, down);
									(upIsFinished->__forwarding->upIsFinished) = 'c';
                                    ((Foo_IMPL *)self)->_x++;
                                }
static void __Foo__method__block_copy_0(struct __Foo__method__block_impl_0*dst, struct __Foo__method__block_impl_0*src) {_Block_object_assign((void*)&dst->didit, (void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->up, (void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->down, (void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->upIsFinished, (void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Foo__method__block_dispose_0(struct __Foo__method__block_impl_0*src) {_Block_object_dispose((void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Foo__method__block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
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
static void __Foo__method__block_func_1(struct __Foo__method__block_impl_1 *__cself) {
  __Block_byref_didit_0 *didit = __cself->didit; // bound by ref
  __Block_byref_upIsFinished_1 *upIsFinished = __cself->upIsFinished; // bound by ref
  Bar *up = __cself->up; // bound by copy
  Baz *down = __cself->down; // bound by copy
  Foo *self = __cself->self; // bound by copy

                            f((void (*)())&__Foo__method__block_impl_0((void *)__Foo__method__block_func_0, &__Foo__method__block_desc_0_DATA, up, down, self, (__Block_byref_didit_0 *)didit, (__Block_byref_upIsFinished_1 *)upIsFinished, 570425344));
                        }
static void __Foo__method__block_copy_1(struct __Foo__method__block_impl_1*dst, struct __Foo__method__block_impl_1*src) {_Block_object_assign((void*)&dst->didit, (void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->up, (void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->down, (void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->upIsFinished, (void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Foo__method__block_dispose_1(struct __Foo__method__block_impl_1*src) {_Block_object_dispose((void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Foo__method__block_desc_1 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __Foo__method__block_impl_1*, struct __Foo__method__block_impl_1*);
  void (*dispose)(struct __Foo__method__block_impl_1*);
} __Foo__method__block_desc_1_DATA = { 0, sizeof(struct __Foo__method__block_impl_1), __Foo__method__block_copy_1, __Foo__method__block_dispose_1};

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
static void __Foo__method__block_func_2(struct __Foo__method__block_impl_2 *__cself) {
  __Block_byref_didit_0 *didit = __cself->didit; // bound by ref
  __Block_byref_upIsFinished_1 *upIsFinished = __cself->upIsFinished; // bound by ref
  Baz *down = __cself->down; // bound by copy
  Bar *up = __cself->up; // bound by copy
  Foo *self = __cself->self; // bound by copy

                    ((void (*)(id, SEL, void (*)()))(void *)objc_msgSend)((id)down, sel_registerName("b:"), (void (*)())&__Foo__method__block_impl_1((void *)__Foo__method__block_func_1, &__Foo__method__block_desc_1_DATA, up, down, self, (__Block_byref_didit_0 *)didit, (__Block_byref_upIsFinished_1 *)upIsFinished, 570425344));
                }
static void __Foo__method__block_copy_2(struct __Foo__method__block_impl_2*dst, struct __Foo__method__block_impl_2*src) {_Block_object_assign((void*)&dst->down, (void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->didit, (void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->up, (void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->upIsFinished, (void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Foo__method__block_dispose_2(struct __Foo__method__block_impl_2*src) {_Block_object_dispose((void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Foo__method__block_desc_2 {
  unsigned long reserved;
  unsigned long Block_size;
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
static void __Foo__method__block_copy_3(struct __Foo__method__block_impl_3*dst, struct __Foo__method__block_impl_3*src) {_Block_object_assign((void*)&dst->cq, (void*)src->cq, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->down, (void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->didit, (void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->up, (void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_assign((void*)&dst->upIsFinished, (void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Foo__method__block_dispose_3(struct __Foo__method__block_impl_3*src) {_Block_object_dispose((void*)src->cq, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->down, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->didit, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->up, 3/*BLOCK_FIELD_IS_OBJECT*/);_Block_object_dispose((void*)src->upIsFinished, 8/*BLOCK_FIELD_IS_BYREF*/);_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Foo__method__block_desc_3 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __Foo__method__block_impl_3*, struct __Foo__method__block_impl_3*);
  void (*dispose)(struct __Foo__method__block_impl_3*);
} __Foo__method__block_desc_3_DATA = { 0, sizeof(struct __Foo__method__block_impl_3), __Foo__method__block_copy_3, __Foo__method__block_dispose_3};

static void _I_Foo_method_(Foo * self, SEL _cmd, Bar *up) {
    Baz *down;
	int at;
    id cq;
    __block __Block_byref_didit_0 didit = {(void*)0,(__Block_byref_didit_0 *)&didit, 0, sizeof(__Block_byref_didit_0), 'a'};
    __block __Block_byref_upIsFinished_1 upIsFinished = {(void*)0,(__Block_byref_upIsFinished_1 *)&upIsFinished, 0, sizeof(__Block_byref_upIsFinished_1), 'b'};
    f((void (*)())&__Foo__method__block_impl_3((void *)__Foo__method__block_func_3, &__Foo__method__block_desc_3_DATA, cq, down, at, up, self, (__Block_byref_didit_0 *)&didit, (__Block_byref_upIsFinished_1 *)&upIsFinished, 570425344));
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
} _OBJC_INSTANCE_VARIABLES_Foo __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"_x", "i", __OFFSETOFIVAR__(struct Foo_IMPL, _x)}
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
} _OBJC_INSTANCE_METHODS_Foo __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"method:", "v24@0:8@16", (void *)_I_Foo_method_}
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

static struct _objc_class _OBJC_METACLASS_Foo __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"Foo", 0, "Foo", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_Foo __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_Foo, 0, "Foo", 0,1,sizeof(struct Foo_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_Foo
	, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_Foo, 0
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
	,&_OBJC_CLASS_Foo
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

