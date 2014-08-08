package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITreeSelection") extern class NsITreeSelection extends NsISupports
{
	/**
	 * The number of rows currently selected in this tree. Read only.
	 */
	var count : Long;
	/**
	 * The current column.
	 */
	var currentColumn : NsITreeColumn;
	/**
	 * The current item (the one with focus).
	 * Note: This property indicates only the index of the row with tree cursor around it. This is not a reliable method of determining the selected row, as the selection may include multiple rows, or the focused row may not even be selected.
	 */
	var currentIndex : Long;
	/**
	 * This attribute is a boolean indicating whether or not the "select" event should fire when the selection is changed using one of our methods. A view can use this to temporarily suppress the selection while manipulating all of the indices, for example, on a sort.
	 * Note: Setting this attribute to false will fire a select event.
	 */
	var selectEventsSuppressed : Bool;
	/**
	 * The selection "pivot". This is the first item the user selected as part of a ranged select. Read only.
	 */
	var shiftSelectPivot : Long;
	/**
	 * This attribute is a boolean indicating single selection. Read only.
	 */
	var single : Bool;
	/**
	 * The tree widget for this selection.
	 */
	var tree : NsITreeBoxObject;
	
	function adjustSelection(index:Long, count:Long) : Void;
	function clearRange(startIndex:Long, endIndex:Long) : Void;
	function clearSelection() : Void;
	function getRangeAt(i:Long, min:Long, max:Long) : Void;
	function getRangeCount() : Long;
	function invalidateSelection() : Void;
	function invertSelection() : Void;
	function isSelected(index:Long) : Bool;
	function rangedSelect(startIndex:Long, endIndex:Long, augment:Bool) : Void;
	function select(index:Long) : Void;
	function selectAll() : Void;
	function timedSelect(index:Long, delay:Long) : Void;
	function toggleSelect(index:Long) : Void;
}
