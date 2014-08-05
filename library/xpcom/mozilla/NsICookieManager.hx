package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICookieManager") extern class NsICookieManager extends NsISupports
{
	/**
	 * Called to enumerate through each cookie in the cookie list. The objects enumerated over are of type nsICookie. Read only.
	 */
	var enumerator : NsISimpleEnumerator;
	
	function remove(aHost:AUTF8String, aName:ACString, aPath:AUTF8String, aBlocked:Bool) : Void;
	function removeAll() : Void;
}
