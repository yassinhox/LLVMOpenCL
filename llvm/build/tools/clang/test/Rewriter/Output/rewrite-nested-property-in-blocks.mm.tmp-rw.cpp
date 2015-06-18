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
// RUN: %clang_cc1 -fsyntax-only -fms-extensions -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fms-extensions -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp
// radar 8608293

typedef unsigned long size_t;
void *sel_registerName(const char *);

extern "C" void nowarn(id);

extern "C" void noblockwarn(void (*)());

#ifndef _REWRITER_typedef_INTFOFPROP
#define _REWRITER_typedef_INTFOFPROP
typedef struct objc_object INTFOFPROP;
#endif
 
// @property (readwrite, retain) INTFOFPROP *outer;
// @property (readwrite, retain) id inner;
/* @end */

#ifndef _REWRITER_typedef_NSSet
#define _REWRITER_typedef_NSSet
typedef struct objc_object NSSet;
#endif

// - (NSSet *)objectsPassingTest:(char (^)(id obj, char *stop))predicate ;
/* @end */

#ifndef _REWRITER_typedef_INTF
#define _REWRITER_typedef_INTF
typedef struct objc_object INTF;
#endif

// - (NSSet *)Meth;
/* @end */

// @implementation INTF


struct __INTF__Meth_block_impl_0 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_0* Desc;
  __INTF__Meth_block_impl_0(void *fp, struct __INTF__Meth_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __INTF__Meth_block_func_0(struct __INTF__Meth_block_impl_0 *__cself) {

          INTFOFPROP *ace;
          nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
        }

static struct __INTF__Meth_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
} __INTF__Meth_block_desc_0_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_0)};

struct __INTF__Meth_block_impl_1 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_1* Desc;
  __INTF__Meth_block_impl_1(void *fp, struct __INTF__Meth_block_desc_1 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __INTF__Meth_block_func_1(struct __INTF__Meth_block_impl_1 *__cself) {

        INTFOFPROP *ace;
        nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
        noblockwarn((void (*)())&__INTF__Meth_block_impl_0((void *)__INTF__Meth_block_func_0, &__INTF__Meth_block_desc_0_DATA));
    }

static struct __INTF__Meth_block_desc_1 {
  unsigned long reserved;
  unsigned long Block_size;
} __INTF__Meth_block_desc_1_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_1)};

struct __INTF__Meth_block_impl_2 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_2* Desc;
  __INTF__Meth_block_impl_2(void *fp, struct __INTF__Meth_block_desc_2 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __INTF__Meth_block_func_2(struct __INTF__Meth_block_impl_2 *__cself) {

        INTFOFPROP *ace;
        nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
    }

static struct __INTF__Meth_block_desc_2 {
  unsigned long reserved;
  unsigned long Block_size;
} __INTF__Meth_block_desc_2_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_2)};

struct __INTF__Meth_block_impl_3 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_3* Desc;
  __INTF__Meth_block_impl_3(void *fp, struct __INTF__Meth_block_desc_3 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static char __INTF__Meth_block_func_3(struct __INTF__Meth_block_impl_3 *__cself, id obj, char *stop) {

        INTFOFPROP *ace = (INTFOFPROP *)obj;
        nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
        return (char)0;
    }

static struct __INTF__Meth_block_desc_3 {
  unsigned long reserved;
  unsigned long Block_size;
} __INTF__Meth_block_desc_3_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_3)};

static NSSet * _I_INTF_Meth(INTF * self, SEL _cmd) {
    NSSet *aces;

    noblockwarn((void (*)())&__INTF__Meth_block_impl_1((void *)__INTF__Meth_block_func_1, &__INTF__Meth_block_desc_1_DATA));

    noblockwarn((void (*)())&__INTF__Meth_block_impl_2((void *)__INTF__Meth_block_func_2, &__INTF__Meth_block_desc_2_DATA));

return ((NSSet *(*)(id, SEL, char (*)(id, char *)))(void *)objc_msgSend)((id)aces, sel_registerName("objectsPassingTest:"), (char (*)(id, char *))&__INTF__Meth_block_impl_3((void *)__INTF__Meth_block_func_3, &__INTF__Meth_block_desc_3_DATA));

}
// @end

struct _objc_method {
	SEL _cmd;
	char *method_types;
	void *_imp;
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[1];
} _OBJC_INSTANCE_METHODS_INTF __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"Meth", "@16@0:8", (void *)_I_INTF_Meth}
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

static struct _objc_class _OBJC_METACLASS_INTF __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"INTF", 0, "INTF", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_INTF __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_INTF, 0, "INTF", 0,1,0,0, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_INTF, 0
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
	,&_OBJC_CLASS_INTF
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

