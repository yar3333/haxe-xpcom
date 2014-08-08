package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWorker") extern class NsIWorker extends NsIAbstractWorker
{
	/**
	 * An object to receive notifications when messages are received on the worker's message port.
	 */
	var onmessage : NsIDOMEventListener;
	
	function postMessage(aMessage:DOMString, ?aMessagePort:NsIWorkerMessagePort) : Void;
}
