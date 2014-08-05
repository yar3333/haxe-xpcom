package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISSLSocketControl") extern class NsISSLSocketControl extends NsISupports
{
	/**
	 * Obsolete since Gecko 1.9
	 */
	var forceHandshake : Bool;
	var notificationCallbacks : NsIInterfaceRequestor;
	
	function proxyStartSSL() : Void;
	function StartTLS() : Void;
}
