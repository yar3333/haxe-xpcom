package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPRUint64") extern class NsISupportsPRUint64 extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRUint64;
}
