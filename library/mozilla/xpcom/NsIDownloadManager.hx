package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDownloadManager") extern class NsIDownloadManager
{
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
}
