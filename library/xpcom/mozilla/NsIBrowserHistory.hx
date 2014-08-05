package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIBrowserHistory") extern class NsIBrowserHistory extends NsIGlobalHistory2
{
	public static inline function getService() : NsIBrowserHistory return Components.classes[cast "@mozilla.org/browser/nav-history-service;1"].getService(Components.interfaces.nsIBrowserHistory);
	
	/**
	 * Indicates if there are entries in global history. For performance reasons this does not return the real number of entries. Read only.
	 * Obsolete since Gecko 15.0
	 */
	var count  : PRUint32;
	/**
	 * The last page that was visited in a top-level window. Read only.
	 * Obsolete since Gecko 10.0
	 */
	var lastPageVisited  : AUTF8String;
	
	function addPageWithDetails(aURI:NsIURI, aTitle:Wstring, aLastVisited:LongLong) : Void;
	function markPageAsFollowedLink(aURI:NsIURI) : Void;
	function markPageAsTyped(aURI:NsIURI) : Void;
	function registerOpenPage(aURI:NsIURI) : Void;
	function removeAllPages() : Void;
	function removePage(aURI:NsIURI) : Void;
	function removePages(aURIs:Array<NsIURI>, aLength:ULong, aDoBatchNotify:Bool) : Void;
	function removePagesByTimeframe(aBeginTime:LongLong, aEndTime:LongLong) : Void;
	function removePagesFromHost(aHost:AUTF8String, aEntireDomain:Bool) : Void;
	function removeVisitsByTimeframe(aBeginTime:LongLong, aEndTime:LongLong) : Void;
	function unregisterOpenPage(aURI:NsIURI) : Void;
}
