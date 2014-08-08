package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAsyncStreamCopier") extern class NsIAsyncStreamCopier extends NsIRequest
{
	function asyncCopy(aObserver:NsIRequestObserver, aObserverContext:NsISupports) : Void;
	function init(aSource:NsIInputStream, aSink:NsIOutputStream, aTarget:NsIEventTarget, aSourceBuffered:Bool, aSinkBuffered:Bool, aChunkSize:ULong, aCloseSource:Bool, aCloseSink:Bool) : Void;
}
