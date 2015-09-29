package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULMultiSelectControlElement")
extern class NsIDOMXULMultiSelectControlElement extends NsIDOMXULSelectControlElement
{
	var selType : DOMString; // attribute

	var currentItem : NsIDOMXULSelectControlItemElement; // attribute
	var currentIndex : Int; // attribute

	var selectedItems : NsIDOMNodeList;
	
	function addItemToSelection(item:NsIDOMXULSelectControlItemElement) : Void;
	function removeItemFromSelection(item:NsIDOMXULSelectControlItemElement) : Void;
	function toggleItemSelection(item:NsIDOMXULSelectControlItemElement) : Void;

	function selectItem(item:NsIDOMXULSelectControlItemElement) : Void;
	function selectItemRange(startItem:NsIDOMXULSelectControlItemElement, item:NsIDOMXULSelectControlItemElement) : Void;

	function selectAll() : Void;
	function invertSelection() : Void;
	function clearSelection() : Void;

	// XXX - temporary, pending implementation of scriptable, 
	//       mutable nsIDOMNodeList for selectedItems
	var selectedCount : Int;
	
	function getSelectedItem(index:Int) : NsIDOMXULSelectControlItemElement; //[binaryname(MultiGetSelectedItem)]
}