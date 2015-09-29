package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULButtonElement")
extern class NsIDOMXULButtonElement extends NsIDOMXULLabeledControlElement
{
	static var CHECKSTATE_UNCHECKED : Int; // 0
	static var CHECKSTATE_CHECKED : Int; // 1
	static var CHECKSTATE_MIXED : Int; // 2

	var type : DOMString; // attribute
	var dlgType : DOMString; // attribute

	// For buttons of type="menu" only.
	var open : Bool; // attribute
	
	// For buttons of type="checkbox" only.
	var checked : Bool; // attribute
	var checkState : Int; // attribute
	var autoCheck : Bool; // attribute

	// For buttons of type="radio" only.
	var group : DOMString; // attribute
}