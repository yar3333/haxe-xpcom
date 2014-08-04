package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIWindowsRegKey") extern class NsIWindowsRegKey extends NsISupports
{
	/**
	 * This attribute returns the number of child keys. Read only.
	 */
	var childCount : ULong;
	/**
	 * This attribute exposes the native HKEY and is available to provide C++ consumers with the flexibility of making other Windows registry API calls that are not exposed via this interface.
	 * It is possible to initialize this object by setting an HKEY on it. In that case, it is the responsibility of the consumer setting the HKEY to ensure that it is a valid HKEY.
	 * WARNING: Setting the key does not close() the old key. Native code only!
	 */
	var key : HKEY;
	/**
	 * This attribute returns the number of values under this key. Read only.
	 */
	var valueCount : ULong;
}
