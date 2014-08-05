package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentPref") extern class NsIContentPref extends NsISupports
{
	/**
	 * Read only.
	 */
	var domain : AString;
	/**
	 * Read only.
	 */
	var name : AString;
	/**
	 * Read only.
	 */
	var value : NsIVariant;
}