package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILocalFile") extern class NsILocalFile
{
	/**
	 * The number of bytes available to non-superuser on the disk volume containing the nsILocalFile. Read only.
	 */
	var diskSpaceAvailable : PRInt64;
	/**
	 * Determines whether or not the nsILocalFile will automatically resolve symbolic links.
	 * By default, this value is false on all non-UNIX systems. As of Mozilla 1.7, this attribute is ignored on UNIX systems.
	 */
	var followLinks : PRBool;
	/**
	 * On some platforms, the value of nsIFile.path may be insufficient to uniquely identify the file on the local file system. The persistent descriptor is intended to be used whenever a nsILocalFile needs to be serialized to disk and later recovered. This string is not intended for display to users.
	 * Note: The value of the followLinks attribute is not encoded in the persistent descriptor.
	 */
	var persistentDescriptor : ACString;
}
