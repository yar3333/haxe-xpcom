package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEventTarget") extern class NsIEventTarget extends NsISupports
{
	function dispatch(event:NsIRunnable, flags:ULong) : Void;
	function isOnCurrentThread() : Bool;
	function postEvent(aEvent:PLEventPtr) : Void;
}
