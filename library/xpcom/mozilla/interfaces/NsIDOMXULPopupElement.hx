package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULPopupElement")
extern class NsIDOMXULPopupElement extends NsISupports
{
	static var BEFORE_START : Int; // 1
	static var BEFORE_END : Int; // 2
	static var AFTER_START : Int; // 3
	static var AFTER_END : Int; // 4
	static var START_BEFORE : Int; // 5
	static var START_AFTER : Int; // 6
	static var END_BEFORE : Int; // 7
	static var END_AFTER : Int; // 8
	static var OVERLAP : Int; // 9
	static var AT_POINTER : Int; // 10
	static var AFTER_POINTER : Int; // 11

	var position : DOMString; // attribute
	
	function showPopup(alignment:Int, target:NsIDOMElement, anchor:NsIDOMElement) : Void;
	function hidePopup() : Void;
}