package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIInterfaceRequestor") extern class NsIInterfaceRequestor extends NsISupports
{
	public static inline function createInstance(window:js.html.Window) : NsIInterfaceRequestor
	{
		return DomWindowTools.queryInterface(window, NsIInterfaceRequestor);
	}
	
	function getInterface<T>(interfaceType:Class<T>) : T;
}
