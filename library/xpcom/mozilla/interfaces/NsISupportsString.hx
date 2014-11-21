package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupportsString") extern class NsISupportsString extends NsISupportsPrimitive
{
	public static inline function createInstance() : NsISupportsString
	{
		return xpcom.Components.classes[cast "@mozilla.org/supports-string;1"].createInstance(NsISupportsString);
	}
	
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : AString;
	
	function toString() : String;
}
