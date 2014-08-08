package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProperty") extern class NsIProperty extends NsISupports
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
