package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIToolkitProfile") extern class NsIToolkitProfile extends NsISupports
{
	/**
	 * The location of the profile local directory, which may be the same as the root directory. See nsIProfileLock.localDirectory(). Read only.
	 */
	var localDir : NsILocalFile;
	/**
	 * The profile's name.
	 */
	var name : AUTF8String;
	/**
	 * The location of the profile directory. Read only.
	 */
	var rootDir : NsILocalFile;
}
