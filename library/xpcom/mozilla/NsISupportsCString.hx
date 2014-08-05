package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsCString") extern class NsISupportsCString extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : ACString;
	
	function toString() : String;
}
