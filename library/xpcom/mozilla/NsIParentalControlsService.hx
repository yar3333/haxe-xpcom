package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIParentalControlsService") extern class NsIParentalControlsService extends NsISupports
{
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
