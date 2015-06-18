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
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" %t-rw.cpp
// radar 9254348
// RUN: %clang_cc1 -x objective-c++ -Wno-return-type -fblocks -fms-extensions -rewrite-objc %s -o %t-modern-rw.cpp
// RUN: %clang_cc1 -fsyntax-only -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" %t-modern-rw.cpp
// rdar://11259664

// rdar://11375908
typedef unsigned long size_t;

void *sel_registerName(const char *);
typedef void (*BLOCK_TYPE)(void);

#ifndef _REWRITER_typedef_CoreDAVTaskGroup
#define _REWRITER_typedef_CoreDAVTaskGroup
typedef struct objc_object CoreDAVTaskGroup;
typedef struct {} _objc_exc_CoreDAVTaskGroup;
#endif

struct CoreDAVTaskGroup_IMPL {
	int IVAR;
};

// @property int IVAR;
// - (void) setCompletionBlock : (BLOCK_TYPE) arg;
/* @end */

// @implementation CoreDAVTaskGroup

struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0 {
  struct __block_impl impl;
  struct __CoreDAVTaskGroup___finishInitialSync_block_desc_0* Desc;
  CoreDAVTaskGroup *self;
  __CoreDAVTaskGroup___finishInitialSync_block_impl_0(void *fp, struct __CoreDAVTaskGroup___finishInitialSync_block_desc_0 *desc, CoreDAVTaskGroup *_self, int flags=0) : self(_self) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 25 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal-1.mm"
static void __CoreDAVTaskGroup___finishInitialSync_block_func_0(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0 *__cself) {
  CoreDAVTaskGroup *self = __cself->self; // bound by copy

    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)self, sel_registerName("setIVAR:"), 0);
    ((void (*)(id, SEL))(void *)objc_msgSend)((id)self, sel_registerName("_finishInitialSync"));
  }
static void __CoreDAVTaskGroup___finishInitialSync_block_copy_0(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0*dst, struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0*src) {_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __CoreDAVTaskGroup___finishInitialSync_block_dispose_0(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0*src) {_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __CoreDAVTaskGroup___finishInitialSync_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0*, struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0*);
  void (*dispose)(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0*);
} __CoreDAVTaskGroup___finishInitialSync_block_desc_0_DATA = { 0, sizeof(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_0), __CoreDAVTaskGroup___finishInitialSync_block_copy_0, __CoreDAVTaskGroup___finishInitialSync_block_dispose_0};

struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1 {
  struct __block_impl impl;
  struct __CoreDAVTaskGroup___finishInitialSync_block_desc_1* Desc;
  CoreDAVTaskGroup *self;
  __CoreDAVTaskGroup___finishInitialSync_block_impl_1(void *fp, struct __CoreDAVTaskGroup___finishInitialSync_block_desc_1 *desc, CoreDAVTaskGroup *_self, int flags=0) : self(_self) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 30 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal-1.mm"
static void __CoreDAVTaskGroup___finishInitialSync_block_func_1(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1 *__cself) {
  CoreDAVTaskGroup *self = __cself->self; // bound by copy

    ((void (*)(id, SEL, int))(void *)objc_msgSend)((id)self, sel_registerName("setIVAR:"), 0);
  }
static void __CoreDAVTaskGroup___finishInitialSync_block_copy_1(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1*dst, struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1*src) {_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __CoreDAVTaskGroup___finishInitialSync_block_dispose_1(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1*src) {_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __CoreDAVTaskGroup___finishInitialSync_block_desc_1 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1*, struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1*);
  void (*dispose)(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1*);
} __CoreDAVTaskGroup___finishInitialSync_block_desc_1_DATA = { 0, sizeof(struct __CoreDAVTaskGroup___finishInitialSync_block_impl_1), __CoreDAVTaskGroup___finishInitialSync_block_copy_1, __CoreDAVTaskGroup___finishInitialSync_block_dispose_1};

#line 23 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal-1.mm"
static void _I_CoreDAVTaskGroup__finishInitialSync(CoreDAVTaskGroup * self, SEL _cmd) {
                    CoreDAVTaskGroup *folderPost;
  ((void (*)(id, SEL, BLOCK_TYPE))(void *)objc_msgSend)((id)folderPost, sel_registerName("setCompletionBlock:"), (void (*)())&__CoreDAVTaskGroup___finishInitialSync_block_impl_0((void *)__CoreDAVTaskGroup___finishInitialSync_block_func_0, &__CoreDAVTaskGroup___finishInitialSync_block_desc_0_DATA, self, 570425344));

  ((void (*)(id, SEL, BLOCK_TYPE))(void *)objc_msgSend)((id)folderPost, sel_registerName("setCompletionBlock:"), ((void (*)())&__CoreDAVTaskGroup___finishInitialSync_block_impl_1((void *)__CoreDAVTaskGroup___finishInitialSync_block_func_1, &__CoreDAVTaskGroup___finishInitialSync_block_desc_1_DATA, self, 570425344)));
}
// @dynamic IVAR;

#line 35 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-block-literal-1.mm"
static void _I_CoreDAVTaskGroup_setCompletionBlock_(CoreDAVTaskGroup * self, SEL _cmd, BLOCK_TYPE arg) {}
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

__declspec(allocate(".objc_ivar$B")) extern "C" __declspec(dllexport) unsigned long int OBJC_IVAR_$_CoreDAVTaskGroup$IVAR __attribute__ ((used, section ("__DATA,__objc_ivar"))) = __OFFSETOFIVAR__(struct CoreDAVTaskGroup_IMPL, IVAR);

static struct /*_ivar_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count;
	struct _ivar_t ivar_list[1];
} _OBJC_$_INSTANCE_VARIABLES_CoreDAVTaskGroup __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_ivar_t),
	1,
	{{(unsigned long int *)&OBJC_IVAR_$_CoreDAVTaskGroup$IVAR, "IVAR", "i", 2, 4}}
};

static struct /*_method_list_t*/ {
	unsigned int entsize;  // sizeof(struct _objc_method)
	unsigned int method_count;
	struct _objc_method method_list[2];
} _OBJC_$_INSTANCE_METHODS_CoreDAVTaskGroup __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	2,
	{{(struct objc_selector *)"_finishInitialSync", "v16@0:8", (void *)_I_CoreDAVTaskGroup__finishInitialSync},
	{(struct objc_selector *)"setCompletionBlock:", "v24@0:8@?16", (void *)_I_CoreDAVTaskGroup_setCompletionBlock_}}
};

static struct /*_prop_list_t*/ {
	unsigned int entsize;  // sizeof(struct _prop_t)
	unsigned int count_of_properties;
	struct _prop_t prop_list[1];
} _OBJC_$_PROP_LIST_CoreDAVTaskGroup __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_prop_t),
	1,
	{{"IVAR","Ti,D"}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_CoreDAVTaskGroup __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"CoreDAVTaskGroup",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_CoreDAVTaskGroup __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, __OFFSETOFIVAR__(struct CoreDAVTaskGroup_IMPL, IVAR), sizeof(struct CoreDAVTaskGroup_IMPL), 
	(unsigned int)0, 
	0, 
	"CoreDAVTaskGroup",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_CoreDAVTaskGroup,
	0, 
	(const struct _ivar_list_t *)&_OBJC_$_INSTANCE_VARIABLES_CoreDAVTaskGroup,
	0, 
	(const struct _prop_list_t *)&_OBJC_$_PROP_LIST_CoreDAVTaskGroup,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_CoreDAVTaskGroup;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_CoreDAVTaskGroup __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_CoreDAVTaskGroup,
	0, // &OBJC_CLASS_$_CoreDAVTaskGroup,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_CoreDAVTaskGroup,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_CoreDAVTaskGroup __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_CoreDAVTaskGroup,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_CoreDAVTaskGroup,
};
static void OBJC_CLASS_SETUP_$_CoreDAVTaskGroup(void ) {
	OBJC_METACLASS_$_CoreDAVTaskGroup.isa = &OBJC_METACLASS_$_CoreDAVTaskGroup;
	OBJC_METACLASS_$_CoreDAVTaskGroup.superclass = &OBJC_CLASS_$_CoreDAVTaskGroup;
	OBJC_METACLASS_$_CoreDAVTaskGroup.cache = &_objc_empty_cache;
	OBJC_CLASS_$_CoreDAVTaskGroup.isa = &OBJC_METACLASS_$_CoreDAVTaskGroup;
	OBJC_CLASS_$_CoreDAVTaskGroup.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_CoreDAVTaskGroup,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [1] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_CoreDAVTaskGroup,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
