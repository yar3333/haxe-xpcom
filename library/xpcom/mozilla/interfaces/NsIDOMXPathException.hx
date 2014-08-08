package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXPathException") extern class NsIDOMXPathException extends NsISupports
{
	/**
	 * The error code; see Error codes for details.
	 */
	var code : UShort;
}
