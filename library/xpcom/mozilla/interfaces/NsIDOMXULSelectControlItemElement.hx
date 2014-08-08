package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULSelectControlItemElement") extern class NsIDOMXULSelectControlItemElement extends NsIDOMXULElement
{
	var accessKey : DOMString;
	var command : DOMString;
	/**
	 * Read only.
	 */
	var control : NsIDOMXULSelectControlElement;
	var crop : DOMString;
	var disabled : Bool;
	var image : DOMString;
	var label : DOMString;
	/**
	 * Read only.
	 */
	var selected : Bool;
	var value : DOMString;
}
