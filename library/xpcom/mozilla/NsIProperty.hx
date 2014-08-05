package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProperty") extern class NsIProperty extends NsISupports
{
	/**
	 * Get the name of the property. Read only.
	 */
	var name : AString;
	/**
	 * Get the value of the property. Read only.
	 */
	var value : NsIVariant;
}
