package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWorkerGlobalScope") extern class NsIWorkerGlobalScope extends NsISupports
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
