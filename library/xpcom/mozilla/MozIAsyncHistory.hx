package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("mozIAsyncHistory") extern class MozIAsyncHistory extends NsISupports
{
	public static inline function getService() : MozIAsyncHistory return Components.classes[cast "@mozilla.org/browser/history;1"].getService(Components.interfaces.mozIAsyncHistory);
	
	function getPlacesInfo(aPlaceIdentifiers:JSVal, aCallback:MozIVisitInfoCallback) : Void;
	function isURIVisited(aURI:NsIURI, aCallback:MozIVisitedStatusCallback) : Void;
	function updatePlaces(placeInfo:MozIPlaceInfo, ?aCallback:MozIVisitInfoCallback) : Void;
}
