package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIInputStreamCallback") extern class NsIInputStreamCallback extends NsISupports
{
	function onInputStreamReady(aStream:NsIAsyncInputStream) : Void;
}
