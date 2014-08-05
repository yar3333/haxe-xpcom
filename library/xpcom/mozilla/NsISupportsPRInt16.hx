package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPRInt16") extern class NsISupportsPRInt16 extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRInt16;
}
