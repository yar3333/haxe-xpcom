package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISelection") extern class NsISelection extends NsISupports
{
	/**
	 * Returns the node in which the selection begins. Read only.
	 */
	var anchorNode : NsIDOMNode;
	/**
	 * The offset within the (text) node where the selection begins. Read only.
	 */
	var anchorOffset : Long;
	/**
	 * Returns the node in which the selection ends. Read only.
	 */
	var focusNode : NsIDOMNode;
	/**
	 * The offset within the (text) node where the selection ends. Read only.
	 */
	var focusOffset : Long;
	/**
	 * Indicates if the selection is collapsed() or not. Read only.
	 */
	var isCollapsed : Bool;
	/**
	 * Returns the number of ranges in the selection. Read only.
	 */
	var rangeCount : Long;
}
