package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDOMMozNetworkStats") extern class NsIDOMMozNetworkStats extends NsISupports
{
	public static inline function createInstance() : NsIDOMMozNetworkStats return Components.Constructor("@mozilla.org/networkStats;1", Components.interfaces.nsIDOMMozNetworkStats);
	
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
