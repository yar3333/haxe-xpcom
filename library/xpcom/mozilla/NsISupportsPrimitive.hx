package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPrimitive") extern class NsISupportsPrimitive extends NsISupports
{
	/**
	 * This attribute provides access to the type represented by the nsISupportsPrimitive instance.
	 */
	var type : UShort;
}