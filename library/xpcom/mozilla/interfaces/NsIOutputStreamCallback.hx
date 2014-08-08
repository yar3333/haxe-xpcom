package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIOutputStreamCallback") extern class NsIOutputStreamCallback extends NsISupports
{
	function onOutputStreamReady(aStream:NsIAsyncOutputStream) : Void;
}
