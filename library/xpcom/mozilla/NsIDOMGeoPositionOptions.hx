package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMGeoPositionOptions") extern class NsIDOMGeoPositionOptions
{
	/**
	 * If true, high accuracy mode is used.
	 */
	var enableHighAccuracy : Bool;
	/**
	 * Maximum time in milliseconds before giving up on an attempt to retrieve location information.
	 */
	var timeout : ULong;
}
