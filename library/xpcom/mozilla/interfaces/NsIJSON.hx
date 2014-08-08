package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIJSON") extern class NsIJSON extends NsISupports
{
	public static inline function createInstance() : NsIJSON
	{
		return xpcom.Components.classes[cast "@mozilla.org/dom/json;1"].createInstance(NsIJSON);
	}
}
