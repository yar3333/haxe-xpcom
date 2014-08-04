package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsDouble") extern class NsISupportsDouble extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : Float;
}
