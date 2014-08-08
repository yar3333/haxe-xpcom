package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProperties") extern class NsIProperties extends NsISupports
{
	public static inline function createInstance() : NsIProperties
	{
		return xpcom.Components.classes[cast "@mozilla.org/file/directory_service;1"].createInstance(NsIProperties);
	}
	
	function get(prop:String, iid:NsIIDRef, result:{value:NsQIResult}) : Void;
	function getKeys(count:{value:PRUint32}, keys:Array<String>) : Void;
	function has(prop:String) : Bool;
	function set(prop:String, value:NsISupports) : Void;
	function undefine(prop:String) : Void;
}
