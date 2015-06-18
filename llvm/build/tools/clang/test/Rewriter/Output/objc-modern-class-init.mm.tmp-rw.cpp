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
// RUN: %clang_cc1 -x objective-c++ -fblocks -fms-extensions -rewrite-objc %s -o %t-rw.cpp 
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// rdar:// 11076938

#ifndef _REWRITER_typedef_Root
#define _REWRITER_typedef_Root
typedef struct objc_object Root;
typedef struct {} _objc_exc_Root;
#endif
 /* @end */

#ifndef _REWRITER_typedef_Super
#define _REWRITER_typedef_Super
typedef struct objc_object Super;
typedef struct {} _objc_exc_Super;
#endif

/* @end */

#ifndef _REWRITER_typedef_Sub
#define _REWRITER_typedef_Sub
typedef struct objc_object Sub;
typedef struct {} _objc_exc_Sub;
#endif

/* @end */

// @implementation Sub // @end

// @implementation Root // @end

// @interface Root(Cat) /* @end */

// @interface Sub(Cat) /* @end */

// @implementation Root(Cat) // @end

// @implementation Sub(Cat) // @end

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

static struct _class_ro_t _OBJC_METACLASS_RO_$_Sub __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	1, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"Sub",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Sub __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	0, 0, 0, 
	(unsigned int)0, 
	0, 
	"Sub",
	0, 
	0, 
	0, 
	0, 
	0, 
};

extern "C" __declspec(dllimport) struct _class_t OBJC_METACLASS_$_Super;
extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Root;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Sub __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Root,
	0, // &OBJC_METACLASS_$_Super,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_Sub,
};

extern "C" __declspec(dllimport) struct _class_t OBJC_CLASS_$_Super;

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Sub __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Sub,
	0, // &OBJC_CLASS_$_Super,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_Sub,
};
static void OBJC_CLASS_SETUP_$_Sub(void ) {
	OBJC_METACLASS_$_Sub.isa = &OBJC_METACLASS_$_Root;
	OBJC_METACLASS_$_Sub.superclass = &OBJC_METACLASS_$_Super;
	OBJC_METACLASS_$_Sub.cache = &_objc_empty_cache;
	OBJC_CLASS_$_Sub.isa = &OBJC_METACLASS_$_Sub;
	OBJC_CLASS_$_Sub.superclass = &OBJC_CLASS_$_Super;
	OBJC_CLASS_$_Sub.cache = &_objc_empty_cache;
}

static struct _class_ro_t _OBJC_METACLASS_RO_$_Root __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"Root",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Root __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, 0, 0, 
	(unsigned int)0, 
	0, 
	"Root",
	0, 
	0, 
	0, 
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Root;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Root __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Root,
	0, // &OBJC_CLASS_$_Root,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_Root,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Root __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Root,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_Root,
};
static void OBJC_CLASS_SETUP_$_Root(void ) {
	OBJC_METACLASS_$_Root.isa = &OBJC_METACLASS_$_Root;
	OBJC_METACLASS_$_Root.superclass = &OBJC_CLASS_$_Root;
	OBJC_METACLASS_$_Root.cache = &_objc_empty_cache;
	OBJC_CLASS_$_Root.isa = &OBJC_METACLASS_$_Root;
	OBJC_CLASS_$_Root.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_Sub,
	(void *)&OBJC_CLASS_SETUP_$_Root,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Root;

static struct _category_t _OBJC_$_CATEGORY_Root_$_Cat __attribute__ ((used, section ("__DATA,__objc_const"))) = 
{
	"Root",
	0, // &OBJC_CLASS_$_Root,
	0,
	0,
	0,
	0,
};
static void OBJC_CATEGORY_SETUP_$_Root_$_Cat(void ) {
	_OBJC_$_CATEGORY_Root_$_Cat.cls = &OBJC_CLASS_$_Root;
}

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Sub;

static struct _category_t _OBJC_$_CATEGORY_Sub_$_Cat __attribute__ ((used, section ("__DATA,__objc_const"))) = 
{
	"Sub",
	0, // &OBJC_CLASS_$_Sub,
	0,
	0,
	0,
	0,
};
static void OBJC_CATEGORY_SETUP_$_Sub_$_Cat(void ) {
	_OBJC_$_CATEGORY_Sub_$_Cat.cls = &OBJC_CLASS_$_Sub;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CATEGORY_SETUP[] = {
	(void *)&OBJC_CATEGORY_SETUP_$_Root_$_Cat,
	(void *)&OBJC_CATEGORY_SETUP_$_Sub_$_Cat,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [2] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_Sub,
	&OBJC_CLASS_$_Root,
};
__declspec(allocate(".objc_catlist$B")) static struct _category_t *L_OBJC_LABEL_CATEGORY_$ [2] __attribute__((used, section ("__DATA, __objc_catlist,regular,no_dead_strip")))= {
	&_OBJC_$_CATEGORY_Root_$_Cat,
	&_OBJC_$_CATEGORY_Sub_$_Cat,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };