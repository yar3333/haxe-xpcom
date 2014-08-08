package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWritablePropertyBag2") extern class NsIWritablePropertyBag2 extends NsIPropertyBag2
{
	function setPropertyAsACString(prop:AString, value:ACString) : Void;
	function setPropertyAsAString(prop:AString, value:AString) : Void;
	function setPropertyAsAUTF8String(prop:AString, value:AUTF8String) : Void;
	function setPropertyAsBool(prop:AString, value:Bool) : Void;
	function setPropertyAsDouble(prop:AString, value:Float) : Void;
	function setPropertyAsInt32(prop:AString, value:PRInt32) : Void;
	function setPropertyAsInt64(prop:AString, value:PRInt64) : Void;
	function setPropertyAsInterface(prop:AString, value:NsISupports) : Void;
	function setPropertyAsUint32(prop:AString, value:PRUint32) : Void;
	function setPropertyAsUint64(prop:AString, value:PRUint64) : Void;
}
