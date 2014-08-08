package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMWindowCollection") extern class NsIDOMWindowCollection extends NsISupports
{
	var length(default, never) : Int;
	
	function item(index:Int) : NsIDOMWindow;
	function namedItem(name:DOMString) : NsIDOMWindow;
}