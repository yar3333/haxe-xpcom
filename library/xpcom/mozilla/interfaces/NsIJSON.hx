package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIJSON") extern class NsIJSON extends NsISupports
{
	public static inline function createInstance() : NsIJSON
	{
		return xpcom.Components.classes[cast "@mozilla.org/dom/json;1"].createInstance(NsIJSON);
	}
	
	function decode(str:AString) : JSObject;
	function decodeToJSVal(str:AString, cx:JSContext) : JSVal;
	function decodeFromStream(stream:NsIInputStream, contentLength:Long) : JSObject;
	function encode(value:JSObject) : AString;
	function encodeToStream(stream:NsIOutputStream, charset:String, writeBOM:Bool, value:JSObject) : Void;
	function legacyDecode(str:AString) : JSVal;
	function legacyDecodeFromStream(str:AString) : JSVal;
	function legacyDecodeToJSVal(str:AString, cx:JSContext) : JSVal;
}
