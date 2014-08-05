package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIIOService") extern class NsIIOService extends NsISupports
{
	public static inline function getService() : NsIIOService return Components.classes[cast "@mozilla.org/network/io-service;1"].getService(Components.interfaces.nsIIOService);
	
	/**
	 * Returns true if networking is in "offline" mode. When in offline mode, attempts to access the network will fail (although this does not necessarily correlate with whether there is actually a network available -- that's hard to detect without causing the dialer to come up). Observers will be notified of changes to this attribute.
	 */
	var offline : Bool;
}
