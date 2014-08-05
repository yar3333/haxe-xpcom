package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWinAppHelper") extern class NsIWinAppHelper extends NsISupports
{
	/**
	 * Read only.  Returns true only if all the following conditions are all true at once:  The operating system is at least Windows Vista User Account Control is enabled The user is an Administrator The application is not already running with elevated permissions  Otherwise it returns false.
	 */
	var userCanElevate : Bool;
}
