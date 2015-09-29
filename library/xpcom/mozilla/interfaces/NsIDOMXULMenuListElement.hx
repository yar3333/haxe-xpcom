package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULMenuListElement")
extern class NsIDOMXULMenuListElement extends NsIDOMXULSelectControlElement
{
	var editable : Bool; // attribute
	var open : Bool; // attribute
	
	/**
	 * label of selected option or value of textfield for editable menu lists
	 */
	var label : DOMString;

	var crop : DOMString; // attribute
	var image : DOMString; // attribute
	
	/**
	 * For editable menu lists only.
	 */
	var inputField : NsIDOMNode;
}