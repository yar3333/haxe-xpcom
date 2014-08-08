package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISelection3") extern class NsISelection3 extends NsISupports
{
	function modify(alter:DOMString, direction:DOMString, granularity:DOMString) : Void;
}
