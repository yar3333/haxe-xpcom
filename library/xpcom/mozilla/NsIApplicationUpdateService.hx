package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIApplicationUpdateService") extern class NsIApplicationUpdateService extends NsISupports
{
	/**
	 * The update checker being used for background update checking. Read only.
	 */
	var backgroundChecker : NsIUpdateChecker;
	/**
	 * true if the Update Service can download and install updates. Indicates if the current user has access privileges to the install directory. Read only.
	 */
	var canApplyUpdates : Bool;
	/**
	 * true if the Update Service can check for updates. Application updates might be disabled by the application and the platform the application is running on. Read only.
	 */
	var canCheckForUpdates : Bool;
	/**
	 * true if the update service is able to download and install updates. This depends on whether or not the current user has the necessary access privileges for the install directory. Read only. Obsolete since Gecko 1.9.1.7pre
	 */
	var canUpdate : Bool;
	/**
	 * true if a download is in progress, otherwise false. Read only.
	 */
	var isDownloading : Bool;
	
	function addDownloadListener(listener:NsIRequestObserver) : Void;
	function downloadUpdate(update:NsIUpdate, background:Bool) : AString;
	function pauseDownload() : Void;
	function removeDownloadListener(listener:NsIRequestObserver) : Void;
	function selectUpdate(updates:Array<NsIUpdate>, updateCount:ULong) : NsIUpdate;
}
