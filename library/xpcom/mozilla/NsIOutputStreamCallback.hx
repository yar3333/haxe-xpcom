package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIOutputStreamCallback") extern class NsIOutputStreamCallback extends NsISupports
{
	function onOutputStreamReady(aStream:NsIAsyncOutputStream) : Void;
}
