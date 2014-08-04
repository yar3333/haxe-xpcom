package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsPRInt32") extern class NsISupportsPRInt32 extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRInt32;
}
