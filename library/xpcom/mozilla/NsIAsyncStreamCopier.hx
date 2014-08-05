package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAsyncStreamCopier") extern class NsIAsyncStreamCopier extends NsIRequest
{
	function asyncCopy(aObserver:NsIRequestObserver, aObserverContext:NsISupports) : Void;
	function init(aSource:NsIInputStream, aSink:NsIOutputStream, aTarget:NsIEventTarget, aSourceBuffered:Bool, aSinkBuffered:Bool, aChunkSize:ULong, aCloseSource:Bool, aCloseSink:Bool) : Void;
}
