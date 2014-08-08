package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUpdateChecker") extern class NsIUpdateChecker extends NsISupports
{
	/**
	 * Constant for the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIUpdateChecker#stopChecking()">stopChecking()</a></code> method indicating that only the current update check should be stopped.
	 */
	static inline var CURRENT_CHECK = 1;
	/**
	 * Constant for the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIUpdateChecker#stopChecking()">stopChecking()</a></code> method indicating that all update checks during the current session should be stopped.
	 */
	static inline var CURRENT_SESSION = 2;
	/**
	 * Constant for the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIUpdateChecker#stopChecking()">stopChecking()</a></code> method indicating that all update checking should be stopped. This disables the update checking preferences.
	 */
	static inline var ANY_CHECKS = 3;
	
	function checkForUpdates(listener:NsIUpdateCheckListener, force:Bool) : Void;
	function stopChecking(duration:UShort) : Void;
}
