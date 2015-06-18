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
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -DKEEP_ATTRIBUTES -D"id=struct objc_object *" -D"Class=struct objc_class *" -D"SEL=void*" -D"__declspec(X)=" -emit-llvm -o - %t-rw.cpp | FileCheck %t-rw.cpp
// radar 7738453

void *sel_registerName(const char *);

#ifndef _REWRITER_typedef___NSCFType
#define _REWRITER_typedef___NSCFType
typedef struct objc_object __NSCFType;
#endif

/* @end */

#ifndef _REWRITER_typedef___NSCFString
#define _REWRITER_typedef___NSCFString
typedef struct objc_object __NSCFString;
#endif

// - (const char *)UTF8String;
/* @end */

// @implementation __NSCFString

static const char * _I___NSCFString_UTF8String(__NSCFString * self, SEL _cmd) {
    return (const char *)((const char *(*)(objc_super *, SEL))(void *)objc_msgSendSuper)((objc_super *)&__rw_objc_super((id)self, (id)class_getSuperclass((Class)objc_getClass("__NSCFString"))), sel_registerName("UTF8String"));
}
// @end

// CHECK: call %struct.objc_class* @class_getSuperclass

// @class NSZone;
#ifndef _REWRITER_typedef_NSZone
#define _REWRITER_typedef_NSZone
typedef struct objc_object NSZone;
#endif


#ifndef _REWRITER_typedef_NSObject
#define _REWRITER_typedef_NSObject
typedef struct objc_object NSObject;
#endif


// + (id)allocWithZone:(NSZone *)zone;
/* @end */


#ifndef _REWRITER_typedef_NSArray
#define _REWRITER_typedef_NSArray
typedef struct objc_object NSArray;
#endif

/* @end */

// @implementation NSArray

static id _C_NSArray_allocWithZone_(Class self, SEL _cmd, NSZone *zone) {
    return ((NSArray *(*)(objc_super *, SEL, NSZone *))(void *)objc_msgSendSuper)((objc_super *)&__rw_objc_super((id)self, (id)class_getSuperclass((Class)objc_getMetaClass("NSArray"))), sel_registerName("allocWithZone:"), (NSZone *)zone);
}
// @end

#ifndef _REWRITER_typedef_XNSArray
#define _REWRITER_typedef_XNSArray
typedef struct objc_object XNSArray;
#endif

struct XNSArray_IMPL{
  Class isa;
};
/* @end */

// @class XNSArray;
#ifndef _REWRITER_typedef_XNSArray
#define _REWRITER_typedef_XNSArray
typedef struct objc_object XNSArray;
#endif


#ifndef _REWRITER_typedef___NSArray0
#define _REWRITER_typedef___NSArray0
typedef struct objc_object __NSArray0;
#endif

struct __NSArray0_IMPL {
    struct XNSArray_IMPL XNSArray_IVARS;
};

/* @end */

// @implementation __NSArray0 // @end

struct _objc_method {
	SEL _cmd;
	char *method_types;
	void *_imp;
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[1];
} _OBJC_INSTANCE_METHODS___NSCFString __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"UTF8String", "r*16@0:8", (void *)_I___NSCFString_UTF8String}
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

static struct _objc_class _OBJC_METACLASS___NSCFString __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"__NSCFType", "__NSCFType", "__NSCFString", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS___NSCFString __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS___NSCFString, "__NSCFType", "__NSCFString", 0,1,0,0, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS___NSCFString, 0
	,0,0,0
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[1];
} _OBJC_CLASS_METHODS_NSArray __attribute__ ((used, section ("__OBJC, __cls_meth")))= {
	0, 1
	,{{(SEL)"allocWithZone:", "@24@0:8@16", (void *)_C_NSArray_allocWithZone_}
	 }
};

static struct _objc_class _OBJC_METACLASS_NSArray __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"NSObject", "NSObject", "NSArray", 0,2, sizeof(struct _objc_class), 0
	, (struct _objc_method_list *)&_OBJC_CLASS_METHODS_NSArray
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_NSArray __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_NSArray, "NSObject", "NSArray", 0,1,0,0,0,0,0,0,0
};

static struct _objc_class _OBJC_METACLASS___NSArray0 __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"XNSArray", "XNSArray", "__NSArray0", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS___NSArray0 __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS___NSArray0, "XNSArray", "__NSArray0", 0,1,sizeof(struct __NSArray0_IMPL),0,0,0,0,0,0
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
	,&_OBJC_CLASS___NSCFString
	,&_OBJC_CLASS_NSArray
	,&_OBJC_CLASS___NSArray0
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

