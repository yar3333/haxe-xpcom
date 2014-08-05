package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDOMGeoGeolocation") extern class NsIDOMGeoGeolocation extends NsISupports
{
	public static inline function getService() : NsIDOMGeoGeolocation return Components.classes[cast "@mozilla.org/geolocation;1"].getService(Components.interfaces.nsIDOMGeoGeolocation);
	
	/**
	 * The most recently retrieved location as seen by the provider. May be null. Read only.
	 */
	var lastPosition : NsIDOMGeoPosition;
}
