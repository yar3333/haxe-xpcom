package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDOMSerializer") extern class NsIDOMSerializer extends NsISupports
{
	public static inline function createInstance() : NsIDOMSerializer return Components.Constructor("@mozilla.org/xmlextras/xmlserializer;1", Components.interfaces.nsIDOMSerializer);
}
