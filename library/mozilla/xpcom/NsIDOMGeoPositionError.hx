package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMGeoPositionError") extern class NsIDOMGeoPositionError
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
