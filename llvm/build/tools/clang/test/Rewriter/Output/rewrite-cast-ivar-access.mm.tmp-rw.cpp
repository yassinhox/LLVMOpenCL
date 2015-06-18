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
// RUN: FileCheck -check-prefix LP --input-file=%t-rw.cpp %s
// radar 7575882

#ifndef _REWRITER_typedef_F
#define _REWRITER_typedef_F
typedef struct objc_object F;
#endif

struct F_IMPL{
  int supervar;
};
/* @end */

#ifndef _REWRITER_typedef_G
#define _REWRITER_typedef_G
typedef struct objc_object G;
#endif

struct G_IMPL{
    struct F_IMPL F_IVARS;

// @public
  int ivar;
};
/* @end */

// @implementation G

static void _I_G_foo_(G * self, SEL _cmd, F *arg) {
        int q = ((F_IMPL *)arg)->supervar;
        int v = ((G_IMPL *)((G *)arg))->ivar;
}
// @end

void objc_assign_strongCast(id);
void __CFAssignWithWriteBarrier(void **location, void *value) {
        objc_assign_strongCast((id)value);
}

// radar 7607605
#ifndef _REWRITER_typedef_RealClass
#define _REWRITER_typedef_RealClass
typedef struct objc_object RealClass;
#endif

struct RealClass_IMPL{
        // @public
        int f;
};
/* @end */

// @implementation RealClass
// @end

#ifndef _REWRITER_typedef_Foo
#define _REWRITER_typedef_Foo
typedef struct objc_object Foo;
#endif

struct Foo_IMPL{
        id reserved;
};
/* @end */

// @implementation Foo

static void _I_Foo_bar(Foo * self, SEL _cmd) {
        ((RealClass_IMPL *)((RealClass *)((Foo_IMPL *)self)->reserved))->f = 99;
}
// @end

// CHECK-LP: ((struct G_IMPL *)arg)->ivar

// CHECK-LP: objc_assign_strongCast((id)value)

// CHECK-LP: ((struct RealClass_IMPL *)((RealClass *)((struct Foo_IMPL *)self)->reserved))->f

struct _objc_ivar {
	char *ivar_name;
	char *ivar_type;
	int ivar_offset;
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[1];
} _OBJC_INSTANCE_VARIABLES_G __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"ivar", "i", __OFFSETOFIVAR__(struct G_IMPL, ivar)}
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
} _OBJC_INSTANCE_METHODS_G __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"foo:", "v24@0:8@16", (void *)_I_G_foo_}
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

static struct _objc_class _OBJC_METACLASS_G __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"F", "F", "G", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_G __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_G, "F", "G", 0,1,sizeof(struct G_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_G
	, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_G, 0
	,0,0,0
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[1];
} _OBJC_INSTANCE_VARIABLES_RealClass __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"f", "i", __OFFSETOFIVAR__(struct RealClass_IMPL, f)}
	 }
};

static struct _objc_class _OBJC_METACLASS_RealClass __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"RealClass", 0, "RealClass", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_RealClass __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_RealClass, 0, "RealClass", 0,1,sizeof(struct RealClass_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_RealClass
	,0,0,0,0,0
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[1];
} _OBJC_INSTANCE_VARIABLES_Foo __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"reserved", "@", __OFFSETOFIVAR__(struct Foo_IMPL, reserved)}
	 }
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[1];
} _OBJC_INSTANCE_METHODS_Foo __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"bar", "v16@0:8", (void *)_I_Foo_bar}
	 }
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
	void *defs[3];
};

static struct _objc_symtab _OBJC_SYMBOLS __attribute__((used, section ("__OBJC, __symbols")))= {
	0, 0, 3, 0
	,&_OBJC_CLASS_G
	,&_OBJC_CLASS_RealClass
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
