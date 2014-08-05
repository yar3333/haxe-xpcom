package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIRequestObserver") extern class NsIRequestObserver extends NsISupports
{
	function onStartRequest(aRequest:NsIRequest, aContext:NsISupports) : Void;
	function onStopRequest(aRequest:NsIRequest, aContext:NsISupports, aStatusCode:Nsresult) : Void;
}
