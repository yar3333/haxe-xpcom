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
	 * The HTTP request is about to be queued for sending. Observers can look at request headers in aExtraStringData
	 */
	static inline var ACTIVITY_SUBTYPE_REQUEST_HEADER = 0x5001;
	/**
	 * The HTTP request's body has been sent.
	 */
	static inline var ACTIVITY_SUBTYPE_REQUEST_BODY_SENT = 0x5002;
	/**
	 * The HTTP response has started to arrive.
	 */
	static inline var ACTIVITY_SUBTYPE_RESPONSE_START = 0x5003;
	/**
	 * The HTTP response header has arrived.
	 */
	static inline var ACTIVITY_SUBTYPE_RESPONSE_HEADER = 0x5004;
	/**
	 * The complete HTTP response has been received.
	 */
	static inline var ACTIVITY_SUBTYPE_RESPONSE_COMPLETE = 0x5005;
	/**
	 * The HTTP transaction has been closed.
	 */
	static inline var ACTIVITY_SUBTYPE_TRANSACTION_CLOSE = 0x5006;
	
	/**
	 * true when the interface is active and should observe HTTP activity, otherwise false. If this is false, the observeActivity() method should not be called. Read only. Note: This attribute is present only for compatibility and should not be used.
	 */
	var isActive : Bool;
	
	function observeActivity(aHttpChannel:NsISupports, aActivityType:PRUint32, aActivitySubtype:PRUint32, aTimestamp:PRTime, aExtraSizeData:PRUint64, aExtraStringData:ACString) : Void;
}
