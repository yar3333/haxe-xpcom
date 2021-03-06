package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMutableArray") extern class NsIMutableArray extends NsIArray
{
	function appendElement(element:NsISupports, weak:Bool) : Void;
	function clear() : Void;
	function insertElementAt(element:NsISupports, index:ULong, weak:Bool) : Void;
	function removeElementAt(index:ULong) : Void;
	function replaceElementAt(element:NsISupports, index:ULong, weak:Bool) : Void;
}
