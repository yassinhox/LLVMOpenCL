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
// RUN: %clang_cc1 -x objective-c -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fcxx-exceptions -fexceptions  -Wno-address-of-temporary -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp

typedef struct objc_class *Class;
typedef struct objc_object {
    Class isa;
} *id;

void *sel_registerName(const char *);

#ifndef _REWRITER_typedef_Foo
#define _REWRITER_typedef_Foo
typedef struct objc_object Foo;
typedef struct {} _objc_exc_Foo;
#endif
 /* @end */
void TRY();
void SPLATCH();
void MYTRY();
void MYCATCH();


#line 17 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
void foo() {
  try  { TRY(); } 
  catch (...) { SPLATCH(); throw; }
}


#line 22 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
int main()
{

  try  {
     MYTRY();
  }

  
#line 29 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
catch (_objc_exc_Foo *_localException) { Foo *localException = (Foo*)_localException; 
     MYCATCH();
     objc_exception_throw( localException);
  }
  
  // no catch clause
  
#line 35 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
{ id volatile _rethrow = 0;
try { } 
  
#line 36 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
catch (id e) {_rethrow = e;}
 { struct _FIN { _FIN(id reth) : rethrow(reth) {}
	~_FIN() { if (rethrow) objc_exception_throw(rethrow); }
	id rethrow;
	} _fin_force_rethow(_rethrow); }
}
}


#ifndef _REWRITER_typedef_INST
#define _REWRITER_typedef_INST
typedef struct objc_object INST;
typedef struct {} _objc_exc_INST;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllimport) unsigned long OBJC_IVAR_$_INST$throw_val;
struct INST_IMPL {
	INST *throw_val;
};


// - (id) ThrowThis;

// - (void) MainMeth;

/* @end */


// @implementation INST

#line 53 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
static id _I_INST_ThrowThis(INST * self, SEL _cmd) { return 0; }


#line 55 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
static void _I_INST_MainMeth(INST * self, SEL _cmd) {
  try  {
     MYTRY();
  }
  
#line 59 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-throw.m"
catch (_objc_exc_Foo *_localException) { Foo *localException = (Foo*)_localException; 
     MYCATCH();
     objc_exception_throw( ((id (*)(id, SEL))(void *)objc_msgSend)((id)self, sel_registerName("ThrowThis")));
  }
  catch (...) {
    objc_exception_throw( ((id (*)(id, SEL))(void *)objc_msgSend)((id)(*(INST **)((char *)self + OBJC_IVAR_$_INST$throw_val)), sel_registerName("ThrowThis")));
  }
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

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_INST$throw_val __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct INST_IMPL, throw_val);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_INST __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_INST$throw_val, "throw_val", "@\"INST\"", 3, 8}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[2];
} _OBJC_$_INSTANCE_METHODS_INST __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	2,
	{{(struct objc_selector *)"ThrowThis", "@16@0:8", (void *)_I_INST_ThrowThis},
	{(struct objc_selector *)"MainMeth", "v16@0:8", (void *)_I_INST_MainMeth}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_INST __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"INST",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_INST __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct INST_IMPL, throw_val), sizeof(struct INST_IMPL), 
	(unsigned int)0, 
	0, 
	"INST",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_INST,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_INST,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_INST;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_INST __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_INST,
	0, // &OBJC_CLASS_$_INST,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_INST,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_INST __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_INST,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_INST,
};
static void OBJC_CLASS_SETUP_$_INST(void ) {
	OBJC_METACLASS_$_INST.isa = &OBJC_METACLASS_$_INST;
	OBJC_METACLASS_$_INST.superclass = &OBJC_CLASS_$_INST;
	OBJC_METACLASS_$_INST.cache = &_objc_empty_cache;
	OBJC_CLASS_$_INST.isa = &OBJC_METACLASS_$_INST;
	OBJC_CLASS_$_INST.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_INST,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [1] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_INST,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
