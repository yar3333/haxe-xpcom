package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMGeoGeolocation") extern class NsIDOMGeoGeolocation
{
	/**
	 * The most recently retrieved location as seen by the provider. May be null. Read only.
	 */
	var lastPosition : NsIDOMGeoPosition;
}
