package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDownload") extern class NsIDownload
{
	/**
	 * The number of bytes downloaded so far. Read only.
	 */
	var amountTransferred : LongLong;
	/**
	 * An object that can be used to cancel the download. Once the download is complete, this value is set to null. Read only.
	 */
	var cancelable : NsICancelable;
	/**
	 * A user-readable description of the transfer. Read only.
	 */
	var displayName : AString;
	/**
	 * The ID by which the download is identified uniquely in the database - not globally unique. For example, a private download and a public one might have identical ids. Can only be safely used for direct database manipulation in the database that contains this download. Use the guid property instead for safe, database-agnostic searching and manipulation. Read only.  Deprecated since Gecko 19.0
	 */
	var id : ULong;
	/**
	 * The guid of the download that is stored in the database. Has the form of twelve alphanumeric characters. Read only.
	 */
	var guid : AString;
	/**
	 * Provides the targets relevant MIME information, including its MIME type, helper application, and whether or not the helper should be executed automatically once the download is complete. Read only. Optional
	 */
	var MIMEInfo : NsIMIMEInfo;
	/**
	 * The percentage of the file transfer that has been completed, or -1 if the file's size is unknown. Read only.
	 */
	var percentComplete : Long;
	/**
	 * The referrer URI of the download. This is only valid for HTTP downloads, and can be null. Read only.
	 */
	var referrer : NsIURI;
	/**
	 * Indicates if the download can be resumed after being paused or not. This is only the case if the download is over HTTP/1.1 or FTP and if the server supports it. Read only.
	 */
	var resumable : Bool;
	/**
	 * The total size of the file in bytes, or LL_MAXUINT if the file's size is unknown. Read only.
	 */
	var size : LongLong;
	/**
	 * The source URI of the download. Read only.
	 */
	var source : NsIURI;
	/**
	 * The downloads transfer speed in bytes per second. Read only.
	 */
	var speed : Float;
	/**
	 * The time at which the transfer was started. Read only.
	 */
	var startTime : LongLong;
	/**
	 * The downloads current state. See nsIDownloadManager.Constants. Read only.
	 */
	var state : Short;
	/**
	 * The target of the transfer. Read only.
	 */
	var target : NsIURI;
	/**
	 * Indicates the location at which the downloaded file will be (or is, if the download is complete) stored. Read only.
	 */
	var targetFile : NsILocalFile;
}
