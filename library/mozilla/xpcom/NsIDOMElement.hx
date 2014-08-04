package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMElement") extern class NsIDOMElement extends NsIDOMNode
{
	/**
	 * The element tag name. Read only.
	 */
	var tagName : DOMString;
}
