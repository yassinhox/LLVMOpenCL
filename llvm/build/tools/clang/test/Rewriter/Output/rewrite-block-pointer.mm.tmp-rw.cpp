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
#endif

/* @end */

void foo(void (*block)(int));

// @implementation X
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
static void __enumerateIt_block_func_0(struct __enumerateIt_block_impl_0 *__cself, int idx) {
 }

static struct __enumerateIt_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
} __enumerateIt_block_desc_0_DATA = { 0, sizeof(struct __enumerateIt_block_impl_0)};
void enumerateIt(void (*block)(id, id, char *)) {
      foo((void (*)(int))&__enumerateIt_block_impl_0((void *)__enumerateIt_block_func_0, &__enumerateIt_block_desc_0_DATA));
}
// @end

// radar 7651312
void apply(void (*block)(int));

static void x(int (*cmp)(int, int)) {
	x(cmp);
}

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
static void __y_block_func_0(struct __y_block_impl_0 *__cself, int sect) {
  int (*cmp)(int, int) = (int (*)(int, int))__cself->cmp; // bound by copy

		x(cmp);
    }
static void __y_block_copy_0(struct __y_block_impl_0*dst, struct __y_block_impl_0*src) {_Block_object_assign((void*)&dst->cmp, (void*)src->cmp, 7/*BLOCK_FIELD_IS_BLOCK*/);}

static void __y_block_dispose_0(struct __y_block_impl_0*src) {_Block_object_dispose((void*)src->cmp, 7/*BLOCK_FIELD_IS_BLOCK*/);}

static struct __y_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __y_block_impl_0*, struct __y_block_impl_0*);
  void (*dispose)(struct __y_block_impl_0*);
} __y_block_desc_0_DATA = { 0, sizeof(struct __y_block_impl_0), __y_block_copy_0, __y_block_dispose_0};
void y(int (*cmp)(int, int)) {
	apply((void (*)(int))&__y_block_impl_0((void *)__y_block_func_0, &__y_block_desc_0_DATA, (void *)cmp, 570425344));
}

// radar 7659483
void *_Block_copy(const void *aBlock);
void x(void (*block)(void)) {
        block = ((void (*)())_Block_copy((const void *)(block)));
}

// radar 7682763
#ifndef _REWRITER_typedef_Y
#define _REWRITER_typedef_Y
typedef struct objc_object Y;
#endif

struct Y_IMPL{
// @private
    id _private;
};
// - (void (^)(void))f;
/* @end */

typedef void (*void_block_t)(void);

#ifndef _REWRITER_typedef_YY
#define _REWRITER_typedef_YY
typedef struct objc_object YY;
#endif

struct YY_IMPL{
    void_block_t __completion;
};
// @property (copy) void_block_t f;
/* @end */

// @implementation Y

static void(* _I_Y_f(Y * self, SEL _cmd) )(){
    return ((void (*(*)(id, SEL))())(void *)objc_msgSend)((id)((Y_IMPL *)self)->_private, sel_registerName("f"));
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
#endif
 /* @end */
#ifndef _REWRITER_typedef_INTF
#define _REWRITER_typedef_INTF
typedef struct objc_object INTF;
#endif
 /* @end */
void (*BLINT)(I/*<CoreDAVAccountInfoProvider>*/* ARG, INTF/*<CodeProvider, CoreDAVAccountInfoProvider>*/* ARG1);

void  test8608902() {
  BDVDiscoveryCompletionHandler ppp;
  ((void (*)(__block_impl *, int, id))((__block_impl *)ppp)->FuncPtr)((__block_impl *)ppp, 1, 0);
}

void test9204669();
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
static char __test9204669_block_func_0(struct __test9204669_block_impl_0 *__cself) {

      return 'b';
   }

static struct __test9204669_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
} __test9204669_block_desc_0_DATA = { 0, sizeof(struct __test9204669_block_impl_0)};
void test9204669() {
   __attribute__((__blocks__(byref))) __Block_byref_addChangeToData_0 addChangeToData = {(void*)0,(__Block_byref_addChangeToData_0 *)&addChangeToData, 33554432, sizeof(__Block_byref_addChangeToData_0), __Block_byref_id_object_copy_135, __Block_byref_id_object_dispose_135};
;

   (addChangeToData.__forwarding->addChangeToData) = (char (*)())&__test9204669_block_impl_0((void *)__test9204669_block_func_0, &__test9204669_block_desc_0_DATA);
   ((char (*)(__block_impl *))((__block_impl *)(addChangeToData.__forwarding->addChangeToData))->FuncPtr)((__block_impl *)(addChangeToData.__forwarding->addChangeToData));
}

void test9204669_1();
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
static void __test9204669_1_block_func_0(struct __test9204669_1_block_impl_0 *__cself) {
  __Block_byref_addChangeToData_1 *addChangeToData = __cself->addChangeToData; // bound by ref

    ((void (*)(__block_impl *))((__block_impl *)(addChangeToData->__forwarding->addChangeToData))->FuncPtr)((__block_impl *)(addChangeToData->__forwarding->addChangeToData));
   }
static void __test9204669_1_block_copy_0(struct __test9204669_1_block_impl_0*dst, struct __test9204669_1_block_impl_0*src) {_Block_object_assign((void*)&dst->addChangeToData, (void*)src->addChangeToData, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __test9204669_1_block_dispose_0(struct __test9204669_1_block_impl_0*src) {_Block_object_dispose((void*)src->addChangeToData, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __test9204669_1_block_desc_0 {
  unsigned long reserved;
  unsigned long Block_size;
  void (*copy)(struct __test9204669_1_block_impl_0*, struct __test9204669_1_block_impl_0*);
  void (*dispose)(struct __test9204669_1_block_impl_0*);
} __test9204669_1_block_desc_0_DATA = { 0, sizeof(struct __test9204669_1_block_impl_0), __test9204669_1_block_copy_0, __test9204669_1_block_dispose_0};
void test9204669_1() {
   __attribute__((__blocks__(byref))) __Block_byref_addChangeToData_1 addChangeToData = {(void*)0,(__Block_byref_addChangeToData_1 *)&addChangeToData, 33554432, sizeof(__Block_byref_addChangeToData_1), __Block_byref_id_object_copy_135, __Block_byref_id_object_dispose_135};
;

   (addChangeToData.__forwarding->addChangeToData) = (void (*)())&__test9204669_1_block_impl_0((void *)__test9204669_1_block_func_0, &__test9204669_1_block_desc_0_DATA, (__Block_byref_addChangeToData_1 *)&addChangeToData, 570425344);
}


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

static struct _objc_class _OBJC_METACLASS_X __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"X", 0, "X", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_X __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_X, 0, "X", 0,1,0,0,0,0,0,0,0
};

struct _objc_ivar {
	char *ivar_name;
	char *ivar_type;
	int ivar_offset;
};

static struct {
	int ivar_count;
	struct _objc_ivar ivar_list[1];
} _OBJC_INSTANCE_VARIABLES_Y __attribute__ ((used, section ("__OBJC, __instance_vars")))= {
	1
	,{{"_private", "@", __OFFSETOFIVAR__(struct Y_IMPL, _private)}
	 }
};

struct _objc_method {
	SEL _cmd;
	char *method_types;
	void *_imp;
};

static struct {
	struct _objc_method_list *next_method;
	int method_count;
	struct _objc_method method_list[1];
} _OBJC_INSTANCE_METHODS_Y __attribute__ ((used, section ("__OBJC, __inst_meth")))= {
	0, 1
	,{{(SEL)"f", "@?16@0:8", (void *)_I_Y_f}
	 }
};

static struct _objc_class _OBJC_METACLASS_Y __attribute__ ((used, section ("__OBJC, __meta_class")))= {
	(struct _objc_class *)"Y", 0, "Y", 0,2, sizeof(struct _objc_class), 0, 0
	,0,0,0,0
};

static struct _objc_class _OBJC_CLASS_Y __attribute__ ((used, section ("__OBJC, __class")))= {
	&_OBJC_METACLASS_Y, 0, "Y", 0,1,sizeof(struct Y_IMPL), (struct _objc_ivar_list *)&_OBJC_INSTANCE_VARIABLES_Y
	, (struct _objc_method_list *)&_OBJC_INSTANCE_METHODS_Y, 0
	,0,0,0
};

struct _objc_symtab {
	long sel_ref_cnt;
	SEL *refs;
	short cls_def_cnt;
	short cat_def_cnt;
	void *defs[2];
};

static struct _objc_symtab _OBJC_SYMBOLS __attribute__((used, section ("__OBJC, __symbols")))= {
	0, 0, 2, 0
	,&_OBJC_CLASS_X
	,&_OBJC_CLASS_Y
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

