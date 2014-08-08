package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIIdleService") extern class NsIIdleService extends NsISupports
{
	public static inline function createInstance() : NsIIdleService return Components.Constructor("@mozilla.org/widget/idleservice;1", Components.interfaces.nsIIdleService);
	
	/**
	 * The amount of time in milliseconds that has passed since the last user activity. Can be 0 if there is no valid idle time to report (this can happen if the user never interacted with the browser at all, and if we are unable to poll for idle time manually). Read only.
	 */
	var idleTime : ULong;
	
	function addIdleObserver(observer:NsIObserver, time:ULong) : Void;
	function removeIdleObserver(observer:NsIObserver, time:ULong) : Void;
}
