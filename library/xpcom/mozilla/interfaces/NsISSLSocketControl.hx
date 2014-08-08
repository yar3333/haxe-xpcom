package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISSLSocketControl") extern class NsISSLSocketControl extends NsISupports
{
	/**
	 * Obsolete since Gecko 1.9
	 */
	var forceHandshake : Bool;
	var notificationCallbacks : NsIInterfaceRequestor;
	
	function proxyStartSSL() : Void;
	function StartTLS() : Void;
}
