package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProcess2") extern class NsIProcess2 extends NsIProcess
{
	public static inline function createInstance() : NsIProcess2 return Components.Constructor("@mozilla.org/process/util;1", Components.interfaces.nsIProcess2);
}
