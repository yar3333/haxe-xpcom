package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISessionStartup") extern class NsISessionStartup extends NsISupports
{
	public static inline function getService() : NsISessionStartup
	{
		return xpcom.Components.classes[cast "@mozilla.org/browser/sessionstartup;1"].getService(NsISessionStartup);
	}
	
	/**
	 * There's no data available from the previous session.
	 */
	static inline var NO_SESSION = 0;
	/**
	 * The last session crashed. It will either be restored or about:sessionrestore will be displayed.
	 */
	static inline var RECOVER_SESSION = 1;
	/**
	 * The previous session should be restored at startup.
	 */
	static inline var RESUME_SESSION = 2;
	/**
	 * The previous session is viable but shouldn't be restored without explicit action (with the exception of app tabs, which are always restored in this case).
	 */
	static inline var DEFER_SESSION = 3;
	
	/**
	 * The type of session being restored; this will be one of the Session type constants. Read only.
	 */
	var sessionType : ULong;
	/**
	 * The session state, as a JavaScript object. Read only. Note: Prior to Gecko 8.0 (Firefox 8.0 / Thunderbird 8.0 / SeaMonkey 2.5), this was a string. It was changed in order to improve performance, which was suffering due to the need to parse and stringify the data.
	 */
	var state : JSVal;
	
	function doRestore() : Bool;
}
