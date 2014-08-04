package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMXULSelectControlElement") extern class NsIDOMXULSelectControlElement extends NsIDOMXULControlElement
{
	/**
	 * Read only.
	 */
	var itemCount : ULong;
	var selectedIndex : Long;
	var selectedItem : NsIDOMXULSelectControlItemElement;
	var value : DOMString;
}
