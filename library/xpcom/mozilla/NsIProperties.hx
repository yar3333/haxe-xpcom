package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIProperties") extern class NsIProperties extends NsISupports
{
	public static inline function createInstance() : NsIProperties return Components.Constructor("@mozilla.org/file/directory_service;1", Components.interfaces.nsIProperties);
}
