package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsPRTime") extern class NsISupportsPRTime extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRTime;
}
