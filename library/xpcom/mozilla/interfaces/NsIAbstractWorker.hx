package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAbstractWorker") extern class NsIAbstractWorker extends NsIDOMEventTarget
{
	/**
	 * The error listener for the worker.
	 */
	var onerror : NsIDOMEventListener;
}
