package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMGeoPositionCoords") extern class NsIDOMGeoPositionCoords
{
	/**
	 * The user's current latitude, in degrees. Read only.
	 */
	var latitude : Float;
	/**
	 * The user's current longitude, in degrees. Read only.
	 */
	var longitude : Float;
	/**
	 * The user's current altitude, in meters. Zero if the device doesn't support altitude detection. Read only.
	 */
	var altitude : Float;
	/**
	 * The accuracy of position information, in meters. Read only.
	 */
	var accuracy : Float;
	/**
	 * The accuracy of altitude information, in meters. Zero if the device doesn't support altitude detection. Read only.
	 */
	var altitudeAccuracy : Float;
	/**
	 * The current heading at which the user is moving, in degrees. Read only.
	 */
	var heading : Float;
	/**
	 * The speed at which the user is moving, in meters per second (confirm this). Read only.
	 */
	var speed : Float;
}
