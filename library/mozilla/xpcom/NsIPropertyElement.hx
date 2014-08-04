package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIPropertyElement") extern class NsIPropertyElement extends NsISupports
{
	/**
	 * The key used to refer to this property.
	 */
	var key : AUTF8String;
	/**
	 * The string value stored for this property.
	 */
	var value : AString;
}
