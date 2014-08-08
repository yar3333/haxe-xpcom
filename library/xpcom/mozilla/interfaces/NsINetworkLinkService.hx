package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINetworkLinkService") extern class NsINetworkLinkService extends NsISupports
{
	public static inline function getService() : NsINetworkLinkService
	{
		return xpcom.Components.classes[cast "@mozilla.org/network/network-link-service;1"].getService(NsINetworkLinkService);
	}
	
	/**
	 * This is set to true when the system is believed to have a usable network connection.
	 * The link is only up when network connections can be established. For example, the link is down during DHCP configuration (unless there is another usable interface already configured).
	 * If the link status is not currently known, we generally assume that it is up. Read only.
	 */
	var isLinkUp : Bool;
	/**
	 * This is set to true when we believe that isLinkUp is accurate. Read only.
	 */
	var linkStatusKnown : Bool;
	/**
	 * The type of network connection, one of the LINK_TYPE_* constants. Read only. 
	 * Note: As of Gecko 8.0, all Operating Systems currently return LINK_TYPE_UNKNOWN. Android support was backed out due to perceived security concerns, see bug 691054.
	 * As of Gecko 28.0 Android support is available again, see bug 939680.
	 */
	var linkType : ULong;
}
