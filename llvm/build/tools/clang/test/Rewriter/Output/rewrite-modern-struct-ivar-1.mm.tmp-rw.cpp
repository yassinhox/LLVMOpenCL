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
// RUN: %clang_cc1 -fblocks -rewrite-objc -fms-extensions %s -o %t-rw.cpp
// RUN: %clang_cc1 -Werror -fsyntax-only -Wno-address-of-temporary -Wno-c++11-narrowing -std=c++11 -D"Class=void*" -D"id=void*" -D"SEL=void*" -U__declspec -D"__declspec(X)=" %t-rw.cpp
// rdar://11323187

typedef unsigned long NSUInteger;

typedef struct _NSRange {
    NSUInteger location;
    NSUInteger length;
} NSRange;

typedef struct {
    NSUInteger _capacity;
    NSRange _ranges[0];
} _NSRangeInfo;

#ifndef _REWRITER_typedef_Foo
#define _REWRITER_typedef_Foo
typedef struct objc_object Foo;
typedef struct {} _objc_exc_Foo;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllimport) unsigned long OBJC_IVAR_$_Foo$bar;
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllimport) unsigned long OBJC_IVAR_$_Foo$_internal;
	struct _bar {
	int x : 1;
	int y : 1;
	} ;
struct Foo_IMPL {

	struct _bar bar;

	union  {

	struct  {
	NSRange _range;
	} _singleRange;

	struct  {
	void *_data;
	void *_reserved;
	} _multipleRanges;
	} _internal;
};

/* @end */
// @implementation Foo

#line 35 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-struct-ivar-1.mm"
static void _I_Foo_x_(Foo * self, SEL _cmd, Foo *other) {
  (*(struct _bar *)((char *)self + OBJC_IVAR_$_Foo$bar)).x = 0;
  (*(struct _bar *)((char *)self + OBJC_IVAR_$_Foo$bar)).y = 1;
  (*(decltype(((Foo_IMPL *)0U)->_internal) *)((char *)self + OBJC_IVAR_$_Foo$_internal))._singleRange._range = (( (*(struct _bar *)((char *)other + OBJC_IVAR_$_Foo$bar)).x) ? &( (*(decltype(((Foo_IMPL *)0U)->_internal) *)((char *)other + OBJC_IVAR_$_Foo$_internal))._singleRange._range) : ((NSRange *)(&(((_NSRangeInfo *)( (*(decltype(((Foo_IMPL *)0U)->_internal) *)((char *)other + OBJC_IVAR_$_Foo$_internal))._multipleRanges._data))->_ranges))))[0];
}
// @end
#ifndef _REWRITER_typedef_FooS
#define _REWRITER_typedef_FooS
typedef struct objc_object FooS;
typedef struct {} _objc_exc_FooS;
#endif

struct FooS_IMPL {
	struct Foo_IMPL Foo_IVARS;
};

/* @end */
// @implementation FooS

#line 44 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-struct-ivar-1.mm"
static void _I_FooS_y(FooS * self, SEL _cmd) {

  NSUInteger asdf =  (( (*(struct _bar *)((char *)self + OBJC_IVAR_$_Foo$bar)).x) ? 1 : ((_NSRangeInfo *)( (*(decltype(((Foo_IMPL *)0U)->_internal) *)((char *)self + OBJC_IVAR_$_Foo$_internal))._multipleRanges._data))->_capacity ); 
}
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

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo$bar __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct Foo_IMPL, bar);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_Foo$_internal __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct Foo_IMPL, _internal);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[2];
} _OBJC_$_INSTANCE_VARIABLES_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	2,
	{{(unsigned long int *)&OBJC_IVAR_$_Foo$bar, "bar", "{_bar=\"x\"b1\"y\"b1}", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_Foo$_internal, "_internal", "(?=\"_singleRange\"{?=\"_range\"{_NSRange=\"location\"Q\"length\"Q}}\"_multipleRanges\"{?=\"_data\"^v\"_reserved\"^v})", 3, 16}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[1];
} _OBJC_$_INSTANCE_METHODS_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	1,
	{{(struct objc_selector *)"x:", "v24@0:8@16", (void *)_I_Foo_x_}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"Foo",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Foo __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct Foo_IMPL, bar), sizeof(struct Foo_IMPL), 
	(unsigned int)0, 
	0, 
	"Foo",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_Foo,
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

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[1];
} _OBJC_$_INSTANCE_METHODS_FooS __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	1,
	{{(struct objc_selector *)"y", "v16@0:8", (void *)_I_FooS_y}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_FooS __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	1, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"FooS",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_FooS __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	0, sizeof(struct FooS_IMPL), sizeof(struct FooS_IMPL), 
	(unsigned int)0, 
	0, 
	"FooS",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_FooS,
	0, 
	0, 
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Foo;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_FooS __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Foo,
	0, // &OBJC_METACLASS_$_Foo,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_FooS,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Foo;

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_FooS __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_FooS,
	0, // &OBJC_CLASS_$_Foo,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_FooS,
};
static void OBJC_CLASS_SETUP_$_FooS(void ) {
	OBJC_METACLASS_$_FooS.isa = &OBJC_METACLASS_$_Foo;
	OBJC_METACLASS_$_FooS.superclass = &OBJC_METACLASS_$_Foo;
	OBJC_METACLASS_$_FooS.cache = &_objc_empty_cache;
	OBJC_CLASS_$_FooS.isa = &OBJC_METACLASS_$_FooS;
	OBJC_CLASS_$_FooS.superclass = &OBJC_CLASS_$_Foo;
	OBJC_CLASS_$_FooS.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_Foo,
	(void *)&OBJC_CLASS_SETUP_$_FooS,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [2] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_Foo,
	&OBJC_CLASS_$_FooS,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
