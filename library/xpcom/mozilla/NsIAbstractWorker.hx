package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAbstractWorker") extern class NsIAbstractWorker extends NsIDOMEventTarget
{
	/**
	 * The error listener for the worker.
	 */
	var onerror : NsIDOMEventListener;
}
