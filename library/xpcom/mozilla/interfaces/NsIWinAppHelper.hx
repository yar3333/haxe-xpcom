package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWinAppHelper") extern class NsIWinAppHelper extends NsISupports
{
	public static inline function createInstance() : NsIWinAppHelper return xpcom.Components.Constructor("@mozilla.org/xre/app-info;1", xpcom.Components.interfaces.nsIWinAppHelper);
	
	/**
	 * Read only.  Returns true only if all the following conditions are all true at once:  The operating system is at least Windows Vista User Account Control is enabled The user is an Administrator The application is not already running with elevated permissions  Otherwise it returns false.
	 */
	var userCanElevate : Bool;
	
	function fixReg() : Void;
	function postUpdate(logFile:NsILocalFile) : Void;
}
