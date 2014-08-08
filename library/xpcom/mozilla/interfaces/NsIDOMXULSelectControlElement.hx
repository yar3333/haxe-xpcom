package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULSelectControlElement") extern class NsIDOMXULSelectControlElement extends NsIDOMXULControlElement
{
	/**
	 * Read only.
	 */
	var itemCount : ULong;
	var selectedIndex : Long;
	var selectedItem : NsIDOMXULSelectControlItemElement;
	var value : DOMString;
	
	function appendItem(label:DOMString, value:DOMString) : NsIDOMXULSelectControlItemElement;
	function getIndexOfItem(item:NsIDOMXULSelectControlItemElement) : Long;
	function getItemAtIndex(index:Long) : NsIDOMXULSelectControlItemElement;
	function insertItemAt(index:Long, label:DOMString, value:DOMString) : NsIDOMXULSelectControlItemElement;
	function removeItemAt(index:Long) : NsIDOMXULSelectControlItemElement;
}
