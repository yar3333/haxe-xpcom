package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMGeoPosition") extern class NsIDOMGeoPosition extends NsISupports
{
	/**
	 * The address of the user's current location, if available. Read only.
	 */
	var address  : NsIDOMGeoPositionAddress;
	/**
	 * The user's current position information. Read only.
	 */
	var coords : NsIDOMGeoPositionCoords;
	/**
	 * The time at which the reading was taken. Read only.
	 */
	var timestamp : DOMTimeStamp;
}
