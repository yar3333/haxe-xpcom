package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIIOService") extern class NsIIOService extends NsISupports
{
	/**
	 * Returns true if networking is in "offline" mode. When in offline mode, attempts to access the network will fail (although this does not necessarily correlate with whether there is actually a network available -- that's hard to detect without causing the dialer to come up). Observers will be notified of changes to this attribute.
	 */
	var offline : Bool;
}
