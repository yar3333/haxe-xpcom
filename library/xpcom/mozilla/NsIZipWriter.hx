package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIZipWriter") extern class NsIZipWriter extends NsISupports
{
	public static inline function createInstance() : NsIZipWriter return Components.Constructor("@mozilla.org/zipwriter;1", Components.interfaces.nsIZipWriter);
	
	/**
	 * Do not compress the file.
	 */
	static inline var COMPRESSION_NONE = 0;
	/**
	 * Use the fastest compression method when adding the file to the archive.
	 */
	static inline var COMPRESSION_FASTEST = 1;
	/**
	 * Use the default compression method when adding the file to the archive.
	 */
	static inline var COMPRESSION_DEFAULT = 6;
	/**
	 * Use the best compression method when adding the file to the archive.
	 */
	static inline var COMPRESSION_BEST = 9;
	
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
