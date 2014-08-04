package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIBrowserHistory") extern class NsIBrowserHistory extends NsIGlobalHistory2
{
	/**
	 * Indicates if there are entries in global history. For performance reasons this does not return the real number of entries. Read only.
	 * Obsolete since Gecko 15.0
	 */
	var count  : PRUint32;
	/**
	 * The last page that was visited in a top-level window. Read only.
	 * Obsolete since Gecko 10.0
	 */
	var lastPageVisited  : AUTF8String;
}
