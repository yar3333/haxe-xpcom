package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWorkerGlobalScope") extern class NsIWorkerGlobalScope extends NsISupports
{
	/**
	 * Read only.
	 */
	var location : NsIWorkerLocation;
	/**
	 * Read only.
	 */
	var navigator : NsIWorkerNavigator;
	var onerror : NsIDOMEventListener;
	/**
	 * Returns the global scope object itself. Read only.
	 */
	var self : NsIWorkerGlobalScope;
}
