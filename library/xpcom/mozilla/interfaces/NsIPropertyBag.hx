package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPropertyBag") extern class NsIPropertyBag extends NsISupports
{
	/**
	 * Get a nsISimpleEnumerator whose elements are nsIProperty objects. Read only.
	 */
	var enumerator : NsISimpleEnumerator;
	
	function getProperty(name:AString) : NsIVariant;
}
