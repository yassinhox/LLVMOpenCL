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
// RUN: %clang_cc1 -fsyntax-only -fms-extensions -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -fms-extensions -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp
// radar 8608293

typedef unsigned long size_t;
void *sel_registerName(const char *);

extern "C" void nowarn(id);

extern "C" void noblockwarn(void (*)());

#ifndef _REWRITER_typedef_INTFOFPROP
#define _REWRITER_typedef_INTFOFPROP
typedef struct objc_object INTFOFPROP;
typedef struct {} _objc_exc_INTFOFPROP;
#endif
 
// @property (readwrite, retain) INTFOFPROP *outer;
// @property (readwrite, retain) id inner;
/* @end */

#ifndef _REWRITER_typedef_NSSet
#define _REWRITER_typedef_NSSet
typedef struct objc_object NSSet;
typedef struct {} _objc_exc_NSSet;
#endif

// - (NSSet *)objectsPassingTest:(char (^)(id obj, char *stop))predicate ;
/* @end */

#ifndef _REWRITER_typedef_INTF
#define _REWRITER_typedef_INTF
typedef struct objc_object INTF;
typedef struct {} _objc_exc_INTF;
#endif

// - (NSSet *)Meth;
/* @end */

// @implementation INTF


struct __INTF__Meth_block_impl_0 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_0* Desc;
  __INTF__Meth_block_impl_0(void *fp, struct __INTF__Meth_block_desc_0 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 36 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-property-in-blocks.mm"
static void __INTF__Meth_block_func_0(struct __INTF__Meth_block_impl_0 *__cself) {

          INTFOFPROP *ace;
          nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
        }

static struct __INTF__Meth_block_desc_0 {
  size_t reserved;
  size_t Block_size;
} __INTF__Meth_block_desc_0_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_0)};

struct __INTF__Meth_block_impl_1 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_1* Desc;
  __INTF__Meth_block_impl_1(void *fp, struct __INTF__Meth_block_desc_1 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 33 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-property-in-blocks.mm"
static void __INTF__Meth_block_func_1(struct __INTF__Meth_block_impl_1 *__cself) {

        INTFOFPROP *ace;
        nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
        noblockwarn((void (*)())&__INTF__Meth_block_impl_0((void *)__INTF__Meth_block_func_0, &__INTF__Meth_block_desc_0_DATA));
    }

static struct __INTF__Meth_block_desc_1 {
  size_t reserved;
  size_t Block_size;
} __INTF__Meth_block_desc_1_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_1)};

struct __INTF__Meth_block_impl_2 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_2* Desc;
  __INTF__Meth_block_impl_2(void *fp, struct __INTF__Meth_block_desc_2 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 42 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-property-in-blocks.mm"
static void __INTF__Meth_block_func_2(struct __INTF__Meth_block_impl_2 *__cself) {

        INTFOFPROP *ace;
        nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
    }

static struct __INTF__Meth_block_desc_2 {
  size_t reserved;
  size_t Block_size;
} __INTF__Meth_block_desc_2_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_2)};

struct __INTF__Meth_block_impl_3 {
  struct __block_impl impl;
  struct __INTF__Meth_block_desc_3* Desc;
  __INTF__Meth_block_impl_3(void *fp, struct __INTF__Meth_block_desc_3 *desc, int flags=0) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 47 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-property-in-blocks.mm"
static char __INTF__Meth_block_func_3(struct __INTF__Meth_block_impl_3 *__cself, id obj, char *stop) {

        INTFOFPROP *ace = (INTFOFPROP *)obj;
        nowarn(((id (*)(id, SEL))(void *)objc_msgSend)((id)((INTFOFPROP *(*)(id, SEL))(void *)objc_msgSend)((id)ace, sel_registerName("outer")), sel_registerName("inner")));
        return (char)0;
    }

static struct __INTF__Meth_block_desc_3 {
  size_t reserved;
  size_t Block_size;
} __INTF__Meth_block_desc_3_DATA = { 0, sizeof(struct __INTF__Meth_block_impl_3)};

#line 29 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-nested-property-in-blocks.mm"
static NSSet * _I_INTF_Meth(INTF * self, SEL _cmd) {
    NSSet *aces;

    noblockwarn((void (*)())&__INTF__Meth_block_impl_1((void *)__INTF__Meth_block_func_1, &__INTF__Meth_block_desc_1_DATA));

    noblockwarn((void (*)())&__INTF__Meth_block_impl_2((void *)__INTF__Meth_block_func_2, &__INTF__Meth_block_desc_2_DATA));

return ((NSSet *(*)(id, SEL, char (*)(id, char *)))(void *)objc_msgSend)((id)aces, sel_registerName("objectsPassingTest:"), (char (*)(id, char *))&__INTF__Meth_block_impl_3((void *)__INTF__Meth_block_func_3, &__INTF__Meth_block_desc_3_DATA));

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

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[1];
} _OBJC_$_INSTANCE_METHODS_INTF __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	1,
	{{(struct objc_selector *)"Meth", "@16@0:8", (void *)_I_INTF_Meth}}
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
	2, 0, 0, 
	(unsigned int)0, 
	0, 
	"INTF",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_INTF,
	0, 
	0, 
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
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_INTF,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [1] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_INTF,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };