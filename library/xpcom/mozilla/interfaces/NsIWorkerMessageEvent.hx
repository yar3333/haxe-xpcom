package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWorkerMessageEvent") extern class NsIWorkerMessageEvent extends NsIDOMEvent
{
	/**
	 * The event's data. Read only.
	 */
	var data : DOMString;
	/**
	 * The event's origin. Read only.
	 */
	var origin : DOMString;
	/**
	 * The event's source. Read only.
	 */
	var source : NsISupports;
	
	function initMessageEvent(aTypeArg:DOMString, aCanBubbleArg:Bool, aCancelableArg:Bool, aDataArg:DOMString, aOriginArg:DOMString, aSourceArg:NsISupports) : Void;
}
