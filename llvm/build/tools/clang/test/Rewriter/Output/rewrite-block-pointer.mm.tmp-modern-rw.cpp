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
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5 %s -o %t-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp
// radar 7638400

// rdar://11375908
typedef unsigned long size_t;

typedef void * id;
void *sel_registerName(const char *);

#ifndef _REWRITER_typedef_X
#define _REWRITER_typedef_X
typedef struct objc_object X;
typedef struct {} _objc_exc_X;
#endif

/* @end */

void foo(void (*block)(int));

// @implementation X

#line 19 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static void enumerateIt(void (*)(id, id, char *));

struct __enumerateIt_block_impl_0 {
  struct __block_impl impl;
  struct __enumerateIt_block_desc_0* Desc;
  __enumerateIt_block_impl_0(void *fp, struct __enumerateIt_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 20 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static void __enumerateIt_block_func_0(struct __enumerateIt_block_impl_0 *__cself, int idx) {
 }

static struct __enumerateIt_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __enumerateIt_block_desc_0_DATA = { 0, sizeof(struct __enumerateIt_block_impl_0)};
void enumerateIt(void (*block)(id, id, char *)) {
      foo((void (*)(int))&__enumerateIt_block_impl_0((void *)__enumerateIt_block_func_0, &__enumerateIt_block_desc_0_DATA));
}
// @end

// radar 7651312
void apply(void (*block)(int));


#line 27 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static void x(int (*cmp)(int, int)) {
	x(cmp);
}


#line 31 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static void y(int (*)(int, int));

struct __y_block_impl_0 {
  struct __block_impl impl;
  struct __y_block_desc_0* Desc;
  struct __block_impl *cmp;
  __y_block_impl_0(void *fp, struct __y_block_desc_0 *desc, void *_cmp, int flags=0) : cmp((struct __block_impl *)_cmp) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 32 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static void __y_block_func_0(struct __y_block_impl_0 *__cself, int sect) {
  int (*cmp)(int, int) = (int (*)(int, int))__cself->cmp; // bound by copy

		x(cmp);
    }
static void __y_block_copy_0(struct __y_block_impl_0*dst, struct __y_block_impl_0*src) {_Block_object_assign((void*)&dst->cmp, (void*)src->cmp, 7/*BLOCK_FIELD_IS_BLOCK*/);}

static void __y_block_dispose_0(struct __y_block_impl_0*src) {_Block_object_dispose((void*)src->cmp, 7/*BLOCK_FIELD_IS_BLOCK*/);}

static struct __y_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __y_block_impl_0*, struct __y_block_impl_0*);
  void (*dispose)(struct __y_block_impl_0*);
} __y_block_desc_0_DATA = { 0, sizeof(struct __y_block_impl_0), __y_block_copy_0, __y_block_dispose_0};
void y(int (*cmp)(int, int)) {
	apply((void (*)(int))&__y_block_impl_0((void *)__y_block_func_0, &__y_block_desc_0_DATA, (void *)cmp, 570425344));
}

// radar 7659483
void *_Block_copy(const void *aBlock);

#line 39 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
void x(void (*block)(void)) {
        block = ((void (*)())_Block_copy((const void *)(block)));
}

// radar 7682763
#ifndef _REWRITER_typedef_Y
#define _REWRITER_typedef_Y
typedef struct objc_object Y;
typedef struct {} _objc_exc_Y;
#endif

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long OBJC_IVAR_$_Y$_private;
struct Y_IMPL {
	id _private;
};

// - (void (^)(void))f;
/* @end */

typedef void (*void_block_t)(void);

#ifndef _REWRITER_typedef_YY
#define _REWRITER_typedef_YY
typedef struct objc_object YY;
typedef struct {} _objc_exc_YY;
#endif

struct YY_IMPL {
	void_block_t __completion;
};

// @property (copy) void_block_t f;
/* @end */

// @implementation Y

#line 60 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static void(* _I_Y_f(Y * self, SEL _cmd) )(){
    return ((void (*(*)(id, SEL))())(void *)objc_msgSend)((id)(*(id *)((char *)self + OBJC_IVAR_$_Y$_private)), sel_registerName("f"));
}

// @end

// rdar: //8608902
// @protocol CoreDAVAccountInfoProvider;
// @protocol CodeProvider;
typedef void (*BDVDiscoveryCompletionHandler)(int success, id/*<CoreDAVAccountInfoProvider>*/ discoveredInfo);
typedef void (*BDVDiscoveryCompletion)(id/*<CodeProvider>*/ codeInfo, int success, id/*<CoreDAVAccountInfoProvider>*/ discoveredInfo);
typedef void (*BDVDiscovery)(int success);
typedef void (*BDVDisc)(id/*<CoreDAVAccountInfoProvider>*/ discoveredInfo, id/*<CodeProvider>*/ codeInfo, 
                        int success, id/*<CoreDAVAccountInfoProvider, CodeProvider>*/ Info);
typedef void (*BLOCK)(id, id/*<CoreDAVAccountInfoProvider>*/, id/*<CodeProvider>*/ codeInfo);
typedef void (*EMPTY_BLOCK)();
typedef void (*  BDVDiscoveryCompletion1  )(id/*<CodeProvider>*/ codeInfo, int success, id/*<CoreDAVAccountInfoProvider>*/ discoveredInfo);

void (*BL)(void(*arg1)(), int i1, void(*arg)(int));

typedef void (*iscoveryCompletionHandler)(void(*arg1)(), id/*<CoreDAVAccountInfoProvider>*/ discoveredInfo);

typedef void (*DVDisc)(id/*<CoreDAVAccountInfoProvider>*/ discoveredInfo, id/*<CodeProvider>*/ codeInfo,
			void(*arg1)(), int i1, void(*arg)(id/*<CoreDAVAccountInfoProvider>*/),
                        int success, id/*<CoreDAVAccountInfoProvider, CodeProvider>*/ Info);


#ifndef _REWRITER_typedef_I
#define _REWRITER_typedef_I
typedef struct objc_object I;
typedef struct {} _objc_exc_I;
#endif
 /* @end */
#ifndef _REWRITER_typedef_INTF
#define _REWRITER_typedef_INTF
typedef struct objc_object INTF;
typedef struct {} _objc_exc_INTF;
#endif
 /* @end */
void (*BLINT)(I/*<CoreDAVAccountInfoProvider>*/* ARG, INTF/*<CodeProvider, CoreDAVAccountInfoProvider>*/* ARG1);


#line 91 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
void  test8608902() {
  BDVDiscoveryCompletionHandler ppp;
  ((void (*)(__block_impl *, int, id))((__block_impl *)ppp)->FuncPtr)((__block_impl *)ppp, 1, 0);
}

struct __Block_byref_addChangeToData_0 {
  void *__isa;
__Block_byref_addChangeToData_0 *__forwarding;
 int __flags;
 int __size;
 void (*__Block_byref_id_object_copy)(void*, void*);
 void (*__Block_byref_id_object_dispose)(void*);
 char (*addChangeToData)();
};
static void __Block_byref_id_object_copy_135(void *dst, void *src) {
 _Block_object_assign((char*)dst + 40, *(void * *) ((char*)src + 40), 135);
}
static void __Block_byref_id_object_dispose_135(void *src) {
 _Block_object_dispose(*(void * *) ((char*)src + 40), 135);
}

struct __test9204669_block_impl_0 {
  struct __block_impl impl;
  struct __test9204669_block_desc_0* Desc;
  __test9204669_block_impl_0(void *fp, struct __test9204669_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 99 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static char __test9204669_block_func_0(struct __test9204669_block_impl_0 *__cself) {

      return 'b';
   }

static struct __test9204669_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __test9204669_block_desc_0_DATA = { 0, sizeof(struct __test9204669_block_impl_0)};

#line 96 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
void test9204669() {
   __attribute__((__blocks__(byref))) __Block_byref_addChangeToData_0 addChangeToData = {(void*)0,(__Block_byref_addChangeToData_0 *)&addChangeToData, 33554432, sizeof(__Block_byref_addChangeToData_0), __Block_byref_id_object_copy_135, __Block_byref_id_object_dispose_135};
;

   (addChangeToData.__forwarding->addChangeToData) = (char (*)())&__test9204669_block_impl_0((void *)__test9204669_block_func_0, &__test9204669_block_desc_0_DATA);
   ((char (*)(__block_impl *))((__block_impl *)(addChangeToData.__forwarding->addChangeToData))->FuncPtr)((__block_impl *)(addChangeToData.__forwarding->addChangeToData));
}

struct __Block_byref_addChangeToData_1 {
  void *__isa;
__Block_byref_addChangeToData_1 *__forwarding;
 int __flags;
 int __size;
 void (*__Block_byref_id_object_copy)(void*, void*);
 void (*__Block_byref_id_object_dispose)(void*);
 void (*addChangeToData)();
};

struct __test9204669_1_block_impl_0 {
  struct __block_impl impl;
  struct __test9204669_1_block_desc_0* Desc;
  __Block_byref_addChangeToData_1 *addChangeToData; // by ref
  __test9204669_1_block_impl_0(void *fp, struct __test9204669_1_block_desc_0 *desc, __Block_byref_addChangeToData_1 *_addChangeToData, int flags=0) : addChangeToData(_addChangeToData->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 108 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
static void __test9204669_1_block_func_0(struct __test9204669_1_block_impl_0 *__cself) {
  __Block_byref_addChangeToData_1 *addChangeToData = __cself->addChangeToData; // bound by ref

    ((void (*)(__block_impl *))((__block_impl *)(addChangeToData->__forwarding->addChangeToData))->FuncPtr)((__block_impl *)(addChangeToData->__forwarding->addChangeToData));
   }
static void __test9204669_1_block_copy_0(struct __test9204669_1_block_impl_0*dst, struct __test9204669_1_block_impl_0*src) {_Block_object_assign((void*)&dst->addChangeToData, (void*)src->addChangeToData, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __test9204669_1_block_dispose_0(struct __test9204669_1_block_impl_0*src) {_Block_object_dispose((void*)src->addChangeToData, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __test9204669_1_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __test9204669_1_block_impl_0*, struct __test9204669_1_block_impl_0*);
  void (*dispose)(struct __test9204669_1_block_impl_0*);
} __test9204669_1_block_desc_0_DATA = { 0, sizeof(struct __test9204669_1_block_impl_0), __test9204669_1_block_copy_0, __test9204669_1_block_dispose_0};

#line 105 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-pointer.mm"
void test9204669_1() {
   __attribute__((__blocks__(byref))) __Block_byref_addChangeToData_1 addChangeToData = {(void*)0,(__Block_byref_addChangeToData_1 *)&addChangeToData, 33554432, sizeof(__Block_byref_addChangeToData_1), __Block_byref_id_object_copy_135, __Block_byref_id_object_dispose_135};
;

   (addChangeToData.__forwarding->addChangeToData) = (void (*)())&__test9204669_1_block_impl_0((void *)__test9204669_1_block_func_0, &__test9204669_1_block_desc_0_DATA, (__Block_byref_addChangeToData_1 *)&addChangeToData, 570425344);
}


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

static struct _class_ro_t _OBJC_METACLASS_RO_$_X __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"X",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_X __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, 0, 0, 
	(unsigned int)0, 
	0, 
	"X",
	0, 
	0, 
	0, 
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_X;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_X __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_X,
	0, // &OBJC_CLASS_$_X,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_X,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_X __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_X,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_X,
};
static void OBJC_CLASS_SETUP_$_X(void ) {
	OBJC_METACLASS_$_X.isa = &OBJC_METACLASS_$_X;
	OBJC_METACLASS_$_X.superclass = &OBJC_CLASS_$_X;
	OBJC_METACLASS_$_X.cache = &_objc_empty_cache;
	OBJC_CLASS_$_X.isa = &OBJC_METACLASS_$_X;
	OBJC_CLASS_$_X.cache = &_objc_empty_cache;
}

__declspec(allocate(".objc_ivar$B")) extern "C" unsigned long int OBJC_IVAR_$_Y$_private __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct Y_IMPL, _private);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_Y __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_Y$_private, "_private", "@", 3, 8}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[1];
} _OBJC_$_INSTANCE_METHODS_Y __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	1,
	{{(struct objc_selector *)"f", "@?16@0:8", (void *)_I_Y_f}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_Y __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"Y",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_Y __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct Y_IMPL, _private), sizeof(struct Y_IMPL), 
	(unsigned int)0, 
	0, 
	"Y",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_Y,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_Y,
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Y;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_Y __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Y,
	0, // &OBJC_CLASS_$_Y,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_Y,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_Y __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_Y,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_Y,
};
static void OBJC_CLASS_SETUP_$_Y(void ) {
	OBJC_METACLASS_$_Y.isa = &OBJC_METACLASS_$_Y;
	OBJC_METACLASS_$_Y.superclass = &OBJC_CLASS_$_Y;
	OBJC_METACLASS_$_Y.cache = &_objc_empty_cache;
	OBJC_CLASS_$_Y.isa = &OBJC_METACLASS_$_Y;
	OBJC_CLASS_$_Y.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_X,
	(void *)&OBJC_CLASS_SETUP_$_Y,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [2] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_X,
	&OBJC_CLASS_$_Y,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
