; ModuleID = '/home/jazouani/llvm/llvm-3.2/tools/clang/test/PCH/subscripting-literals.m'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%0 = type opaque
%1 = type opaque
%2 = type opaque
%3 = type opaque
%4 = type opaque
%5 = type opaque
%struct._class_t = type { %struct._class_t*, %struct._class_t*, %struct._objc_cache*, i8* (i8*, i8*)**, %struct._class_ro_t* }
%struct._objc_cache = type opaque
%struct._class_ro_t = type { i32, i32, i32, i8*, i8*, %struct.__method_list_t*, %struct._objc_protocol_list*, %struct._ivar_list_t*, i8*, %struct._prop_list_t* }
%struct.__method_list_t = type { i32, i32, [0 x %struct._objc_method] }
%struct._objc_method = type { i8*, i8*, i8* }
%struct._objc_protocol_list = type { i64, [0 x %struct._protocol_t*] }
%struct._protocol_t = type { i8*, i8*, %struct._objc_protocol_list*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct._prop_list_t*, i32, i32, i8** }
%struct._prop_list_t = type { i32, i32, [0 x %struct._prop_t] }
%struct._prop_t = type { i8*, i8* }
%struct._ivar_list_t = type { i32, i32, [0 x %struct._ivar_t] }
%struct._ivar_t = type { i64*, i8*, i8*, i32, i32 }

@"\01L_OBJC_METH_VAR_NAME_" = internal global [30 x i8] c"setObject:atIndexedSubscript:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_" = internal global i8* getelementptr inbounds ([30 x i8]* @"\01L_OBJC_METH_VAR_NAME_", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@"OBJC_CLASS_$_NSNumber" = external global %struct._class_t
@"\01L_OBJC_CLASSLIST_REFERENCES_$_" = internal global %struct._class_t* @"OBJC_CLASS_$_NSNumber", section "__DATA, __objc_classrefs, regular, no_dead_strip", align 8
@"\01L_OBJC_METH_VAR_NAME_1" = internal global [15 x i8] c"numberWithInt:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_2" = internal global i8* getelementptr inbounds ([15 x i8]* @"\01L_OBJC_METH_VAR_NAME_1", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@"OBJC_CLASS_$_NSArray" = external global %struct._class_t
@"\01L_OBJC_CLASSLIST_REFERENCES_$_3" = internal global %struct._class_t* @"OBJC_CLASS_$_NSArray", section "__DATA, __objc_classrefs, regular, no_dead_strip", align 8
@"\01L_OBJC_METH_VAR_NAME_4" = internal global [24 x i8] c"arrayWithObjects:count:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_5" = internal global i8* getelementptr inbounds ([24 x i8]* @"\01L_OBJC_METH_VAR_NAME_4", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@"\01L_OBJC_METH_VAR_NAME_6" = internal global [26 x i8] c"objectAtIndexedSubscript:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_7" = internal global i8* getelementptr inbounds ([26 x i8]* @"\01L_OBJC_METH_VAR_NAME_6", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@"\01L_OBJC_METH_VAR_NAME_8" = internal global [25 x i8] c"objectForKeyedSubscript:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_9" = internal global i8* getelementptr inbounds ([25 x i8]* @"\01L_OBJC_METH_VAR_NAME_8", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@"\01L_OBJC_METH_VAR_NAME_10" = internal global [29 x i8] c"setObject:forKeyedSubscript:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_11" = internal global i8* getelementptr inbounds ([29 x i8]* @"\01L_OBJC_METH_VAR_NAME_10", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@"OBJC_CLASS_$_NSDictionary" = external global %struct._class_t
@"\01L_OBJC_CLASSLIST_REFERENCES_$_12" = internal global %struct._class_t* @"OBJC_CLASS_$_NSDictionary", section "__DATA, __objc_classrefs, regular, no_dead_strip", align 8
@"\01L_OBJC_METH_VAR_NAME_13" = internal global [37 x i8] c"dictionaryWithObjects:forKeys:count:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@"\01L_OBJC_SELECTOR_REFERENCES_14" = internal global i8* getelementptr inbounds ([37 x i8]* @"\01L_OBJC_METH_VAR_NAME_13", i32 0, i32 0), section "__DATA, __objc_selrefs, literal_pointers, no_dead_strip"
@llvm.used = appending global [17 x i8*] [i8* getelementptr inbounds ([30 x i8]* @"\01L_OBJC_METH_VAR_NAME_", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_" to i8*), i8* bitcast (%struct._class_t** @"\01L_OBJC_CLASSLIST_REFERENCES_$_" to i8*), i8* getelementptr inbounds ([15 x i8]* @"\01L_OBJC_METH_VAR_NAME_1", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_2" to i8*), i8* bitcast (%struct._class_t** @"\01L_OBJC_CLASSLIST_REFERENCES_$_3" to i8*), i8* getelementptr inbounds ([24 x i8]* @"\01L_OBJC_METH_VAR_NAME_4", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_5" to i8*), i8* getelementptr inbounds ([26 x i8]* @"\01L_OBJC_METH_VAR_NAME_6", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_7" to i8*), i8* getelementptr inbounds ([25 x i8]* @"\01L_OBJC_METH_VAR_NAME_8", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_9" to i8*), i8* getelementptr inbounds ([29 x i8]* @"\01L_OBJC_METH_VAR_NAME_10", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_11" to i8*), i8* bitcast (%struct._class_t** @"\01L_OBJC_CLASSLIST_REFERENCES_$_12" to i8*), i8* getelementptr inbounds ([37 x i8]* @"\01L_OBJC_METH_VAR_NAME_13", i32 0, i32 0), i8* bitcast (i8** @"\01L_OBJC_SELECTOR_REFERENCES_14" to i8*)], section "llvm.metadata"

define i8* @testArray(i32 %idx, i8* %p) nounwind {
entry:
  %idx.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %array = alloca %0*, align 8
  %arr = alloca %1*, align 8
  %objects = alloca [2 x i8*], align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load %0** %array, align 8
  %1 = load i32* %idx.addr, align 4
  %2 = load i8** %p.addr, align 8
  %3 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_", !invariant.load !4
  %4 = bitcast %0* %0 to i8*
  call void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i32)*)(i8* %4, i8* %3, i8* %2, i32 %1)
  %5 = getelementptr inbounds [2 x i8*]* %objects, i32 0, i32 0
  %6 = load i8** %p.addr, align 8
  store i8* %6, i8** %5, align 8
  %7 = getelementptr inbounds [2 x i8*]* %objects, i32 0, i32 1
  %8 = load %struct._class_t** @"\01L_OBJC_CLASSLIST_REFERENCES_$_"
  %9 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_2", !invariant.load !4
  %10 = bitcast %struct._class_t* %8 to i8*
  %call = call %2* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to %2* (i8*, i8*, i32)*)(i8* %10, i8* %9, i32 7)
  %11 = bitcast %2* %call to i8*
  store i8* %11, i8** %7, align 8
  %12 = load %struct._class_t** @"\01L_OBJC_CLASSLIST_REFERENCES_$_3"
  %13 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_5", !invariant.load !4
  %14 = bitcast %struct._class_t* %12 to i8*
  %15 = bitcast [2 x i8*]* %objects to i8**
  %call1 = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8**, i32)*)(i8* %14, i8* %13, i8** %15, i32 2)
  %16 = bitcast i8* %call1 to %1*
  store %1* %16, %1** %arr, align 8
  %17 = load %0** %array, align 8
  %18 = load i32* %idx.addr, align 4
  %19 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_7", !invariant.load !4
  %20 = bitcast %0* %17 to i8*
  %call2 = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i32)*)(i8* %20, i8* %19, i32 %18)
  ret i8* %call2
}

declare i8* @objc_msgSend(i8*, i8*, ...) nonlazybind

define void @testDict(%3* %key, i8* %newObject, i8* %oldObject) nounwind {
entry:
  %key.addr = alloca %3*, align 8
  %newObject.addr = alloca i8*, align 8
  %oldObject.addr = alloca i8*, align 8
  %dictionary = alloca %4*, align 8
  %dict = alloca %5*, align 8
  %objects = alloca [2 x i8*], align 8
  %keys = alloca [2 x i8*], align 8
  store %3* %key, %3** %key.addr, align 8
  store i8* %newObject, i8** %newObject.addr, align 8
  store i8* %oldObject, i8** %oldObject.addr, align 8
  %0 = load %4** %dictionary, align 8
  %1 = load %3** %key.addr, align 8
  %2 = bitcast %3* %1 to i8*
  %3 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_9", !invariant.load !4
  %4 = bitcast %4* %0 to i8*
  %call = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8*)*)(i8* %4, i8* %3, i8* %2)
  store i8* %call, i8** %oldObject.addr, align 8
  %5 = load %4** %dictionary, align 8
  %6 = load %3** %key.addr, align 8
  %7 = load i8** %newObject.addr, align 8
  %8 = bitcast %3* %6 to i8*
  %9 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_11", !invariant.load !4
  %10 = bitcast %4* %5 to i8*
  call void bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to void (i8*, i8*, i8*, i8*)*)(i8* %10, i8* %9, i8* %7, i8* %8)
  %11 = getelementptr inbounds [2 x i8*]* %keys, i32 0, i32 0
  %12 = load %3** %key.addr, align 8
  %13 = bitcast %3* %12 to i8*
  store i8* %13, i8** %11, align 8
  %14 = getelementptr inbounds [2 x i8*]* %objects, i32 0, i32 0
  %15 = load i8** %newObject.addr, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds [2 x i8*]* %keys, i32 0, i32 1
  %17 = load %3** %key.addr, align 8
  %18 = bitcast %3* %17 to i8*
  store i8* %18, i8** %16, align 8
  %19 = getelementptr inbounds [2 x i8*]* %objects, i32 0, i32 1
  %20 = load i8** %oldObject.addr, align 8
  store i8* %20, i8** %19, align 8
  %21 = load %struct._class_t** @"\01L_OBJC_CLASSLIST_REFERENCES_$_12"
  %22 = load i8** @"\01L_OBJC_SELECTOR_REFERENCES_14", !invariant.load !4
  %23 = bitcast %struct._class_t* %21 to i8*
  %24 = bitcast [2 x i8*]* %objects to i8**
  %25 = bitcast [2 x i8*]* %keys to i8**
  %call1 = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, i8**, i8**, i32)*)(i8* %23, i8* %22, i8** %24, i8** %25, i32 2)
  %26 = bitcast i8* %call1 to %5*
  store %5* %26, %5** %dict, align 8
  ret void
}

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = metadata !{i32 1, metadata !"Objective-C Version", i32 2}
!1 = metadata !{i32 1, metadata !"Objective-C Image Info Version", i32 0}
!2 = metadata !{i32 1, metadata !"Objective-C Image Info Section", metadata !"__DATA, __objc_imageinfo, regular, no_dead_strip"}
!3 = metadata !{i32 4, metadata !"Objective-C Garbage Collection", i32 0}
!4 = metadata !{}
