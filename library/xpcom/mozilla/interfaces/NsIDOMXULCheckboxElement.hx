package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULCheckboxElement")
extern class NsIDOMXULCheckboxElement extends NsIDOMXULLabeledControlElement
{
	static var CHECKSTATE_UNCHECKED : Int; // 0
	static var CHECKSTATE_CHECKED : Int; // 1
	static var CHECKSTATE_MIXED : Int; // 2

	var checked : Bool; // attribute
	var checkState : Int; // attribute
	var autoCheck : Bool; // attribute
}