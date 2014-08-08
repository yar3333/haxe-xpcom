package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPropertyBag2") extern class NsIPropertyBag2 extends NsIPropertyBag
{
	function get(prop:AString) : NsIVariant;
	function getPropertyAsACString(prop:AString) : ACString;
	function getPropertyAsAString(prop:AString) : AString;
	function getPropertyAsAUTF8String(prop:AString) : AUTF8String;
	function getPropertyAsBool(prop:AString) : Bool;
	function getPropertyAsDouble(prop:AString) : Float;
	function getPropertyAsInt32(prop:AString) : PRInt32;
	function getPropertyAsInt64(prop:AString) : PRInt64;
	function getPropertyAsInterface(prop:AString, iid:NsIIDRef, result:{value:NsQIResult}) : Void;
	function getPropertyAsUint32(prop:AString) : PRUint32;
	function getPropertyAsUint64(prop:AString) : PRUint64;
	function hasKey(prop:AString) : PRBool;
}
