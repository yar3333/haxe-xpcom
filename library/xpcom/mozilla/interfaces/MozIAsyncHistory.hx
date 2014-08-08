package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIAsyncHistory") extern class MozIAsyncHistory extends NsISupports
{
	public static inline function getService() : MozIAsyncHistory
	{
		return xpcom.Components.classes[cast "@mozilla.org/browser/history;1"].getService(MozIAsyncHistory);
	}
	
	function getPlacesInfo(aPlaceIdentifiers:JSVal, aCallback:MozIVisitInfoCallback) : Void;
	function isURIVisited(aURI:NsIURI, aCallback:MozIVisitedStatusCallback) : Void;
	function updatePlaces(placeInfo:MozIPlaceInfo, ?aCallback:MozIVisitInfoCallback) : Void;
}
