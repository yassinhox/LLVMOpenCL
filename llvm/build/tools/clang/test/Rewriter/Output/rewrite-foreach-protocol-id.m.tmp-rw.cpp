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
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5  %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// rdar:// 9039342

void *sel_registerName(const char *);
void objc_enumerationMutation(id);

// @protocol CoreDAVLeafDataPayload /* @end */

// @class NSString;
#ifndef _REWRITER_typedef_NSString
#define _REWRITER_typedef_NSString
typedef struct objc_object NSString;
#endif


#ifndef _REWRITER_typedef_CoreDAVAction
#define _REWRITER_typedef_CoreDAVAction
typedef struct objc_object CoreDAVAction;
#endif

// - (id) context;
/* @end */

#ifndef _REWRITER_typedef_I
#define _REWRITER_typedef_I
typedef struct objc_object I;
#endif

struct I_IMPL{
  id uuidsToAddActions;
};
/* @end */

// @implementation I

static void _I_I_Meth(I * self, SEL _cmd) {
  
{
	id uuid;
	struct __objcFastEnumerationState enumState = { 0 };
	id __rw_items[16];
	id l_collection = (id) ((I_IMPL *)self)->uuidsToAddActions;
	unsigned long limit =
		((unsigned int (*) (id, SEL, struct __objcFastEnumerationState *, id *, unsigned int))(void *)objc_msgSend)
		((id)l_collection,
		sel_registerName("countByEnumeratingWithState:objects:count:"),
		&enumState, (id *)__rw_items, (unsigned int)16);
	if (limit) {
	unsigned long startMutations = *enumState.mutationsPtr;
	do {
		unsigned long counter = 0;
		do {
			if (startMutations != *enumState.mutationsPtr)
				objc_enumerationMutation(l_collection);
			uuid = (id)enumState.itemsPtr[counter++]; {
    CoreDAVAction *action = 0;
    id /*<CoreDAVLeafDataPayload>*/ payload = ((id (*)(id, SEL))(void *)objc_msgSend)((id)action, sel_registerName("context"));
  };
	__continue_label_1: ;
		} while (counter < limit);
	} while (limit = ((unsigned int (*) (id, SEL, struct __objcFastEnumerationState *, id *, unsigned int))(void *)objc_msgSend)
		((id)l_collection,
		sel_registerName("countByEnumeratingWithState:objects:count:"),
		&enumState, (id *)__rw_items, (unsigned int)16));
	uuid = ((id)0);
	__break_label_1: ;
	}
	else
		uuid = ((id)0);
	}

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
} _OBJC_INSTANCE_VARIABLES_I __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"uuidsToAddActions", "@", __OFFSETOFIVAR__(struct I_IMPL, uuidsToAddActions)}
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
} _OBJC_INSTANCE_METHODS_I __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"Meth", "v16@0:8", (void *)_I_I_Meth}
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

