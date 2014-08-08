package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMMozNetworkStats") extern class NsIDOMMozNetworkStats extends NsISupports
{
	public static inline function createInstance() : NsIDOMMozNetworkStats
	{
		return xpcom.Components.classes[cast "@mozilla.org/networkStats;1"].createInstance(NsIDOMMozNetworkStats);
	}
	
	/**
	 * Connection type of the stats. Read only.
	 */
	var connectionType : DOMString;
	/**
	 * Stats samples. Read only.
	 */
	var data : NsIDOMMozNetworkStatsData;
	/**
	 * Start date of the stats samples. Read only.
	 */
	var start : Date;
	/**
	 * End date of the stats samples. Read only.
	 */
	var end : Date;
}
