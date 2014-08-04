package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsITreeContentView") extern class NsITreeContentView
{
	/**
	 * The element in the DOM which this view uses as root content. Read only. Obsolete since Gecko 1.8
	 */
	var root : NsIDOMElement;
}
