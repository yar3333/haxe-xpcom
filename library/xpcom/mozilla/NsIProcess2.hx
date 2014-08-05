package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIProcess2") extern class NsIProcess2 extends NsIProcess
{
	public static inline function createInstance() : NsIProcess2 return Components.Constructor("@mozilla.org/process/util;1", Components.interfaces.nsIProcess2);
}
