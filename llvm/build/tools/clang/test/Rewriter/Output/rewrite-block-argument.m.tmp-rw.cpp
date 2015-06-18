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
// RUN: %clang_cc1 -x objective-c -Wno-return-type -fblocks -fms-extensions -rewrite-objc -fobjc-runtime=macosx-fragile-10.5  %s -o %t-rw.cpp
// RUN: %clang_cc1 -Wno-address-of-temporary -Did="void *" -D"SEL=void*" -D"__declspec(X)=" -emit-llvm -o %t %t-rw.cpp
// radar 7987817

void *sel_registerName(const char *);

#ifndef _REWRITER_typedef_Test
#define _REWRITER_typedef_Test
typedef struct objc_object Test;
#endif

/* @end */

// @implementation Test


static void _I_Test_enumerateProvidersWithBlock_(Test * self, SEL _cmd, void (*block)(void)) {
    ((void (*)(struct __block_impl *))((struct __block_impl *)block)->FuncPtr)((struct __block_impl *)block);
}


struct __Test__providerEnumerator_block_impl_0 {
  struct __block_impl impl;
  struct __Test__providerEnumerator_block_desc_0* Desc;
  Test *self;
  __Test__providerEnumerator_block_impl_0(void *fp, struct __Test__providerEnumerator_block_desc_0 *desc, Test *_self, int flags=0) : self(_self) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};
static void __Test__providerEnumerator_block_func_0(struct __Test__providerEnumerator_block_impl_0 *__cself, void (*providerBlock)(void)) {
  Test *self = __cself->self; // bound by copy

        ((void (*)(id, SEL, void (*)(void)))(void *)objc_msgSend)((id)self, sel_registerName("enumerateProvidersWithBlock:"), (void (*)(void))providerBlock);
    }
static void __Test__providerEnumerator_block_copy_0(struct __Test__providerEnumerator_block_impl_0*dst, struct __Test__providerEnumerator_block_impl_0*src) {_Block_object_assign((void*)&dst->self, (void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static void __Test__providerEnumerator_block_dispose_0(struct __Test__providerEnumerator_block_impl_0*src) {_Block_object_dispose((void*)src->self, 3/*BLOCK_FIELD_IS_OBJECT*/);}

static struct __Test__providerEnumerator_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __Test__providerEnumerator_block_impl_0*, struct __Test__providerEnumerator_block_impl_0*);
  void (*dispose)(struct __Test__providerEnumerator_block_impl_0*);
} __Test__providerEnumerator_block_desc_0_DATA = { 0, sizeof(struct __Test__providerEnumerator_block_impl_0), __Test__providerEnumerator_block_copy_0, __Test__providerEnumerator_block_dispose_0};

static void _I_Test_providerEnumerator(Test * self, SEL _cmd) {
    (void (*)(void (*)(void)))&__Test__providerEnumerator_block_impl_0((void *)__Test__providerEnumerator_block_func_0, &__Test__providerEnumerator_block_desc_0_DATA, self, 570425344);
}


static void _I_Test_testNilBlock(Test * self, SEL _cmd) {
    ((void (*)(id, SEL, void (*)(void)))(void *)objc_msgSend)((id)self, sel_registerName("enumerateProvidersWithBlock:"), (void (*)(void))0);
}

// @end



int main(int argc, char *argv[]) {
    return 0;
}

struct _objc_method {
	SEL _cmd;
	char *method_types;
	void *_imp;
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[3];
} _OBJC_INSTANCE_METHODS_Test __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 3
	,{{(SEL)"enumerateProvidersWithBlock:", "v24@0:8@?16", (void *)_I_Test_enumerateProvidersWithBlock_}
	  ,{(SEL)"providerEnumerator", "v16@0:8", (void *)_I_Test_providerEnumerator}
	  ,{(SEL)"testNilBlock", "v16@0:8", (void *)_I_Test_testNilBlock}
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

static struct _objc_class _OBJC_METACLASS_Test __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"Test", 0, "Test", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_Test __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_Test, 0, "Test", 0,1,0,0, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_Test, 0
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
	,&_OBJC_CLASS_Test
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

