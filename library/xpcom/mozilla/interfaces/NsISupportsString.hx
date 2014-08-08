package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupportsString") extern class NsISupportsString extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : AString;
	
	function toString() : String;
}
