package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStreamListener") extern class NsIStreamListener extends NsIRequestObserver
{
	function onDataAvailable(aRequest:NsIRequest, aContext:NsISupports, aInputStream:NsIInputStream, aOffset:ULong, aCount:ULong) : Void;
}
