package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISecurityCheckedComponent") extern class NsISecurityCheckedComponent extends NsISupports
{
	function canCallMethod(iid:NsIIDPtr, methodName:Wstring) : String;
	function canCreateWrapper(iid:NsIIDPtr) : String;
	function canGetProperty(iid:NsIIDPtr, propertyName:Wstring) : String;
	function canSetProperty(iid:NsIIDPtr, propertyName:Wstring) : String;
}
