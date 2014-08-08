package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMSerializer") extern class NsIDOMSerializer extends NsISupports
{
	public static inline function createInstance() : NsIDOMSerializer return Components.Constructor("@mozilla.org/xmlextras/xmlserializer;1", Components.interfaces.nsIDOMSerializer);
	
	function serializeToStream(root:NsIDOMNode, stream:NsIOutputStream, charset:AUTF8String) : Void;
	function serializeToString(root:NsIDOMNode) : AString;
}
