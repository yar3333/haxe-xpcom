package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDownloadManager") extern class NsIDownloadManager extends NsISupports
{
	public static inline function getService() : NsIDownloadManager
	{
		return xpcom.Components.classes[cast "@mozilla.org/download-manager;1"].getService(NsIDownloadManager);
	}
	
	/**
	 * The download has not been started yet.
	 */
	static inline var DOWNLOAD_NOTSTARTED = -1;
	/**
	 * The download is in the process of being downloaded.
	 */
	static inline var DOWNLOAD_DOWNLOADING = 0;
	/**
	 * Download completed including any processing of the target file.
	 */
	static inline var DOWNLOAD_FINISHED = 1;
	/**
	 * The download failed due to error.
	 */
	static inline var DOWNLOAD_FAILED = 2;
	/**
	 * The user canceled the download.
	 */
	static inline var DOWNLOAD_CANCELED = 3;
	/**
	 * The download is currently paused.
	 */
	static inline var DOWNLOAD_PAUSED = 4;
	/**
	 * The download is in the queue but is not presently downloading.
	 */
	static inline var DOWNLOAD_QUEUED = 5;
	/**
	 * The download has been blocked, either by parental controls or the virus scanner determining that a file is infected and cannot be cleaned.
	 */
	static inline var DOWNLOAD_BLOCKED_PARENTAL = 6;
	/**
	 * The download is being scanned by a virus checking utility.
	 */
	static inline var DOWNLOAD_SCANNING = 7;
	/**
	 * A virus was detected in the download. The target will most likely no longer exist.
	 */
	static inline var DOWNLOAD_DIRTY = 8;
	/**
	 * Windows specific: Request was blocked by zone policy settings. (see <a class="external" href="https://bugzilla.mozilla.org/show_bug.cgi?id=416683" title='FIXED: binary downloads are deleted on completion when "Launch applications and unsafe files" is disabled'>bug 416683</a>)
	 */
	static inline var DOWNLOAD_BLOCKED_POLICY = 9;
	/**
	 * The download type used by addDownload. Is the type for a "generic file download" according to the .idl file.
	 */
	static inline var DOWNLOAD_TYPE_DOWNLOAD = 0;
	
	/**
	 * The number of files currently being downloaded. Read only.
	 */
	var activeDownloadCount : Long;
	/**
	 * An enumeration of active nsIDownloads. Read only.
	 */
	var activeDownloads : NsISimpleEnumerator;
	/**
	 * Whether or not there are downloads that can be cleaned up (removed) that is downloads that have completed, have failed or have been canceled. Read only.
	 */
	var canCleanUp : Bool;
	/**
	 * Read only. Obsolete since Gecko 1.8
	 */
	var datasource : NsIRDFDataSource;
	/**
	 * The database connection to the downloads database. Read only.
	 */
	var DBConnection : MozIStorageConnection;
	/**
	 * Returns the platform default downloads directory. Read only.
	 */
	var defaultDownloadsDirectory : NsILocalFile;
	/**
	 * The Download Manager's progress listener. Obsolete since Gecko 1.8
	 */
	var listener : NsIDownloadProgressListener;
	/**
	 * Returns the user configured downloads directory.
	 * The path is dependent on two user configurable prefs set in preferences:
	 * browser.download.folderList defines the default download location for files:
	 * 0: Files are downloaded to the desktop by default.
	 * 1: Files are downloaded to the system's downloads folder by default.
	 * 2: Files are downloaded to the local path specified by the browser.download.dir preference. If this preference is invalid, the download directory falls back to the default.
	 * Read only.
	 */
	var userDownloadsDirectory : NsILocalFile;
	
	function addDownload(aDownloadType:Short, aSource:NsIURI, aTarget:NsIURI, aDisplayName:AString, aMIMEInfo:NsIMIMEInfo, aStartTime:PRTime, aTempFile:NsILocalFile, aCancelable:NsICancelable, aIsPrivate:Bool) : NsIDownload;
	function addListener(aListener:NsIDownloadProgressListener) : Void;
	function cancelDownload(aID:ULong) : Void;
	function cleanUp() : Void;
	function endBatchUpdate() : Void;
	function flush() : Void;
	function getDownload(aID:ULong) : NsIDownload;
	function onClose() : Void;
	function open(aParent:NsIDOMWindow, aDownload:NsIDownload) : Void;
	function openProgressDialogFor(aDownload:NsIDownload, aParent:NsIDOMWindow, aCancelDownloadOnClose:Bool) : Void;
	function pauseDownload(aID:ULong) : Void;
	function removeDownload(aID:ULong) : Void;
	function removeDownloadsByTimeframe(aBeginTime:LongLong, aEndTime:LongLong) : Void;
	function removeListener(aListener:NsIDownloadProgressListener) : Void;
	function resumeDownload(aID:ULong) : Void;
	function retryDownload(aID:ULong) : Void;
	function saveState() : Void;
	function startBatchUpdate() : Void;
}
