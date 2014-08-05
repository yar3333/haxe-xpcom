package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIEventTarget") extern class NsIEventTarget extends NsISupports
{
	function dispatch(event:NsIRunnable, flags:ULong) : Void;
	function isOnCurrentThread() : Bool;
	function postEvent(aEvent:PLEventPtr) : Void;
}
