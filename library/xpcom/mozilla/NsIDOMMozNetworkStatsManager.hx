package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDOMMozNetworkStatsManager") extern class NsIDOMMozNetworkStatsManager extends NsISupports
{
	public static inline function createInstance() : NsIDOMMozNetworkStatsManager return Components.Constructor("@mozilla.org/networkStatsManager;1", Components.interfaces.nsIDOMMozNetworkStatsManager);
	
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
}
