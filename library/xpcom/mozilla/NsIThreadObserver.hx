package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIThreadObserver") extern class NsIThreadObserver extends NsISupports
{
	function afterProcessNextEvent(thread:NsIThreadInternal, recursionDepth:ULong) : Void;
	function onDispatchedEvent(thread:NsIThreadInternal) : Void;
	function onProcessNextEvent(thread:NsIThreadInternal, mayWait:Bool, recursionDepth:ULong) : Void;
}
