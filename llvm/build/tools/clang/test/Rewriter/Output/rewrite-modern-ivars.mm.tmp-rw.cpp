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
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fblocks -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp

// @protocol P /* @end */
// @protocol P1 /* @end */
#ifndef _REWRITER_typedef_INTF
#define _REWRITER_typedef_INTF
typedef struct objc_object INTF;
typedef struct {} _objc_exc_INTF;
#endif

struct INTF_IMPL {
	id CLASS_IVAR;
	id Q_IVAR;
	void (*_block)(id);
	void (*_fptr)(void (*)(id));
	char CLASS_EXT_IVAR;
	id (*ext_block)(id, INTF *, INTF *);
	id IMPL_IVAR;
	double D_IMPL_IVAR;
	INTF *(*imp_fptr)(void (*)(id, INTF *));
	id arr[100];
};

/* @end */

// @implementation INTF // @end

#ifndef _REWRITER_typedef_MISC_INTF
#define _REWRITER_typedef_MISC_INTF
typedef struct objc_object MISC_INTF;
typedef struct {} _objc_exc_MISC_INTF;
#endif

struct MISC_INTF_IMPL {
	id CLASS_IVAR;
	id Q_IVAR;
	void (*_block)(id);
	void (*_fptr)(void (*)(id));
	unsigned int BF : 8;
	char : 0;
	int II4;
	double DD4;
	int II3;
	double DD3;
	int II2;
	double DD2;
	int II1;
	double DD1;
	char CLASS_EXT_IVAR;
	id (*ext_block)(id, MISC_INTF *, MISC_INTF *);
	id IMPL_IVAR;
	double D_IMPL_IVAR;
	MISC_INTF *(*imp_fptr)(void (*)(id, MISC_INTF *));
};

/* @end */

/** interface MISC_INTF()
{
  char CLASS_EXT_IVAR;
  id<P, P1> (^ext_block)(id<P>, MISC_INTF<P,P1>*, MISC_INTF*);
**/ 
/* @end */

/** interface MISC_INTF() {
  int II1;
  double DD1; **/ 
/* @end */

/** interface MISC_INTF() { int II2; double DD2; **/ 
/* @end */

/** interface MISC_INTF() { int II3; 
  double DD3; **/ 
/* @end */

/** interface MISC_INTF() { int II4; double DD4; 
**/ 
/* @end */

/** implementation MISC_INTF
{
  id IMPL_IVAR;
  double D_IMPL_IVAR;
  MISC_INTF<P> *(*imp_fptr)(void (^_block)(id<P>, MISC_INTF<P,P1>*));
**/ 
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

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$CLASS_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, CLASS_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$Q_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, Q_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$_block __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, _block);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$_fptr __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, _fptr);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$CLASS_EXT_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, CLASS_EXT_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$ext_block __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, ext_block);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$IMPL_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, IMPL_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$D_IMPL_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, D_IMPL_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$imp_fptr __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, imp_fptr);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INTF$arr __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INTF_IMPL, arr);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[10];
} _OBJC_$_INSTANCE_VARIABLES_INTF __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	10,
	{{(unsigned long int *)&OBJC_IVAR_$_INTF$CLASS_IVAR, "CLASS_IVAR", "@", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$Q_IVAR, "Q_IVAR", "@\"<P><P1>\"", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$_block, "_block", "@?", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$_fptr, "_fptr", "^?", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$CLASS_EXT_IVAR, "CLASS_EXT_IVAR", "c", 0, 1},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$ext_block, "ext_block", "@?", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$IMPL_IVAR, "IMPL_IVAR", "@", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$D_IMPL_IVAR, "D_IMPL_IVAR", "d", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$imp_fptr, "imp_fptr", "^?", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_INTF$arr, "arr", "[100@]", 3, 800}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_INTF __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"INTF",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_INTF __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct INTF_IMPL, CLASS_IVAR), sizeof(struct INTF_IMPL), 
	(unsigned int)0, 
	0, 
	"INTF",
	0, 
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_INTF,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_INTF;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_INTF __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_INTF,
	0, // &OBJC_CLASS_$_INTF,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_INTF,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_INTF __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_INTF,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_INTF,
};
static void OBJC_CLASS_SETUP_$_INTF(void ) {
	OBJC_METACLASS_$_INTF.isa = &OBJC_METACLASS_$_INTF;
	OBJC_METACLASS_$_INTF.superclass = &OBJC_CLASS_$_INTF;
	OBJC_METACLASS_$_INTF.cache = &_objc_empty_cache;
	OBJC_CLASS_$_INTF.isa = &OBJC_METACLASS_$_INTF;
	OBJC_CLASS_$_INTF.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_MISC_INTF$CLASS_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, CLASS_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_MISC_INTF$Q_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, Q_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_MISC_INTF$_block __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, _block);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_MISC_INTF$_fptr __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, _fptr);
__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_MISC_INTF$BF __attribute__ ((used, section ("__DATA,__objc_ivar"))) = 0;
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$II4 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, II4);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$DD4 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, DD4);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$II3 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, II3);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$DD3 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, DD3);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$II2 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, II2);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$DD2 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, DD2);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$II1 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, II1);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$DD1 __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, DD1);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$CLASS_EXT_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, CLASS_EXT_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$ext_block __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, ext_block);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$IMPL_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, IMPL_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$D_IMPL_IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, D_IMPL_IVAR);
__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_MISC_INTF$imp_fptr __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct MISC_INTF_IMPL, imp_fptr);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[18];
} _OBJC_$_INSTANCE_VARIABLES_MISC_INTF __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	18,
	{{(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$CLASS_IVAR, "CLASS_IVAR", "@", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$Q_IVAR, "Q_IVAR", "@\"<P><P1>\"", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$_block, "_block", "@?", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$_fptr, "_fptr", "^?", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$BF, "BF", "b8", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$II4, "II4", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$DD4, "DD4", "d", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$II3, "II3", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$DD3, "DD3", "d", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$II2, "II2", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$DD2, "DD2", "d", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$II1, "II1", "i", 2, 4},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$DD1, "DD1", "d", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$CLASS_EXT_IVAR, "CLASS_EXT_IVAR", "c", 0, 1},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$ext_block, "ext_block", "@?", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$IMPL_IVAR, "IMPL_IVAR", "@", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$D_IMPL_IVAR, "D_IMPL_IVAR", "d", 3, 8},
	 {(unsigned long int *)&OBJC_IVAR_$_MISC_INTF$imp_fptr, "imp_fptr", "^?", 3, 8}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_MISC_INTF __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"MISC_INTF",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_MISC_INTF __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct MISC_INTF_IMPL, CLASS_IVAR), sizeof(struct MISC_INTF_IMPL), 
	(unsigned int)0, 
	0, 
	"MISC_INTF",
	0, 
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_MISC_INTF,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_MISC_INTF;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_MISC_INTF __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_MISC_INTF,
	0, // &OBJC_CLASS_$_MISC_INTF,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_MISC_INTF,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_MISC_INTF __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_MISC_INTF,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_MISC_INTF,
};
static void OBJC_CLASS_SETUP_$_MISC_INTF(void ) {
	OBJC_METACLASS_$_MISC_INTF.isa = &OBJC_METACLASS_$_MISC_INTF;
	OBJC_METACLASS_$_MISC_INTF.superclass = &OBJC_CLASS_$_MISC_INTF;
	OBJC_METACLASS_$_MISC_INTF.cache = &_objc_empty_cache;
	OBJC_CLASS_$_MISC_INTF.isa = &OBJC_METACLASS_$_MISC_INTF;
	OBJC_CLASS_$_MISC_INTF.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_INTF,
	(void *)&OBJC_CLASS_SETUP_$_MISC_INTF,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [2] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_INTF,
	&OBJC_CLASS_$_MISC_INTF,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
