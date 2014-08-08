package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMGeoGeolocation") extern class NsIDOMGeoGeolocation extends NsISupports
{
	public static inline function getService() : NsIDOMGeoGeolocation
	{
		return xpcom.Components.classes[cast "@mozilla.org/geolocation;1"].getService(NsIDOMGeoGeolocation);
	}
	
	/**
	 * The most recently retrieved location as seen by the provider. May be null. Read only.
	 */
	var lastPosition : NsIDOMGeoPosition;
}
