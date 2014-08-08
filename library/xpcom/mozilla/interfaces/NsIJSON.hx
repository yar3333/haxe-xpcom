package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIJSON") extern class NsIJSON extends NsISupports
{
	public static inline function createInstance() : NsIJSON return Components.Constructor("@mozilla.org/dom/json;1", Components.interfaces.nsIJSON);
}
