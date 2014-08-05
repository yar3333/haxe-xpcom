package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFTPChannel") extern class NsIFTPChannel
{
	/**
	 * The time at which the FTP channel was last updated.
	 */
	var lastModifiedTime : PRTime;
}
