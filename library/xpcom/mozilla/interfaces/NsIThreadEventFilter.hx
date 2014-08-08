package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIThreadEventFilter") extern class NsIThreadEventFilter extends NsISupports
{
	function acceptEvent(event:NsIRunnable) : Bool;
}
