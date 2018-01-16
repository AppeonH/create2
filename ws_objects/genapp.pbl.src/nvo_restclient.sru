$PBExportHeader$nvo_restclient.sru
forward
global type nvo_restclient from restclient
end type
type error_1 from error within nvo_restclient
end type
type timing_1 from timing within nvo_restclient
end type
end forward

global type nvo_restclient from restclient
error_1 error_1
timing_1 timing_1
end type
global nvo_restclient nvo_restclient

on nvo_restclient.create
call super::create
this.error_1=create error_1
this.timing_1=create timing_1
TriggerEvent( this, "constructor" )
end on

on nvo_restclient.destroy
TriggerEvent( this, "destructor" )
call super::destroy
destroy(this.error_1)
destroy(this.timing_1)
end on

type error_1 from error within nvo_restclient descriptor "pb_nvo" = "true" 
end type

on error_1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on error_1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

type timing_1 from timing within nvo_restclient descriptor "pb_nvo" = "true" 
end type

on timing_1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on timing_1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

