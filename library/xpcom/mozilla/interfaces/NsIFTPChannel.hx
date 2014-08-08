package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFTPChannel") extern class NsIFTPChannel extends NsISupports
{
	/**
	 * The time at which the FTP channel was last updated.
	 */
	var lastModifiedTime : PRTime;
}
