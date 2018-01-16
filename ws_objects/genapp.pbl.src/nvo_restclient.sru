$PBExportHeader$nvo_restclient.sru
forward
global type nvo_restclient from restclient
end type
type timing_1 from timing within nvo_restclient
end type
end forward

global type nvo_restclient from restclient
timing_1 timing_1
end type
global nvo_restclient nvo_restclient

on nvo_restclient.create
call super::create
this.timing_1=create timing_1
TriggerEvent( this, "constructor" )
end on

on nvo_restclient.destroy
TriggerEvent( this, "destructor" )
call super::destroy
destroy(this.timing_1)
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

