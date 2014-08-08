package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIVisitInfo") extern class MozIVisitInfo extends NsISupports
{
	/**
	 * Read only: The referring URI of this visit. This may be null.
	 */
	var referrerURI : NsIURI;
	/**
	 * Read only: The sessionId of this visit.
	 */
	var sessionId : Long;
	/**
	 * Read only: The transition type used to get to this visit. One of the nsINavBookmarksService.Constants on nsINavHistory.
	 */
	var transitionType : Long;
	/**
	 * Read only: The time the visit occurred.
	 */
	var visitDate : PRTime;
	/**
	 * Read only: The machine-local (internal) id of the visit.
	 */
	var visitId : Long;
}
