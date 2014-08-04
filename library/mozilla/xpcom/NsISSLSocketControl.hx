package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISSLSocketControl") extern class NsISSLSocketControl extends NsISupports
{
	/**
	 * Obsolete since Gecko 1.9
	 */
	var forceHandshake : Bool;
	var notificationCallbacks : NsIInterfaceRequestor;
}
