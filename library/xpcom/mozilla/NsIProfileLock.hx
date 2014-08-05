package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProfileLock") extern class NsIProfileLock extends NsISupports
{
	/**
	 * The main profile directory. Read only.
	 */
	var directory : NsILocalFile;
	/**
	 * A directory corresponding to the main profile directory, which exists for the purpose of storing data on the local filesystem, including cache files or other data files that may not represent critical user data. (for example, this directory may not be included as part of a backup scheme.)
	 * In some cases, this directory may just be the main profile directory. Read only.
	 */
	var localDirectory : NsILocalFile;
}
