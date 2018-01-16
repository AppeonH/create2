$PBExportHeader$nvo_jsongenerator.sru
forward
global type nvo_jsongenerator from jsongenerator
end type
end forward

global type nvo_jsongenerator from jsongenerator
end type
global nvo_jsongenerator nvo_jsongenerator

forward prototypes
public function long additemarray (long parentitemhandle)
end prototypes

public function long additemarray (long parentitemhandle);//

return 0
end function

on nvo_jsongenerator.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_jsongenerator.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

