package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAsyncOutputStream") extern class NsIAsyncOutputStream extends NsIOutputStream
{
	function asyncWait(aCallback:NsIOutputStreamCallback, aFlags:ULong, aRequestedCount:ULong, aEventTarget:NsIEventTarget) : Void;
	function closeWithStatus(reason:Nsresult) : Void;
}
