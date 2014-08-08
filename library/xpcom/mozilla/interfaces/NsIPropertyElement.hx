package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPropertyElement") extern class NsIPropertyElement extends NsISupports
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
