package xpcom.mozilla;

import xpcom.types.*;

@:native("nsINavHistoryObserver") extern class NsINavHistoryObserver extends NsISupports
{
	/**
	 * The page's favicon changed.
	 */
	static inline var ATTRIBUTE_FAVICON = 3;
	
	function onBeforeDeleteURI(aURI:NsIURI, aGUID:ACString) : Void;
	function onBeginUpdateBatch() : Void;
	function onClearHistory() : Void;
	function onDeleteURI(aURI:NsIURI, aGUID:ACString) : Void;
	function onDeleteVisits(aURI:NsIURI, aVisitTime:PRTime, aGUID:ACString) : Void;
	function onEndUpdateBatch() : Void;
	function onPageChanged(aURI:NsIURI, aWhat:ULong, aValue:AString) : Void;
	function onPageExpired(aURI:NsIURI, aVisitTime:PRTime, aWholeEntry:Bool) : Void;
	function onTitleChanged(aURI:NsIURI, aPageTitle:AString) : Void;
	function onVisit(aURI:NsIURI, aVisitID:LongLong, aTime:PRTime, aSessionID:LongLong, aReferringID:LongLong, aTransitionType:ULong, aGUID:ACString, aAdded:ULong) : Void;
}
