package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IJSDebugger") extern class IJSDebugger extends NsISupports
{
	public static inline function getService() : IJSDebugger return xpcom.Components.classes[cast "@mozilla.org/jsdebugger;1"].getService(xpcom.Components.interfaces.IJSDebugger);
	
	function addClass() : Void;
}
