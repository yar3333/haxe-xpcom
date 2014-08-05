package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPRInt64") extern class NsISupportsPRInt64 extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRInt64;
}
