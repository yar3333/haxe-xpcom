package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIZipReader") extern class NsIZipReader extends NsISupports
{
	/**
	 * The file that represents the zip with which this zip reader was initialized. Read only.
	 */
	var file : NsIFile;
	/**
	 * The number of entries in the manifest. Read only.
	 */
	var manifestEntriesCount : PRUint32;
}
