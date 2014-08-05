package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIWinAppHelper") extern class NsIWinAppHelper extends NsISupports
{
	public static inline function createInstance() : NsIWinAppHelper return Components.Constructor("@mozilla.org/xre/app-info;1", Components.interfaces.nsIWinAppHelper);
	
	/**
	 * Read only.  Returns true only if all the following conditions are all true at once:  The operating system is at least Windows Vista User Account Control is enabled The user is an Administrator The application is not already running with elevated permissions  Otherwise it returns false.
	 */
	var userCanElevate : Bool;
}
