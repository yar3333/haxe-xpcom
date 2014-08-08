package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIThreadObserver") extern class NsIThreadObserver extends NsISupports
{
	function afterProcessNextEvent(thread:NsIThreadInternal, recursionDepth:ULong) : Void;
	function onDispatchedEvent(thread:NsIThreadInternal) : Void;
	function onProcessNextEvent(thread:NsIThreadInternal, mayWait:Bool, recursionDepth:ULong) : Void;
}
