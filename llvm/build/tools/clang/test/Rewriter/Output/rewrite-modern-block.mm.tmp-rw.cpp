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
// RUN: %clang_cc1 -fsyntax-only -Werror -Wno-address-of-temporary -D"Class=void*" -D"id=void*" -D"SEL=void*" -U__declspec -D"__declspec(X)=" %t-rw.cpp
// rdar://11230308

typedef unsigned long size_t;
typedef struct {
    char byte0;
    char byte1;
} CFUUIDBytes;

void x(void *);

struct __Block_byref_bytes_0 {
  void *__isa;
__Block_byref_bytes_0 *__forwarding;
 int __flags;
 int __size;
 void (*__Block_byref_id_object_copy)(void*, void*);
 void (*__Block_byref_id_object_dispose)(void*);
 CFUUIDBytes bytes;
};
static void __Block_byref_id_object_copy_131(void *dst, void *src) {
 _Block_object_assign((char*)dst + 40, *(void * *) ((char*)src + 40), 131);
}
static void __Block_byref_id_object_dispose_131(void *src) {
 _Block_object_dispose(*(void * *) ((char*)src + 40), 131);
}

struct __y_block_impl_0 {
  struct __block_impl impl;
  struct __y_block_desc_0* Desc;
  __Block_byref_bytes_0 *bytes; // by ref
  __y_block_impl_0(void *fp, struct __y_block_desc_0 *desc, __Block_byref_bytes_0 *_bytes, int flags=0) : bytes(_bytes->__forwarding) {
    impl.isa = &_NSConcreteStackBlock;
    impl.Flags = flags;
    impl.FuncPtr = fp;
    Desc = desc;
  }
};

#line 16 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-block.mm"
static void __y_block_func_0(struct __y_block_impl_0 *__cself) {
  __Block_byref_bytes_0 *bytes = __cself->bytes; // bound by ref

        x(&(bytes->__forwarding->bytes));
    }
static void __y_block_copy_0(struct __y_block_impl_0*dst, struct __y_block_impl_0*src) {_Block_object_assign((void*)&dst->bytes, (void*)src->bytes, 8/*BLOCK_FIELD_IS_BYREF*/);}

static void __y_block_dispose_0(struct __y_block_impl_0*src) {_Block_object_dispose((void*)src->bytes, 8/*BLOCK_FIELD_IS_BYREF*/);}

static struct __y_block_desc_0 {
  size_t reserved;
  size_t Block_size;
  void (*copy)(struct __y_block_impl_0*, struct __y_block_impl_0*);
  void (*dispose)(struct __y_block_impl_0*);
} __y_block_desc_0_DATA = { 0, sizeof(struct __y_block_impl_0), __y_block_copy_0, __y_block_dispose_0};

#line 13 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-block.mm"
void y() {
    __block __Block_byref_bytes_0 bytes = {(void*)0,(__Block_byref_bytes_0 *)&bytes, 33554432, sizeof(__Block_byref_bytes_0), __Block_byref_id_object_copy_131, __Block_byref_id_object_dispose_131};
;
    
    void (*bar)() = (void (*)())&__y_block_impl_0((void *)__y_block_func_0, &__y_block_desc_0_DATA, (__Block_byref_bytes_0 *)&bytes, 570425344);
}

// rdar://11236342
struct __Block_byref_hello_1 {
  void *__isa;
__Block_byref_hello_1 *__forwarding;
 int __flags;
 int __size;
 int hello;
};

#line 22 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-block.mm"
int foo() {
    __block __Block_byref_hello_1 hello = {(void*)0,(__Block_byref_hello_1 *)&hello, 0, sizeof(__Block_byref_hello_1)};
;
    return (hello.__forwarding->hello);
}

// rdar://7547630
// rewriting multiple __block decls on wintin same decl stmt.
struct __Block_byref_BI1_2 {
  void *__isa;
__Block_byref_BI1_2 *__forwarding;
 int __flags;
 int __size;
 int BI1;
};
struct __Block_byref_BI2_3 {
  void *__isa;
__Block_byref_BI2_3 *__forwarding;
 int __flags;
 int __size;
 int BI2;
};
struct __Block_byref_FLOAT1_4 {
  void *__isa;
__Block_byref_FLOAT1_4 *__forwarding;
 int __flags;
 int __size;
 float FLOAT1;
};
struct __Block_byref_FT2_5 {
  void *__isa;
__Block_byref_FT2_5 *__forwarding;
 int __flags;
 int __size;
 float FT2;
};
struct __Block_byref_FFFFFFFF3_6 {
  void *__isa;
__Block_byref_FFFFFFFF3_6 *__forwarding;
 int __flags;
 int __size;
 float FFFFFFFF3;
};
struct __Block_byref_FFFXXX4_7 {
  void *__isa;
__Block_byref_FFFXXX4_7 *__forwarding;
 int __flags;
 int __size;
 float FFFXXX4;
};
struct __Block_byref_B_8 {
  void *__isa;
__Block_byref_B_8 *__forwarding;
 int __flags;
 int __size;
 void (*__Block_byref_id_object_copy)(void*, void*);
 void (*__Block_byref_id_object_dispose)(void*);
 void (*B)();
};
static void __Block_byref_id_object_copy_135(void *dst, void *src) {
 _Block_object_assign((char*)dst + 40, *(void * *) ((char*)src + 40), 135);
}
static void __Block_byref_id_object_dispose_135(void *src) {
 _Block_object_dispose(*(void * *) ((char*)src + 40), 135);
}
struct __Block_byref_BB_9 {
  void *__isa;
__Block_byref_BB_9 *__forwarding;
 int __flags;
 int __size;
 void (*__Block_byref_id_object_copy)(void*, void*);
 void (*__Block_byref_id_object_dispose)(void*);
 void (*BB)();
};

#line 29 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-block.mm"
void radar7547630() {
  __block __Block_byref_BI1_2 BI1 = {(void*)0,(__Block_byref_BI1_2 *)&BI1, 0, sizeof(__Block_byref_BI1_2)};
__Block_byref_BI2_3 BI2 = {(void*)0,(__Block_byref_BI2_3 *)&BI2, 0, sizeof(__Block_byref_BI2_3)};
;

  __block __Block_byref_FLOAT1_4 FLOAT1 = {(void*)0,(__Block_byref_FLOAT1_4 *)&FLOAT1, 0, sizeof(__Block_byref_FLOAT1_4)};
__Block_byref_FT2_5 FT2 = {(void*)0,(__Block_byref_FT2_5 *)&FT2, 0, sizeof(__Block_byref_FT2_5)};
__Block_byref_FFFFFFFF3_6 FFFFFFFF3 = {(void*)0,(__Block_byref_FFFFFFFF3_6 *)&FFFFFFFF3, 0, sizeof(__Block_byref_FFFFFFFF3_6)};
__Block_byref_FFFXXX4_7 FFFXXX4 = {(void*)0,(__Block_byref_FFFXXX4_7 *)&FFFXXX4, 0, sizeof(__Block_byref_FFFXXX4_7)};
;

  __block __Block_byref_B_8 B = {(void*)0,(__Block_byref_B_8 *)&B, 33554432, sizeof(__Block_byref_B_8), __Block_byref_id_object_copy_135, __Block_byref_id_object_dispose_135};
__Block_byref_BB_9 BB = {(void*)0,(__Block_byref_BB_9 *)&BB, 33554432, sizeof(__Block_byref_BB_9), __Block_byref_id_object_copy_135, __Block_byref_id_object_dispose_135};
;
}

// rewriting multiple __block decls on wintin same decl stmt
// with initializers.
struct __Block_byref_BI1_10 {
  void *__isa;
__Block_byref_BI1_10 *__forwarding;
 int __flags;
 int __size;
 int BI1;
};
struct __Block_byref_BI2_11 {
  void *__isa;
__Block_byref_BI2_11 *__forwarding;
 int __flags;
 int __size;
 int BI2;
};
struct __Block_byref_BYREFVAR_12 {
  void *__isa;
__Block_byref_BYREFVAR_12 *__forwarding;
 int __flags;
 int __size;
 double BYREFVAR;
};
struct __Block_byref_BYREFVAR_NO_INIT_13 {
  void *__isa;
__Block_byref_BYREFVAR_NO_INIT_13 *__forwarding;
 int __flags;
 int __size;
 double BYREFVAR_NO_INIT;
};
struct __Block_byref_BYREFVAR2_14 {
  void *__isa;
__Block_byref_BYREFVAR2_14 *__forwarding;
 int __flags;
 int __size;
 double BYREFVAR2;
};
struct __Block_byref_keys_15 {
  void *__isa;
__Block_byref_keys_15 *__forwarding;
 int __flags;
 int __size;
 const char *keys;
};
struct __Block_byref_values_16 {
  void *__isa;
__Block_byref_values_16 *__forwarding;
 int __flags;
 int __size;
 const char *values;
};
struct __Block_byref_novalues_17 {
  void *__isa;
__Block_byref_novalues_17 *__forwarding;
 int __flags;
 int __size;
 const char *novalues;
};

#line 40 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-block.mm"
int  rdar7547630(const char *keybuf, const char *valuebuf) {
  __block __Block_byref_BI1_10 BI1 = {(void*)0,(__Block_byref_BI1_10 *)&BI1, 0, sizeof(__Block_byref_BI1_10), 1};
__Block_byref_BI2_11 BI2 = {(void*)0,(__Block_byref_BI2_11 *)&BI2, 0, sizeof(__Block_byref_BI2_11), 2};

  __Block_byref_BYREFVAR_12 BYREFVAR = {(void*)0,(__Block_byref_BYREFVAR_12 *)&BYREFVAR, 0, sizeof(__Block_byref_BYREFVAR_12), 1.34};
__Block_byref_BYREFVAR_NO_INIT_13 BYREFVAR_NO_INIT = {(void*)0,(__Block_byref_BYREFVAR_NO_INIT_13 *)&BYREFVAR_NO_INIT, 0, sizeof(__Block_byref_BYREFVAR_NO_INIT_13)};
__Block_byref_BYREFVAR2_14 BYREFVAR2 = {(void*)0,(__Block_byref_BYREFVAR2_14 *)&BYREFVAR2, 0, sizeof(__Block_byref_BYREFVAR2_14), 1.37};

  __block const __Block_byref_keys_15 keys = {(void*)0,(__Block_byref_keys_15 *)&keys, 0, sizeof(__Block_byref_keys_15), keybuf};
__Block_byref_values_16 values = {(void*)0,(__Block_byref_values_16 *)&values, 0, sizeof(__Block_byref_values_16), valuebuf};
__Block_byref_novalues_17 novalues = {(void*)0,(__Block_byref_novalues_17 *)&novalues, 0, sizeof(__Block_byref_novalues_17)};
;

  return (BI2.__forwarding->BI2);
}

// rdar://11326988
typedef struct _z {
    int location;
    int length;
} z;

z w(int loc, int len);

#ifndef _REWRITER_typedef_rdar11326988
#define _REWRITER_typedef_rdar11326988
typedef struct objc_object rdar11326988;
typedef struct {} _objc_exc_rdar11326988;
#endif

/* @end */
// @implementation rdar11326988 
struct __Block_byref_firstRange_18 {
  void *__isa;
__Block_byref_firstRange_18 *__forwarding;
 int __flags;
 int __size;
 void (*__Block_byref_id_object_copy)(void*, void*);
 void (*__Block_byref_id_object_dispose)(void*);
 z firstRange;
};

#line 61 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-block.mm"
static void _I_rdar11326988_y_(rdar11326988 * self, SEL _cmd, int options) {
    __attribute__((__blocks__(byref))) __Block_byref_firstRange_18 firstRange = {(void*)0,(__Block_byref_firstRange_18 *)&firstRange, 33554432, sizeof(__Block_byref_firstRange_18), __Block_byref_id_object_copy_131, __Block_byref_id_object_dispose_131, w(1, 0)};
    options &= ~(1 | 2);
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
} _OBJC_$_INSTANCE_METHODS_rdar11326988 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	sizeof(_objc_method),
	1,
	{{(struct objc_selector *)"y:", "v20@0:8i16", (void *)_I_rdar11326988_y_}}
};

static struct _class_ro_t _OBJC_METACLASS_RO_$_rdar11326988 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	3, sizeof(struct _class_t), sizeof(struct _class_t), 
	(unsigned int)0, 
	0, 
	"rdar11326988",
	0, 
	0, 
	0, 
	0, 
	0, 
};

static struct _class_ro_t _OBJC_CLASS_RO_$_rdar11326988 __attribute__ ((used, section ("__DATA,__objc_const"))) = {
	2, 0, 0, 
	(unsigned int)0, 
	0, 
	"rdar11326988",
	(const struct _method_list_t *)&_OBJC_$_INSTANCE_METHODS_rdar11326988,
	0, 
	0, 
	0, 
	0, 
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_rdar11326988;

extern "C" __declspec(dllexport) struct _class_t OBJC_METACLASS_$_rdar11326988 __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_rdar11326988,
	0, // &OBJC_CLASS_$_rdar11326988,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_METACLASS_RO_$_rdar11326988,
};

extern "C" __declspec(dllexport) struct _class_t OBJC_CLASS_$_rdar11326988 __attribute__ ((used, section ("__DATA,__objc_data"))) = {
	0, // &OBJC_METACLASS_$_rdar11326988,
	0,
	0, // (void *)&_objc_empty_cache,
	0, // unused, was (void *)&_objc_empty_vtable,
	&_OBJC_CLASS_RO_$_rdar11326988,
};
static void OBJC_CLASS_SETUP_$_rdar11326988(void ) {
	OBJC_METACLASS_$_rdar11326988.isa = &OBJC_METACLASS_$_rdar11326988;
	OBJC_METACLASS_$_rdar11326988.superclass = &OBJC_CLASS_$_rdar11326988;
	OBJC_METACLASS_$_rdar11326988.cache = &_objc_empty_cache;
	OBJC_CLASS_$_rdar11326988.isa = &OBJC_METACLASS_$_rdar11326988;
	OBJC_CLASS_$_rdar11326988.cache = &_objc_empty_cache;
}
#pragma section(".objc_inithooks$B", long, read, write)
__declspec(allocate(".objc_inithooks$B")) static void *OBJC_CLASS_SETUP[] = {
	(void *)&OBJC_CLASS_SETUP_$_rdar11326988,
};
__declspec(allocate(".objc_classlist$B")) static struct _class_t *L_OBJC_LABEL_CLASS_$ [1] __attribute__((used, section ("__DATA, __objc_classlist,regular,no_dead_strip")))= {
	&OBJC_CLASS_$_rdar11326988,
};
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };
