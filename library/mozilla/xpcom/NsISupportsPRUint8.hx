package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsPRUint8") extern class NsISupportsPRUint8 extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRUint8;
}
