package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWritablePropertyBag") extern class NsIWritablePropertyBag extends NsIPropertyBag
{
	function deleteProperty(name:AString) : Void;
	function setProperty(name:AString, value:NsIVariant) : Void;
}
