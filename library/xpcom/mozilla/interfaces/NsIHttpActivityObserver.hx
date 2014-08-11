package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHttpActivityObserver") extern class NsIHttpActivityObserver extends NsISupports
{
	/**
	 * Socket transport activity has occurred.
	 */
	static inline var ACTIVITY_TYPE_SOCKET_TRANSPORT = 0x0001;
	/**
	 * HTTP transport activity has occurred.
	 */
	static inline var ACTIVITY_TYPE_HTTP_TRANSACTION  = 0x0002;
	
	/**
	 * true when the interface is active and should observe HTTP activity, otherwise false. If this is false, the observeActivity() method should not be called. Read only. Note: This attribute is present only for compatibility and should not be used.
	 */
	var isActive : Bool;
	
	function observeActivity(aHttpChannel:NsISupports, aActivityType:PRUint32, aActivitySubtype:PRUint32, aTimestamp:PRTime, aExtraSizeData:PRUint64, aExtraStringData:ACString) : Void;
}
