package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEventTarget") extern class NsIEventTarget extends NsISupports
{
	/**
	 * This flag specifies the default mode of event dispatch, whereby the event is simply queued for later processing. When this flag is specified, <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIEventTarget#dispatch()">dispatch()</a></code> returns immediately after the event is queued.
	 */
	static inline var DISPATCH_NORMAL  = 0;
	/**
	 * <p>This flag specifies the synchronous mode of event dispatch, in which the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIEventTarget#dispatch()">dispatch()</a></code> method does not return until the event has been processed.</p>
	 * <div class="note"><strong>Note:</strong> Passing this flag to dispatch may have the side-effect of causing other events on the current thread to be processed while waiting for the given event to be processed.</div>
	 */
	static inline var DISPATCH_SYNC  = 1;
	
	function dispatch(event:NsIRunnable, flags:ULong) : Void;
	function isOnCurrentThread() : Bool;
	function postEvent(aEvent:PLEventPtr) : Void;
}
