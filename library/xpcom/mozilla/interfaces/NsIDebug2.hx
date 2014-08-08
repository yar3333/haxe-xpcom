package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDebug2") extern class NsIDebug2 extends NsIDebug
{
	/**
	 * The number of assertions since process start. This is normally zero in release builds, but does include calls to nsIDebug.assertion(). Read only.
	 */
	var assertionCount : Long;
	/**
	 * Whether XPCOM was compiled with DEBUG defined. This often correlates to whether other code (for example, Firefox, XULRunner) was compiled with DEBUG defined. Read only.
	 */
	var isDebugBuild : Bool;
}
