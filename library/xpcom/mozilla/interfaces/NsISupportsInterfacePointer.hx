package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupportsInterfacePointer") extern class NsISupportsInterfacePointer extends NsISupportsPrimitive
{
	/**
	 * Provides access to the native type represented by the object.
	 */
	var data : NsISupports;
	/**
	 * Stores an IID corresponding to the data attribute.
	 */
	var dataIID : NsIDPtr;
	
	function toString() : String;
}
