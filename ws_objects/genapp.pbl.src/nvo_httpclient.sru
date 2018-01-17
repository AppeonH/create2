$PBExportHeader$nvo_httpclient.sru
forward
global type nvo_httpclient from httpclient
end type
end forward

global type nvo_httpclient from httpclient
long timeout = 30
end type
global nvo_httpclient nvo_httpclient

on nvo_httpclient.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_httpclient.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;//
end event

