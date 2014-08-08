package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMNodeList") extern class NsIDOMNodeList
{
	var length : Int;

	function item(index:Int) : NsIDOMNode;
}