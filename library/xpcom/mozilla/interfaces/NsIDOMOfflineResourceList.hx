package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMOfflineResourceList") extern class NsIDOMOfflineResourceList extends NsISupports
{
	/**
	 * The object isn't associated with an application cache.
	 */
	static inline var UNCACHED = 0;
	/**
	 * The application cache is not in the process of being updated.
	 */
	static inline var IDLE = 1;
	/**
	 * The application cache manifest is being fetched and checked for updates.
	 */
	static inline var CHECKING = 2;
	/**
	 * Resources are being downloaded to be added to the cache.
	 */
	static inline var DOWNLOADING = 3;
	/**
	 * There is a new version of the application cache available.
	 */
	static inline var UPDATEREADY = 4;
	/**
	 * The application cache group is now obsolete.
	 */
	static inline var OBSOLETE = 5;
	
	/**
	 * The list of dynamically-managed entries in the offline resource list. Read only.
	 */
	var mozItems : NsIDOMOfflineResourceList;
	/**
	 * The number of entries in the dynamically managed offline resource list. Read only.
	 */
	var mozLength : ULong;
	/**
	 * An event listener to be called when fetching the application cache manifest and checking for updates.
	 */
	var onchecking : NsIDOMEventListener;
	/**
	 * An event listener to be called when an error occurs during the caching process.
	 */
	var onerror : NsIDOMEventListener;
	/**
	 * An event listener to be called when there is no update to download.
	 */
	var onnoupdate : NsIDOMEventListener;
	/**
	 * An event listener to be called when resources are being downloaded into the cache.
	 */
	var ondownloading : NsIDOMEventListener;
	/**
	 * An event listener to be called periodically throughout the download process.
	 */
	var onprogress : NsIDOMEventListener;
	/**
	 * An event listener to be called when a resource update is ready; this event is not currently used since versioned application caches aren't supported yet.
	 */
	var onupdateready : NsIDOMEventListener;
	/**
	 * An event listener to be called when caching is complete.
	 */
	var oncached : NsIDOMEventListener;
	/**
	 * One of the Application cache state constants indicating the status of the application cache.
	 */
	var status : UShort;
	
	function mozAdd(uri:DOMString) : Void;
	function mozItem(index:ULong) : DOMString;
	function mozRemove(uri:DOMString) : Void;
	function swapCache() : Void;
	function update() : Void;
}
