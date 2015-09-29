package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * The nsIDOMHTMLMenuItemElement interface is the interface to a HTML <menuitem> element.
 */
@:native("Components.interfaces.nsIDOMHTMLMenuItemElement")
extern class NsIDOMHTMLMenuItemElement extends NsISupports
{
	var type : DOMString; // attribute
	var label : DOMString; // attribute
	var icon : DOMString; // attribute
	var disabled : Bool; // attribute

	/**
	 * This should be 'default' but in the IDL implementation
	 * this has been renamed 'defaultChecked'.
	 */
	var defaultChecked : Bool; // attribute

	var checked : Bool; // attribute
	var radiogroup : DOMString; // attribute
}