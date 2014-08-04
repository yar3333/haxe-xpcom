package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsILocalFileMac") extern class NsILocalFileMac extends NsILocalFile
{
	/**
	 * Returns the display name of the application bundle (usually the human readable name of the application) Read only.
	 */
	var bundleDisplayName : AString;
	/**
	 * Returns the identifier of the bundle. Read only.
	 */
	var bundleIdentifier : AUTF8String;
	/**
	 * Native code only!
	 */
	var fileCreator : OSType;
	/**
	 * Returns the combined size of both the data fork and the resource fork (if present) rather than just the size of the data fork as returned by GetFileSize() Read only.
	 */
	var fileSizeWithResFork : PRInt64;
	/**
	 * File type and creator attributes. Native code only!
	 */
	var fileType : OSType;
}
