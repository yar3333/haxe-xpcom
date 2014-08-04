package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDownloadManagerUI") extern class NsIDownloadManagerUI extends NsISupports
{
	/**
	 * true if the Download Manager UI is visible; otherwise false. Read only.
	 */
	var visible : Bool;
}
