package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICookieManager") extern class NsICookieManager
{
	/**
	 * Called to enumerate through each cookie in the cookie list. The objects enumerated over are of type nsICookie. Read only.
	 */
	var enumerator : NsISimpleEnumerator;
}
