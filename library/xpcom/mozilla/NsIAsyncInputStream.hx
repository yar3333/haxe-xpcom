package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAsyncInputStream") extern class NsIAsyncInputStream extends NsIInputStream
{
	function asyncWait(aCallback:NsIInputStreamCallback, aFlags:ULong, aRequestedCount:ULong, aEventTarget:NsIEventTarget) : Void;
	function closeWithStatus(aStatus:Nsresult) : Void;
}
