package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("IJSDebugger") extern class IJSDebugger extends NsISupports
{
	public static inline function getService() : IJSDebugger return Components.classes[cast "@mozilla.org/jsdebugger;1"].getService(Components.interfaces.IJSDebugger);
}
