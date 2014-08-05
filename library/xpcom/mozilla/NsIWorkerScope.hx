package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWorkerScope") extern class NsIWorkerScope extends NsIWorkerGlobalScope
{
	/**
	 * A listener object to be called when the worker stops running.
	 */
	var onclose : NsIDOMEventListener;
	/**
	 * A listener object to be called when a message is posted on the port. The message is in the event's data member.
	 */
	var onmessage : NsIDOMEventListener;
	
	function postMessage(aMessage:DOMString, ?aMessagePort:NsIWorkerMessagePort) : Void;
	function close() : Void;
}
