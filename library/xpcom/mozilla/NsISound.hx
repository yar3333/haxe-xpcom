package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISound") extern class NsISound extends NsISupports
{
	public static inline function createInstance() : NsISound return Components.Constructor("@mozilla.org/sound;1", Components.interfaces.nsISound);
}
