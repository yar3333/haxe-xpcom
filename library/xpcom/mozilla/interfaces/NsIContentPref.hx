package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIContentPref") extern class NsIContentPref extends NsISupports
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
