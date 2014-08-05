package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIParentalControlsService") extern class NsIParentalControlsService extends NsISupports
{
	public static inline function createInstance() : NsIParentalControlsService return Components.Constructor("@mozilla.org/parental-controls-service;1", Components.interfaces.nsIParentalControlsService);
	
	/**
	 * This log entry type represents an access to web content.
	 */
	static inline var ePCLog_URIVisit = 1;
	/**
	 * This log entry type represents a file download.
	 */
	static inline var ePCLog_FileDownload = 2;
	
	/**
	 * true if the current user account's parental controls restrictions include the blocking of all file downloads. Read only.
	 */
	var blockFileDownloadsEnabled : Bool;
	/**
	 * true if the current user account has parental controls logging enabled. If this is true, applications should log relevant events using log() method. Read only.
	 */
	var loggingEnabled : Bool;
	/**
	 * true if the current user account has parental controls restrictions enabled. Read only.
	 */
	var parentalControlsEnabled : Bool;
}
