package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIStreamListener") extern class NsIStreamListener extends NsIRequestObserver
{
	function onDataAvailable(aRequest:NsIRequest, aContext:NsISupports, aInputStream:NsIInputStream, aOffset:ULong, aCount:ULong) : Void;
}
