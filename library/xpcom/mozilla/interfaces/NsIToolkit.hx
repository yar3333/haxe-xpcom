package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIToolkit") extern class NsIToolkit extends NsISupports
{
	function Init(aThread:PRThread) : Void;
}
