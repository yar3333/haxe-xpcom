package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIThreadInternal") extern class NsIThreadInternal extends NsIThread
{
	/**
	 * Get/set the current thread observer; set to null to disable observing. This attribute may be read from any thread but must only be set on the thread corresponding to this thread object. The observer will be released on the thread corresponding to this thread object after all other events have been processed during a call to Shutdown.
	 */
	var observer : NsIThreadObserver;
	
	function popEventQueue() : Void;
	function pushEventQueue(filter:NsIThreadEventFilter) : Void;
}
