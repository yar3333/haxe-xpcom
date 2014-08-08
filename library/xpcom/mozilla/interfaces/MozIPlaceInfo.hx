package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIPlaceInfo") extern class MozIPlaceInfo extends NsISupports
{
	/**
	 * Read only: The frecency of the place.
	 */
	var frecency : Long;
	/**
	 * Read only: The globally unique id of the place.
	 */
	var guid : String;
	/**
	 * Read only: The machine-local (internal) id of the place.
	 */
	var placeId : Long;
	/**
	 * Read only: The title associated with the place.
	 */
	var title : String;
	/**
	 * Read only: The URI of the place.
	 */
	var uri : NsIURI;
	/**
	 * Read only: An array of mozIVisitInfo objects for the place.
	 */
	var visits : MozIVisitInfo;
}
