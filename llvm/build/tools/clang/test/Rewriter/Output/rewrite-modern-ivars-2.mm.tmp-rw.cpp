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
// RUN: %clang_cc1 -triple i386-apple-darwin9 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-rw.cpp
// RUN: %clang_cc1 -triple i386-apple-darwin9 -fsyntax-only -fblocks -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp

#ifndef _REWRITER_typedef_B
#define _REWRITER_typedef_B
typedef struct objc_object B;
typedef struct {} _objc_exc_B;
#endif
 /* @end */

#ifndef _REWRITER_typedef_A
#define _REWRITER_typedef_A
typedef struct objc_object A;
typedef struct {} _objc_exc_A;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_A$_p0;
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_A$_p1;
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_A$_p2;
	struct s0 {
	int f0;
	int f1;
	} ;
	struct s1 {
	int *f0;
	int *f1;
	} ;
struct A_IMPL {

	struct s0 f0;
	id f1;
	B *__weak f2;
	int f3 : 5;

	struct s1 f4[2][1];
	int _p0;
	id _p1;
	__weak id _p2;
};

/* @end */

#ifndef _REWRITER_typedef_C
#define _REWRITER_typedef_C
typedef struct objc_object C;
typedef struct {} _objc_exc_C;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_C$_p3;
struct C_IMPL {
	struct A_IMPL A_IVARS;
	int _p3;
};

// @property int p3;
/* @end */

// @implementation C
// @synthesize p3 = _p3;
static int _I_C_p3(C * self, SEL _cmd) { return (*(int *)((char *)self + OBJC_IVAR_$_C$_p3)); }
static void _I_C_setP3_(C * self, SEL _cmd, int p3) { (*(int *)((char *)self + OBJC_IVAR_$_C$_p3)) = p3; }

// @end

// @interface A()
// // @property int p0;
// // @property (assign) __strong id p1;
// // @property (assign) __weak id p2;
/* @end */

// FIXME: Check layout for this class, once it is clear what the right
// answer is.
// @implementation A
// @synthesize p0 = _p0;
static int _I_A_p0(A * self, SEL _cmd) { return (*(int *)((char *)self + OBJC_IVAR_$_A$_p0)); }
static void _I_A_setP0_(A * self, SEL _cmd, int p0) { (*(int *)((char *)self + OBJC_IVAR_$_A$_p0)) = p0; }

// @synthesize p1 = _p1;
static id _I_A_p1(A * self, SEL _cmd) { return (*(id *)((char *)self + OBJC_IVAR_$_A$_p1)); }
static void _I_A_setP1_(A * self, SEL _cmd, id p1) { (*(id *)((char *)self + OBJC_IVAR_$_A$_p1)) = p1; }

// @synthesize p2 = _p2;
static __weak id _I_A_p2(A * self, SEL _cmd) { return (*(__weak id *)((char *)self + OBJC_IVAR_$_A$_p2)); }
static void _I_A_setP2_(A * self, SEL _cmd, id p2) { (*(__weak id *)((char *)self + OBJC_IVAR_$_A$_p2)) = p2; }

// @end

#ifndef _REWRITER_typedef_D
#define _REWRITER_typedef_D
typedef struct objc_object D;
typedef struct {} _objc_exc_D;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_D$_p3;
struct D_IMPL {
	struct A_IMPL A_IVARS;
	int _p3;
};

// @property int p3;
/* @end */

// FIXME: Check layout for this class, once it is clear what the right
// answer is.
// @implementation D
// @synthesize p3 = _p3;
static int _I_D_p3(D * self, SEL _cmd) { return (*(int *)((char *)self + OBJC_IVAR_$_D$_p3)); }
static void _I_D_setP3_(D * self, SEL _cmd, int p3) { (*(int *)((char *)self + OBJC_IVAR_$_D$_p3)) = p3; }

// @end

typedef unsigned short UInt16;


typedef signed char BOOL;
typedef unsigned int FSCatalogInfoBitmap;

#ifndef _REWRITER_typedef_NSFileLocationComponent
#define _REWRITER_typedef_NSFileLocationComponent
typedef struct objc_object NSFileLocationComponent;
typedef struct {} _objc_exc_NSFileLocationComponent;
#endif

struct NSFileLocationComponent_IMPL {
	id _specifierOrStandardizedPath;
	BOOL _carbonCatalogInfoAndNameAreValid;
	FSCatalogInfoBitmap _carbonCatalogInfoMask;
	id _name;
	id _containerComponent;
	id _presentableName;
	id _iconAsAttributedString;
};

/* @end */

// @implementation NSFileLocationComponent // @end

// rdar://11229770

#ifndef _REWRITER_typedef_Foo
#define _REWRITER_typedef_Foo
typedef struct objc_object Foo;
typedef struct {} _objc_exc_Foo;
#endif

struct Foo_IMPL {
	int bar : 26;
	char : 0;
};

/* @end */

// @implementation Foo
// @end

#ifndef _REWRITER_typedef_Foo1
#define _REWRITER_typedef_Foo1
typedef struct objc_object Foo1;
typedef struct {} _objc_exc_Foo1;
#endif

struct Foo1_IMPL {
	int bar : 26;
	int bar2 : 4;
	char : 0;
};

/* @end */

// @implementation Foo1
// @end

#ifndef _REWRITER_typedef_Foo3
#define _REWRITER_typedef_Foo3
typedef struct objc_object Foo3;
typedef struct {} _objc_exc_Foo3;
#endif

struct Foo3_IMPL {
	int foo;
	int bar : 26;
	char : 0;
};

/* @end */

// @implementation Foo3
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

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_C$_p3 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct C_IMPL, _p3);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_C __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_C$_p3, "_p3", "i", 2, 4}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[2];
} _OBJC_$_INSTANCE_METHODS_C __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	2,
	{{(struct objc_selector *)"p3", "i8@0:4", (void *)_I_C_p3},
	{(struct objc_selector *)"setP3:", "v12@0:4i8", (void *)_I_C_setP3_}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[1];
} _OBJC_$_PROP_LIST_C __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	1,
	{{"p3","Ti,V_p3"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_C __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	1, sizeof(struct _class_t), sizeof(struct _class_t), 
	0, 
	"C",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_C __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	0, __OFFSETOFIVAR__(struct C_IMPL, _p3), sizeof(struct C_IMPL), 
	0, 
	"C",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_C,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_C,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_C,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_A;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_C __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_A,
	0, // &OBJC_METACLASS_$_A,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_C,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_A;

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_C __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_C,
	0, // &OBJC_CLASS_$_A,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_C,
};
static void OBJC_CLASS_SETUP_$_C(void ) {
	OBJC_METACLASS_$_C.isa = &OBJC_METACLASS_$_A;
	OBJC_METACLASS_$_C.superclass = &OBJC_METACLASS_$_A;
	OBJC_METACLASS_$_C.cache = &_objc_empty_cache;
	OBJC_CLASS_$_C.isa = &OBJC_METACLASS_$_C;
	OBJC_CLASS_$_C.superclass = &OBJC_CLASS_$_A;
	OBJC_CLASS_$_C.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_A$f0 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct A_IMPL, f0);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_A$f1 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct A_IMPL, f1);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_A$f2 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct A_IMPL, f2);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_A$f3 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = 0;
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_A$f4 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct A_IMPL, f4);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_A$_p0 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct A_IMPL, _p0);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_A$_p1 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct A_IMPL, _p1);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_A$_p2 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct A_IMPL, _p2);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[8];
} _OBJC_$_INSTANCE_VARIABLES_A __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	8,
	{{(unsigned long int *)&OBJC_IVAR_$_A$f0, "f0", "{s0=\"f0\"i\"f1\"i}", 2, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_A$f1, "f1", "@", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_A$f2, "f2", "@\"B\"", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_A$f3, "f3", "b5", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_A$f4, "f4", "[2[1{s1=\"f0\"^i\"f1\"^i}]]", 2, 16},
	 {(unsigned long int *)&OBJC_IVAR_$_A$_p0, "_p0", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_A$_p1, "_p1", "@", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_A$_p2, "_p2", "@", 2, 4}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[6];
} _OBJC_$_INSTANCE_METHODS_A __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	6,
	{{(struct objc_selector *)"p0", "i8@0:4", (void *)_I_A_p0},
	{(struct objc_selector *)"setP0:", "v12@0:4i8", (void *)_I_A_setP0_},
	{(struct objc_selector *)"p1", "@8@0:4", (void *)_I_A_p1},
	{(struct objc_selector *)"setP1:", "v12@0:4@8", (void *)_I_A_setP1_},
	{(struct objc_selector *)"p2", "@8@0:4", (void *)_I_A_p2},
	{(struct objc_selector *)"setP2:", "v12@0:4@8", (void *)_I_A_setP2_}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[3];
} _OBJC_$_PROP_LIST_A __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	3,
	{{"p0","Ti,V_p0"},
	{"p1","T@,V_p1"},
	{"p2","T@,V_p2"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_A __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	0, 
	"A",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_A __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct A_IMPL, f0), sizeof(struct A_IMPL), 
	0, 
	"A",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_A,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_A,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_A,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_A;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_A __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_A,
	0, // &OBJC_CLASS_$_A,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_A,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_A __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_A,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_A,
};
static void OBJC_CLASS_SETUP_$_A(void ) {
	OBJC_METACLASS_$_A.isa = &OBJC_METACLASS_$_A;
	OBJC_METACLASS_$_A.superclass = &OBJC_CLASS_$_A;
	OBJC_METACLASS_$_A.cache = &_objc_empty_cache;
	OBJC_CLASS_$_A.isa = &OBJC_METACLASS_$_A;
	OBJC_CLASS_$_A.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_D$_p3 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct D_IMPL, _p3);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_D __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_D$_p3, "_p3", "i", 2, 4}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[2];
} _OBJC_$_INSTANCE_METHODS_D __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	2,
	{{(struct objc_selector *)"p3", "i8@0:4", (void *)_I_D_p3},
	{(struct objc_selector *)"setP3:", "v12@0:4i8", (void *)_I_D_setP3_}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[1];
} _OBJC_$_PROP_LIST_D __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	1,
	{{"p3","Ti,V_p3"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_D __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	1, sizeof(struct _class_t), sizeof(struct _class_t), 
	0, 
	"D",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_D __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	0, __OFFSETOFIVAR__(struct D_IMPL, _p3), sizeof(struct D_IMPL), 
	0, 
	"D",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_D,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_D,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_D,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_A;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_D __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_A,
	0, // &OBJC_METACLASS_$_A,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_D,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_A;

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_D __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_D,
	0, // &OBJC_CLASS_$_A,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_D,
};
static void OBJC_CLASS_SETUP_$_D(void ) {
	OBJC_METACLASS_$_D.isa = &OBJC_METACLASS_$_A;
	OBJC_METACLASS_$_D.superclass = &OBJC_METACLASS_$_A;
	OBJC_METACLASS_$_D.cache = &_objc_empty_cache;
	OBJC_CLASS_$_D.isa = &OBJC_METACLASS_$_D;
	OBJC_CLASS_$_D.superclass = &OBJC_CLASS_$_A;
	OBJC_CLASS_$_D.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NSFileLocationComponent$_specifierOrStandardizedPath __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _specifierOrStandardizedPath);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NSFileLocationComponent$_carbonCatalogInfoAndNameAreValid __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _carbonCatalogInfoAndNameAreValid);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NSFileLocationComponent$_carbonCatalogInfoMask __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _carbonCatalogInfoMask);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NSFileLocationComponent$_name __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _name);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NSFileLocationComponent$_containerComponent __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _containerComponent);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NSFileLocationComponent$_presentableName __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _presentableName);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_NSFileLocationComponent$_iconAsAttributedString __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _iconAsAttributedString);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[7];
} _OBJC_$_INSTANCE_VARIABLES_NSFileLocationComponent __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	7,
	{{(unsigned long int *)&OBJC_IVAR_$_NSFileLocationComponent$_specifierOrStandardizedPath, "_specifierOrStandardizedPath", "@", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_NSFileLocationComponent$_carbonCatalogInfoAndNameAreValid, "_carbonCatalogInfoAndNameAreValid", "c", 0, 1},
	 {(unsigned long int *)&OBJC_IVAR_$_NSFileLocationComponent$_carbonCatalogInfoMask, "_carbonCatalogInfoMask", "I", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_NSFileLocationComponent$_name, "_name", "@", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_NSFileLocationComponent$_containerComponent, "_containerComponent", "@", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_NSFileLocationComponent$_presentableName, "_presentableName", "@", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_NSFileLocationComponent$_iconAsAttributedString, "_iconAsAttributedString", "@", 2, 4}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_NSFileLocationComponent __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	0, 
	"NSFileLocationComponent",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_NSFileLocationComponent __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct NSFileLocationComponent_IMPL, _specifierOrStandardizedPath), sizeof(struct NSFileLocationComponent_IMPL), 
	0, 
	"NSFileLocationComponent",
	0, 
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_NSFileLocationComponent,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_NSFileLocationComponent;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_NSFileLocationComponent __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_NSFileLocationComponent,
	0, // &OBJC_CLASS_$_NSFileLocationComponent,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_NSFileLocationComponent,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_NSFileLocationComponent __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_NSFileLocationComponent,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_NSFileLocationComponent,
};
static void OBJC_CLASS_SETUP_$_NSFileLocationComponent(void ) {
	OBJC_METACLASS_$_NSFileLocationComponent.isa = &OBJC_METACLASS_$_NSFileLocationComponent;
	OBJC_METACLASS_$_NSFileLocationComponent.superclass = &OBJC_CLASS_$_NSFileLocationComponent;
	OBJC_METACLASS_$_NSFileLocationComponent.cache = &_objc_empty_cache;
	OBJC_CLASS_$_NSFileLocationComponent.isa = &OBJC_METACLASS_$_NSFileLocationComponent;
	OBJC_CLASS_$_NSFileLocationComponent.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo$bar __attribute__ ((used, section ("__DATA,__objc_ivar"))) = 0;

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_Foo$bar, "bar", "b26", 2, 4}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	0, 
	"Foo",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, 0, sizeof(struct Foo_IMPL), 
	0, 
	"Foo",
	0, 
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_Foo,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Foo __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo,
	0, // &OBJC_CLASS_$_Foo,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_Foo,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_Foo,
};
static void OBJC_CLASS_SETUP_$_Foo(void ) {
	OBJC_METACLASS_$_Foo.isa = &OBJC_METACLASS_$_Foo;
	OBJC_METACLASS_$_Foo.superclass = &OBJC_CLASS_$_Foo;
	OBJC_METACLASS_$_Foo.cache = &_objc_empty_cache;
	OBJC_CLASS_$_Foo.isa = &OBJC_METACLASS_$_Foo;
	OBJC_CLASS_$_Foo.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo1$bar __attribute__ ((used, section ("__DATA,__objc_ivar"))) = 0;
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo1$bar2 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = 0;

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[2];
} _OBJC_$_INSTANCE_VARIABLES_Foo1 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	2,
	{{(unsigned long int *)&OBJC_IVAR_$_Foo1$bar, "bar", "b26", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_Foo1$bar2, "bar2", "b4", 2, 4}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_Foo1 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	0, 
	"Foo1",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Foo1 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, 0, sizeof(struct Foo1_IMPL), 
	0, 
	"Foo1",
	0, 
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_Foo1,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo1;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Foo1 __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo1,
	0, // &OBJC_CLASS_$_Foo1,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_Foo1,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo1 __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo1,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_Foo1,
};
static void OBJC_CLASS_SETUP_$_Foo1(void ) {
	OBJC_METACLASS_$_Foo1.isa = &OBJC_METACLASS_$_Foo1;
	OBJC_METACLASS_$_Foo1.superclass = &OBJC_CLASS_$_Foo1;
	OBJC_METACLASS_$_Foo1.cache = &_objc_empty_cache;
	OBJC_CLASS_$_Foo1.isa = &OBJC_METACLASS_$_Foo1;
	OBJC_CLASS_$_Foo1.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo3$foo __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct Foo3_IMPL, foo);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo3$bar __attribute__ ((used, section ("__DATA,__objc_ivar"))) = 0;

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[2];
} _OBJC_$_INSTANCE_VARIABLES_Foo3 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	2,
	{{(unsigned long int *)&OBJC_IVAR_$_Foo3$foo, "foo", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_Foo3$bar, "bar", "b26", 2, 4}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_Foo3 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	0, 
	"Foo3",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Foo3 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct Foo3_IMPL, foo), sizeof(struct Foo3_IMPL), 
	0, 
	"Foo3",
	0, 
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_Foo3,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo3;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Foo3 __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo3,
	0, // &OBJC_CLASS_$_Foo3,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_Foo3,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo3 __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo3,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_Foo3,
};
static void OBJC_CLASS_SETUP_$_Foo3(void ) {
	OBJC_METACLASS_$_Foo3.isa = &OBJC_METACLASS_$_Foo3;
	OBJC_METACLASS_$_Foo3.superclass = &OBJC_CLASS_$_Foo3;
	OBJC_METACLASS_$_Foo3.cache = &_objc_empty_cache;
	OBJC_CLASS_$_Foo3.isa = &OBJC_METACLASS_$_Foo3;
	OBJC_CLASS_$_Foo3.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_C,
	(void *)&OBJC_CLASS_SETUP_$_A,
	(void *)&OBJC_CLASS_SETUP_$_D,
	(void *)&OBJC_CLASS_SETUP_$_NSFileLocationComponent,
	(void *)&OBJC_CLASS_SETUP_$_Foo,
	(void *)&OBJC_CLASS_SETUP_$_Foo1,
	(void *)&OBJC_CLASS_SETUP_$_Foo3,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [7] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_C,
	&OBJC_CLASS_$_A,
	&OBJC_CLASS_$_D,
	&OBJC_CLASS_$_NSFileLocationComponent,
	&OBJC_CLASS_$_Foo,
	&OBJC_CLASS_$_Foo1,
	&OBJC_CLASS_$_Foo3,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
