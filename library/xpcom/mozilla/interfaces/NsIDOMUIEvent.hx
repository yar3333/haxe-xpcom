package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * The nsIDOMUIEvent interface is the datatype for all UI events in the
 * Document Object Model.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-Events/
 */
@:native("Components.interfaces.nsIDOMUIEvent")
extern class NsIDOMUIEvent extends NsIDOMEvent // builtinclass
{
	var view : NsIDOMWindow;
	var detail : Int;
	function initUIEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:NsIDOMWindow, detailArg:Int) : Void;

	static var SCROLL_PAGE_UP : Int;	// -32768;
	static var SCROLL_PAGE_DOWN : Int;	//  32768

	var layerX : Int;
	var layerY : Int;
	var pageX : Int;
	var pageY : Int;
	var which : Int;
	var rangeParent : NsIDOMNode;
	var rangeOffset : Int;

	var cancelBubble : Bool; // attribute

	var isChar : Bool;
}