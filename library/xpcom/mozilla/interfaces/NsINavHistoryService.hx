package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryService") extern class NsINavHistoryService extends NsISupports
{
	public static inline function getService() : NsINavHistoryService
	{
		return xpcom.Components.classes[cast "@mozilla.org/browser/nav-history-service;1"].getService(NsINavHistoryService);
	}
	
	/**
	 * True if there is any history. This can be used in UI to determine whether the "clear history" button should be enabled or not. This is much better than using BrowserHistory.count since that can be very slow if there is a lot of history (it must enumerate each item). This is pretty fast.
	 */
	var hasHistoryEntries : Bool;
	/**
	 * True if history is disabled. currently, history is disabled if the browser.history_expire_days pref is "0".
	 */
	var historyDisabled : Bool;
	
	function getPageTitle(aURI:NsIURI) : AString;
	function markPageAsFollowedBookmark(aURI:NsIURI) : Void;
	function markPageAsFollowedLink(aURI:NsIURI) : Void;
	function markPageAsTyped(aURI:NsIURI) : Void;
	function canAddURI(aURI:NsIURI) : Bool;
	function addVisit(aURI:NsIURI, aTime:PRTime, aReferringURI:NsIURI, aTransitionType:Long, aIsRedirect:Bool, aSessionID:LongLong) : LongLong;
	function getNewQuery() : NsINavHistoryQuery;
	function getNewQueryOptions() : NsINavHistoryQueryOptions;
	function executeQuery(aQuery:NsINavHistoryQuery, options:NsINavHistoryQueryOptions) : NsINavHistoryResult;
	function executeQueries(aQueries:Array<NsINavHistoryQuery>, aQueryCount:ULong, options:NsINavHistoryQueryOptions) : NsINavHistoryResult;
	function queryStringToQueries(aQueryString:AUTF8String, aQueries:Array<NsINavHistoryQuery>, aResultCount:ULong, options:NsINavHistoryQueryOptions) : Void;
	function queriesToQueryString(aQueries:Array<NsINavHistoryQuery>, aQueryCount:ULong, options:NsINavHistoryQueryOptions) : AUTF8String;
	function addObserver(observer:NsINavHistoryObserver, ownsWeak:Bool) : Void;
	function removeObserver(observer:NsINavHistoryObserver) : Void;
	function runInBatchMode(aCallback:NsINavHistoryBatchCallback, aClosure:NsISupports) : Void;
	function importHistory(file:NsIFile) : Void;
	function getCharsetForURI(aURI:NsIURI) : AString;
	function setCharsetForURI(aURI:NsIURI, aCharset:AString) : AString;
}
