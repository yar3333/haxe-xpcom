package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULControlElement") extern class NsIDOMXULControlElement extends NsIDOMXULElement
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
