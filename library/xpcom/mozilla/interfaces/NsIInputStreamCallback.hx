package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIInputStreamCallback") extern class NsIInputStreamCallback extends NsISupports
{
	function onInputStreamReady(aStream:NsIAsyncInputStream) : Void;
}
