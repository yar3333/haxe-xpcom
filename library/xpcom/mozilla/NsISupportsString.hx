package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsString") extern class NsISupportsString extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : AString;
}