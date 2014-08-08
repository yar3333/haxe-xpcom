package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAsyncInputStream") extern class NsIAsyncInputStream extends NsIInputStream
{
	function asyncWait(aCallback:NsIInputStreamCallback, aFlags:ULong, aRequestedCount:ULong, aEventTarget:NsIEventTarget) : Void;
	function closeWithStatus(aStatus:Nsresult) : Void;
}
