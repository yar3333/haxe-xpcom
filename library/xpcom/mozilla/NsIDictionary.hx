package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDictionary") extern class NsIDictionary extends NsISummary
{
	function hasKey(key:String) : Bool;
	function getKeys(count:PRUint32, keys:Array<String>) : Void;
	function getValue(key:String) : NsISupports;
	function setValue(key:String, value:NsISupports) : Void;
	function deleteValue(key:String) : NsISupports;
	function clear() : Void;
}
