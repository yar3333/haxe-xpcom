package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupportsVoid") extern class NsISupportsVoid extends NsISupportsPrimitive
{
	/**
	 * This attribute provides access to the native type represented by the object. Native code only!
	 */
	var data : VoidPtr;
	
	function toString() : String;
}
