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

id SYNCH_EXPR();
void SYNCH_BODY();
void  SYNCH_BEFORE();
void  SYNC_AFTER();


#line 16 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-synchronized.m"
void foo(id sem)
{
  SYNCH_BEFORE();
  
#line 19 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-synchronized.m"
{ id _rethrow = 0; id _sync_obj = SYNCH_EXPR(); objc_sync_enter(_sync_obj);
try {
	struct _SYNC_EXIT { _SYNC_EXIT(id arg) : sync_exit(arg) {}
	~_SYNC_EXIT() {objc_sync_exit(sync_exit);}
	id sync_exit;
	} _sync_exit(_sync_obj);
 
    SYNCH_BODY();
    return;
  } catch (id e) {_rethrow = e;}
{ struct _FIN { _FIN(id reth) : rethrow(reth) {}
	~_FIN() { if (rethrow) objc_exception_throw(rethrow); }
	id rethrow;
	} _fin_force_rethow(_rethrow);}
}

 SYNC_AFTER();
 
#line 24 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-synchronized.m"
{ id _rethrow = 0; id _sync_obj = ((id (*)(id, SEL, ...))(void *)objc_msgSend)((id)sem, sel_registerName("self")); objc_sync_enter(_sync_obj);
try {
	struct _SYNC_EXIT { _SYNC_EXIT(id arg) : sync_exit(arg) {}
	~_SYNC_EXIT() {objc_sync_exit(sync_exit);}
	id sync_exit;
	} _sync_exit(_sync_obj);

    SYNCH_BODY();
    return;
 } catch (id e) {_rethrow = e;}
{ struct _FIN { _FIN(id reth) : rethrow(reth) {}
	~_FIN() { if (rethrow) objc_exception_throw(rethrow); }
	id rethrow;
	} _fin_force_rethow(_rethrow);}
}

}


#line 30 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-synchronized.m"
void test_sync_with_implicit_finally() {
    id foo;
    
#line 32 "/home/jazouani/llvm/llvm-3.2/tools/clang/test/Rewriter/rewrite-modern-synchronized.m"
{ id _rethrow = 0; id _sync_obj = foo; objc_sync_enter(_sync_obj);
try {
	struct _SYNC_EXIT { _SYNC_EXIT(id arg) : sync_exit(arg) {}
	~_SYNC_EXIT() {objc_sync_exit(sync_exit);}
	id sync_exit;
	} _sync_exit(_sync_obj);

        return; // The rewriter knows how to generate code for implicit finally
    } catch (id e) {_rethrow = e;}
{ struct _FIN { _FIN(id reth) : rethrow(reth) {}
	~_FIN() { if (rethrow) objc_exception_throw(rethrow); }
	id rethrow;
	} _fin_force_rethow(_rethrow);}
}

}
__declspec(allocate(".objc_imageinfo$B")) 
static struct IMAGE_INFO { unsigned version; unsigned flag; } _OBJC_IMAGE_INFO = { 0, 2 };