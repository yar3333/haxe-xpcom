package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMXPathException") extern class NsIDOMXPathException extends NsISupports
{
	/**
	 * The error code; see Error codes for details.
	 */
	var code : UShort;
}
