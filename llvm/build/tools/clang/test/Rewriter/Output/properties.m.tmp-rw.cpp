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
// RUN: %clang_cc1 -x objective-c -Wno-return-type -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5  %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fms-extensions -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp

void *sel_registerName(const char *);

#ifndef _REWRITER_typedef_Foo
#define _REWRITER_typedef_Foo
typedef struct objc_object Foo;
#endif

struct Foo_IMPL{
    int i;
    int rrrr;
    Foo *o;
};
// @property int i;
// @property(readonly) int rrrr;
// @property int d;
// @property(retain) Foo *o;

// - (void)foo;
/* @end */

// @implementation Foo
// @synthesize i;
static int _I_Foo_i(Foo * self, SEL _cmd) { return ((struct Foo_IMPL *)self)->i; }
static void _I_Foo_setI_(Foo * self, SEL _cmd, int i) { ((struct Foo_IMPL *)self)->i = i; }
// @synthesize rrrr;
static int _I_Foo_rrrr(Foo * self, SEL _cmd) { return ((struct Foo_IMPL *)self)->rrrr; }
// @synthesize o;
extern "C" __declspec(dllimport) id objc_getProperty(id, SEL, long, bool);

static Foo * _I_Foo_o(Foo * self, SEL _cmd) { typedef Foo * _TYPE;
return (_TYPE)objc_getProperty(self, _cmd, __OFFSETOFIVAR__(struct Foo_IMPL, o), 1); }
extern "C" __declspec(dllimport) void objc_setProperty (id, SEL, long, id, bool, bool);

static void _I_Foo_setO_(Foo * self, SEL _cmd, Foo *o) { objc_setProperty (self, _cmd, __OFFSETOFIVAR__(struct Foo_IMPL, o), (id)o, 1, 0); }

// @dynamic d;


static void _I_Foo_foo(Foo * self, SEL _cmd) {
    ((struct Foo_IMPL *)self)->i = 99;
}


static int _I_Foo_bar(Foo * self, SEL _cmd) {
  return ((struct Foo_IMPL *)self)->i;
}
// @end

#ifndef _REWRITER_typedef_Bar
#define _REWRITER_typedef_Bar
typedef struct objc_object Bar;
#endif

/* @end */

// @implementation Bar

static int func(int i) { return 0; }


static void _I_Bar_baz(Bar * self, SEL _cmd) {
    Foo *obj1, *obj2;
    int i;
    if (((int (*)(id, SEL))(void *)objc_msgSend)((id)obj1, sel_registerName("i")) == ((int (*)(id, SEL))(void *)objc_msgSend)((id)obj2, sel_registerName("rrrr")))
      ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)obj1, sel_registerName("setI:"), 33);
    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)obj1, sel_registerName("setI:"), func(((int (*)(id, SEL))(void *)objc_msgSend)((id)obj2, sel_registerName("rrrr"))));
    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)obj1, sel_registerName("setI:"), ((int (*)(id, SEL))(void *)objc_msgSend)((id)obj2, sel_registerName("rrrr")));
    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)obj1, sel_registerName("setI:"), ((int (*)(id, SEL))(void *)objc_msgSend)((id)obj2, sel_registerName("rrrr")));
    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)obj1, sel_registerName("setI:"), ((int (*)(id, SEL))(void *)objc_msgSend)((id)obj2, sel_registerName("rrrr")));
    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)obj1, sel_registerName("setI:"), ((int (*)(id, SEL))(void *)objc_msgSend)((id)obj2, sel_registerName("rrrr")));
    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)obj1, sel_registerName("setI:"), 3 + ((int (*)(id, SEL))(void *)objc_msgSend)((id)obj2, sel_registerName("rrrr")));
    i = ((int (*)(id, SEL))(void *)objc_msgSend)((id)((Foo *(*)(id, SEL))(void *)objc_msgSend)((id)obj1, sel_registerName("o")), sel_registerName("i"));
    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)((Foo *(*)(id, SEL))(void *)objc_msgSend)((id)obj1, sel_registerName("o")), sel_registerName("setI:"), 77);
}
// @end

struct _objc_ivar {
	char *ivar_name;
	char *ivar_type;
	int ivar_offset;
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[3];
} _OBJC_INSTANCE_VARIABLES_Foo __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	3
	,{{"i", "i", __OFFSETOFIVAR__(struct Foo_IMPL, i)}
	  ,{"rrrr", "i", __OFFSETOFIVAR__(struct Foo_IMPL, rrrr)}
	  ,{"o", "@\"Foo\"", __OFFSETOFIVAR__(struct Foo_IMPL, o)}
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
	struct _objc_method method_list[7];
} _OBJC_INSTANCE_METHODS_Foo __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 7
	,{{(SEL)"foo", "v16@0:8", (void *)_I_Foo_foo}
	  ,{(SEL)"bar", "i16@0:8", (void *)_I_Foo_bar}
	  ,{(SEL)"i", "i16@0:8", (void *)_I_Foo_i}
	  ,{(SEL)"setI:", "v20@0:8i16", (void *)_I_Foo_setI_}
	  ,{(SEL)"rrrr", "i16@0:8", (void *)_I_Foo_rrrr}
	  ,{(SEL)"o", "@16@0:8", (void *)_I_Foo_o}
	  ,{(SEL)"setO:", "v24@0:8@16", (void *)_I_Foo_setO_}
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

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[1];
} _OBJC_INSTANCE_METHODS_Bar __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"baz", "v16@0:8", (void *)_I_Bar_baz}
	 }
};

static struct _objc_class _OBJC_METACLASS_Bar __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"Bar", 0, "Bar", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_Bar __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_Bar, 0, "Bar", 0,1,0,0, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_Bar, 0
	,0,0,0
};

struct _objc_symtab {
	long sel_ref_cnt;
	SEL *refs;
	short cls_def_cnt;
	short cat_def_cnt;
	void *defs[2];
};

static struct _objc_symtab _OBJC_SYMBOLS __attribute__((used, section ("__OBJC, __symbols")))= {
	0, 0, 2, 0
	,&_OBJC_CLASS_Foo
	,&_OBJC_CLASS_Bar
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

