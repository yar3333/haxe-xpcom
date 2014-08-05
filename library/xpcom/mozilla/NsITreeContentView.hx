package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITreeContentView") extern class NsITreeContentView extends NsISupports
{
	/**
	 * The element in the DOM which this view uses as root content. Read only. Obsolete since Gecko 1.8
	 */
	var root : NsIDOMElement;
}
