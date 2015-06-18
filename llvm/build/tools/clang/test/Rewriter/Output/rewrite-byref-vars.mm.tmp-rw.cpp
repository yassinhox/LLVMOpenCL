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
// radar 7540194

extern "C" __declspec(dllexport) void BreakTheRewriter(int);
struct __Block_byref_aBlockVariable_0 {
  void *__isa;
__Block_byref_aBlockVariable_0 *__forwarding;
 int __flags;
 int __size;
 int aBlockVariable;
};
struct __Block_byref_bbBlockVariable_1 {
  void *__isa;
__Block_byref_bbBlockVariable_1 *__forwarding;
 int __flags;
 int __size;
 int bbBlockVariable;
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
static void __BreakTheRewriter_block_func_0(struct __BreakTheRewriter_block_impl_0 *__cself) {
  __Block_byref_aBlockVariable_0 *aBlockVariable = __cself->aBlockVariable; // bound by ref

                (aBlockVariable->__forwarding->aBlockVariable) = 42;
        }
static void __BreakTheRewriter_block_copy_0(struct __BreakTheRewriter_block_impl_0*dst, struct __BreakTheRewriter_block_impl_0*src) {_Block_object_assign((void*)&dst->aBlockVariable, (void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __BreakTheRewriter_block_dispose_0(struct __BreakTheRewriter_block_impl_0*src) {_Block_object_dispose((void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __BreakTheRewriter_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __BreakTheRewriter_block_impl_0*, struct __BreakTheRewriter_block_impl_0*);
  void (*dispose)(struct __BreakTheRewriter_block_impl_0*);
} __BreakTheRewriter_block_desc_0_DATA = { 0, sizeof(struct __BreakTheRewriter_block_impl_0), __BreakTheRewriter_block_copy_0, __BreakTheRewriter_block_dispose_0};

struct __BreakTheRewriter_block_impl_1 {
  struct __block_impl impl;
  struct __BreakTheRewriter_block_desc_1* Desc;
  __Block_byref_bbBlockVariable_1 *bbBlockVariable; // by ref
  __BreakTheRewriter_block_impl_1(void *fp, struct __BreakTheRewriter_block_desc_1 *desc, __Block_byref_bbBlockVariable_1 *_bbBlockVariable, int flags=0) : bbBlockVariable(_bbBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __BreakTheRewriter_block_func_1(struct __BreakTheRewriter_block_impl_1 *__cself) {
  __Block_byref_bbBlockVariable_1 *bbBlockVariable = __cself->bbBlockVariable; // bound by ref

                (bbBlockVariable->__forwarding->bbBlockVariable) = 42;
          }
static void __BreakTheRewriter_block_copy_1(struct __BreakTheRewriter_block_impl_1*dst, struct __BreakTheRewriter_block_impl_1*src) {_Block_object_assign((void*)&dst->bbBlockVariable, (void*)src->bbBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __BreakTheRewriter_block_dispose_1(struct __BreakTheRewriter_block_impl_1*src) {_Block_object_dispose((void*)src->bbBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __BreakTheRewriter_block_desc_1 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __BreakTheRewriter_block_impl_1*, struct __BreakTheRewriter_block_impl_1*);
  void (*dispose)(struct __BreakTheRewriter_block_impl_1*);
} __BreakTheRewriter_block_desc_1_DATA = { 0, sizeof(struct __BreakTheRewriter_block_impl_1), __BreakTheRewriter_block_copy_1, __BreakTheRewriter_block_dispose_1};
void BreakTheRewriter(int i) {
        __block __Block_byref_aBlockVariable_0 aBlockVariable = {(void*)0,(__Block_byref_aBlockVariable_0 *)&aBlockVariable, 0, sizeof(__Block_byref_aBlockVariable_0), 0};
        void (*aBlock)(void) = (void (*)())&__BreakTheRewriter_block_impl_0((void *)__BreakTheRewriter_block_func_0, &__BreakTheRewriter_block_desc_0_DATA, (__Block_byref_aBlockVariable_0 *)&aBlockVariable, 570425344);
        (aBlockVariable.__forwarding->aBlockVariable)++;
	if (i) {
	  __block __Block_byref_bbBlockVariable_1 bbBlockVariable = {(void*)0,(__Block_byref_bbBlockVariable_1 *)&bbBlockVariable, 0, sizeof(__Block_byref_bbBlockVariable_1), 0};
	  void (*aBlock)(void) = (void (*)())&__BreakTheRewriter_block_impl_1((void *)__BreakTheRewriter_block_func_1, &__BreakTheRewriter_block_desc_1_DATA, (__Block_byref_bbBlockVariable_1 *)&bbBlockVariable, 570425344);
        }
}

__declspec(dllexport) extern "C" __declspec(dllexport) void XXXXBreakTheRewriter();
struct __Block_byref_aBlockVariable_2 {
  void *__isa;
__Block_byref_aBlockVariable_2 *__forwarding;
 int __flags;
 int __size;
 int aBlockVariable;
};

struct __XXXXBreakTheRewriter_block_impl_0 {
  struct __block_impl impl;
  struct __XXXXBreakTheRewriter_block_desc_0* Desc;
  __Block_byref_aBlockVariable_2 *aBlockVariable; // by ref
  __XXXXBreakTheRewriter_block_impl_0(void *fp, struct __XXXXBreakTheRewriter_block_desc_0 *desc, __Block_byref_aBlockVariable_2 *_aBlockVariable, int flags=0) : aBlockVariable(_aBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __XXXXBreakTheRewriter_block_func_0(struct __XXXXBreakTheRewriter_block_impl_0 *__cself) {
  __Block_byref_aBlockVariable_2 *aBlockVariable = __cself->aBlockVariable; // bound by ref

                (aBlockVariable->__forwarding->aBlockVariable) = 42;
        }
static void __XXXXBreakTheRewriter_block_copy_0(struct __XXXXBreakTheRewriter_block_impl_0*dst, struct __XXXXBreakTheRewriter_block_impl_0*src) {_Block_object_assign((void*)&dst->aBlockVariable, (void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __XXXXBreakTheRewriter_block_dispose_0(struct __XXXXBreakTheRewriter_block_impl_0*src) {_Block_object_dispose((void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __XXXXBreakTheRewriter_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __XXXXBreakTheRewriter_block_impl_0*, struct __XXXXBreakTheRewriter_block_impl_0*);
  void (*dispose)(struct __XXXXBreakTheRewriter_block_impl_0*);
} __XXXXBreakTheRewriter_block_desc_0_DATA = { 0, sizeof(struct __XXXXBreakTheRewriter_block_impl_0), __XXXXBreakTheRewriter_block_copy_0, __XXXXBreakTheRewriter_block_dispose_0};

struct __XXXXBreakTheRewriter_block_impl_1 {
  struct __block_impl impl;
  struct __XXXXBreakTheRewriter_block_desc_1* Desc;
  __Block_byref_aBlockVariable_2 *aBlockVariable; // by ref
  __XXXXBreakTheRewriter_block_impl_1(void *fp, struct __XXXXBreakTheRewriter_block_desc_1 *desc, __Block_byref_aBlockVariable_2 *_aBlockVariable, int flags=0) : aBlockVariable(_aBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __XXXXBreakTheRewriter_block_func_1(struct __XXXXBreakTheRewriter_block_impl_1 *__cself) {
  __Block_byref_aBlockVariable_2 *aBlockVariable = __cself->aBlockVariable; // bound by ref

                (aBlockVariable->__forwarding->aBlockVariable) = 43;
        }
static void __XXXXBreakTheRewriter_block_copy_1(struct __XXXXBreakTheRewriter_block_impl_1*dst, struct __XXXXBreakTheRewriter_block_impl_1*src) {_Block_object_assign((void*)&dst->aBlockVariable, (void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __XXXXBreakTheRewriter_block_dispose_1(struct __XXXXBreakTheRewriter_block_impl_1*src) {_Block_object_dispose((void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __XXXXBreakTheRewriter_block_desc_1 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __XXXXBreakTheRewriter_block_impl_1*, struct __XXXXBreakTheRewriter_block_impl_1*);
  void (*dispose)(struct __XXXXBreakTheRewriter_block_impl_1*);
} __XXXXBreakTheRewriter_block_desc_1_DATA = { 0, sizeof(struct __XXXXBreakTheRewriter_block_impl_1), __XXXXBreakTheRewriter_block_copy_1, __XXXXBreakTheRewriter_block_dispose_1};

struct __XXXXBreakTheRewriter_block_impl_2 {
  struct __block_impl impl;
  struct __XXXXBreakTheRewriter_block_desc_2* Desc;
  __Block_byref_aBlockVariable_2 *aBlockVariable; // by ref
  __XXXXBreakTheRewriter_block_impl_2(void *fp, struct __XXXXBreakTheRewriter_block_desc_2 *desc, __Block_byref_aBlockVariable_2 *_aBlockVariable, int flags=0) : aBlockVariable(_aBlockVariable->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __XXXXBreakTheRewriter_block_func_2(struct __XXXXBreakTheRewriter_block_impl_2 *__cself) {
  __Block_byref_aBlockVariable_2 *aBlockVariable = __cself->aBlockVariable; // bound by ref

                (aBlockVariable->__forwarding->aBlockVariable) = 44;
        }
static void __XXXXBreakTheRewriter_block_copy_2(struct __XXXXBreakTheRewriter_block_impl_2*dst, struct __XXXXBreakTheRewriter_block_impl_2*src) {_Block_object_assign((void*)&dst->aBlockVariable, (void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __XXXXBreakTheRewriter_block_dispose_2(struct __XXXXBreakTheRewriter_block_impl_2*src) {_Block_object_dispose((void*)src->aBlockVariable, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __XXXXBreakTheRewriter_block_desc_2 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __XXXXBreakTheRewriter_block_impl_2*, struct __XXXXBreakTheRewriter_block_impl_2*);
  void (*dispose)(struct __XXXXBreakTheRewriter_block_impl_2*);
} __XXXXBreakTheRewriter_block_desc_2_DATA = { 0, sizeof(struct __XXXXBreakTheRewriter_block_impl_2), __XXXXBreakTheRewriter_block_copy_2, __XXXXBreakTheRewriter_block_dispose_2};
void XXXXBreakTheRewriter(void) {

        __block __Block_byref_aBlockVariable_2 aBlockVariable = {(void*)0,(__Block_byref_aBlockVariable_2 *)&aBlockVariable, 0, sizeof(__Block_byref_aBlockVariable_2), 0};
        void (*aBlock)(void) = (void (*)())&__XXXXBreakTheRewriter_block_impl_0((void *)__XXXXBreakTheRewriter_block_func_0, &__XXXXBreakTheRewriter_block_desc_0_DATA, (__Block_byref_aBlockVariable_2 *)&aBlockVariable, 570425344);
        (aBlockVariable.__forwarding->aBlockVariable)++;
        void (*bBlocks)(void) = (void (*)())&__XXXXBreakTheRewriter_block_impl_1((void *)__XXXXBreakTheRewriter_block_func_1, &__XXXXBreakTheRewriter_block_desc_1_DATA, (__Block_byref_aBlockVariable_2 *)&aBlockVariable, 570425344);
        void (*c)(void) = (void (*)())&__XXXXBreakTheRewriter_block_impl_2((void *)__XXXXBreakTheRewriter_block_func_2, &__XXXXBreakTheRewriter_block_desc_2_DATA, (__Block_byref_aBlockVariable_2 *)&aBlockVariable, 570425344);

}

#ifndef _REWRITER_typedef_I
#define _REWRITER_typedef_I
typedef struct objc_object I;
#endif

struct I_IMPL{
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
static void __I__allObjects_block_func_0(struct __I__allObjects_block_impl_0 *__cself) {
  __Block_byref_listp_3 *listp = __cself->listp; // bound by ref

      *(listp->__forwarding->listp)++ = 0;
    }
static void __I__allObjects_block_copy_0(struct __I__allObjects_block_impl_0*dst, struct __I__allObjects_block_impl_0*src) {_Block_object_assign((void*)&dst->listp, (void*)src->listp, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __I__allObjects_block_dispose_0(struct __I__allObjects_block_impl_0*src) {_Block_object_dispose((void*)src->listp, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __I__allObjects_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __I__allObjects_block_impl_0*, struct __I__allObjects_block_impl_0*);
  void (*dispose)(struct __I__allObjects_block_impl_0*);
} __I__allObjects_block_desc_0_DATA = { 0, sizeof(struct __I__allObjects_block_impl_0), __I__allObjects_block_copy_0, __I__allObjects_block_dispose_0};

static void _I_I_allObjects(I * self, SEL _cmd) {
    __attribute__((__blocks__(byref))) __Block_byref_listp_3 listp = {(void*)0,(__Block_byref_listp_3 *)&listp, 0, sizeof(__Block_byref_listp_3)};
;

    (void (*)())&__I__allObjects_block_impl_0((void *)__I__allObjects_block_func_0, &__I__allObjects_block_desc_0_DATA, (__Block_byref_listp_3 *)&listp, 570425344);
}
struct __Block_byref_listp_4 {
  void *__isa;
__Block_byref_listp_4 *__forwarding;
 int __flags;
 int __size;
 void **listp;
};

static void _I_I_Meth(I * self, SEL _cmd) { __attribute__((__blocks__(byref))) __Block_byref_listp_4 listp = {(void*)0,(__Block_byref_listp_4 *)&listp, 0, sizeof(__Block_byref_listp_4), (void **)((I_IMPL *)self)->list}; }
// @end

// $CLANG -cc1 -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5 -x objective-c++ -fblocks bug.mm
// g++ -c -D"__declspec(X)=" bug.cpp

struct _objc_ivar {
	char *ivar_name;
	char *ivar_type;
	int ivar_offset;
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[1];
} _OBJC_INSTANCE_VARIABLES_I __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"list", "@", __OFFSETOFIVAR__(struct I_IMPL, list)}
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
	struct _objc_method method_list[2];
} _OBJC_INSTANCE_METHODS_I __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 2
	,{{(SEL)"allObjects", "v16@0:8", (void *)_I_I_allObjects}
	  ,{(SEL)"Meth", "v16@0:8", (void *)_I_I_Meth}
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

static struct _objc_class _OBJC_METACLASS_I __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"I", 0, "I", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_I __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_I, 0, "I", 0,1,sizeof(struct I_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_I
	, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_I, 0
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
	,&_OBJC_CLASS_I
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

