package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsDouble") extern class NsISupportsDouble extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : Float;
}
