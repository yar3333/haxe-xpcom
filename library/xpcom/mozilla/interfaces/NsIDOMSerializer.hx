package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMSerializer") extern class NsIDOMSerializer extends NsISupports
{
	public static inline function createInstance() : NsIDOMSerializer return xpcom.Components.Constructor("@mozilla.org/xmlextras/xmlserializer;1", xpcom.Components.interfaces.nsIDOMSerializer);
	
	function serializeToStream(root:NsIDOMNode, stream:NsIOutputStream, charset:AUTF8String) : Void;
	function serializeToString(root:NsIDOMNode) : AString;
}
