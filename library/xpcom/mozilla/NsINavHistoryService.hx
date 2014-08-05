package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsINavHistoryService") extern class NsINavHistoryService extends NsISupports
{
	public static inline function getService() : NsINavHistoryService return Components.classes[cast "@mozilla.org/browser/nav-history-service;1"].getService(Components.interfaces.nsINavHistoryService);
	
	/**
	 * True if there is any history. This can be used in UI to determine whether the "clear history" button should be enabled or not. This is much better than using BrowserHistory.count since that can be very slow if there is a lot of history (it must enumerate each item). This is pretty fast.
	 */
	var hasHistoryEntries : Bool;
	/**
	 * True if history is disabled. currently, history is disabled if the browser.history_expire_days pref is "0".
	 */
	var historyDisabled : Bool;
}
