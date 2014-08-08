package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProperties") extern class NsIProperties extends NsISupports
{
	public static inline function createInstance() : NsIProperties return Components.Constructor("@mozilla.org/file/directory_service;1", Components.interfaces.nsIProperties);
	
	function get(prop:String, iid:NsIIDRef, result:NsQIResult) : Void;
	function getKeys(count:PRUint32, keys:Array<String>) : Void;
	function has(prop:String) : Bool;
	function set(prop:String, value:NsISupports) : Void;
	function undefine(prop:String) : Void;
}
