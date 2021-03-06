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
	 * This transition type means the user followed a link and got a new toplevel window.
	 */
	static inline var TRANSITION_LINK = 1;
	/**
	 * This transition type is set when the user typed the URL to get to the page.
	 */
	static inline var TRANSITION_TYPED = 2;
	/**
	 * This transition type is set when the user followed a bookmark to get to the page.
	 */
	static inline var TRANSITION_BOOKMARK = 3;
	/**
	 * This transition type is set when some inner content is loaded. This is true of all images on a page, and the contents of the iframe. It is also true of any content in a frame, regardless if whether or not the user clicked something to get there.
	 */
	static inline var TRANSITION_EMBED = 4;
	/**
	 * This transition type is set when the transition was a permanent redirect.
	 */
	static inline var TRANSITION_REDIRECT_PERMANENT = 5;
	/**
	 * This transition type is set when the transition was a temporary redirect.
	 */
	static inline var TRANSITION_REDIRECT_TEMPORARY = 6;
	/**
	 * This transition type is set when the transition is a download.
	 */
	static inline var TRANSITION_DOWNLOAD = 7;
	/**
	 * This transition type is set when the user followed a link that loaded a page in a frame.
	 */
	static inline var TRANSITION_FRAMED_LINK  = 8;
	
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
	function queryStringToQueries(aQueryString:AUTF8String, aQueries:Array<NsINavHistoryQuery>, aResultCount:{value:ULong}, options:{value:NsINavHistoryQueryOptions}) : Void;
	function queriesToQueryString(aQueries:Array<NsINavHistoryQuery>, aQueryCount:ULong, options:NsINavHistoryQueryOptions) : AUTF8String;
	function addObserver(observer:NsINavHistoryObserver, ownsWeak:Bool) : Void;
	function removeObserver(observer:NsINavHistoryObserver) : Void;
	function runInBatchMode(aCallback:NsINavHistoryBatchCallback, aClosure:NsISupports) : Void;
	function importHistory(file:NsIFile) : Void;
	function getCharsetForURI(aURI:NsIURI) : AString;
	function setCharsetForURI(aURI:NsIURI, aCharset:AString) : AString;
}
