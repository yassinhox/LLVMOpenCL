; ModuleID = '<stdin>'

@_ZTIc = external constant i8*
@_ZTId = external constant i8*
@_ZTIPKc = external constant i8*

define void @_Z3barv() uwtable optsize ssp {
entry:
  invoke void @_Z3quxv() optsize
          to label %try.cont unwind label %lpad

try.cont:                                         ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %exn = landingpad { i8*, i32 } personality i32 (...)* @__gxx_personality_v0
          cleanup
          catch i8** @_ZTIc
          filter [2 x i8**] [i8** @_ZTIPKc, i8** @_ZTId]
  resume { i8*, i32 } %exn
}

declare void @_Z3quxv() optsize

declare i32 @__gxx_personality_v0(...)
