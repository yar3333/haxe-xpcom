package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXPCException") extern class NsIXPCException extends NsIException
{
	function initialize(aMessage:String, aResult:Nsresult, aName:String, aLocation:NsIStackFrame, aData:NsISupports, aInner:NsIException) : Void;
	function stealJSVal() : XpcexJSVal;
	function stowJSVal(cx:XpcexJSContextPtr, val:XpcexJSVal) : Void;
}
