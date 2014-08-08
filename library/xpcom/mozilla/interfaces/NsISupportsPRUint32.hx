package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupportsPRUint32") extern class NsISupportsPRUint32 extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : PRUint32;
	
	function toString() : String;
}
