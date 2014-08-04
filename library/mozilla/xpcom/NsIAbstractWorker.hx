package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAbstractWorker") extern class NsIAbstractWorker extends NsIDOMEventTarget
{
	/**
	 * The error listener for the worker.
	 */
	var onerror : NsIDOMEventListener;
}
