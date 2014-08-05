package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAsyncOutputStream") extern class NsIAsyncOutputStream extends NsIOutputStream
{
	function asyncWait(aCallback:NsIOutputStreamCallback, aFlags:ULong, aRequestedCount:ULong, aEventTarget:NsIEventTarget) : Void;
	function closeWithStatus(reason:Nsresult) : Void;
}
