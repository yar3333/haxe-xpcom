package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIServiceManager") extern class NsIServiceManager extends NsISupports
{
	function getService(aClass:NsCIDRef, aIID:NsIIDRef, result:NsQIResult) : Void;
	function getServiceByContractID(aContractID:String, aIID:NsIIDRef, result:NsQIResult) : Void;
	function isServiceInstantiated(aClass:NsCIDRef, aIID:NsIIDRef) : Bool;
	function isServiceInstantiatedByContractID(aContractID:String, aIID:NsIIDRef) : Bool;
}
