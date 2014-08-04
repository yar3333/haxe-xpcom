package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsICacheDeviceInfo") extern class NsICacheDeviceInfo extends NsISupports
{
	/**
	 * Get a human readable description of the cache device. Read only.
	 */
	var description : String;
	/**
	 * Get the number of stored cache entries. Read only.
	 */
	var entryCount : ULong;
	/**
	 * Get the upper limit of the size of the data the cache can store. Read only.
	 */
	var maximumSize : ULong;
	/**
	 * Get the total size of the stored cache entries. Read only.
	 */
	var totalSize : ULong;
	/**
	 * Get a usage report, statistics, miscellaneous data about the cache device. Read only.
	 */
	var usageReport : String;
}
