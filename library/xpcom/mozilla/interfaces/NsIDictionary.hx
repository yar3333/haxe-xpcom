package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDictionary") extern class NsIDictionary extends NsISummary
{
	function hasKey(key:String) : Bool;
	function getKeys(count:{value:PRUint32}, keys:Array<String>) : Void;
	function getValue(key:String) : NsISupports;
	function setValue(key:String, value:NsISupports) : Void;
	function deleteValue(key:String) : NsISupports;
	function clear() : Void;
}
