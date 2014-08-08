package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMGeoPositionError") extern class NsIDOMGeoPositionError extends NsISupports
{
	/**
	 * Numerical error code; see Error constants for a complete list. Read only.
	 */
	var code : Short;
	/**
	 * Human readable error message. Read only.
	 */
	var message : DOMString;
}
