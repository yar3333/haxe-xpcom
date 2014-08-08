package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMMozNetworkStatsManager") extern class NsIDOMMozNetworkStatsManager extends NsISupports
{
	public static inline function createInstance() : NsIDOMMozNetworkStatsManager
	{
		return xpcom.Components.classes[cast "@mozilla.org/networkStatsManager;1"].createInstance(NsIDOMMozNetworkStatsManager);
	}
	
	/**
	 * Available connection types. Read only.
	 */
	var connectionTypes : Array<DOMString>;
	/**
	 * Time in seconds between samples stored in database. Read only.
	 */
	var sampleRate : Long;
	/**
	 * Maximum number of samples stored in the database per connection type.
	 */
	var maxStorageSamples : Long;
	
	function getNetworkStats(aOptions:NetworkStatsOptions) : NsIDOMDOMRequest;
	function clearAllData() : NsIDOMDOMRequest;
}
