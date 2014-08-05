package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFTPChannel") extern class NsIFTPChannel extends NsISupports
{
	/**
	 * The time at which the FTP channel was last updated.
	 */
	var lastModifiedTime : PRTime;
}
