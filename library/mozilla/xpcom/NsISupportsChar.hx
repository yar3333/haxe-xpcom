package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsChar") extern class NsISupportsChar extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : Char;
}
