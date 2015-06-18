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
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// rdar://6969189

// @class XX;
#ifndef _REWRITER_typedef_XX
#define _REWRITER_typedef_XX
typedef struct objc_object XX;
#endif

// @class YY;
#ifndef _REWRITER_typedef_YY
#define _REWRITER_typedef_YY
typedef struct objc_object YY;
#endif
#ifndef _REWRITER_typedef_ZZ
#define _REWRITER_typedef_ZZ
typedef struct objc_object ZZ;
#endif
#ifndef _REWRITER_typedef_QQ
#define _REWRITER_typedef_QQ
typedef struct objc_object QQ;
#endif

// @class ISyncClient;
#ifndef _REWRITER_typedef_ISyncClient
#define _REWRITER_typedef_ISyncClient
typedef struct objc_object ISyncClient;
#endif
#ifndef _REWRITER_typedef_SMSession
#define _REWRITER_typedef_SMSession
typedef struct objc_object SMSession;
#endif
#ifndef _REWRITER_typedef_ISyncManager
#define _REWRITER_typedef_ISyncManager
typedef struct objc_object ISyncManager;
#endif
#ifndef _REWRITER_typedef_ISyncSession
#define _REWRITER_typedef_ISyncSession
typedef struct objc_object ISyncSession;
#endif
#ifndef _REWRITER_typedef_SMDataclassInfo
#define _REWRITER_typedef_SMDataclassInfo
typedef struct objc_object SMDataclassInfo;
#endif
#ifndef _REWRITER_typedef_SMClientInfo
#define _REWRITER_typedef_SMClientInfo
typedef struct objc_object SMClientInfo;
#endif
#ifndef _REWRITER_typedef_DMCConfiguration
#define _REWRITER_typedef_DMCConfiguration
typedef struct objc_object DMCConfiguration;
#endif
#ifndef _REWRITER_typedef_DMCStatusEntry
#define _REWRITER_typedef_DMCStatusEntry
typedef struct objc_object DMCStatusEntry;
#endif


#ifndef _REWRITER_typedef_QQ
#define _REWRITER_typedef_QQ
typedef struct objc_object QQ;
#endif


/* @end */

#ifndef _REWRITER_typedef_SMDataclassInfo
#define _REWRITER_typedef_SMDataclassInfo
typedef struct objc_object SMDataclassInfo;
#endif

// - (XX*) Meth;
// - (DMCStatusEntry*)Meth2;
/* @end */

// @implementation SMDataclassInfo

static XX * _I_SMDataclassInfo_Meth(SMDataclassInfo * self, SEL _cmd) { return 0; }

static DMCStatusEntry * _I_SMDataclassInfo_Meth2(SMDataclassInfo * self, SEL _cmd) { return 0; }
// @end

#ifndef _REWRITER_typedef_YY
#define _REWRITER_typedef_YY
typedef struct objc_object YY;
#endif

struct YY_IMPL{
  ISyncClient *p1;
  ISyncSession *p2;
};
// @property (copy) ISyncClient *p1;
/* @end */

// @implementation YY
// @synthesize p1;
extern "C" __declspec(dllimport) id objc_getProperty(id, SEL, long, bool);

static ISyncClient * _I_YY_p1(YY * self, SEL _cmd) { typedef ISyncClient * _TYPE;
return (_TYPE)objc_getProperty(self, _cmd, __OFFSETOFIVAR__(struct YY_IMPL, p1), 1); }
extern "C" __declspec(dllimport) void objc_setProperty (id, SEL, long, id, bool, bool);

static void _I_YY_setP1_(YY * self, SEL _cmd, ISyncClient *p1) { objc_setProperty (self, _cmd, __OFFSETOFIVAR__(struct YY_IMPL, p1), (id)p1, 1, 1); }
// @end


struct _objc_method {
	SEL _cmd;
	char *method_types;
	void *_imp;
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[2];
} _OBJC_INSTANCE_METHODS_SMDataclassInfo __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 2
	,{{(SEL)"Meth", "@16@0:8", (void *)_I_SMDataclassInfo_Meth}
	  ,{(SEL)"Meth2", "@16@0:8", (void *)_I_SMDataclassInfo_Meth2}
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

static struct _objc_class _OBJC_METACLASS_SMDataclassInfo __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"QQ", "QQ", "SMDataclassInfo", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_SMDataclassInfo __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_SMDataclassInfo, "QQ", "SMDataclassInfo", 0,1,0,0, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_SMDataclassInfo, 0
	,0,0,0
};

struct _objc_ivar {
	char *ivar_name;
	char *ivar_type;
	int ivar_offset;
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[2];
} _OBJC_INSTANCE_VARIABLES_YY __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	2
	,{{"p1", "@\"ISyncClient\"", __OFFSETOFIVAR__(struct YY_IMPL, p1)}
	  ,{"p2", "@\"ISyncSession\"", __OFFSETOFIVAR__(struct YY_IMPL, p2)}
	 }
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[2];
} _OBJC_INSTANCE_METHODS_YY __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 2
	,{{(SEL)"p1", "@16@0:8", (void *)_I_YY_p1}
	  ,{(SEL)"setP1:", "v24@0:8@16", (void *)_I_YY_setP1_}
	 }
};

static struct _objc_class _OBJC_METACLASS_YY __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"YY", 0, "YY", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_YY __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_YY, 0, "YY", 0,1,sizeof(struct YY_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_YY
	,0,0,0,0,0
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
	,&_OBJC_CLASS_SMDataclassInfo
	,&_OBJC_CLASS_YY
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

