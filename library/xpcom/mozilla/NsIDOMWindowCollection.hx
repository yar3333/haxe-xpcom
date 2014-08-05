package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMWindowCollection") extern class NsIDOMWindowCollection extends NsISupports
{
	var length(default, never) : Int;
	
	function item(index:Int) : NsIDOMWindow;
	function namedItem(name:DOMString) : NsIDOMWindow;
}