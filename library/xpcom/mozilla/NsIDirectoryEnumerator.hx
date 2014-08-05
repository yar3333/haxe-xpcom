package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirectoryEnumerator") extern class NsIDirectoryEnumerator extends NsISupports
{
	/**
	 * The next file in the sequence. The nextFile attribute is the first element upon the first call. This attribute is null if there is no next element. Read only.
	 */
	var nextFile : NsIFile;
}
