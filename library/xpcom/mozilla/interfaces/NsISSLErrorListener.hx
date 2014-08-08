package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISSLErrorListener") extern class NsISSLErrorListener extends NsISupports
{
	function notifySSLError(socketInfo:NsIInterfaceRequestor, error:PRInt32, targetSite:AUTF8String) : Bool;
}
