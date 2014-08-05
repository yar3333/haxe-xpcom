package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWorker") extern class NsIWorker extends NsIAbstractWorker
{
	/**
	 * An object to receive notifications when messages are received on the worker's message port.
	 */
	var onmessage : NsIDOMEventListener;
}
