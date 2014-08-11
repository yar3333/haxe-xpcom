package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXPathException") extern class NsIDOMXPathException extends NsISupports
{
	/**
	 * An invalid XPath expression was used.
	 */
	static inline var INVALID_EXPRESSION_ERR = 51;
	/**
	 * An attempt was made to reference an unavailable type.
	 */
	static inline var TYPE_ERR = 52;
	
	/**
	 * The error code; see Error codes for details.
	 */
	var code : UShort;
}
