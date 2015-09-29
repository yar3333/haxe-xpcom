package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULContainerElement")
extern class NsIDOMXULContainerElement extends NsIDOMXULContainerItemElement
{
	/**
	 * Creates an item for the given label and value and appends it to the
	 * container.
	 *
	 * @param aLabel - the label for the new item
	 * @param aValue - the value of the new item
	 */
	function appendItem(aLabel:DOMString, aValue:DOMString) : NsIDOMXULElement;

	/**
	 * Creates an item for the given label and value and inserts it into the
	 * container at the specified position.
	 *
	 * @param aIndex - the index where the new item will be inserted
	 * @param aLabel - the label for the new item
	 * @param aValue - the value of the new item
	 */
	function insertItemAt(aIndex:Int, aLabel:DOMString,
																aValue:DOMString) : NsIDOMXULElement;

	/**
	 * Removes an item from the container.
	 *
	 * @param aIndex - index of the item to remove
	 */
	function removeItemAt(aIndex:Int) : NsIDOMXULElement;

	/**
	 * Returns a count of items in the container.
	 */
	var itemCount : Int;

	/**
	 * Returns the index of an item or -1 if the item is not in the container.
	 *
	 * @param aItem - the item to determine the index of
	 */
	function getIndexOfItem(aItem:NsIDOMXULElement) : Int;

	/**
	 * Returns the item at a given index or null if the item is not is the
	 * container.
	 *
	 * @param aIndex - the index of the item to return
	 */
	function getItemAtIndex(aIndex:Int) : NsIDOMXULElement;
}