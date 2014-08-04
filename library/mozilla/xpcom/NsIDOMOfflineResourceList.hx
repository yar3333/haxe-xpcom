package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMOfflineResourceList") extern class NsIDOMOfflineResourceList
{
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
}
