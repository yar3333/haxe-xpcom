package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIServiceManager") extern class NsIServiceManager extends NsISupports
{
	function getService(aClass:NsCIDRef, aIID:NsIIDRef, result:NsQIResult) : Void;
	function getServiceByContractID(aContractID:String, aIID:NsIIDRef, result:NsQIResult) : Void;
	function isServiceInstantiated(aClass:NsCIDRef, aIID:NsIIDRef) : Bool;
	function isServiceInstantiatedByContractID(aContractID:String, aIID:NsIIDRef) : Bool;
}
