package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIZipReader") extern class NsIZipReader extends NsISupports
{
	public static inline function createInstance() : NsIZipReader return Components.Constructor("@mozilla.org/libjar/zip-reader;1", Components.interfaces.nsIZipReader);
	
	/**
	 * The file that represents the zip with which this zip reader was initialized. Read only.
	 */
	var file : NsIFile;
	/**
	 * The number of entries in the manifest. Read only.
	 */
	var manifestEntriesCount : PRUint32;
}
