package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIRequestObserver") extern class NsIRequestObserver extends NsISupports
{
	function onStartRequest(aRequest:NsIRequest, aContext:NsISupports) : Void;
	function onStopRequest(aRequest:NsIRequest, aContext:NsISupports, aStatusCode:Nsresult) : Void;
}
