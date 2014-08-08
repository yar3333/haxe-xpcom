package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAsyncVerifyRedirectCallback") extern class NsIAsyncVerifyRedirectCallback extends NsISupports
{
	function onRedirectVerifyCallback(result:Nsresult) : Void;
}
