package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleSelectable") extern class NsIAccessibleSelectable extends NsISupports
{
	/**
	 * The number of accessible children currently selected. Read only.
	 */
	var selectionCount : Long;
	
	function addChildToSelection(index:Long) : Void;
	function clearSelection() : Void;
	function GetSelectedChildren() : NsIArray;
	function isChildSelected(index:Long) : Bool;
	function refSelection(index:Long) : NsIAccessible;
	function removeChildFromSelection(index:Long) : Void;
	function selectAllSelection() : Bool;
}
