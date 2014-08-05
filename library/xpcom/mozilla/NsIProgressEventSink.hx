package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProgressEventSink") extern class NsIProgressEventSink extends NsISupports
{
	function onProgress(aRequest:NsIRequest, aContext:NsISupports, aProgress:ULongLong, aProgressMax:ULongLong) : Void;
	function onStatus(aRequest:NsIRequest, aContext:NsISupports, aStatus:Nsresult, aStatusArg:Wstring) : Void;
}
