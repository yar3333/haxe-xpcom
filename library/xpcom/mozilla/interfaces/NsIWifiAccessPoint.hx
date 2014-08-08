package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWifiAccessPoint") extern class NsIWifiAccessPoint extends NsISupports
{
	/**
	 * The WiFi access point's MAC address. This string is in the format "XX-XX-XX-XX-XX-XX". Read only.
	 */
	var mac : ACString;
	/**
	 * The public name of the wireless network, as an ASCII string. This string is null if not available. Read only. Note: This string consists of the bytes as received from the network and may contain nulls and other unprintable characters; if you need to display the SSID, use the ssid attribute instead.
	 */
	var rawSSID : ACString;
	/**
	 * The current signal strength in dBm. Read only.
	 */
	var signal : Long;
	/**
	 * The access point's public wireless network name, as an ASCII string. This string is null if not available. Read only. Note: This is a conversion of the SSID into a "displayable" string. For comparisons, you should instead use the rawSSID attribute.
	 */
	var ssid : AString;
}
