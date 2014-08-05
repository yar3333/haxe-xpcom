package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPRBool") extern class NsISupportsPRBool extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRBool;
}