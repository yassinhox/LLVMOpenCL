#ifndef __OBJC2__
#define __OBJC2__
#endif
struct objc_selector; struct objc_class;
struct __rw_objc_super { 
	struct objc_object *object; 
	struct objc_object *superClass; 
	__rw_objc_super(struct objc_object *o, struct objc_object *s) : object(o), superClass(s) {} 
};

#pragma section(".objc_classlist$B", long, read, write)
#pragma section(".objc_catlist$B", long, read, write)
#pragma section(".objc_imageinfo$B", long, read, write)
#pragma section(".objc_nlclslist$B", long, read, write)
#pragma section(".objc_nlcatlist$B", long, read, write)
#pragma section(".cat_cls_meth$B", long, read, write)
#pragma section(".inst_meth$B", long, read, write)
#pragma section(".cls_meth$B", long, read, write)
#pragma section(".objc_ivar$B", long, read, write)
#pragma section(".objc_selrefs$B", long, read, write)
#pragma section(".objc_classrefs$B", long, read, write)
#pragma section(".objc_superrefs$B", long, read, write)
#ifndef _REWRITER_typedef_Protocol
typedef struct objc_object Protocol;
#define _REWRITER_typedef_Protocol
#endif
#define __OBJC_RW_DLLIMPORT extern "C" __declspec(dllimport)
#define __OBJC_RW_STATICIMPORT extern "C"
__OBJC_RW_DLLIMPORT void objc_msgSend(void);
__OBJC_RW_DLLIMPORT void objc_msgSendSuper(void);
__OBJC_RW_DLLIMPORT void objc_msgSend_stret(void);
__OBJC_RW_DLLIMPORT void objc_msgSendSuper_stret(void);
__OBJC_RW_DLLIMPORT void objc_msgSend_fpret(void);
__OBJC_RW_DLLIMPORT struct objc_class *objc_getClass(const char *);
__OBJC_RW_DLLIMPORT struct objc_class *class_getSuperclass(struct objc_class *);
__OBJC_RW_DLLIMPORT struct objc_class *objc_getMetaClass(const char *);
__OBJC_RW_DLLIMPORT void objc_exception_throw( struct objc_object *);
__OBJC_RW_DLLIMPORT int objc_sync_enter( struct objc_object *);
__OBJC_RW_DLLIMPORT int objc_sync_exit( struct objc_object *);
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
#ifndef __weak
#define __weak
#endif
#ifndef __block
#define __block
#endif

#include <stdarg.h>
struct __NSContainer_literal {
  void * *arr;
  __NSContainer_literal (unsigned int count, ...) {
	va_list marker;
	va_start(marker, count);
	arr = new void *[count];
	for (unsigned i = 0; i < count; i++)
	  arr[i] = va_arg(marker, void *);
	va_end( marker );
  };
  ~__NSContainer_literal() {
	delete[] arr;
  }
};
extern "C" __declspec(dllimport) void * objc_autoreleasePoolPush(void);
extern "C" __declspec(dllimport) void objc_autoreleasePoolPop(void *);

struct __AtAutoreleasePool {
  __AtAutoreleasePool() {atautoreleasepoolobj = objc_autoreleasePoolPush();}
  ~__AtAutoreleasePool() {objc_autoreleasePoolPop(atautoreleasepoolobj);}
  void * atautoreleasepoolobj;
};

#define __OFFSETOFIVAR__(TYPE, MEMBER) ((long long) &((TYPE *)0)->MEMBER)
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm"
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 161 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm" 2






extern "C" void *sel_registerName(const char *);

#ifndef _REWRITER_typedef_NSObject
#define _REWRITER_typedef_NSObject
typedef struct objc_object NSObject;
typedef struct {} _objc_exc_NSObject;
#endif

// - (void) release;
// - (id) retain;
/* @end */
// @class NSString;
#ifndef _REWRITER_typedef_NSString
#define _REWRITER_typedef_NSString
typedef struct objc_object NSString;
typedef struct {} _objc_exc_NSString;
#endif


#ifndef _REWRITER_typedef_SynthItAll
#define _REWRITER_typedef_SynthItAll
typedef struct objc_object SynthItAll;
typedef struct {} _objc_exc_SynthItAll;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_SynthItAll$_howMany;
struct SynthItAll_IMPL {
	int _howMany;
	NSString *_what;
};

// @property int howMany;
// @property (retain) NSString* what;
/* @end */

// @implementation SynthItAll

static int _I_SynthItAll_howMany(SynthItAll * self, SEL _cmd) { return (*(int *)((char *)self + OBJC_IVAR_$_SynthItAll$_howMany)); }
static void _I_SynthItAll_setHowMany_(SynthItAll * self, SEL _cmd, int howMany) { (*(int *)((char *)self + OBJC_IVAR_$_SynthItAll$_howMany)) = howMany; }

extern "C" __declspec(dllimport) id objc_getProperty(id, SEL, long, bool);

static NSString * _I_SynthItAll_what(SynthItAll * self, SEL _cmd) { typedef NSString * _TYPE;
return (_TYPE)objc_getProperty(self, _cmd, __OFFSETOFIVAR__(struct SynthItAll_IMPL, _what), 1); }
extern "C" __declspec(dllimport) void objc_setProperty (id, SEL, long, id, bool, bool);

static void _I_SynthItAll_setWhat_(SynthItAll * self, SEL _cmd, NSString *what) { objc_setProperty (self, _cmd, __OFFSETOFIVAR__(struct SynthItAll_IMPL, _what), (id)what, 1, 0); }
// @end


#ifndef _REWRITER_typedef_SynthSetter
#define _REWRITER_typedef_SynthSetter
typedef struct objc_object SynthSetter;
typedef struct {} _objc_exc_SynthSetter;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_SynthSetter$_howMany;
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_SynthSetter$_what;
struct SynthSetter_IMPL {
	int _howMany;
	NSString *_what;
};

// @property (nonatomic) int howMany;
// @property (nonatomic, retain) NSString* what;
/* @end */

// @implementation SynthSetter


#line 31 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm"
static int _I_SynthSetter_howMany(SynthSetter * self, SEL _cmd) {
    return (*(int *)((char *)self + OBJC_IVAR_$_SynthSetter$_howMany));
}



#line 36 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm"
static NSString * _I_SynthSetter_what(SynthSetter * self, SEL _cmd) {
    return (*(NSString **)((char *)self + OBJC_IVAR_$_SynthSetter$_what));
}


static void _I_SynthSetter_setHowMany_(SynthSetter * self, SEL _cmd, int howMany) { (*(int *)((char *)self + OBJC_IVAR_$_SynthSetter$_howMany)) = howMany; }

static void _I_SynthSetter_setWhat_(SynthSetter * self, SEL _cmd, NSString *what) { objc_setProperty (self, _cmd, __OFFSETOFIVAR__(struct SynthSetter_IMPL, _what), (id)what, 0, 0); }
// @end


#ifndef _REWRITER_typedef_SynthGetter
#define _REWRITER_typedef_SynthGetter
typedef struct objc_object SynthGetter;
typedef struct {} _objc_exc_SynthGetter;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_SynthGetter$_howMany;
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_SynthGetter$_what;
struct SynthGetter_IMPL {
	int _howMany;
	NSString *_what;
};

// @property (nonatomic) int howMany;
// @property (nonatomic, retain) NSString* what;
/* @end */

// @implementation SynthGetter


#line 50 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm"
static void _I_SynthGetter_setHowMany_(SynthGetter * self, SEL _cmd, int value) {
    (*(int *)((char *)self + OBJC_IVAR_$_SynthGetter$_howMany)) = value;
}



#line 55 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-default-property-synthesis.mm"
static void _I_SynthGetter_setWhat_(SynthGetter * self, SEL _cmd, NSString *value) {
    if ((*(NSString **)((char *)self + OBJC_IVAR_$_SynthGetter$_what)) != value) {
        ((void (*)(id, SEL))(void *)objc_msgSend)((id)(*(NSString **)((char *)self + OBJC_IVAR_$_SynthGetter$_what)), sel_registerName("release"));
        (*(NSString **)((char *)self + OBJC_IVAR_$_SynthGetter$_what)) = ((NSString *(*)(id, SEL))(void *)objc_msgSend)((id)value, sel_registerName("retain"));
    }
}

static int _I_SynthGetter_howMany(SynthGetter * self, SEL _cmd) { return (*(int *)((char *)self + OBJC_IVAR_$_SynthGetter$_howMany)); }
static NSString * _I_SynthGetter_what(SynthGetter * self, SEL _cmd) { return (*(NSString **)((char *)self + OBJC_IVAR_$_SynthGetter$_what)); }// @end

typedef struct {
        int x:1;
        int y:1;
} TBAR;

#ifndef _REWRITER_typedef_NONAME
#define _REWRITER_typedef_NONAME
typedef struct objc_object NONAME;
typedef struct {} _objc_exc_NONAME;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_NONAME$_bad;
struct NONAME_IMPL {
	TBAR _bar;
	TBAR _bad;
};

// @property TBAR bad;
/* @end */

// @implementation NONAME

static TBAR _I_NONAME_bad(NONAME * self, SEL _cmd) { return (*(TBAR *)((char *)self + OBJC_IVAR_$_NONAME$_bad)); }
static void _I_NONAME_setBad_(NONAME * self, SEL _cmd, TBAR bad) { (*(TBAR *)((char *)self + OBJC_IVAR_$_NONAME$_bad)) = bad; }
// @end

struct _prop_t {
	const char *name;
	const char *attributes;
};

struct _protocol_t;

struct _objc_method {
	struct objc_selector * _cmd;
	const char *method_type;
	void  *_imp;
};

struct _protocol_t {
	void * isa;  // NULL
	const char *protocol_name;
	const struct _protocol_list_t * protocol_list; // super protocols
	const struct method_list_t *instance_methods;
	const struct method_list_t *class_methods;
	const struct method_list_t *optionalInstanceMethods;
	const struct method_list_t *optionalClassMethods;
	const struct _prop_list_t * properties;
	const unsigned int size;  // sizeof(struct _protocol_t)
	const unsigned int flags;  // = 0
	const char ** extendedMethodTypes;
};

struct _ivar_t {
	unsigned long int *offset;  // pointer to ivar offset location
	const char *name;
	const char *type;
	unsigned int alignment;
	unsigned int  size;
};

struct _class_ro_t {
	unsigned int flags;
	unsigned int instanceStart;
	unsigned int instanceSize;
	unsigned int reserved;
	const unsigned char *ivarLayout;
	const char *name;
	const struct _method_list_t *baseMethods;
	const struct _objc_protocol_list *baseProtocols;
	const struct _ivar_list_t *ivars;
	const unsigned char *weakIvarLayout;
	const struct _prop_list_t *properties;
};

struct _class_t {
	struct _class_t *isa;
	struct _class_t *superclass;
	void *cache;
	void *vtable;
	struct _class_ro_t *ro;
};

struct _category_t {
	const char *name;
	struct _class_t *cls;
	const struct _method_list_t *instance_methods;
	const struct _method_list_t *class_methods;
	const struct _protocol_list_t *protocols;
	const struct _prop_list_t *properties;
};
extern "C" __declspec(dllimport) struct objc_cache _objc_empty_cache;
#pragma warning(disable:4273)

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_SynthItAll$_howMany __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct SynthItAll_IMPL, _howMany);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_SynthItAll$_what __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct SynthItAll_IMPL, _what);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[2];
} _OBJC_$_INSTANCE_VARIABLES_SynthItAll __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	2,
	{{(unsigned long int *)&OBJC_IVAR_$_SynthItAll$_howMany, "_howMany", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_SynthItAll$_what, "_what", "@\"NSString\"", 3, 8}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[4];
} _OBJC_$_INSTANCE_METHODS_SynthItAll __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	4,
	{{(struct objc_selector *)"howMany", "i16@0:8", (void *)_I_SynthItAll_howMany},
	{(struct objc_selector *)"setHowMany:", "v20@0:8i16", (void *)_I_SynthItAll_setHowMany_},
	{(struct objc_selector *)"what", "@16@0:8", (void *)_I_SynthItAll_what},
	{(struct objc_selector *)"setWhat:", "v24@0:8@16", (void *)_I_SynthItAll_setWhat_}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[2];
} _OBJC_$_PROP_LIST_SynthItAll __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	2,
	{{"howMany","Ti,V_howMany"},
	{"what","T@\"NSString\",&,V_what"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_SynthItAll __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	1, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"SynthItAll",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_SynthItAll __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	0, __OFFSETOFIVAR__(struct SynthItAll_IMPL, _howMany), sizeof(struct SynthItAll_IMPL), 
	(unsigned int)0, 
	0, 
	"SynthItAll",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_SynthItAll,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_SynthItAll,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_SynthItAll,
};

extern "C" __declspec(dllimport) struct _class_t OBJC_METACLASS_$_NSObject;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_SynthItAll __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_NSObject,
	0, // &OBJC_METACLASS_$_NSObject,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_SynthItAll,
};

extern "C" __declspec(dllimport) struct _class_t OBJC_CLASS_$_NSObject;

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_SynthItAll __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_SynthItAll,
	0, // &OBJC_CLASS_$_NSObject,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_SynthItAll,
};
static void OBJC_CLASS_SETUP_$_SynthItAll(void ) {
	OBJC_METACLASS_$_SynthItAll.isa = &OBJC_METACLASS_$_NSObject;
	OBJC_METACLASS_$_SynthItAll.superclass = &OBJC_METACLASS_$_NSObject;
	OBJC_METACLASS_$_SynthItAll.cache = &_objc_empty_cache;
	OBJC_CLASS_$_SynthItAll.isa = &OBJC_METACLASS_$_SynthItAll;
	OBJC_CLASS_$_SynthItAll.superclass = &OBJC_CLASS_$_NSObject;
	OBJC_CLASS_$_SynthItAll.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_SynthSetter$_howMany __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct SynthSetter_IMPL, _howMany);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_SynthSetter$_what __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct SynthSetter_IMPL, _what);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[2];
} _OBJC_$_INSTANCE_VARIABLES_SynthSetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	2,
	{{(unsigned long int *)&OBJC_IVAR_$_SynthSetter$_howMany, "_howMany", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_SynthSetter$_what, "_what", "@\"NSString\"", 3, 8}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[4];
} _OBJC_$_INSTANCE_METHODS_SynthSetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	4,
	{{(struct objc_selector *)"howMany", "i16@0:8", (void *)_I_SynthSetter_howMany},
	{(struct objc_selector *)"what", "@16@0:8", (void *)_I_SynthSetter_what},
	{(struct objc_selector *)"setHowMany:", "v20@0:8i16", (void *)_I_SynthSetter_setHowMany_},
	{(struct objc_selector *)"setWhat:", "v24@0:8@16", (void *)_I_SynthSetter_setWhat_}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[2];
} _OBJC_$_PROP_LIST_SynthSetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	2,
	{{"howMany","Ti,N,V_howMany"},
	{"what","T@\"NSString\",&,N,V_what"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_SynthSetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	1, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"SynthSetter",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_SynthSetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	0, __OFFSETOFIVAR__(struct SynthSetter_IMPL, _howMany), sizeof(struct SynthSetter_IMPL), 
	(unsigned int)0, 
	0, 
	"SynthSetter",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_SynthSetter,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_SynthSetter,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_SynthSetter,
};

extern "C" __declspec(dllimport) struct _class_t OBJC_METACLASS_$_NSObject;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_SynthSetter __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_NSObject,
	0, // &OBJC_METACLASS_$_NSObject,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_SynthSetter,
};

extern "C" __declspec(dllimport) struct _class_t OBJC_CLASS_$_NSObject;

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_SynthSetter __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_SynthSetter,
	0, // &OBJC_CLASS_$_NSObject,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_SynthSetter,
};
static void OBJC_CLASS_SETUP_$_SynthSetter(void ) {
	OBJC_METACLASS_$_SynthSetter.isa = &OBJC_METACLASS_$_NSObject;
	OBJC_METACLASS_$_SynthSetter.superclass = &OBJC_METACLASS_$_NSObject;
	OBJC_METACLASS_$_SynthSetter.cache = &_objc_empty_cache;
	OBJC_CLASS_$_SynthSetter.isa = &OBJC_METACLASS_$_SynthSetter;
	OBJC_CLASS_$_SynthSetter.superclass = &OBJC_CLASS_$_NSObject;
	OBJC_CLASS_$_SynthSetter.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_SynthGetter$_howMany __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct SynthGetter_IMPL, _howMany);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_SynthGetter$_what __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct SynthGetter_IMPL, _what);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[2];
} _OBJC_$_INSTANCE_VARIABLES_SynthGetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	2,
	{{(unsigned long int *)&OBJC_IVAR_$_SynthGetter$_howMany, "_howMany", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_SynthGetter$_what, "_what", "@\"NSString\"", 3, 8}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[4];
} _OBJC_$_INSTANCE_METHODS_SynthGetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	4,
	{{(struct objc_selector *)"setHowMany:", "v20@0:8i16", (void *)_I_SynthGetter_setHowMany_},
	{(struct objc_selector *)"setWhat:", "v24@0:8@16", (void *)_I_SynthGetter_setWhat_},
	{(struct objc_selector *)"howMany", "i16@0:8", (void *)_I_SynthGetter_howMany},
	{(struct objc_selector *)"what", "@16@0:8", (void *)_I_SynthGetter_what}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[2];
} _OBJC_$_PROP_LIST_SynthGetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	2,
	{{"howMany","Ti,N,V_howMany"},
	{"what","T@\"NSString\",&,N,V_what"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_SynthGetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	1, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"SynthGetter",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_SynthGetter __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	0, __OFFSETOFIVAR__(struct SynthGetter_IMPL, _howMany), sizeof(struct SynthGetter_IMPL), 
	(unsigned int)0, 
	0, 
	"SynthGetter",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_SynthGetter,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_SynthGetter,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_SynthGetter,
};

extern "C" __declspec(dllimport) struct _class_t OBJC_METACLASS_$_NSObject;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_SynthGetter __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_NSObject,
	0, // &OBJC_METACLASS_$_NSObject,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_SynthGetter,
};

extern "C" __declspec(dllimport) struct _class_t OBJC_CLASS_$_NSObject;

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_SynthGetter __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_SynthGetter,
	0, // &OBJC_CLASS_$_NSObject,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_SynthGetter,
};
static void OBJC_CLASS_SETUP_$_SynthGetter(void ) {
	OBJC_METACLASS_$_SynthGetter.isa = &OBJC_METACLASS_$_NSObject;
	OBJC_METACLASS_$_SynthGetter.superclass = &OBJC_METACLASS_$_NSObject;
	OBJC_METACLASS_$_SynthGetter.cache = &_objc_empty_cache;
	OBJC_CLASS_$_SynthGetter.isa = &OBJC_METACLASS_$_SynthGetter;
	OBJC_CLASS_$_SynthGetter.superclass = &OBJC_CLASS_$_NSObject;
	OBJC_CLASS_$_SynthGetter.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_NONAME$_bar __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NONAME_IMPL, _bar);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NONAME$_bad __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NONAME_IMPL, _bad);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[2];
} _OBJC_$_INSTANCE_VARIABLES_NONAME __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	2,
	{{(unsigned long int *)&OBJC_IVAR_$_NONAME$_bar, "_bar", "{?=\"x\"b1\"y\"b1}", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_NONAME$_bad, "_bad", "{?=\"x\"b1\"y\"b1}", 2, 4}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[2];
} _OBJC_$_INSTANCE_METHODS_NONAME __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	2,
	{{(struct objc_selector *)"bad", "{?=b1b1}16@0:8", (void *)_I_NONAME_bad},
	{(struct objc_selector *)"setBad:", "v20@0:8{?=b1b1}16", (void *)_I_NONAME_setBad_}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[1];
} _OBJC_$_PROP_LIST_NONAME __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	1,
	{{"bad","T{?=b1b1},V_bad"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_NONAME __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"NONAME",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_NONAME __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct NONAME_IMPL, _bar), sizeof(struct NONAME_IMPL), 
	(unsigned int)0, 
	0, 
	"NONAME",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_NONAME,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_NONAME,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_NONAME,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_NONAME;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_NONAME __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_NONAME,
	0, // &OBJC_CLASS_$_NONAME,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_NONAME,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_NONAME __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_NONAME,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_NONAME,
};
static void OBJC_CLASS_SETUP_$_NONAME(void ) {
	OBJC_METACLASS_$_NONAME.isa = &OBJC_METACLASS_$_NONAME;
	OBJC_METACLASS_$_NONAME.superclass = &OBJC_CLASS_$_NONAME;
	OBJC_METACLASS_$_NONAME.cache = &_objc_empty_cache;
	OBJC_CLASS_$_NONAME.isa = &OBJC_METACLASS_$_NONAME;
	OBJC_CLASS_$_NONAME.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_SynthItAll,
	(void *)&OBJC_CLASS_SETUP_$_SynthSetter,
	(void *)&OBJC_CLASS_SETUP_$_SynthGetter,
	(void *)&OBJC_CLASS_SETUP_$_NONAME,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [4] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_SynthItAll,
	&OBJC_CLASS_$_SynthSetter,
	&OBJC_CLASS_$_SynthGetter,
	&OBJC_CLASS_$_NONAME,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
