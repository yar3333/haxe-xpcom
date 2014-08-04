package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIZipWriter") extern class NsIZipWriter extends NsISupports
{
	/**
	 * Gets or sets the comment associated with the currently open Zip file.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_NOT_INITIALIZED
	 * If no zip file has been opened.
	 */
	var comment : ACString;
	/**
	 * The Zip file being written to. Read only.
	 */
	var file : NsIFile;
	/**
	 * true if operations are being performed in the background queue, or false if background operations are not in progress. Read only.
	 */
	var inQueue : Bool;
}
