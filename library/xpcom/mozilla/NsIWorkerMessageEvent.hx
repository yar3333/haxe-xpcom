package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWorkerMessageEvent") extern class NsIWorkerMessageEvent extends NsIDOMEvent
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
}
