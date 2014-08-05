package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMElement") extern class NsIDOMElement extends NsIDOMNode
{
	/**
	 * The element tag name. Read only.
	 */
	var tagName : DOMString;
}
