package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IJSDebugger") extern class IJSDebugger extends NsISupports
{
	public static inline function getService() : IJSDebugger return Components.classes[cast "@mozilla.org/jsdebugger;1"].getService(Components.interfaces.IJSDebugger);
	
	function addClass() : Void;
}
