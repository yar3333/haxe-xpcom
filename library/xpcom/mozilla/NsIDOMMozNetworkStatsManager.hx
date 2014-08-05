package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMMozNetworkStatsManager") extern class NsIDOMMozNetworkStatsManager extends NsISupports
{
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
