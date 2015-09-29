package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULTextBoxElement")
extern class NsIDOMXULTextBoxElement extends NsIDOMXULControlElement
{
	/**
	 * May be any type of editable field, such as an HTML <input type="text"> or <textarea>.
	 */
	var inputField : NsIDOMNode;

	var textLength : Int;
	var maxLength : Int; // attribute
	var size : Int; // attribute
	var selectionStart : Int; // attribute
	var selectionEnd : Int; // attribute

	var value : DOMString; // attribute
	var type : DOMString; // attribute

	function select() : Void;
	function setSelectionRange(selectionStart:Int, selectionEnd:Int) : Void;
}