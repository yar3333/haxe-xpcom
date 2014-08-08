package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProcess2") extern class NsIProcess2 extends NsIProcess
{
	public static inline function createInstance() : NsIProcess2 return xpcom.Components.Constructor("@mozilla.org/process/util;1", xpcom.Components.interfaces.nsIProcess2);
}
