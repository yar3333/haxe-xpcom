package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMStorage") extern class NsIDOMStorage extends NsISupports
{
	/**
	 * The number of keys stored in the session store. Read only.
	 */
	var length : ULong;
	
	function clear() : Void;
	function getItem(key:DOMString) : DOMString;
	function key(index:ULong) : DOMString;
	function removeItem(key:DOMString) : Void;
	function setItem(key:DOMString, data:DOMString) : Void;
}
