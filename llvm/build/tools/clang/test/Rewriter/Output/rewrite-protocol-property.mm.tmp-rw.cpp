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
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -Did="void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// rdar:// 8558702

// @class NSString;
#ifndef _REWRITER_typedef_NSString
#define _REWRITER_typedef_NSString
typedef struct objc_object NSString;
#endif

#ifndef _REWRITER_typedef_NSObject
#define _REWRITER_typedef_NSObject
typedef struct objc_object NSObject;
#endif
 /* @end */

// @protocol P
// @property (retain) NSString* test;
/* @end */


#ifndef _REWRITER_typedef_A
#define _REWRITER_typedef_A
typedef struct objc_object A;
#endif

struct A_IMPL{
	NSString* _test;
};
/* @end */


// @implementation A
// @synthesize test=_test;
extern "C" __declspec(dllimport) id objc_getProperty(id, SEL, long, bool);

static NSString * _I_A_test(A * self, SEL _cmd) { typedef NSString * _TYPE;
return (_TYPE)objc_getProperty(self, _cmd, __OFFSETOFIVAR__(struct A_IMPL, _test), 1); }
extern "C" __declspec(dllimport) void objc_setProperty (id, SEL, long, id, bool, bool);

static void _I_A_setTest_(A * self, SEL _cmd, NSString *test) { objc_setProperty (self, _cmd, __OFFSETOFIVAR__(struct A_IMPL, _test), (id)test, 1, 0); }
// @end


struct _objc_ivar {
	char *ivar_name;
	char *ivar_type;
	int ivar_offset;
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[1];
} _OBJC_INSTANCE_VARIABLES_A __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"_test", "@\"NSString\"", __OFFSETOFIVAR__(struct A_IMPL, _test)}
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
} _OBJC_INSTANCE_METHODS_A __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 2
	,{{(SEL)"test", "@16@0:8", (void *)_I_A_test}
	  ,{(SEL)"setTest:", "v24@0:8@16", (void *)_I_A_setTest_}
	 }
};

struct _protocol_methods {
	struct objc_selector *_cmd;
	char *method_types;
};

static struct {
	int protocol_method_count;
	struct _protocol_methods protocol_methods[2];
} _OBJC_PROTOCOL_INSTANCE_METHODS_P __attribute__ ((used, section ("__OBJC, __cat_inst_meth")))= {
	2
	  ,{{(struct objc_selector *)"test", "@16@0:8"}
	  ,{(struct objc_selector *)"setTest:", "v24@0:8@16"}
	 }
};

struct _objc_protocol {
	struct _objc_protocol_extension *isa;
	char *protocol_name;
	struct _objc_protocol **protocol_list;
	struct _objc_protocol_method_list *instance_methods;
	struct _objc_protocol_method_list *class_methods;
};

static struct _objc_protocol _OBJC_PROTOCOL_P __attribute__ ((used, section ("__OBJC, __protocol")))= {
	0, "P", 0, (struct _objc_protocol_method_list *)&_OBJC_PROTOCOL_INSTANCE_METHODS_P, 0
};

static struct {
	struct _objc_protocol_list *next;
	int    protocol_count;
	struct _objc_protocol *class_protocols[1];
} _OBJC_CLASS_PROTOCOLS_A __attribute__ ((used, section ("__OBJC, __cat_cls_meth")))= {
	0, 1
	,{&_OBJC_PROTOCOL_P 
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

static struct _objc_class _OBJC_METACLASS_A __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"NSObject", "NSObject", "A", 0,2, sizeof(struct _objc_class), 0, 0
	,0, (struct _objc_protocol_list *)&_OBJC_CLASS_PROTOCOLS_A,0,0
};

static struct _objc_class _OBJC_CLASS_A __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_A, "NSObject", "A", 0,1,sizeof(struct A_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_A
	,0,0, (struct _objc_protocol_list*)&_OBJC_CLASS_PROTOCOLS_A, 0,0
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
	,&_OBJC_CLASS_A
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

