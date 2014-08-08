package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProgressEventSink") extern class NsIProgressEventSink extends NsISupports
{
	function onProgress(aRequest:NsIRequest, aContext:NsISupports, aProgress:ULongLong, aProgressMax:ULongLong) : Void;
	function onStatus(aRequest:NsIRequest, aContext:NsISupports, aStatus:Nsresult, aStatusArg:Wstring) : Void;
}
