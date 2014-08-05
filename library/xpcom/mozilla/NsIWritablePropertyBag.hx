package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWritablePropertyBag") extern class NsIWritablePropertyBag extends NsIPropertyBag
{
	function deleteProperty(name:AString) : Void;
	function setProperty(name:AString, value:NsIVariant) : Void;
}
