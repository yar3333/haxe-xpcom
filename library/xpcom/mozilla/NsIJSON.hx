package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIJSON") extern class NsIJSON extends NsISupports
{
	public static inline function createInstance() : NsIJSON return Components.Constructor("@mozilla.org/dom/json;1", Components.interfaces.nsIJSON);
}
