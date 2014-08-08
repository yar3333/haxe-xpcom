package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIVariant") extern class NsIVariant extends NsISupports
{
	/**
	 * Read only. Native code only!
	 */
	var dataType : PRUint16;
	
	function getAsACString() : ACString;
	function getAsArray(type:{value:PRUint16}, iid:{value:NsIID}, count:{value:PRUint32}, ptr:{value:VoidPtr}) : Nsresult;
	function getAsAString() : AString;
	function getAsAUTF8String() : AUTF8String;
	function getAsBool() : PRBool;
	function getAsChar() : Char;
	function getAsDOMString() : DOMString;
	function getAsDouble() : Float;
	function getAsFloat() : Float;
	function getAsID(retval:{value:NsID}) : Nsresult;
	function getAsInt16() : PRInt16;
	function getAsInt32() : PRInt32;
	function getAsInt64() : PRInt64;
	function getAsInt8() : PRUint8;
	function getAsInterface(iid:{value:NsIIDPtr}, iface:{value:NsQIResult}) : Void;
	function getAsISupports() : NsISupports;
	function getAsJSVal() : JSVal;
	function getAsString() : String;
	function getAsStringWithSize(size:{value:PRUint32}, str:{value:String}) : Void;
	function getAsUint16() : PRUint16;
	function getAsUint32() : PRUint32;
	function getAsUint64() : PRUint64;
	function getAsUint8() : PRUint8;
	function getAsWChar() : Wchar;
	function getAsWString() : Wstring;
	function getAsWStringWithSize(size:{value:PRUint32}, str:{value:Wstring}) : Void;
}
