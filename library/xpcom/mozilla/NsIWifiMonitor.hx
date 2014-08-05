package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIWifiMonitor") extern class NsIWifiMonitor extends NsISupports
{
	public static inline function getService() : NsIWifiMonitor return Components.classes[cast "@mozilla.org/wifi/monitor;1"].getService(Components.interfaces.nsIWifiMonitor);
	
	function startWatching(aListener:NsIWifiListener) : Void;
	function stopWatching(aListener:NsIWifiListener) : Void;
}
