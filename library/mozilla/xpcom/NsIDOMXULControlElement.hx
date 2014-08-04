package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMXULControlElement") extern class NsIDOMXULControlElement extends NsIDOMXULElement
{
	/**
	 * Indicates whether the element is disabled or not.
	 */
	var disabled : Bool;
	/**
	 * The tab order of the element.
	 */
	var tabIndex : Long;
}
