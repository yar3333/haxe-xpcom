package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMMozNetworkStats") extern class NsIDOMMozNetworkStats extends NsISupports
{
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
