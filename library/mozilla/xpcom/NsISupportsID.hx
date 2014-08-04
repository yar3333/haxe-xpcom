package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsID") extern class NsISupportsID extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : NsIDPtr;
}
