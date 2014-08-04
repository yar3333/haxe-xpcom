package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsFloat") extern class NsISupportsFloat extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : Float;
}
