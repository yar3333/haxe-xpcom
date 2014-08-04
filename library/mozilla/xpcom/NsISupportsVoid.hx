package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsVoid") extern class NsISupportsVoid extends NsISupportsPrimitive
{
	/**
	 * This attribute provides access to the native type represented by the object. Native code only!
	 */
	var data : VoidPtr;
}
