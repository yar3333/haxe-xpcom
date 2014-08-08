package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWifiMonitor") extern class NsIWifiMonitor extends NsISupports
{
	public static inline function getService() : NsIWifiMonitor
	{
		return xpcom.Components.classes[cast "@mozilla.org/wifi/monitor;1"].getService(NsIWifiMonitor);
	}
	
	function startWatching(aListener:NsIWifiListener) : Void;
	function stopWatching(aListener:NsIWifiListener) : Void;
}
