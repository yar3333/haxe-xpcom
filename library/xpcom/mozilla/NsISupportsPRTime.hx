package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPRTime") extern class NsISupportsPRTime extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRTime;
	
	function toString() : String;
}
