package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMMozNetworkStatsData") extern class NsIDOMMozNetworkStatsData extends NsISupports
{
	/**
	 * The number of bytes received on the connection. Read only.
	 */
	var rxBytes : ULong;
	/**
	 * The number of bytes transmitted on the connection. Read only.
	 */
	var txBytes : ULong;
	/**
	 * The date of the sample. Read only.
	 */
	var date : Date;
}
