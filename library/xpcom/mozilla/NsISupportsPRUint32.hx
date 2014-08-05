package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPRUint32") extern class NsISupportsPRUint32 extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRUint32;
}
